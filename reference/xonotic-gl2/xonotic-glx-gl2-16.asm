
FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL IN[2], GENERIC[22], PERSPECTIVE
DCL IN[3], GENERIC[23], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL CONST[4..6]
DCL TEMP[0..5], LOCAL
IMM[0] FLT32 {   -0.5000,     2.0000,    -1.0000,     0.0000}
IMM[1] FLT32 {    0.2500,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[1], 2D
  2: MUL TEMP[1].x, TEMP[0].wwww, CONST[6].xxxx
  3: MOV TEMP[1].w, TEMP[1].xxxx
  4: MOV TEMP[2].xy, IN[0].xyyy
  5: TEX TEMP[2].xyz, TEMP[2], SAMP[0], 2D
  6: ADD TEMP[2].xyz, TEMP[2].xyzz, IMM[0].xxxx
  7: MOV TEMP[3].xy, IN[0].zwww
  8: TEX TEMP[3].xyz, TEMP[3], SAMP[3], 2D
  9: MAD TEMP[3].xyz, TEMP[3].xyzz, IMM[0].yyyy, IMM[0].zzzz
 10: DP3 TEMP[4].x, TEMP[3].xyzz, IN[1].xyzz
 11: DP3 TEMP[5].x, TEMP[3].xyzz, IN[2].xyzz
 12: MOV TEMP[4].y, TEMP[5].xxxx
 13: DP3 TEMP[3].x, TEMP[3].xyzz, IN[3].xyzz
 14: MOV TEMP[4].z, TEMP[3].xxxx
 15: DP3 TEMP[3].x, TEMP[4].xyzz, TEMP[4].xyzz
 16: RSQ TEMP[3].x, TEMP[3].xxxx
 17: MUL TEMP[3].xyz, TEMP[4].xyzz, TEMP[3].xxxx
 18: DP3 TEMP[4].x, TEMP[2].xyzz, TEMP[2].xyzz
 19: RSQ TEMP[4].x, TEMP[4].xxxx
 20: MUL TEMP[2].xyz, TEMP[2].xyzz, TEMP[4].xxxx
 21: DP3 TEMP[2].x, TEMP[2].xyzz, TEMP[3].xyzz
 22: MAX TEMP[2].x, TEMP[2].xxxx, IMM[0].wwww
 23: MUL TEMP[2].xyz, CONST[5].xyzz, TEMP[2].xxxx
 24: MOV TEMP[4].xy, IN[0].zwww
 25: TEX TEMP[4].xyz, TEMP[4], SAMP[2], 2D
 26: MAX TEMP[3].x, IMM[1].xxxx, TEMP[3].zzzz
 27: RCP TEMP[3].x, TEMP[3].xxxx
 28: MUL TEMP[3].xyz, TEMP[4].xyzz, TEMP[3].xxxx
 29: MAD TEMP[2].xyz, TEMP[2].xyzz, TEMP[3].xyzz, CONST[4].xyzz
 30: MUL TEMP[1].xyz, TEMP[0].xyzz, TEMP[2].xyzz
 31: MOV OUT[0], TEMP[1]
 32: END

FRAG
0000: 01881009 00000000 00000000 00150018  MOV t8.xy__, void, void, t1.xyyy
0001: 0f881018 39008f20 00000000 00000000  TEXLD t8, tex1, t8, void, void
0002: 00851003 3fc08800 00000340 00000002  MUL t5.x___, t8.wwww, u6.xxxx, void
0003: 04051009 00000000 00000000 00000058  MOV t5.___w, void, void, t5.xxxx
0004: 01861009 00000000 00000000 00150018  MOV t6.xy__, void, void, t1.xyyy
0005: 03861018 39006f20 00000000 00000000  TEXLD t6.xyz_, tex0, t6, void, void
0006: 03861001 29006800 00000000 20000078  ADD t6.xyz_, t6.xyzz, void, u7.xxxx
0007: 01871009 00000000 00000000 003f8018  MOV t7.xy__, void, void, t1.zwww
0008: 1b871018 39007f20 00000000 00000000  TEXLD t7.xyz_, tex3, t7, void, void
0009: 03871002 29007800 00aa03c0 202a807a  MAD t7.xyz_, t7.xyzz, u7.yyyy, u7.zzzz
0010: 00821005 29007800 01480140 00000000  DP3 t2.x___, t7.xyzz, t2.xyzz, void
0011: 00831005 29007800 014801c0 00000000  DP3 t3.x___, t7.xyzz, t3.xyzz, void
0012: 01021009 00000000 00000000 00000038  MOV t2._y__, void, void, t3.xxxx
0013: 00871005 29007800 01480240 00000000  DP3 t7.x___, t7.xyzz, t4.xyzz, void
0014: 02021009 00000000 00000000 00000078  MOV t2.__z_, void, void, t7.xxxx
0015: 00871005 29002800 01480140 00000000  DP3 t7.x___, t2.xyzz, t2.xyzz, void
0016: 0087100d 00000000 00000000 00000078  RSQ t7.x___, void, void, t7.xxxx
0017: 03871003 29002800 000003c0 00000000  MUL t7.xyz_, t2.xyzz, t7.xxxx, void
0018: 00821005 29006800 01480340 00000000  DP3 t2.x___, t6.xyzz, t6.xyzz, void
0019: 0082100d 00000000 00000000 00000028  RSQ t2.x___, void, void, t2.xxxx
0020: 03861003 29006800 00000140 00000000  MUL t6.xyz_, t6.xyzz, t2.xxxx, void
0021: 00861005 29006800 014803c0 00000000  DP3 t6.x___, t6.xyzz, t7.xyzz, void
0022: 0086108f 00006800 01fe03c0 0000006a  SELECT.LT t6.x___, t6.xxxx, u7.wwww, t6.xxxx
0023: 03861003 29005800 00000350 00000000  MUL t6.xyz_, u5.xyzz, t6.xxxx, void
0024: 01821009 00000000 00000000 003f8018  MOV t2.xy__, void, void, t1.zwww
0025: 13821018 39002f20 00000000 00000000  TEXLD t2.xyz_, tex2, t2, void, void
0026: 0087108f 00008800 015403d0 20000088  SELECT.LT t7.x___, u8.xxxx, t7.zzzz, u8.xxxx
0027: 0087100c 00000000 00000000 00000078  RCP t7.x___, void, void, t7.xxxx
0028: 03871003 29002800 000003c0 00000000  MUL t7.xyz_, t2.xyzz, t7.xxxx, void
0029: 03861002 29006800 014803c0 20290048  MAD t6.xyz_, t6.xyzz, t7.xyzz, u4.xyzz
0030: 03851003 29008800 01480340 00000000  MUL t5.xyz_, t8.xyzz, t6.xyzz, void
num loops: 0
num temps: 9
num const: 28
immediates:
 [7].x = -0.500000 (0xbf000000)
 [7].y = 2.000000 (0x40000000)
 [7].z = -1.000000 (0xbf800000)
 [7].w = 0.000000 (0x00000000)
 [8].x = 0.250000 (0x3e800000)
 [8].y = 0.000000 (0x00000000)
 [8].z = 0.000000 (0x00000000)
 [8].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=4
 [2] name=GENERIC index=21 comps=3
 [3] name=GENERIC index=22 comps=3
 [4] name=GENERIC index=23 comps=3
outputs:
special:
  ps_color_out_reg=5
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
