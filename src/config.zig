const std = @import("std");
const debug = std.log.debug;
const json = std.json;

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
    layers: [4][42][]const u8,
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

/// Runs at build time
fn init(allocator: std.mem.Allocator) !json.Parsed(KeyboardConfig) {
    const config_file: []const u8 = @embedFile("keyboard.json");
    return try json.parseFromSlice(KeyboardConfig, allocator, config_file, .{
        .duplicate_field_behavior = .use_last,
        .ignore_unknown_fields = true,
    });
}

/// Runs at build time
pub fn loadConfig(gpio_pins: []u8) !KeyboardConfig {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const parsed = try init(allocator);
    defer parsed.deinit();
    const config = parsed.value;

    const json_config = try json.stringifyAlloc(allocator, config, .{});
    defer allocator.free(json_config);
    debug("config: {s}\n", .{json_config});

    for (0..gpio_pins.len) |i| {
        gpio_pins[i] = @intCast(i);
    }
    debug("gpio_pins: {d}\n", .{gpio_pins});
    return config;
}
