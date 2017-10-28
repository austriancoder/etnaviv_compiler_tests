FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0..2]
  0: CMP OUT[0], CONST[0], CONST[1], CONST[2]
  1: END

FRAG
0000: 07821009 00000000 00000000 20390018  MOV t2, void, void, u1
0001: 07831009 00000000 00000000 20390028  MOV t3, void, void, u2
0002: 078113cf 39000800 01c80150 00390038  SELECT.LZ t1, u0, t2, t3
num loops: 0
num temps: 4
num const: 12
immediates:
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
