module main

struct Registers {
mut:	
	a u8
	b u8
	c u8
	d u8
	e u8
	f u8
	h u8
	l u8
}

fn (reg Registers) get_af() u16 {
	return u16(reg.a) << 8 | u16(reg.f)
}

fn (reg Registers) get_bc() u16 {
	return u16(reg.b) << 8 | u16(reg.c)
}

fn (reg Registers) get_de() u16 {
	return u16(reg.d) << 8 | u16(reg.e)
}

fn (reg Registers) get_hl() u16 {
	return u16(reg.h) << 8 | u16(reg.l)
}

fn (mut reg Registers) set_af(value u16) {
	reg.a = u8((value & 0xFF00) >> 8)
	reg.h = u8(value & 0xFF)
} 

fn (mut reg Registers) set_bc(value u16) {
	reg.b = u8((value & 0xFF00) >> 8)
	reg.c = u8(value & 0xFF)
} 

fn (mut reg Registers) set_de(value u16) {
	reg.d = u8((value & 0xFF00) >> 8)
	reg.e = u8(value & 0xFF)
} 

fn (mut reg Registers) set_hl(value u16) {
	reg.h = u8((value & 0xFF00) >> 8)
	reg.l = u8(value & 0xFF)
} 