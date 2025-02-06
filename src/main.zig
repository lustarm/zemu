const std = @import("std");
const r =  @import("registers.zig");
const f = @import("flags.zig");
const c = @import("cpu.zig");

pub fn main() !void {}

test "create registers" {
    var reg = r.Registers {
        .a = 0, .b = 0, .c = 0, .d = 0, .e = 0, .f = 0, .h = 0, .l = 0
    };

    reg.set_bc(18);

    std.debug.print("Register BC: {d}\n", .{reg.get_bc()});
}

test "execute cpu instruction" {
    const i = c.Instruction{ .ADD = c.ArithmaticTarget.a };
    c.cpu.execute(i);
}
