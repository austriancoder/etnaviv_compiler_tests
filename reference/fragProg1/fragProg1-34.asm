FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL OUT[0], COLOR
DCL CONST[0..1]
  0: MOV OUT[0], CONST[0]
  1: MUL OUT[0].xy, IN[0], CONST[1]
  2: END

FRAG
0000: 07821009 00000000 00000000 20390008  MOV t2, void, void, u0
0001: 01821003 39001800 01c800c0 00000002  MUL t2.xy__, t1, u1, void
num loops: 0
num temps: 3
num const: 8
immediates:
inputs:
 [1] name=COLOR index=0 comps=2
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
