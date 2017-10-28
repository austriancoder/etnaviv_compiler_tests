FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], POSITION
DCL OUT[1], COLOR
DCL CONST[0]
  0: MOV OUT[1], CONST[0]
  1: MOV OUT[0].z, CONST[0].yyyy
  2: END

FRAG
0000: 07811009 00000000 00000000 20390008  MOV t1, void, void, u0
0001: 02001009 00000000 00000000 20154008  MOV t0.__z_, void, void, u0.yyyy
num loops: 0
num temps: 2
num const: 4
immediates:
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=0
  input_count_unk8=0x0000001f
