FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], COLOR[1], COLOR
DCL IN[2], GENERIC[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0..1], LOCAL
  0: MOV TEMP[0].xy, IN[2].xyyy
  1: MOV TEMP[0].w, IN[2].wwww
  2: TXP TEMP[0], TEMP[0], SAMP[0], 2D
  3: MUL TEMP[0], TEMP[0], IN[0]
  4: MOV TEMP[1].w, TEMP[0].wwww
  5: ADD TEMP[1].xyz, TEMP[0].xyzz, IN[1].xyzz
  6: MOV OUT[0], TEMP[1]
  7: END

FRAG
0000: 01841009 00000000 00000000 00150038  MOV t4.xy__, void, void, t3.xyyy
0001: 04041009 00000000 00000000 003fc038  MOV t4.___w, void, void, t3.wwww
0002: 0405100c 00000000 00000000 003fc048  RCP t5.___w, void, void, t4.wwww
0003: 03851003 3fc05800 01c80240 00000000  MUL t5.xyz_, t5.wwww, t4, void
0004: 07841018 39005f20 00000000 00000000  TEXLD t4, tex0, t5, void, void
0005: 07841003 39004800 01c800c0 00000000  MUL t4, t4, t1, void
0006: 04031009 00000000 00000000 003fc048  MOV t3.___w, void, void, t4.wwww
0007: 03831001 29004800 00000000 00290028  ADD t3.xyz_, t4.xyzz, void, t2.xyzz
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
  ps_color_out_reg=3
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
