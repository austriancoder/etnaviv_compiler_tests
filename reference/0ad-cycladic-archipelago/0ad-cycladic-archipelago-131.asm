FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[9], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    0.3000,     0.5900,     0.1100,     0.0000}
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[0], 2D
  2: DP3 TEMP[1].x, TEMP[0].xyzz, IMM[0].xyzz
  3: MOV TEMP[1].xyz, TEMP[1].xxxx
  4: MOV TEMP[1].w, TEMP[0].wwww
  5: MOV OUT[0], TEMP[1]
  6: END

FRAG
0000: 01811009 00000000 00000000 00150018  MOV t1.xy__, void, void, t1.xyyy
0001: 07811018 39001f20 00000000 00000000  TEXLD t1, tex0, t1, void, void
0002: 00821005 29001800 01480040 00000002  DP3 t2.x___, t1.xyzz, u0.xyzz, void
0003: 03821009 00000000 00000000 00000028  MOV t2.xyz_, void, void, t2.xxxx
0004: 04021009 00000000 00000000 003fc018  MOV t2.___w, void, void, t1.wwww
num loops: 0
num temps: 3
num const: 0
immediates:
 [0].x = 0.300000 (0x3e99999a)
 [0].y = 0.590000 (0x3f170a3d)
 [0].z = 0.110000 (0x3de147ae)
 [0].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=9 comps=2
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
