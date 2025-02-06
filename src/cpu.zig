const std = @import("std");

pub const Instruction = union(enum) { ADD: ArithmaticTarget };
pub const ArithmaticTarget = enum { a, b, c, d, e, f, h, l};

pub const cpu = struct {

    pub fn execute(instruction: Instruction) void {
        switch(instruction) {
            Instruction.ADD => |register| {
                switch(register) {
                    ArithmaticTarget.a =>
                        std.debug.print("Add instruction called to register {}", .{register}),
                    else => std.debug.print("Invalid register given", .{}),
                }
            },
        }
    }
};
