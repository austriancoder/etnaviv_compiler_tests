FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], COLOR[1], COLOR
DCL OUT[0], COLOR
DCL SAMP[0]
DCL CONST[1..9]
DCL TEMP[0..1], LOCAL
  0: MOV TEMP[0].xy, CONST[9].xyyy
  1: MOV TEMP[0].w, CONST[9].wwww
  2: TXP TEMP[0], TEMP[0], SAMP[0], 2D
  3: MUL TEMP[0], TEMP[0], IN[0]
  4: MOV TEMP[1].w, TEMP[0].wwww
  5: ADD TEMP[1].xyz, TEMP[0].xyzz, IN[1].xyzz
  6: MOV OUT[0], TEMP[1]
  7: END

FRAG
0000: 01831009 00000000 00000000 20150098  MOV t3.xy__, void, void, u9.xyyy
0001: 04031009 00000000 00000000 203fc098  MOV t3.___w, void, void, u9.wwww
0002: 0404100c 00000000 00000000 003fc038  RCP t4.___w, void, void, t3.wwww
0003: 03841003 3fc04800 01c801c0 00000000  MUL t4.xyz_, t4.wwww, t3, void
0004: 07831018 39004f20 00000000 00000000  TEXLD t3, tex0, t4, void, void
0005: 07831003 39003800 01c800c0 00000000  MUL t3, t3, t1, void
0006: 04011009 00000000 00000000 003fc038  MOV t1.___w, void, void, t3.wwww
0007: 03811001 29003800 00000000 00290028  ADD t1.xyz_, t3.xyzz, void, t2.xyzz
num loops: 0
num temps: 5
num const: 40
immediates:
inputs:
 [1] name=COLOR index=0 comps=4
 [2] name=COLOR index=1 comps=3
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
