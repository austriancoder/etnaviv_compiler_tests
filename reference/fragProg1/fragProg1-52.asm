FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0]
  0: RCP OUT[0].x, CONST[0].xxxx
  1: RCP OUT[0].y, CONST[0].yyyy
  2: RCP OUT[0].z, CONST[0].zzzz
  3: RCP OUT[0].w, CONST[0].wwww
  4: END

FRAG
0000: 0081100c 00000000 00000000 20000008  RCP t1.x___, void, void, u0.xxxx
0001: 0101100c 00000000 00000000 20154008  RCP t1._y__, void, void, u0.yyyy
0002: 0201100c 00000000 00000000 202a8008  RCP t1.__z_, void, void, u0.zzzz
0003: 0401100c 00000000 00000000 203fc008  RCP t1.___w, void, void, u0.wwww
num loops: 0
num temps: 2
num const: 4
immediates:
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
