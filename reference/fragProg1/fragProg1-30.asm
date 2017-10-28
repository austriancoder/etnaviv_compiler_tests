FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0..1]
  0: MAX OUT[0], CONST[0], CONST[1]
  1: END

FRAG
0000: 07821009 00000000 00000000 20390018  MOV t2, void, void, u1
0001: 0781108f 39000800 01c80150 20390008  SELECT.LT t1, u0, t2, u0
num loops: 0
num temps: 3
num const: 8
immediates:
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
