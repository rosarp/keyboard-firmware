/// Based on keyboard-matrix driver: https://github.com/ZigEmbeddedGroup/microzig/blob/main/drivers/input/keyboard-matrix.zig
/// Only this does not have row & column. Each key is direclty mapped to GPIo pin.
///
const std = @import("std");
const microzig = @import("microzig");
const rp_hal = microzig.hal;
const gpio = rp_hal.gpio;

const config = @import("config.zig");

const DEBOUNCE_TIME_MS = 5;
const HOLD_TIME_MS = 200;

pub const KeyboardOptions = struct {
    /// Total number of keys on the keyboard.
    key_count: usize,

    /// Which digital i/o interface should be used.
    digital_io: type = microzig.drivers.base.Digital_IO,
};

/// Keyboard implementation via GPIOs that scans columns and checks rows.
///
/// There are no row or columns. Keys are directly mapped to individual GPIo pin.
/// Will use key as matrix readers (inputs).
pub fn Keypad(comptime options: KeyboardOptions) type {
    if (options.keys > 256)
        @compileError("cannot encode more than 256 keys!");
    return struct {
        const Matrix = @This();

        const digital_io: type = options.digital_io;
        pub const key_count: usize = options.key_count;

        /// A set that can store if each key is set or not.
        pub const Set = struct {
            const SetType = std.StaticBitSet(key_count);
            pressed: SetType = SetType.initEmpty(),

            /// Adds a key to the set.
            pub fn add(set: *Set, key: u8) void {
                set.pressed.set(key);
            }

            /// Checks if a key is pressed.
            pub fn is_pressed(set: Set, key: u8) bool {
                return set.pressed.isSet(key);
            }

            /// Returns if any key is pressed.
            pub fn any(set: Set) bool {
                return (set.pressed.count() > 0);
            }
        };

        pins: [key_count]digital_io,

        /// Initializes all GPIOs of the matrix and returns a new instance.
        pub fn init(
            keys: [key_count]digital_io,
        ) !Matrix {
            var mat = Matrix{
                .pins = keys,
            };
            for (keys) |k| {
                try k.set_direction(.input);
                try k.set_bias(.high);
            }
            try mat.set_all_to(.high);
            return mat;
        }

        /// Scans the matrix and returns a set of all pressed keys.
        pub fn scan(matrix: Matrix) !Set {
            var result = Set{};

            try matrix.set_all_to(.high);

            for (matrix.pins, 0..) |k_pin, k_index| {
                busyloop(10);

                const state = try k_pin.read();
                if (state == .low) {
                    // someone actually pressed a key!
                    result.add(@as(u8, @truncate(k_index)));
                }

                try k_pin.write(.high);
                busyloop(100);
            }

            try matrix.set_all_to(.high);

            return result;
        }

        fn set_all_to(matrix: Matrix, value: microzig.drivers.baseDigital_IO.State) !void {
            for (matrix.pins) |k| {
                try k.write(value);
            }
        }
    };
}

inline fn busyloop(comptime N: comptime_int) void {
    for (0..N) |_| {
        // wait some cycles so the physics does its magic and convey
        // the electrons
        asm volatile ("" ::: "memory");
    }
}
