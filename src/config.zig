const std = @import("std");
const json = std.json;

pub const KeyboardConfig = struct {
    keyboard_name: []u8,
    usb: Usb,
    bootmagic: Bootmagic,
    features: Features,
    version: u1,
    notes: []u8,
    documentation: []u8,
    keyboard: []u8,
    keymap: []u8,
    community_layouts: [][]u8,
    layout: []u8,
    layers: [][][]u8,
    author: []u8,

    const Self = @This();

    pub fn init(allocator: std.mem.Allocator) !json.Parsed(Self) {
        const config_file: []const u8 = @embedFile("keyboard.json");
        return try json.parseFromSlice(Self, allocator, config_file, .{});
    }
};

pub const Usb = struct {
    pid: []u8,
};

pub const Bootmagic = struct {
    matrix: []u8,
};

pub const Features = struct {
    mousekey: bool,
    bootmagic: bool,
    extrakey: bool,
    oled: bool,
    rgb_matrix: bool,
};
