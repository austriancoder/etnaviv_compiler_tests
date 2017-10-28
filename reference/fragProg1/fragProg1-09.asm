FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0]
DCL TEMP[0]
  0: ADD TEMP[0], CONST[0], CONST[0]
  1: ADD_SAT OUT[0], TEMP[0], CONST[0]
  2: END

FRAG
0000: 07811001 39000800 00000010 20390008  ADD t1, u0, void, u0
0001: 07811801 39001800 00000000 20390008  ADD.SAT t1, t1, void, u0
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
