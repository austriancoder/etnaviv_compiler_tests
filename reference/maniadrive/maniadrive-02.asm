FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], COLOR[1], COLOR
DCL IN[2], GENERIC[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0], LOCAL
  0: MOV TEMP[0].xy, IN[2].xyyy
  1: MOV TEMP[0].w, IN[2].wwww
  2: TXP TEMP[0].w, TEMP[0], SAMP[0], 2D
  3: MUL TEMP[0].x, TEMP[0].wwww, IN[0].wwww
  4: MOV TEMP[0].w, TEMP[0].xxxx
  5: ADD TEMP[0].xyz, IN[0].xyzz, IN[1].xyzz
  6: MOV OUT[0], TEMP[0]
  7: END

FRAG
0000: 01841009 00000000 00000000 00150038  MOV t4.xy__, void, void, t3.xyyy
0001: 04041009 00000000 00000000 003fc038  MOV t4.___w, void, void, t3.wwww
0002: 0405100c 00000000 00000000 003fc048  RCP t5.___w, void, void, t4.wwww
0003: 03851003 3fc05800 01c80240 00000000  MUL t5.xyz_, t5.wwww, t4, void
0004: 04041018 39005f20 00000000 00000000  TEXLD t4.___w, tex0, t5, void, void
0005: 00841003 3fc04800 01fe00c0 00000000  MUL t4.x___, t4.wwww, t1.wwww, void
0006: 04041009 00000000 00000000 00000048  MOV t4.___w, void, void, t4.xxxx
0007: 03841001 29001800 00000000 00290028  ADD t4.xyz_, t1.xyzz, void, t2.xyzz
num loops: 0
num temps: 6
num const: 0
immediates:
inputs:
 [1] name=COLOR index=0 comps=4
 [2] name=COLOR index=1 comps=3
 [3] name=GENERIC index=0 comps=4
outputs:
special:
  ps_color_out_reg=4
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
