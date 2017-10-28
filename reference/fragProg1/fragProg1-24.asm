FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL TEMP[0]
IMM[0] FLT32 {   64.0000,     1.0000,    30.0000,     4.0000}
IMM[1] FLT32 {    0.1000,     0.0000,     0.0000,     0.0000}
  0: LG2 TEMP[0].x, IMM[0].xxxx
  1: LG2 TEMP[0].y, IMM[0].yyyy
  2: LG2 TEMP[0].z, IMM[0].zzzz
  3: LG2 TEMP[0].w, IMM[0].wwww
  4: MUL OUT[0], TEMP[0], IMM[1].xxxx
  5: END

FRAG
0000: 00811012 00000000 00000000 20000008  LOG t1.x___, void, void, u0.xxxx
0001: 01011012 00000000 00000000 20154008  LOG t1._y__, void, void, u0.yyyy
0002: 02011012 00000000 00000000 202a8008  LOG t1.__z_, void, void, u0.zzzz
0003: 04011012 00000000 00000000 203fc008  LOG t1.___w, void, void, u0.wwww
0004: 07811003 39001800 000000c0 00000002  MUL t1, t1, u1.xxxx, void
num loops: 0
num temps: 2
num const: 0
immediates:
 [0].x = 64.000000 (0x42800000)
 [0].y = 1.000000 (0x3f800000)
 [0].z = 30.000000 (0x41f00000)
 [0].w = 4.000000 (0x40800000)
 [1].x = 0.100000 (0x3dcccccd)
 [1].y = 0.000000 (0x00000000)
 [1].z = 0.000000 (0x00000000)
 [1].w = 0.000000 (0x00000000)
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
