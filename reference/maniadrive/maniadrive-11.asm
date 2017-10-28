FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0..3]
  0: MOV OUT[0], CONST[3]
  1: END

FRAG
0000: 07811009 00000000 00000000 20390038  MOV t1, void, void, u3
num loops: 0
num temps: 2
num const: 16
immediates:
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
