FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL OUT[0], COLOR
DCL CONST[0]
  0: SLT OUT[0], IN[0], CONST[0]
  1: END

FRAG
0000: 07821090 39001800 01c80040 00000002  SET.LT t2, t1, u0, void
num loops: 0
num temps: 3
num const: 4
immediates:
inputs:
 [1] name=COLOR index=0 comps=4
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
