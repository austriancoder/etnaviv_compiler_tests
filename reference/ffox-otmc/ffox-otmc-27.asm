FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[9], PERSPECTIVE
DCL IN[1], GENERIC[10], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].y, IMM[0].xxxx
  1: MOV TEMP[0].x, IN[1].zzzz
  2: MOV TEMP[1].xy, IN[1].xyyy
  3: TEX TEMP[1], TEMP[1], SAMP[1], 2D
  4: MOV TEMP[0].xy, TEMP[0].xyyy
  5: TEX TEMP[0], TEMP[0], SAMP[0], 2D
  6: MUL TEMP[0], TEMP[0], IN[0]
  7: MUL TEMP[0], TEMP[1], TEMP[0]
  8: MOV OUT[0], TEMP[0]
  9: END

FRAG
0000: 01031009 00000000 00000000 20000008  MOV t3._y__, void, void, u0.xxxx
0001: 00831009 00000000 00000000 002a8028  MOV t3.x___, void, void, t2.zzzz
0002: 01821009 00000000 00000000 00150028  MOV t2.xy__, void, void, t2.xyyy
0003: 0f821018 39002f20 00000000 00000000  TEXLD t2, tex1, t2, void, void
0004: 01831009 00000000 00000000 00150038  MOV t3.xy__, void, void, t3.xyyy
0005: 07831018 39003f20 00000000 00000000  TEXLD t3, tex0, t3, void, void
0006: 07831003 39003800 01c800c0 00000000  MUL t3, t3, t1, void
0007: 07831003 39002800 01c801c0 00000000  MUL t3, t2, t3, void
num loops: 0
num temps: 4
num const: 0
immediates:
 [0].x = 0.500000 (0x3f000000)
 [0].y = 0.000000 (0x00000000)
 [0].z = 0.000000 (0x00000000)
 [0].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=9 comps=4
 [2] name=GENERIC index=10 comps=3
outputs:
special:
  ps_color_out_reg=3
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
