FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
IMM[0] FLT32 {    8.0000,   -10.0000,     1.0000,    12.0000}
  0: RCP OUT[0].x, IMM[0].xxxx
  1: RCP OUT[0].y, IMM[0].yyyy
  2: RCP OUT[0].z, IMM[0].zzzz
  3: RCP OUT[0].w, IMM[0].wwww
  4: END

FRAG
0000: 0081100c 00000000 00000000 20000008  RCP t1.x___, void, void, u0.xxxx
0001: 0101100c 00000000 00000000 20154008  RCP t1._y__, void, void, u0.yyyy
0002: 0201100c 00000000 00000000 202a8008  RCP t1.__z_, void, void, u0.zzzz
0003: 0401100c 00000000 00000000 203fc008  RCP t1.___w, void, void, u0.wwww
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
