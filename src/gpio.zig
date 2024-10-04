fn generatePins(num_of_pins: u8) []u8 {
    var pins: [num_of_pins]u8 = .{};
    for (0..num_of_pins) |i| {
        pins[i] = i;
    }
    return pins;
}

const gpio_pins = generatePins(40);
