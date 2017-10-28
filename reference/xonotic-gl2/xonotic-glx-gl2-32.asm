
FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL CONST[1..2]
DCL TEMP[0..1], LOCAL
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[0], 2D
  2: MUL TEMP[1].x, TEMP[0].wwww, CONST[2].xxxx
  3: MOV TEMP[1].w, TEMP[1].xxxx
  4: MUL TEMP[1].xyz, TEMP[0].xyzz, CONST[1].xyzz
  5: MOV OUT[0], TEMP[1]
  6: END

FRAG
0000: 01811009 00000000 00000000 00150018  MOV t1.xy__, void, void, t1.xyyy
0001: 07811018 39001f20 00000000 00000000  TEXLD t1, tex0, t1, void, void
0002: 00821003 3fc01800 00000140 00000002  MUL t2.x___, t1.wwww, u2.xxxx, void
0003: 04021009 00000000 00000000 00000028  MOV t2.___w, void, void, t2.xxxx
0004: 03821003 29001800 014800c0 00000002  MUL t2.xyz_, t1.xyzz, u1.xyzz, void
num loops: 0
num temps: 3
num const: 12
immediates:
inputs:
 [1] name=GENERIC index=20 comps=2
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
