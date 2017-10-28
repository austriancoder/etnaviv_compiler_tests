FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
IMM[0] FLT32 {    0.5000,     2.0000,     3.0000,     4.0000}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[0]
  0: LG2 TEMP[0].x, IMM[0].xxxx
  1: MUL TEMP[0].x, IMM[0].yyyy, TEMP[0].xxxx
  2: EX2 OUT[0].x, TEMP[0].xxxx
  3: LG2 TEMP[0].x, IMM[0].xxxx
  4: MUL TEMP[0].x, IMM[0].zzzz, TEMP[0].xxxx
  5: EX2 OUT[0].y, TEMP[0].xxxx
  6: LG2 TEMP[0].x, IMM[0].xxxx
  7: MUL TEMP[0].x, IMM[0].wwww, TEMP[0].xxxx
  8: EX2 OUT[0].z, TEMP[0].xxxx
  9: LG2 TEMP[0].x, IMM[0].wwww
 10: MUL TEMP[0].x, IMM[0].xxxx, TEMP[0].xxxx
 11: EX2 OUT[0].w, TEMP[0].xxxx
 12: END

FRAG
0000: 00811012 00000000 00000000 20000008  LOG t1.x___, void, void, u0.xxxx
0001: 00811003 15400800 000000d0 00000000  MUL t1.x___, u0.yyyy, t1.xxxx, void
0002: 00821011 00000000 00000000 00000018  EXP t2.x___, void, void, t1.xxxx
0003: 00811012 00000000 00000000 20000008  LOG t1.x___, void, void, u0.xxxx
0004: 00811003 2a800800 000000d0 00000000  MUL t1.x___, u0.zzzz, t1.xxxx, void
0005: 01021011 00000000 00000000 00000018  EXP t2._y__, void, void, t1.xxxx
0006: 00811012 00000000 00000000 20000008  LOG t1.x___, void, void, u0.xxxx
0007: 00811003 3fc00800 000000d0 00000000  MUL t1.x___, u0.wwww, t1.xxxx, void
0008: 02021011 00000000 00000000 00000018  EXP t2.__z_, void, void, t1.xxxx
0009: 00811012 00000000 00000000 203fc008  LOG t1.x___, void, void, u0.wwww
0010: 00811003 00000800 000000d0 00000000  MUL t1.x___, u0.xxxx, t1.xxxx, void
0011: 04021011 00000000 00000000 00000018  EXP t2.___w, void, void, t1.xxxx
num loops: 0
num temps: 3
num const: 0
immediates:
 [0].x = 0.500000 (0x3f000000)
 [0].y = 2.000000 (0x40000000)
 [0].z = 3.000000 (0x40400000)
 [0].w = 4.000000 (0x40800000)
 [1].x = 0.000000 (0x00000000)
 [1].y = 1.000000 (0x3f800000)
 [1].z = 128.000000 (0x43000000)
 [1].w = 0.000000 (0x00000000)
inputs:
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
