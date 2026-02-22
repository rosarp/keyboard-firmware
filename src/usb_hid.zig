const std = @import("std");
const microzig = @import("microzig");

const rp2xxx = microzig.hal;
const time = rp2xxx.time;
const usb = microzig.core.usb;
const USB_Device = rp2xxx.usb.Polled(.{});

pub const Modifiers = packed struct(u8) {
    lctrl: bool,
    lshift: bool,
    lalt: bool,
    lgui: bool,
    rctrl: bool,
    rshift: bool,
    ralt: bool,
    rgui: bool,

    pub const none: @This() = @bitCast(@as(u8, 0));
};

pub const Code = enum(u8) {
    // Codes taken from https://gist.github.com/mildsunrise/4e231346e2078f440969cdefb6d4caa3
    // zig fmt: off
    reserved = 0x00, error_roll_over, post_fail, error_undefined,
    a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z,
    top_1, top_2, top_3, top_4, top_5, top_6, top_7, top_8, top_9, top_0,
    enter, escape, delete, tab, space,
    minus, equal, left_bracket, right_bracket, backslash, non_us_hash, semicolon, apostrophe, grave, comma, period, slash,
    caps_lock,
    f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12,
    print_screen, scroll_lock, pause, insert, home, page_up, delete_forward, end, page_down,
    right_arrow, left_arrow, down_arrow, up_arrow, num_lock,
    kpad_div, kpad_mul, kpad_sub, kpad_add, kpad_enter,
    kpad_1, kpad_2, kpad_3, kpad_4, kpad_5, kpad_6, kpad_7, kpad_8, kpad_9, kpad_0,
    kpad_delete, non_us_backslash, application, power, kpad_equal,
    f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24,
    lctrl = 224, lshift, lalt, lgui, rctrl, rshift, ralt, rgui,
    // zig fmt: on
    _,
};

pub const KeyboardInReport = extern struct {
    modifiers: Modifiers,
    reserved: u8 = 0,
    keys: [6]Code,

    comptime {
        std.debug.assert(@sizeOf(@This()) == 8);
    }

    pub const empty: @This() = .{ .modifiers = .none, .keys = @splat(.reserved) };
};

pub const KeyboardOutReport = packed struct(u8) {
    num_lock: bool,
    caps_lock: bool,
    scroll_lock: bool,
    padding: u5 = 0,
};

const Keyboard = usb.drivers.hid.InterruptDriver(.{
    .subclass = .Boot,
    .protocol = .Boot,
    .report_descriptor = &.{
        .{ .global_usage_page = .generic_desktop },
        .local_usage_enum(.{ .generic_desktop = .keyboard }),
        .{ .main_collection = .Application },
        // Input: modifier key bitmap
        .{ .data = .{
            .usage = .{ .global_page = .keyboard },
            .usage_range = .{ 0xE0, 0xE7 },
            .count = 8,
            .Child = bool,
            .dir = .In,
            .type = .dynamic,
        } },
        // Reserved 8 bits
        .{ .data_static = .{ .In, u8 } },
        // Output: indicator LEDs
        .{ .data = .{
            .usage = .{ .global_page = .led },
            .usage_range = .{ 1, 5 },
            .count = 5,
            .Child = bool,
            .dir = .Out,
            .type = .dynamic,
        } },
        // Padding
        .{ .data_static = .{ .Out, u3 } },
        // Input: up to 6 pressed key codes
        .{ .data = .{
            .usage = .{ .global_page = .keyboard },
            .usage_range = .{ 0x00, 0xff },
            .count = 6,
            .Child = u8,
            .dir = .In,
            .type = .selector,
        } },
        // End
        .main_collection_end,
    },
    .InReport = KeyboardInReport,
    .OutReport = KeyboardOutReport,
});

var usb_device: USB_Device = undefined;

var usb_controller: usb.DeviceController(.{
    .bcd_usb = USB_Device.max_supported_bcd_usb,
    .device_triple = .unspecified,
    .vendor = USB_Device.default_vendor_id,
    .product = USB_Device.default_product_id,
    .bcd_device = .v1_00,
    .serial = "keyboard-firmware",
    .max_supported_packet_size = USB_Device.max_supported_packet_size,
    .configurations = &.{.{
        .attributes = .{ .self_powered = false },
        .max_current_ma = 50,
        .Drivers = struct { keyboard: Keyboard, reset: rp2xxx.usb.ResetDriver(null, 0) },
    }},
}, .{.{
    .keyboard = .{ .itf_string = "Split Keyboard", .poll_interval = 1 },
    .reset = "",
}}) = .init;

pub const UsbHid = struct {
    const Self = @This();

    pub fn init() !Self {
        // Initialize USB device
        usb_device = .init();

        std.log.debug("USB HID initialized", .{});
        return Self{};
    }

    pub fn sendReport(self: Self, report: []const u8) !void {
        _ = self;

        // Convert our 8-byte report to KeyboardInReport format
        if (report.len >= 8) {
            const modifiers: Modifiers = @bitCast(report[0]);
            var keys: [6]Code = @splat(.reserved);

            // Convert keycodes to our Code enum
            var key_count: usize = 0;
            for (report[1..8]) |keycode| {
                if (keycode != 0 and key_count < 6) {
                    // Map HID keycode to our Code enum
                    if (std.meta.intToEnum(Code, keycode)) |code| {
                        keys[key_count] = code;
                        key_count += 1;
                    } else |_| {
                        // Invalid keycode, skip
                    }
                }
            }

            const keyboard_report = KeyboardInReport{
                .modifiers = modifiers,
                .keys = keys,
            };

            if (usb_controller.drivers()) |drivers| {
                _ = drivers.keyboard.send_report(&keyboard_report);
            }
        }
    }

    pub fn task(self: Self) void {
        _ = self;
        // Poll for USB events
        usb_device.poll(&usb_controller);
    }
};
