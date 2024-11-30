const std = @import("std");
const info = std.log.info;

const microzig = @import("microzig");
const gpio = microzig.hal;

// const keyboard_config = @import("build_options").keyboard_config;

// comptime load left or right gpio pins

pub fn main() !void {}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
