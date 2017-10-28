
FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL CONST[2..4]
DCL TEMP[0..1], LOCAL
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[0], 2D
  2: MUL TEMP[1].x, TEMP[0].wwww, CONST[4].xxxx
  3: MOV TEMP[1].w, TEMP[1].xxxx
  4: MUL TEMP[1].xyz, TEMP[0].xyzz, CONST[2].xyzz
  5: MOV TEMP[0].xy, IN[0].xyyy
  6: TEX TEMP[0].xyz, TEMP[0], SAMP[1], 2D
  7: MAD TEMP[1].xyz, TEMP[0].xyzz, CONST[3].xyzz, TEMP[1].xyzz
  8: MOV OUT[0], TEMP[1]
  9: END

FRAG
0000: 01831009 00000000 00000000 00150018  MOV t3.xy__, void, void, t1.xyyy
0001: 07831018 39003f20 00000000 00000000  TEXLD t3, tex0, t3, void, void
0002: 00821003 3fc03800 00000240 00000002  MUL t2.x___, t3.wwww, u4.xxxx, void
0003: 04021009 00000000 00000000 00000028  MOV t2.___w, void, void, t2.xxxx
0004: 03821003 29003800 01480140 00000002  MUL t2.xyz_, t3.xyzz, u2.xyzz, void
0005: 01831009 00000000 00000000 00150018  MOV t3.xy__, void, void, t1.xyyy
0006: 0b831018 39003f20 00000000 00000000  TEXLD t3.xyz_, tex1, t3, void, void
0007: 03821002 29003800 014801c0 0029002a  MAD t2.xyz_, t3.xyzz, u3.xyzz, t2.xyzz
num loops: 0
num temps: 4
num const: 20
immediates:
inputs:
 [1] name=GENERIC index=20 comps=2
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
