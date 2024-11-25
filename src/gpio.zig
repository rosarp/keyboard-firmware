pub fn generatePins(comptime num_of_pins: u8) []u8 {
    var pins: [num_of_pins]u8 = [_]u8{undefined} ** num_of_pins;
    for (0..num_of_pins) |i| {
        pins[i] = @intCast(i);
    }
    return &pins;
}
