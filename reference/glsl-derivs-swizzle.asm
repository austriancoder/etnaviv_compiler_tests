FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL OUT[0], COLOR
DCL TEMP[0], LOCAL
  0: DDX TEMP[0], IN[0].ywxz
  1: MOV OUT[0], TEMP[0]
  2: END


FRAG
0000: 07811007 23401800 00000000 00234018  DSX t1, t1.ywxz, void, t1.ywxz
num loops: 0
num temps: 2
num const: 0
immediates:
inputs:
 [1] name=GENERIC index=20 comps=4
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
