const std = @import("std");
const json = std.json;
const microzig = @import("microzig");

const KeyboardConfig = @import("src/config.zig").KeyboardConfig;
const Gpio = @import("src/config.zig").Gpio;
const number_of_pins = @import("src/config.zig").number_of_pins;
const loadConfig = @import("src/config.zig").loadConfig;
const MicroBuild = microzig.MicroBuild(.{
    .rp2xxx = true,
});

pub fn build(b: *std.Build) !void {
    const optimize = b.standardOptimizeOption(.{});

    const allocator = b.allocator;
    const config = try loadConfig(allocator);
    const mz_dep = b.dependency("microzig", .{});

    const mb = MicroBuild.init(b, mz_dep) orelse return;

    // `add_firmware` basically works like addExecutable, but takes a
    // `microzig.Target` for target instead of a `std.zig.CrossTarget`.
    //
    // The target will convey all necessary information on the chip,
    // cpu and potentially the board as well.
    const firmware = mb.add_firmware(.{
        .name = "keyboard_firmware",
        .target = mb.ports.rp2xxx.boards.raspberrypi.pico,
        .optimize = optimize,
        .root_source_file = b.path("./src/main.zig"),
    });

    // Add the config as a build option
    const options = b.addOptions();
    options.addOption(
        KeyboardConfig,
        "keyboard_config",
        config.keyboard_config,
    );
    std.log.debug("gpio_pins: {d}\n", .{config.gpio_pins});

    options.addOption(
        [number_of_pins]u8,
        "gpio_pins",
        config.gpio_pins,
    );
    firmware.add_options("build_options", options);

    // firmware.addImport("config", options.createModule());
    // `install_firmware()` is the MicroZig pendant to `Build.installArtifact()`
    // and allows installing the firmware as a typical firmware file.
    //
    // This will also install into `$prefix/firmware` instead of `$prefix/bin`.
    mb.install_firmware(firmware, .{});

    // For debugging, we also always install the firmware as an ELF file
    mb.install_firmware(firmware, .{ .format = .elf });

    // Creates a step for unit testing. This only builds the test executable
    // but does not run it.
    // const lib_unit_tests = b.addTest(.{
    //     .root_source_file = b.path("src/root.zig"),
    //     .target = target,
    //     .optimize = optimize,
    // });

    // const run_lib_unit_tests = b.addRunArtifact(lib_unit_tests);

    // const exe_unit_tests = b.addTest(.{
    //     .root_source_file = b.path("src/main.zig"),
    //     .target = target,
    //     .optimize = optimize,
    // });

    // const run_exe_unit_tests = b.addRunArtifact(exe_unit_tests);

    // Similar to creating the run step earlier, this exposes a `test` step to
    // the `zig build --help` menu, providing a way for the user to request
    // running the unit tests.
    // const test_step = b.step("test", "Run unit tests");
    // test_step.dependOn(&run_lib_unit_tests.step);
    // test_step.dependOn(&run_exe_unit_tests.step);
}
