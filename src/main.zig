const std = @import("std");

const f = @import("flags.zig");
const c = @import("cpu.zig");

var reg = c.Registers {
    .a = 0, .b = 0, .c = 0, .d = 0, .e = 0, .f = 0, .h = 0, .l = 0
};

pub fn main() !void {}

test "create registers" {
    reg.set_bc(18);
    std.debug.print("Set register BC: {}\n", .{reg.get_bc()});
}

test "execute cpu instruction" {
    const i = c.Instruction{ .ADD = c.ArithmaticTarget.a };
    var cpu = c.CPU{};
    try cpu.execute(&reg, i);
}
