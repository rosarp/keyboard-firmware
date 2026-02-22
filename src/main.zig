const std = @import("std");
const microzig = @import("microzig");
const rp_hal = microzig.hal;
const gpio = rp_hal.gpio;
const time = rp_hal.time;

const gpio_keycode_map = @import("build_options").gpio_keycode_map;
const keyboard_unit = @import("build_options").keyboard_unit;
const config = @import("config.zig");
const UsbHid = @import("usb_hid.zig").UsbHid;
const SplitComm = @import("split_comm.zig").SplitComm;

const led = gpio.num(25);
var usb_hid: UsbHid = undefined;
var split_comm: SplitComm = undefined;

// Determine if this is the master (left) or slave (right) half
const is_master = std.mem.eql(u8, keyboard_unit, "left");

var active_layer: u8 = 0;
var last_state: [config.number_of_pins]bool = [_]bool{false} ** config.number_of_pins;
var debounce_time: [config.number_of_pins]u64 = [_]u64{0} ** config.number_of_pins;

// Remote half key states (from split communication)
var remote_key_states: [config.number_of_pins]bool = [_]bool{false} ** config.number_of_pins;

pub fn main() !void {
    led.set_function(.sio);
    led.set_direction(.out);
    led.put(1);

    // Initialize GPIO pins for keyboard
    for (gpio_keycode_map.pins) |pin_num| {
        const pin = gpio.num(pin_num);
        pin.set_function(.sio);
        pin.set_direction(.in);
        pin.set_pull(.up);
    }

    // Initialize USB (only on master)
    if (is_master) {
        usb_hid = try UsbHid.init();
    }

    // Initialize split communication
    split_comm = try SplitComm.init();

    var last_scan_time: u64 = time.get_time_since_boot().to_us();

    while (true) {
        const current_time = time.get_time_since_boot().to_us();

        // Scan every 5ms
        if (current_time - last_scan_time >= 5000) {
            last_scan_time = current_time;

            try scanKeys(current_time);
        }

        // Process USB events (only on master)
        if (is_master) {
            usb_hid.task();
        }

        // Process split communication
        try processSplitComm();

        // Toggle LED every 500ms
        if (current_time % 500000 < 5000) {
            led.toggle();
        }
    }
}

fn scanKeys(current_time: u64) !void {
    const DEBOUNCE_MS = 5;
    var state_changed = false;

    for (gpio_keycode_map.pins, 0..) |pin_num, i| {
        const pin = gpio.num(pin_num);
        const is_pressed = pin.read() == 0;

        // Check for state change with debouncing
        if (is_pressed != last_state[i]) {
            if (current_time - debounce_time[i] >= DEBOUNCE_MS * 1000) {
                last_state[i] = is_pressed;
                debounce_time[i] = current_time;
                state_changed = true;

                if (is_pressed) {
                    try handleKeyPress(i);
                } else {
                    try handleKeyRelease(i);
                }
            }
        } else {
            // Reset debounce timer when state is stable
            debounce_time[i] = current_time;
        }
    }

    // Send key states to other half if state changed
    if (state_changed) {
        split_comm.sendKeyState(&last_state) catch {};
    }
}

fn handleKeyPress(pin_index: usize) !void {
    const keycode = gpio_keycode_map.keycodes[active_layer][pin_index];

    // Handle special keys like layer switching
    if (keycode >= 0 and keycode <= 0xFF) {
        // Regular keycodes
        sendHidReport(keycode, true);
    } else {
        // Handle special keys (MO, etc.)
        handleSpecialKey(keycode);
    }
}

fn handleKeyRelease(pin_index: usize) !void {
    const keycode = gpio_keycode_map.keycodes[active_layer][pin_index];

    if (keycode >= 0 and keycode <= 0xFF) {
        sendHidReport(keycode, false);
    }
}

fn handleSpecialKey(keycode: i32) void {
    // Handle MO(layer) keys - keycode format for MO is negative
    // This is a simplified implementation
    if (keycode < 0) {
        const layer = @as(u8, @intCast(-keycode));
        if (layer < config.number_of_layers) {
            active_layer = layer;
            // Send layer change to other half
            split_comm.sendLayerChange(active_layer) catch {};
        }
    }
}

fn sendHidReport(keycode: i32, pressed: bool) void {
    // Only send USB HID reports on master
    if (!is_master) return;

    // Create HID keyboard report
    var report: [8]u8 = [_]u8{0} ** 8;

    if (pressed) {
        // Set modifier keys if any (simplified)
        if (keycode >= 0xE0 and keycode <= 0xE7) {
            report[0] = @as(u8, @intCast(keycode - 0xE0));
        } else {
            // Add regular key to first available slot
            for (1..8) |i| {
                if (report[i] == 0) {
                    report[i] = @as(u8, @intCast(keycode));
                    break;
                }
            }
        }
    }

    // Send report via USB HID
    usb_hid.sendReport(&report) catch {};
}

fn processSplitComm() !void {
    var buffer: [64]u8 = undefined;

    if (split_comm.receiveMessage(&buffer)) |msg_len| {
        if (msg_len > 0) {
            const msg_type = buffer[0];

            switch (msg_type) {
                @intFromEnum(SplitComm.MessageType.key_state) => {
                    if (msg_len >= 2) {
                        const pin_count = buffer[1];
                        const state_bytes = buffer[2..@min(2 + pin_count, buffer.len)];

                        // Update remote key states
                        for (state_bytes, 0..) |state_byte, i| {
                            if (i < remote_key_states.len) {
                                const was_pressed = remote_key_states[i];
                                const is_pressed = state_byte != 0;
                                remote_key_states[i] = is_pressed;

                                // Handle remote key changes (only on master)
                                if (is_master and was_pressed != is_pressed) {
                                    const remote_pin_index = i;
                                    if (is_pressed) {
                                        handleRemoteKeyPress(remote_pin_index);
                                    } else {
                                        handleRemoteKeyRelease(remote_pin_index);
                                    }
                                }
                            }
                        }
                    }
                },
                @intFromEnum(SplitComm.MessageType.layer_change) => {
                    if (msg_len >= 2) {
                        active_layer = buffer[1];
                    }
                },
                @intFromEnum(SplitComm.MessageType.sync) => {
                    // Handle sync message if needed
                },
                else => {
                    // Unknown message type
                },
            }
        }
    }
}

fn handleRemoteKeyPress(pin_index: usize) void {
    // Get keycode for remote pin (this needs offset for right half)
    const keycode_offset = if (is_master) config.number_of_pins else 0;
    const actual_pin_index = pin_index + keycode_offset;

    if (actual_pin_index < gpio_keycode_map.keycodes[active_layer].len) {
        const keycode = gpio_keycode_map.keycodes[active_layer][actual_pin_index];

        if (keycode >= 0 and keycode <= 0xFF) {
            sendHidReport(keycode, true);
        } else {
            handleSpecialKey(keycode);
        }
    }
}

fn handleRemoteKeyRelease(pin_index: usize) void {
    // Get keycode for remote pin (this needs offset for right half)
    const keycode_offset = if (is_master) config.number_of_pins else 0;
    const actual_pin_index = pin_index + keycode_offset;

    if (actual_pin_index < gpio_keycode_map.keycodes[active_layer].len) {
        const keycode = gpio_keycode_map.keycodes[active_layer][actual_pin_index];

        if (keycode >= 0 and keycode <= 0xFF) {
            sendHidReport(keycode, false);
        }
    }
}

pub fn panic(message: []const u8, _: ?*std.builtin.StackTrace, _: ?usize) noreturn {
    std.log.err("panic: {s}", .{message});
    @breakpoint();
    while (true) {}
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // Try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
