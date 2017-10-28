FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL CONST[1..4]
DCL TEMP[0], LOCAL
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: MOV TEMP[0].w, IN[0].wwww
  2: TXP TEMP[0], TEMP[0], SAMP[0], 2D
  3: MUL TEMP[0], TEMP[0], CONST[4]
  4: MOV OUT[0], TEMP[0]
  5: END

FRAG
0000: 01821009 00000000 00000000 00150018  MOV t2.xy__, void, void, t1.xyyy
0001: 04021009 00000000 00000000 003fc018  MOV t2.___w, void, void, t1.wwww
0002: 0403100c 00000000 00000000 003fc028  RCP t3.___w, void, void, t2.wwww
0003: 03831003 3fc03800 01c80140 00000000  MUL t3.xyz_, t3.wwww, t2, void
0004: 07821018 39003f20 00000000 00000000  TEXLD t2, tex0, t3, void, void
0005: 07821003 39002800 01c80240 00000002  MUL t2, t2, u4, void
num loops: 0
num temps: 4
num const: 20
immediates:
inputs:
 [1] name=GENERIC index=0 comps=4
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
