FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL OUT[0], COLOR
DCL CONST[0..1]
  0: MAD OUT[0], IN[0], CONST[0], CONST[1]
  1: END

FRAG
0000: 07831009 00000000 00000000 20390018  MOV t3, void, void, u1
0001: 07821002 39001800 01c80040 0039003a  MAD t2, t1, u0, t3
num loops: 0
num temps: 4
num const: 8
immediates:
inputs:
 [1] name=COLOR index=0 comps=4
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
