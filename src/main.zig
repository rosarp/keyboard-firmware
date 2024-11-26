const std = @import("std");
const info = std.log.info;
const keyboard_config = @import("build_options").keyboard_config;
const gpio_pins = @import("build_options").gpio_pins;

// comptime load left or right gpio pins

pub fn main() !void {
    info("gpio.pings: {s}\n", .{gpio_pins});

    info("config.root: {}\n", .{keyboard_config.layers.len});
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
