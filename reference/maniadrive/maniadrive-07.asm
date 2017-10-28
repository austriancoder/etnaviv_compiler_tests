FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], GENERIC[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0..1], LOCAL
  0: MOV TEMP[0].xyz, IN[0].xyzx
  1: MOV TEMP[1].xy, IN[1].xyyy
  2: MOV TEMP[1].w, IN[1].wwww
  3: TXP TEMP[1].w, TEMP[1], SAMP[0], 2D
  4: MUL TEMP[1].x, TEMP[1].wwww, IN[0].wwww
  5: MOV TEMP[0].w, TEMP[1].xxxx
  6: MOV OUT[0], TEMP[0]
  7: END

FRAG
0000: 03841009 00000000 00000000 00090018  MOV t4.xyz_, void, void, t1.xyzx
0001: 01831009 00000000 00000000 00150028  MOV t3.xy__, void, void, t2.xyyy
0002: 04031009 00000000 00000000 003fc028  MOV t3.___w, void, void, t2.wwww
0003: 0405100c 00000000 00000000 003fc038  RCP t5.___w, void, void, t3.wwww
0004: 03851003 3fc05800 01c801c0 00000000  MUL t5.xyz_, t5.wwww, t3, void
0005: 04031018 39005f20 00000000 00000000  TEXLD t3.___w, tex0, t5, void, void
0006: 00831003 3fc03800 01fe00c0 00000000  MUL t3.x___, t3.wwww, t1.wwww, void
0007: 04041009 00000000 00000000 00000038  MOV t4.___w, void, void, t3.xxxx
num loops: 0
num temps: 6
num const: 0
immediates:
inputs:
 [1] name=COLOR index=0 comps=4
 [2] name=GENERIC index=0 comps=4
outputs:
special:
  ps_color_out_reg=4
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
