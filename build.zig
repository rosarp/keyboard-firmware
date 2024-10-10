const std = @import("std");
const json = std.json;
const microzig = @import("microzig/build");
const rp2040 = @import("microzig/bsp/raspberrypi/rp2040");

const KeyboardConfig = @import("src/config.zig").KeyboardConfig;
const generatePins = @import("src/gpio.zig").generatePins;

pub fn build(b: *std.Build) !void {
    const mz = microzig.init(b, .{});
    const optimize = b.standardOptimizeOption(.{});

    // `add_firmware` basically works like addExecutable, but takes a
    // `microzig.Target` for target instead of a `std.zig.CrossTarget`.
    //
    // The target will convey all necessary information on the chip,
    // cpu and potentially the board as well.
    const firmware = mz.add_firmware(b, .{
        .name = "keyboard_firmware",
        .target = rp2040.boards.raspberrypi.pico,
        .optimize = optimize,
        .root_source_file = b.path("./src/main.zig"),
    });

    const config = try loadConfig();
    const options = b.addOptions();
    options.addOption(KeyboardConfig, "keyboard_config", config);

    // firmware.addImport("config", options.createModule());

    // `install_firmware()` is the MicroZig pendant to `Build.installArtifact()`
    // and allows installing the firmware as a typical firmware file.
    //
    // This will also install into `$prefix/firmware` instead of `$prefix/bin`.
    mz.install_firmware(b, firmware, .{});

    // For debugging, we also always install the firmware as an ELF file
    mz.install_firmware(b, firmware, .{ .format = .elf });

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

fn loadConfig() !KeyboardConfig {
    const parsed = try KeyboardConfig.init();
    // defer parsed.deinit();
    const config = parsed.value;
    std.log.info("config.root: {s}\n", .{config.layers});

    const gpio_pins = generatePins(40);
    std.log.info("config.root: {s}\n", .{gpio_pins});

    return config;
}
