FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL OUT[0], COLOR
DCL CONST[0]
DCL TEMP[0]
IMM[0] FLT32 {    0.1000,     0.0000,     0.0000,     0.0000}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[1]
  0: MUL TEMP[1].x, CONST[0].xxxx, IN[0].xxxx
  1: MAD TEMP[1].x, CONST[0].yyyy, IN[0].yyyy, TEMP[1].xxxx
  2: MAD TEMP[1].x, CONST[0].zzzz, IN[0].zzzz, TEMP[1].xxxx
  3: ADD TEMP[0], IN[0].wwww, TEMP[1].xxxx
  4: MUL OUT[0], TEMP[0], IMM[0].xxxx
  5: END

FRAG
0000: 00821003 00000800 000000d0 00000000  MUL t2.x___, u0.xxxx, t1.xxxx, void
0001: 00821002 15400800 00aa00d0 00000028  MAD t2.x___, u0.yyyy, t1.yyyy, t2.xxxx
0002: 00821002 2a800800 015400d0 00000028  MAD t2.x___, u0.zzzz, t1.zzzz, t2.xxxx
0003: 07811001 3fc01800 00000000 00000028  ADD t1, t1.wwww, void, t2.xxxx
0004: 07821003 39001800 000000c0 00000002  MUL t2, t1, u1.xxxx, void
num loops: 0
num temps: 3
num const: 4
immediates:
 [1].x = 0.100000 (0x3dcccccd)
 [1].y = 0.000000 (0x00000000)
 [1].z = 0.000000 (0x00000000)
 [1].w = 0.000000 (0x00000000)
 [2].x = 0.000000 (0x00000000)
 [2].y = 1.000000 (0x3f800000)
 [2].z = 128.000000 (0x43000000)
 [2].w = 0.000000 (0x00000000)
inputs:
 [1] name=COLOR index=0 comps=4
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
