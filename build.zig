const std = @import("std");
const AutoArrayHashMap = std.AutoArrayHashMap;
const json = std.json;
const microzig = @import("microzig");

const GpioKeycodeMap = @import("src/config.zig").GpioKeycodeMap;
const createConfig = @import("src/config.zig").createConfig;
const number_of_layers = @import("src/config.zig").number_of_layers;
const number_of_pins = @import("src/config.zig").number_of_pins;
const MicroBuild = microzig.MicroBuild(.{
    .rp2xxx = true,
});

pub fn build(b: *std.Build) !void {
    const optimize = b.standardOptimizeOption(.{});

    const allocator = b.allocator;

    const mz_dep = b.dependency("microzig", .{});
    const mb = MicroBuild.init(b, mz_dep) orelse return;

    // Build both left and right firmware
    for ([_][]const u8{ "left", "right" }) |unit| {
        const gpio_keycode_map: GpioKeycodeMap = try createConfig(allocator, unit);

        const firmware = mb.add_firmware(.{
            .name = b.fmt("keyboard_firmware_{s}", .{unit}),
            .target = mb.ports.rp2xxx.boards.raspberrypi.pico,
            .optimize = optimize,
            .root_source_file = b.path("./src/main.zig"),
        });

        const options = b.addOptions();
        options.addOption(
            GpioKeycodeMap,
            "gpio_keycode_map",
            gpio_keycode_map,
        );

        firmware.add_options("build_options", options);

        mb.install_firmware(firmware, .{});
        mb.install_firmware(firmware, .{ .format = .elf });
    }
}
