FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], GENERIC[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0], LOCAL
  1: TEX TEMP[0], IN[0].xyxx, SAMP[0], 2D
  2: MOV OUT[0], TEMP[0].wzyx
  3: END

FRAG
0000: 07811018 01001f20 00000000 00000000  TEXLD t1, tex0, t1.xyxx, void, void
0001: 07811009 00000000 00000000 0006c018  MOV t1, void, void, t1.wzyx
num loops: 0
num temps: 2
num const: 0
immediates:
inputs:
 [1] name=COLOR index=0 comps=2
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
