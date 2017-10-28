FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL SAMP[0]
DCL CONST[1..9]
DCL TEMP[0], LOCAL
  0: MOV TEMP[0].xy, CONST[9].xyyy
  1: MOV TEMP[0].w, CONST[9].wwww
  2: TXP TEMP[0], TEMP[0], SAMP[0], 2D
  3: MUL TEMP[0].xyz, TEMP[0], CONST[4]
  4: MOV TEMP[0].xyz, TEMP[0].xyzx
  5: MOV TEMP[0].w, CONST[4].wwww
  6: MOV OUT[0], TEMP[0]
  7: END

FRAG
0000: 01811009 00000000 00000000 20150098  MOV t1.xy__, void, void, u9.xyyy
0001: 04011009 00000000 00000000 203fc098  MOV t1.___w, void, void, u9.wwww
0002: 0402100c 00000000 00000000 003fc018  RCP t2.___w, void, void, t1.wwww
0003: 03821003 3fc02800 01c800c0 00000000  MUL t2.xyz_, t2.wwww, t1, void
0004: 07811018 39002f20 00000000 00000000  TEXLD t1, tex0, t2, void, void
0005: 03811003 39001800 01c80240 00000002  MUL t1.xyz_, t1, u4, void
0006: 03811009 00000000 00000000 00090018  MOV t1.xyz_, void, void, t1.xyzx
0007: 04011009 00000000 00000000 203fc048  MOV t1.___w, void, void, u4.wwww
num loops: 0
num temps: 3
num const: 40
immediates:
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
