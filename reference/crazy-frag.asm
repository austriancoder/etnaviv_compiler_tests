FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], GENERIC[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0], LOCAL
  0: MOV TEMP[0].xy, IN[1].xyyy
  1: MOV TEMP[0].w, IN[1].wwww
  2: TXP TEMP[0].xyz, TEMP[0], SAMP[0], 2D
  2: TXP TEMP[0].xyz, TEMP[0].xyzz, SAMP[0], 2D
  3: MUL TEMP[0], TEMP[0], IN[0]
  4: MOV OUT[0], TEMP[0]
  5: END


FRAG
0000: 01831009 00000000 00000000 00150028  MOV t3.xy__, void, void, t2.xyyy
0001: 04031009 00000000 00000000 003fc028  MOV t3.___w, void, void, t2.wwww
0002: 0404100c 00000000 00000000 003fc038  RCP t4.___w, void, void, t3.wwww
0003: 03841003 3fc04800 01c801c0 00000000  MUL t4.xyz_, t4.wwww, t3, void
0004: 03831018 39004f20 00000000 00000000  TEXLD t3.xyz_, tex0, t4, void, void
0005: 0404100c 00000000 00000000 002a8038  RCP t4.___w, void, void, t3.zzzz
0006: 03841003 3fc04800 014801c0 00000000  MUL t4.xyz_, t4.wwww, t3.xyzz, void
0007: 03831018 39004f20 00000000 00000000  TEXLD t3.xyz_, tex0, t4, void, void
0008: 07831003 39003800 01c800c0 00000000  MUL t3, t3, t1, void
num loops: 0
num temps: 5
num const: 0
immediates:
inputs:
 [1] name=COLOR index=0 comps=4
 [2] name=GENERIC index=0 comps=4
outputs:
special:
  ps_color_out_reg=3
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
