
FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL CONST[2..5]
DCL TEMP[0..2], LOCAL
  0: MOV TEMP[0].xy, IN[1].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[0], 2D
  2: MUL TEMP[1].x, TEMP[0].wwww, CONST[5].xxxx
  3: MOV TEMP[1].w, TEMP[1].xxxx
  4: MAD TEMP[2].xyz, IN[0].xyzz, CONST[3].xyzz, CONST[2].xyzz
  5: MUL TEMP[1].xyz, TEMP[0].xyzz, TEMP[2].xyzz
  6: MOV TEMP[0].xy, IN[1].xyyy
  7: TEX TEMP[0].xyz, TEMP[0], SAMP[1], 2D
  8: MAD TEMP[1].xyz, TEMP[0].xyzz, CONST[4].xyzz, TEMP[1].xyzz
  9: MOV OUT[0], TEMP[1]
 10: END

FRAG
0000: 01831009 00000000 00000000 00150028  MOV t3.xy__, void, void, t2.xyyy
0001: 07831018 39003f20 00000000 00000000  TEXLD t3, tex0, t3, void, void
0002: 00841003 3fc03800 000002c0 00000002  MUL t4.x___, t3.wwww, u5.xxxx, void
0003: 04041009 00000000 00000000 00000048  MOV t4.___w, void, void, t4.xxxx
0004: 07851009 00000000 00000000 20290028  MOV t5, void, void, u2.xyzz
0005: 03811002 29001800 014801c0 0039005a  MAD t1.xyz_, t1.xyzz, u3.xyzz, t5
0006: 03841003 29003800 014800c0 00000000  MUL t4.xyz_, t3.xyzz, t1.xyzz, void
0007: 01831009 00000000 00000000 00150028  MOV t3.xy__, void, void, t2.xyyy
0008: 0b831018 39003f20 00000000 00000000  TEXLD t3.xyz_, tex1, t3, void, void
0009: 03841002 29003800 01480240 0029004a  MAD t4.xyz_, t3.xyzz, u4.xyzz, t4.xyzz
num loops: 0
num temps: 6
num const: 24
immediates:
inputs:
 [1] name=GENERIC index=20 comps=3
 [2] name=GENERIC index=21 comps=2
outputs:
special:
  ps_color_out_reg=4
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
