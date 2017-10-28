FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0], LOCAL
  0: MOV TEMP[0].xy, IN[1].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[0], 2D
  2: MUL TEMP[0], TEMP[0], IN[0]
  3: MOV OUT[0], TEMP[0]
  4: END


FRAG
0000: 01821009 00000000 00000000 00150028  MOV t2.xy__, void, void, t2.xyyy
0001: 07821018 39002f20 00000000 00000000  TEXLD t2, tex0, t2, void, void
0002: 07821003 39002800 01c800c0 00000000  MUL t2, t2, t1, void
num loops: 0
num temps: 3
num const: 0
immediates:
inputs:
 [1] name=GENERIC index=20 comps=4
 [2] name=GENERIC index=21 comps=2
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
