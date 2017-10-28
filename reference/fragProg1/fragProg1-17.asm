FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0]
DCL TEMP[0..1]
IMM[0] FLT32 {    0.5000,     0.0000,     0.0000,     0.0000}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[2]
  0: MOV TEMP[0], CONST[0]
  1: MUL TEMP[2].x, TEMP[0].xxxx, TEMP[0].xxxx
  2: MAD TEMP[2].x, TEMP[0].yyyy, TEMP[0].yyyy, TEMP[2].xxxx
  3: MAD TEMP[1].x, TEMP[0].zzzz, TEMP[0].zzzz, TEMP[2].xxxx
  4: MUL OUT[0], TEMP[1].xxxx, IMM[0].xxxx
  5: END

FRAG
0000: 07811009 00000000 00000000 20390008  MOV t1, void, void, u0
0001: 00831003 00001800 000000c0 00000000  MUL t3.x___, t1.xxxx, t1.xxxx, void
0002: 00831002 15401800 00aa00c0 00000038  MAD t3.x___, t1.yyyy, t1.yyyy, t3.xxxx
0003: 00821002 2a801800 015400c0 00000038  MAD t2.x___, t1.zzzz, t1.zzzz, t3.xxxx
0004: 07811003 00002800 000000c0 00000002  MUL t1, t2.xxxx, u1.xxxx, void
num loops: 0
num temps: 4
num const: 4
immediates:
 [1].x = 0.500000 (0x3f000000)
 [1].y = 0.000000 (0x00000000)
 [1].z = 0.000000 (0x00000000)
 [1].w = 0.000000 (0x00000000)
 [2].x = 0.000000 (0x00000000)
 [2].y = 1.000000 (0x3f800000)
 [2].z = 128.000000 (0x43000000)
 [2].w = 0.000000 (0x00000000)
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
