FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[9], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL CONST[0]
DCL TEMP[0], LOCAL
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[0], 2D
  2: MUL TEMP[0], TEMP[0], CONST[0]
  3: MOV OUT[0], TEMP[0]
  4: END

FRAG
0000: 01811009 00000000 00000000 00150018  MOV t1.xy__, void, void, t1.xyyy
0001: 07811018 39001f20 00000000 00000000  TEXLD t1, tex0, t1, void, void
0002: 07811003 39001800 01c80040 00000002  MUL t1, t1, u0, void
num loops: 0
num temps: 2
num const: 4
immediates:
inputs:
 [1] name=GENERIC index=9 comps=2
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
