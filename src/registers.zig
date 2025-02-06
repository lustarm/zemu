pub const Registers = struct {
    // ! af, bc, de, hl
    a: u8,
    b: u8,
    c: u8,
    d: u8,
    e: u8,
    f: u8,
    h: u8,
    l: u8,

    // ! a register is where arithmatic happens

    pub fn get_bc(self: *Registers) u16 {
        // ! this combines each of the 8 bits
        return @as(u16, self.b) << 8 | @as(u16, self.c);
    }

    pub fn set_bc(self: *Registers, v: u16) void {
        // ! this splits the 16 bits into two 8 bit registers
        self.b = @as(u8, @intCast((v & 0xFF00) >> 8));
        self.c = @as(u8, @intCast(v & 0xFF));
    }

    pub fn get_hl(self: *Registers) u16 {
        return @as(u16, self.h) << 8 | @as(u16, self.l);
    }

    pub fn set_hl(self: *Registers, v: u16) void {
        self.h = @as(u8, @intCast((v & 0xFF00) >> 8));
        self.l = @as(u8, @intCast(v & 0xFF));
    }

    pub fn get_de(self: *Registers) u16 {
        return @as(u16, self.d) << 8 | @as(u16, self.e);
    }

    pub fn set_de(self: *Registers, v: u16) void {
        self.d = @as(u8, @intCast((v & 0xFF00) >> 8));
        self.e = @as(u8, @intCast(v & 0xFF));
    }
};
