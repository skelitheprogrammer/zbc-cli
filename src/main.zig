const calculator = @import("zbc");
const std = @import("std");

pub fn main() !void {
    var args = std.os.argv;
    const slice = args[1..];

    ls: switch (slice.len) {
        0 => return error.NoArguments,
        1 => break :ls,
        else => return error.TooManyArguments,
    }
    const span = std.mem.span(args[1]);
    const stdout = std.io.getStdOut().writer();
    const result = try calculator.process(&span);

    try stdout.print("{d}\n", .{result});
}
