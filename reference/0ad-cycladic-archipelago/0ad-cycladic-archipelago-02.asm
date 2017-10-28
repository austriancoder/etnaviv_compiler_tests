FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL SAMP[0]
DCL CONST[1..9]
DCL TEMP[0..1], LOCAL
  0: MOV TEMP[0].xyz, CONST[4].xyzx
  1: MOV TEMP[1].xy, CONST[9].xyyy
  2: MOV TEMP[1].w, CONST[9].wwww
  3: TXP TEMP[1].w, TEMP[1], SAMP[0], 2D
  4: MUL TEMP[1].x, TEMP[1].wwww, CONST[4].wwww
  5: MOV TEMP[0].w, TEMP[1].xxxx
  6: MOV OUT[0], TEMP[0]
  7: END

FRAG
0000: 03811009 00000000 00000000 20090048  MOV t1.xyz_, void, void, u4.xyzx
0001: 01821009 00000000 00000000 20150098  MOV t2.xy__, void, void, u9.xyyy
0002: 04021009 00000000 00000000 203fc098  MOV t2.___w, void, void, u9.wwww
0003: 0403100c 00000000 00000000 003fc028  RCP t3.___w, void, void, t2.wwww
0004: 03831003 3fc03800 01c80140 00000000  MUL t3.xyz_, t3.wwww, t2, void
0005: 04021018 39003f20 00000000 00000000  TEXLD t2.___w, tex0, t3, void, void
0006: 00821003 3fc02800 01fe0240 00000002  MUL t2.x___, t2.wwww, u4.wwww, void
0007: 04011009 00000000 00000000 00000028  MOV t1.___w, void, void, t2.xxxx
num loops: 0
num temps: 4
num const: 40
immediates:
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
