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

    pub fn init() !json.Parsed(Self) {
        const allocator = std.heap.page_allocator;

        const file = try std.fs.cwd().openFile("keyboard.json", .{ .mode = .read_only });
        defer file.close();
        const file_size = try file.getEndPos();

        const config_file = try std.fs.cwd().readFileAlloc(allocator, "keyboard.json", file_size);
        defer allocator.free(config_file);

        // const config_file: []const u8 = @embedFile("keyboard.json");
        const parsed = try json.parseFromSlice(KeyboardConfig, allocator, config_file, .{});
        defer parsed.deinit();
        return parsed;
    }
};

const Usb = struct {
    pid: []u8,
};

const Bootmagic = struct {
    matrix: []u8,
};

const Features = struct {
    mousekey: bool,
    bootmagic: bool,
    extrakey: bool,
    oled: bool,
    rgb_matrix: bool,
};
