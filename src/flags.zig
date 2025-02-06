pub const ZERO_FLAG_BYTE_POSITION: u8 = 7;
pub const SUBTRACT_FLAG_BYTE_POSITION: u8 = 6;
pub const HALF_CARRY_FLAG_BYTE_POSITION: u8 = 5;
pub const CARRY_FLAG_BYTE_POSITION: u8 = 4;

pub const flags = struct {
    zero_flag: bool,
    sub_flag: bool,
    half_carry_flag: bool,
    carry_flag: bool,
};
