FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], GENERIC[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0..2], LOCAL
  1: MOV TEMP[2], IN[0].xyzw
  2: TEX OUT[0].xy, TEMP[2], SAMP[0], SHADOW2D
  3: MOV TEMP[2].xy, IN[0].yxzz
  4: TEX OUT[0].zw, TEMP[2], SAMP[0], SHADOW2D
  5: END

FRAG
0000: 07831009 00000000 00000000 00390018  MOV t3, void, void, t1
0001: 01851018 39003f20 00000000 00000000  TEXLD t5.xy__, tex0, t3, void, void
0002: 01831009 00000000 00000000 00284018  MOV t3.xy__, void, void, t1.yxzz
0003: 06051018 39003f20 00000000 00000000  TEXLD t5.__zw, tex0, t3, void, void
num loops: 0
num temps: 6
num const: 0
immediates:
inputs:
 [1] name=COLOR index=0 comps=4
outputs:
special:
  ps_color_out_reg=5
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
