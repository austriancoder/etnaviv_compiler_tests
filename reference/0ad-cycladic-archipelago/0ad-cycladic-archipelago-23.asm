FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[9], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    0.4000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[0], 2D
  2: SLT TEMP[1].x, TEMP[0].wwww, IMM[0].xxxx
  3: IF TEMP[1].xxxx :0
  4:   KILL
  5: ENDIF
  6: MOV OUT[0], TEMP[0]
  7: END

FRAG
0000: 01811009 00000000 00000000 00150018  MOV t1.xy__, void, void, t1.xyyy
0001: 07811018 39001f20 00000000 00000000  TEXLD t1, tex0, t1, void, void
0002: 00821090 3fc01800 00000040 00000002  SET.LT t2.x___, t1.wwww, u0.xxxx, void
0003: 00000156 00002800 00aa0040 00000282  BRANCH.EQ void, t2.xxxx, u0.yyyy, label_0005
0004: 00000017 00000000 00000000 00000000  TEXKILL void, tex0.xxxx, void, void, void
0005: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 3
num const: 0
immediates:
 [0].x = 0.400000 (0x3ecccccd)
 [0].y = 0.000000 (0x00000000)
 [0].z = 0.000000 (0x00000000)
 [0].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=9 comps=2
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
