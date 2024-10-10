pub fn generatePins(comptime num_of_pins: u8) []u8 {
    var pins: [num_of_pins]u8 = undefined;
    for (0..num_of_pins) |i| {
        pins[i] = @intCast(i);
    }
    return &pins;
}
