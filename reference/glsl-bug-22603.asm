FRAG
DCL IN[0], POSITION, LINEAR
DCL OUT[0], POSITION
DCL CONST[0]
DCL TEMP[0]
  0: MOV TEMP[0], IN[0]
  1: MAD TEMP[0].y, IN[0], CONST[0].xxxx, CONST[0].yyyy
  2: MOV OUT[0].z, TEMP[0].zzzz
  3: END


FRAG
0000: 07811009 00000000 00000000 00390008  MOV t1, void, void, t0
0001: 01011002 39000800 00000040 2015400a  MAD t1._y__, t0, u0.xxxx, u0.yyyy
0002: 02001009 00000000 00000000 002a8018  MOV t0.__z_, void, void, t1.zzzz
num loops: 0
num temps: 2
num const: 4
immediates:
inputs:
outputs:
special:
  ps_color_out_reg=-1
  ps_depth_out_reg=0
  input_count_unk8=0x0000001f
