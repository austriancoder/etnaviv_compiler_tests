
FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL CONST[1..3]
DCL TEMP[0..2], LOCAL
  0: MOV TEMP[0].xy, IN[1].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[0], 2D
  2: MUL TEMP[1].x, TEMP[0].wwww, CONST[3].xxxx
  3: MOV TEMP[1].w, TEMP[1].xxxx
  4: MAD TEMP[2].xyz, IN[0].xyzz, CONST[2].xyzz, CONST[1].xyzz
  5: MUL TEMP[1].xyz, TEMP[0].xyzz, TEMP[2].xyzz
  6: MOV OUT[0], TEMP[1]
  7: END

FRAG
0000: 01821009 00000000 00000000 00150028  MOV t2.xy__, void, void, t2.xyyy
0001: 07821018 39002f20 00000000 00000000  TEXLD t2, tex0, t2, void, void
0002: 00831003 3fc02800 000001c0 00000002  MUL t3.x___, t2.wwww, u3.xxxx, void
0003: 04031009 00000000 00000000 00000038  MOV t3.___w, void, void, t3.xxxx
0004: 07841009 00000000 00000000 20290018  MOV t4, void, void, u1.xyzz
0005: 03811002 29001800 01480140 0039004a  MAD t1.xyz_, t1.xyzz, u2.xyzz, t4
0006: 03831003 29002800 014800c0 00000000  MUL t3.xyz_, t2.xyzz, t1.xyzz, void
num loops: 0
num temps: 5
num const: 16
immediates:
inputs:
 [1] name=GENERIC index=20 comps=3
 [2] name=GENERIC index=21 comps=2
outputs:
special:
  ps_color_out_reg=3
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
