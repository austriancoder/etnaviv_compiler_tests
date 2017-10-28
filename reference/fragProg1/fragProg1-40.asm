FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
IMM[0] FLT32 {    0.5000,     0.0000,     0.0000,     0.0000}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[0]
  0: COS OUT[0].x, IMM[0].xxxx
  1: SIN OUT[0].y, IMM[0].xxxx
  2: END

FRAG
0000: 07841009 00000000 00000000 20000028  MOV t4, void, void, u2.xxxx
0001: 07831003 00000800 01c80250 00000000  MUL t3, u0.xxxx, t4, void
0002: 00821023 00000000 00000000 00390038  COS t2.x___, void, void, t3
0003: 07841009 00000000 00000000 20000028  MOV t4, void, void, u2.xxxx
0004: 07831003 00000800 01c80250 00000000  MUL t3, u0.xxxx, t4, void
0005: 01021022 00000000 00000000 00390038  SIN t2._y__, void, void, t3
num loops: 0
num temps: 5
num const: 0
immediates:
 [0].x = 0.500000 (0x3f000000)
 [0].y = 0.000000 (0x00000000)
 [0].z = 0.000000 (0x00000000)
 [0].w = 0.000000 (0x00000000)
 [1].x = 0.000000 (0x00000000)
 [1].y = 1.000000 (0x3f800000)
 [1].z = 128.000000 (0x43000000)
 [1].w = 0.000000 (0x00000000)
 [2].x = 0.636620 (0x3f22f983)
inputs:
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
