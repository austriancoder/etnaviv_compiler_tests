FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL TEMP[0]
IMM[0] FLT32 {    4.8000,     0.3000,    -0.2000,     1.2000}
IMM[1] FLT32 {    0.1000,     0.0000,     0.0000,     0.0000}
  0: FLR TEMP[0], IMM[0]
  1: MUL OUT[0], TEMP[0], IMM[1].xxxx
  2: END

FRAG
0000: 07811025 00000000 00000000 20390008  FLOOR t1, void, void, u0
0001: 07811003 39001800 000000c0 00000002  MUL t1, t1, u1.xxxx, void
num loops: 0
num temps: 2
num const: 0
immediates:
 [0].x = 4.800000 (0x4099999a)
 [0].y = 0.300000 (0x3e99999a)
 [0].z = -0.200000 (0xbe4ccccd)
 [0].w = 1.200000 (0x3f99999a)
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
