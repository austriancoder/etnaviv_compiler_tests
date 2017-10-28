
FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL CONST[4..8]
DCL TEMP[0..3], LOCAL
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[0], 2D
  2: MUL TEMP[1].x, TEMP[0].wwww, CONST[8].xxxx
  3: MOV TEMP[1].w, TEMP[1].xxxx
  4: MOV TEMP[2].xy, IN[0].xyyy
  5: TEX TEMP[2].xyz, TEMP[2], SAMP[3], 2D
  6: MOV TEMP[3].xy, IN[0].xyyy
  7: TEX TEMP[3].xyz, TEMP[3], SAMP[2], 2D
  8: MUL TEMP[3].xyz, TEMP[3].xyzz, CONST[4].xyzz
  9: MAD TEMP[2].xyz, TEMP[2].xyzz, CONST[5].xyzz, TEMP[3].xyzz
 10: ADD TEMP[1].xyz, TEMP[0].xyzz, TEMP[2].xyzz
 11: MUL TEMP[1].xyz, TEMP[1].xyzz, CONST[6].xyzz
 12: MOV TEMP[0].xy, IN[0].xyyy
 13: TEX TEMP[0].xyz, TEMP[0], SAMP[1], 2D
 14: MAD TEMP[1].xyz, TEMP[0].xyzz, CONST[7].xyzz, TEMP[1].xyzz
 15: MOV OUT[0], TEMP[1]
 16: END

FRAG
0000: 01851009 00000000 00000000 00150018  MOV t5.xy__, void, void, t1.xyyy
0001: 07851018 39005f20 00000000 00000000  TEXLD t5, tex0, t5, void, void
0002: 00821003 3fc05800 00000440 00000002  MUL t2.x___, t5.wwww, u8.xxxx, void
0003: 04021009 00000000 00000000 00000028  MOV t2.___w, void, void, t2.xxxx
0004: 01831009 00000000 00000000 00150018  MOV t3.xy__, void, void, t1.xyyy
0005: 1b831018 39003f20 00000000 00000000  TEXLD t3.xyz_, tex3, t3, void, void
0006: 01841009 00000000 00000000 00150018  MOV t4.xy__, void, void, t1.xyyy
0007: 13841018 39004f20 00000000 00000000  TEXLD t4.xyz_, tex2, t4, void, void
0008: 03841003 29004800 01480240 00000002  MUL t4.xyz_, t4.xyzz, u4.xyzz, void
0009: 03831002 29003800 014802c0 0029004a  MAD t3.xyz_, t3.xyzz, u5.xyzz, t4.xyzz
0010: 03821001 29005800 00000000 00290038  ADD t2.xyz_, t5.xyzz, void, t3.xyzz
0011: 03821003 29002800 01480340 00000002  MUL t2.xyz_, t2.xyzz, u6.xyzz, void
0012: 01851009 00000000 00000000 00150018  MOV t5.xy__, void, void, t1.xyyy
0013: 0b851018 39005f20 00000000 00000000  TEXLD t5.xyz_, tex1, t5, void, void
0014: 03821002 29005800 014803c0 0029002a  MAD t2.xyz_, t5.xyzz, u7.xyzz, t2.xyzz
num loops: 0
num temps: 6
num const: 36
immediates:
inputs:
 [1] name=GENERIC index=20 comps=2
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
