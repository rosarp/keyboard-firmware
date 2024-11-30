const std = @import("std");
const AutoArrayHashMap = std.AutoArrayHashMap;
const debug = std.log.debug;
const json = std.json;
const getKeycodeDefines = @import("keycodes.zig").getKeycodeDefines;

/// bootmagic.matrix, community_layouts & layers need to be marked with fixed length according to keyboard.json data
/// TODO: check if it can be dynamic
pub const KeyboardConfig = struct {
    keyboard_name: []const u8,
    usb: Usb,
    bootmagic: Bootmagic,
    features: Features,
    version: u1,
    notes: []const u8,
    documentation: []const u8,
    keyboard: []const u8,
    keymap: []const u8,
    community_layouts: [1][]const u8,
    layout: []const u8,
    layers: [number_of_layers][number_of_pins * 2][]const u8,
    author: []const u8,
};

pub const Usb = struct {
    pid: []const u8,
};

pub const Bootmagic = struct {
    matrix: [2]u8,
};

pub const Features = struct {
    mousekey: bool,
    bootmagic: bool,
    extrakey: bool,
    oled: bool,
    rgb_matrix: bool,
};

pub const GpioConfig = struct {
    pins: [number_of_pins]u8,
};

pub const number_of_layers = 4;
pub const number_of_pins = 21;

pub const GpioKeycodeMap = struct {
    pins: [number_of_pins]u8,
    keycodes: [number_of_layers][number_of_pins]i32,
};

fn initConfig(comptime T: type, comptime file_path: []const u8, allocator: std.mem.Allocator) !json.Parsed(T) {
    const config_file: []const u8 = @embedFile(file_path);
    return try json.parseFromSlice(T, allocator, config_file, .{
        .duplicate_field_behavior = .use_last,
        .ignore_unknown_fields = true,
    });
}

fn initKeyboardConfig(allocator: std.mem.Allocator) !json.Parsed(KeyboardConfig) {
    const config_file: []const u8 = @embedFile("keyboard.json");
    return try json.parseFromSlice(KeyboardConfig, allocator, config_file, .{
        .duplicate_field_behavior = .use_last,
        .ignore_unknown_fields = true,
    });
}

pub fn loadConfig(allocator: std.mem.Allocator) !struct {
    keyboard_config: KeyboardConfig,
    gpio_config: GpioConfig,
} {
    const parsed_keyboard_config = try initConfig(KeyboardConfig, "./keyboard.json", allocator);
    const keyboard_config = parsed_keyboard_config.value;

    const parsed_gpio_config = try initConfig(GpioConfig, "./board_configs/waveshare-rp2040-pizero.json", allocator);
    const gpio_config = parsed_gpio_config.value;

    const json_config = try json.stringifyAlloc(allocator, keyboard_config, .{});
    defer allocator.free(json_config);
    debug("config: {s}\n", .{json_config});

    return .{
        .keyboard_config = keyboard_config,
        .gpio_config = gpio_config,
    };
}

pub fn createConfig(allocator: std.mem.Allocator, unit: []const u8) !GpioKeycodeMap {
    const config = try loadConfig(allocator);
    const keyboard_config = config.keyboard_config;
    const pins = config.gpio_config.pins;
    var marker: usize = 0;
    if (std.mem.eql(u8, unit, "right")) {
        marker = number_of_pins;
    }
    debug("keycode: ", .{});
    var gpio_keycode_map: GpioKeycodeMap = undefined;
    for (keyboard_config.layers, 0..) |layer, layer_index| {
        var pin_index: usize = 0;
        for (marker..marker + number_of_pins) |keycode_idx| {
            const keycode = getKeycodeDefines(layer[keycode_idx]);
            const pin = pins[pin_index];
            debug("pin: {d}, {s}: {d}", .{ pin, layer[keycode_idx], keycode });
            gpio_keycode_map.pins[pin_index] = pin;
            gpio_keycode_map.keycodes[layer_index][pin_index] = keycode;
            pin_index += 1;
        }
        debug("\n", .{});
    }
    return gpio_keycode_map;
}
