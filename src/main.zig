const std = @import("std");
const info = std.log.info;

const microzig = @import("microzig");
const gpio = microzig.hal;

const gpio_keycode_map = @import("build_options").gpio_keycode_map;
const Scanner = @import("keyscan.zig").Scanner;

var active_layer: u8 = 0;

pub fn main() !void {
    // const gpa = std.heap.GeneralPurposeAllocator(.{}){};
    // defer _ = gpa.deinit();
    // create Keyboard
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // Try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
