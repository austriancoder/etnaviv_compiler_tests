FRAG
DCL IN[0], GENERIC[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0]
  0: TEX TEMP[0], IN[0], SAMP[0], 2D
  1: MOV OUT[0], TEMP[0].wwww
  2: END


FRAG
0000: 07811018 39001f20 00000000 00000000  TEXLD t1, tex0, t1, void, void
0001: 07811009 00000000 00000000 003fc018  MOV t1, void, void, t1.wwww
num loops: 0
num temps: 2
num const: 0
immediates:
inputs:
 [1] name=GENERIC index=0 comps=2
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
