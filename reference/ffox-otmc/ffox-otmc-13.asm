FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], TEXCOORD[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
  0: TEX OUT[0], IN[0], SAMP[0], 2D
  1: END

FRAG
0000: 07821018 39001f20 00000000 00000000  TEXLD t2, tex0, t1, void, void
num loops: 0
num temps: 3
num const: 0
immediates:
inputs:
 [1] name=TEXCOORD index=0 comps=2
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
