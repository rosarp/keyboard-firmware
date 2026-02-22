const std = @import("std");
const microzig = @import("microzig");
const rp_hal = microzig.hal;
const gpio = rp_hal.gpio;
const time = rp_hal.time;
const uart = rp_hal.uart;

const keyboard_unit = @import("build_options").keyboard_unit;
const config = @import("config.zig");

// UART configuration
const UART_BAUDRATE = 115200;
const UART_TX_PIN = 0;
const UART_RX_PIN = 1;

pub const SplitComm = struct {
    const Self = @This();

    // Determine if this is master (left) or slave (right)
    const is_master = std.mem.eql(u8, keyboard_unit, "left");

    // UART instance
    var uart_instance: uart.UART = undefined;

    // Receive buffer
    var rx_buffer: [64]u8 = undefined;
    var rx_index: usize = 0;

    // Message types
    pub const MessageType = enum(u8) {
        key_state = 0x01,
        layer_change = 0x02,
        sync = 0x03,
    };

    // Key state message format
    const KeyStateMsg = packed struct {
        msg_type: MessageType,
        pin_count: u8,
        // Followed by pin_count bytes of key states
    };

    // Layer change message format
    const LayerChangeMsg = packed struct {
        msg_type: MessageType,
        layer: u8,
    };

    pub fn init() !Self {
        std.log.debug("Split comm initialized as {s}", .{if (is_master) "master" else "slave"});

        // Initialize UART pins
        const tx_pin = gpio.num(UART_TX_PIN);
        const rx_pin = gpio.num(UART_RX_PIN);

        tx_pin.set_function(.uart);
        rx_pin.set_function(.uart);

        // Initialize UART
        uart_instance = uart.instance.num(0);
        uart_instance.apply(.{
            .clock_config = rp_hal.clock_config,
        });

        return Self{};
    }

    pub fn sendKeyState(self: Self, key_states: []const bool) !void {
        _ = self;

        // Create key state message
        const msg = KeyStateMsg{
            .msg_type = .key_state,
            .pin_count = @intCast(key_states.len),
        };

        // Send message header
        const msg_bytes = std.mem.asBytes(&msg);
        uart_instance.write_blocking(msg_bytes[0..@sizeOf(KeyStateMsg)], time.deadline_in_ms(10)) catch {};

        // Send key states as bytes
        var state_bytes: [32]u8 = undefined;
        for (key_states, 0..) |state, i| {
            state_bytes[i] = @intFromBool(state);
        }

        uart_instance.write_blocking(state_bytes[0..key_states.len], time.deadline_in_ms(10)) catch {};
    }

    pub fn sendLayerChange(self: Self, layer: u8) !void {
        _ = self;

        // Create layer change message
        const msg = LayerChangeMsg{
            .msg_type = .layer_change,
            .layer = layer,
        };

        // Send message
        const msg_bytes = std.mem.asBytes(&msg);
        uart_instance.write_blocking(msg_bytes[0..@sizeOf(LayerChangeMsg)], time.deadline_in_ms(10)) catch {};
    }

    pub fn sendSync(self: Self) !void {
        _ = self;

        // Send sync message
        const msg_type: u8 = @intFromEnum(MessageType.sync);
        uart_instance.write_blocking(&[_]u8{msg_type}, time.deadline_in_ms(10)) catch {};
    }

    pub fn receiveMessage(self: Self, buffer: []u8) ?usize {
        _ = self;

        // Try to read one byte to check for data
        var byte: [1]u8 = undefined;
        uart_instance.read_blocking(&byte, .no_deadline) catch {
            // Clear errors and return null if no data
            uart_instance.clear_errors();
            return null;
        };

        // Add to receive buffer
        if (rx_index < rx_buffer.len) {
            rx_buffer[rx_index] = byte[0];
            rx_index += 1;
        }

        // Check if we have a complete message
        if (rx_index >= 1) {
            const msg_type = rx_buffer[0];

            switch (@as(MessageType, @enumFromInt(msg_type))) {
                .key_state => {
                    // Need header (2 bytes) + pin_count bytes
                    if (rx_index >= 2) {
                        const pin_count = rx_buffer[1];
                        const total_len = 2 + pin_count;

                        if (rx_index >= total_len) {
                            // Copy complete message to buffer
                            const copy_len = @min(total_len, buffer.len);
                            @memcpy(buffer[0..copy_len], rx_buffer[0..copy_len]);

                            // Reset receive buffer
                            rx_index = 0;
                            return copy_len;
                        }
                    }
                },
                .layer_change => {
                    // Need 2 bytes total
                    if (rx_index >= 2) {
                        const copy_len = @min(2, buffer.len);
                        @memcpy(buffer[0..copy_len], rx_buffer[0..copy_len]);

                        // Reset receive buffer
                        rx_index = 0;
                        return copy_len;
                    }
                },
                .sync => {
                    // Need 1 byte total
                    const copy_len = @min(1, buffer.len);
                    @memcpy(buffer[0..copy_len], rx_buffer[0..copy_len]);

                    // Reset receive buffer
                    rx_index = 0;
                    return copy_len;
                },
            }
        }

        return null;
    }
};
