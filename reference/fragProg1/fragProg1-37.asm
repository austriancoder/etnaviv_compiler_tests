FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
IMM[0] FLT32 {    8.0000,   -10.0000,     1.0000,    12.0000}
  0: MOV OUT[0], IMM[0]
  1: RCP OUT[0], IMM[0].xxxx
  2: END

FRAG
0000: 07811009 00000000 00000000 20390008  MOV t1, void, void, u0
0001: 0781100c 00000000 00000000 20000008  RCP t1, void, void, u0.xxxx
num loops: 0
num temps: 2
num const: 0
immediates:
 [0].x = 8.000000 (0x41000000)
 [0].y = -10.000000 (0xc1200000)
 [0].z = 1.000000 (0x3f800000)
 [0].w = 12.000000 (0x41400000)
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
