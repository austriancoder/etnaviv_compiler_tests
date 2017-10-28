FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL OUT[0], COLOR
  0: MOV OUT[0], IN[0]
  1: END

FRAG
0000: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 2
num const: 0
immediates:
inputs:
 [1] name=COLOR index=0 comps=4
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
