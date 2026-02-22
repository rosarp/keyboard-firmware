const std = @import("std");
const microzig = @import("microzig");
const rp_hal = microzig.hal;
const gpio = rp_hal.gpio;
const time = rp_hal.time;

const gpio_keycode_map = @import("build_options").gpio_keycode_map;
const config = @import("config.zig");
const UsbHid = @import("usb_hid.zig").UsbHid;

const led = gpio.num(25);
var usb_hid: UsbHid = undefined;

var active_layer: u8 = 0;
var last_state: [config.number_of_pins]bool = [_]bool{false} ** config.number_of_pins;
var debounce_time: [config.number_of_pins]u64 = [_]u64{0} ** config.number_of_pins;

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

    // Initialize USB
    usb_hid = try UsbHid.init();

    var last_scan_time: u64 = time.get_time_since_boot().to_us();

    while (true) {
        const current_time = time.get_time_since_boot().to_us();

        // Scan every 5ms
        if (current_time - last_scan_time >= 5000) {
            last_scan_time = current_time;

            try scanKeys(current_time);
        }

        // Process USB events
        usb_hid.task();

        // Toggle LED every 500ms
        if (current_time % 500000 < 5000) {
            led.toggle();
        }
    }
}

fn scanKeys(current_time: u64) !void {
    const DEBOUNCE_MS = 5;

    for (gpio_keycode_map.pins, 0..) |pin_num, i| {
        const pin = gpio.num(pin_num);
        const is_pressed = pin.read() == 0;

        // Check for state change with debouncing
        if (is_pressed != last_state[i]) {
            if (current_time - debounce_time[i] >= DEBOUNCE_MS * 1000) {
                last_state[i] = is_pressed;
                debounce_time[i] = current_time;

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
        }
    }
}

fn sendHidReport(keycode: i32, pressed: bool) void {
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
