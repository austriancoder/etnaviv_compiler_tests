FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
IMM[0] FLT32 {    3.1416,    -3.1416,     6.7832,    -5.7832}
  0: SIN OUT[0].x, IMM[0].xxxx
  1: SIN OUT[0].y, IMM[0].yyyy
  2: SIN OUT[0].z, IMM[0].zzzz
  3: SIN OUT[0].w, IMM[0].wwww
  4: END

FRAG
0000: 07831009 00000000 00000000 20000018  MOV t3, void, void, u1.xxxx
0001: 07821003 00000800 01c801d0 00000000  MUL t2, u0.xxxx, t3, void
0002: 00811022 00000000 00000000 00390028  SIN t1.x___, void, void, t2
0003: 07831009 00000000 00000000 20000018  MOV t3, void, void, u1.xxxx
0004: 07821003 15400800 01c801d0 00000000  MUL t2, u0.yyyy, t3, void
0005: 01011022 00000000 00000000 00390028  SIN t1._y__, void, void, t2
0006: 07831009 00000000 00000000 20000018  MOV t3, void, void, u1.xxxx
0007: 07821003 2a800800 01c801d0 00000000  MUL t2, u0.zzzz, t3, void
0008: 02011022 00000000 00000000 00390028  SIN t1.__z_, void, void, t2
0009: 07831009 00000000 00000000 20000018  MOV t3, void, void, u1.xxxx
0010: 07821003 3fc00800 01c801d0 00000000  MUL t2, u0.wwww, t3, void
0011: 04011022 00000000 00000000 00390028  SIN t1.___w, void, void, t2
num loops: 0
num temps: 4
num const: 0
immediates:
 [0].x = 3.141600 (0x40490ff9)
 [0].y = -3.141600 (0xc0490ff9)
 [0].z = 6.783200 (0x40d90ff9)
 [0].w = -5.783200 (0xc0b90ff9)
 [1].x = 0.636620 (0x3f22f983)
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
