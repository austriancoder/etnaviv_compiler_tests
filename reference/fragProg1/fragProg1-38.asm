FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
IMM[0] FLT32 {    1.0000,     4.0000,     9.0000,   100.0000}
  0: RSQ OUT[0].x, |IMM[0].xxxx|
  1: RSQ OUT[0].y, |IMM[0].yyyy|
  2: RSQ OUT[0].z, |IMM[0].zzzz|
  3: RSQ OUT[0].w, |IMM[0].wwww|
  4: END

FRAG
0000: 0081100d 00000000 00000000 20800008  RSQ t1.x___, void, void, |u0.xxxx|
0001: 0101100d 00000000 00000000 20954008  RSQ t1._y__, void, void, |u0.yyyy|
0002: 0201100d 00000000 00000000 20aa8008  RSQ t1.__z_, void, void, |u0.zzzz|
0003: 0401100d 00000000 00000000 20bfc008  RSQ t1.___w, void, void, |u0.wwww|
num loops: 0
num temps: 2
num const: 0
immediates:
 [0].x = 1.000000 (0x3f800000)
 [0].y = 4.000000 (0x40800000)
 [0].z = 9.000000 (0x41100000)
 [0].w = 100.000000 (0x42c80000)
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
