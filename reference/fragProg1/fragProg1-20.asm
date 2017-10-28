FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
IMM[0] FLT32 {    9.9000,     0.1600,     2.5000,     0.0000}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[0]
DCL TEMP[1]
  0: MUL OUT[0].y, IMM[0].xyxx, IMM[0].xzxx
  1: MOV OUT[0].z, IMM[0].xxyx
  2: MOV OUT[0].w, IMM[0].xxxz
  3: MOV OUT[0].x, IMM[1].yxxx
  4: END

FRAG
0000: 01031003 01000800 00100050 00000002  MUL t3._y__, u0.xyxx, u0.xzxx, void
0001: 02031009 00000000 00000000 20040008  MOV t3.__z_, void, void, u0.xxyx
0002: 04031009 00000000 00000000 20200008  MOV t3.___w, void, void, u0.xxxz
0003: 00831009 00000000 00000000 20004018  MOV t3.x___, void, void, u1.yxxx
num loops: 0
num temps: 4
num const: 0
immediates:
 [0].x = 9.900000 (0x411e6666)
 [0].y = 0.160000 (0x3e23d70a)
 [0].z = 2.500000 (0x40200000)
 [0].w = 0.000000 (0x00000000)
 [1].x = 0.000000 (0x00000000)
 [1].y = 1.000000 (0x3f800000)
 [1].z = 128.000000 (0x43000000)
 [1].w = 0.000000 (0x00000000)
inputs:
outputs:
special:
  ps_color_out_reg=3
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
