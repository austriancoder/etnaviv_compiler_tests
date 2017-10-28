
FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL IN[2], GENERIC[22], PERSPECTIVE
DCL IN[3], GENERIC[23], PERSPECTIVE
DCL IN[4], GENERIC[24], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL SAMP[4]
DCL SAMP[5]
DCL CONST[6..11]
DCL TEMP[0..7], LOCAL
IMM[0] FLT32 {   -0.5000,     2.0000,    -1.0000,     0.0000}
IMM[1] FLT32 {    1.0000,     0.2500,     0.0000,     0.0000}
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[1], 2D
  2: MUL TEMP[1].x, TEMP[0].wwww, CONST[11].xxxx
  3: MOV TEMP[1].w, TEMP[1].xxxx
  4: MOV TEMP[2].xy, IN[0].xyyy
  5: TEX TEMP[2].xyz, TEMP[2], SAMP[0], 2D
  6: ADD TEMP[2].xyz, TEMP[2].xyzz, IMM[0].xxxx
  7: DP3 TEMP[3].x, TEMP[2].xyzz, TEMP[2].xyzz
  8: RSQ TEMP[3].x, TEMP[3].xxxx
  9: MUL TEMP[2].xyz, TEMP[2].xyzz, TEMP[3].xxxx
 10: MOV TEMP[3].xy, IN[0].xyyy
 11: TEX TEMP[3], TEMP[3], SAMP[2], 2D
 12: MOV TEMP[4].xy, IN[0].zwww
 13: TEX TEMP[4].xyz, TEMP[4], SAMP[5], 2D
 14: MAD TEMP[4].xyz, TEMP[4].xyzz, IMM[0].yyyy, IMM[0].zzzz
 15: DP3 TEMP[5].x, TEMP[4].xyzz, IN[2].xyzz
 16: DP3 TEMP[6].x, TEMP[4].xyzz, IN[3].xyzz
 17: MOV TEMP[5].y, TEMP[6].xxxx
 18: DP3 TEMP[4].x, TEMP[4].xyzz, IN[4].xyzz
 19: MOV TEMP[5].z, TEMP[4].xxxx
 20: DP3 TEMP[4].x, TEMP[5].xyzz, TEMP[5].xyzz
 21: RSQ TEMP[4].x, TEMP[4].xxxx
 22: MUL TEMP[4].xyz, TEMP[5].xyzz, TEMP[4].xxxx
 23: MUL TEMP[5].xyz, TEMP[3].xyzz, CONST[8].xyzz
 24: DP3 TEMP[6].x, TEMP[2].xyzz, TEMP[4].xyzz
 25: MUL TEMP[6].xyz, TEMP[6].xxxx, TEMP[2].xyzz
 26: MUL TEMP[6].xyz, IMM[0].yyyy, TEMP[6].xyzz
 27: ADD TEMP[6].xyz, TEMP[4].xyzz, -TEMP[6].xyzz
 28: DP3 TEMP[7].x, IN[1].xyzz, IN[1].xyzz
 29: RSQ TEMP[7].x, TEMP[7].xxxx
 30: MUL TEMP[7].xyz, IN[1].xyzz, TEMP[7].xxxx
 31: DP3 TEMP[6].x, TEMP[6].xyzz, TEMP[7].xyzz
 32: MAX TEMP[6].x, -TEMP[6].xxxx, IMM[0].wwww
 33: MAD TEMP[3].x, CONST[9].xxxx, TEMP[3].wwww, IMM[1].xxxx
 34: POW TEMP[3].x, TEMP[6].xxxx, TEMP[3].xxxx
 35: MUL TEMP[6].xyz, TEMP[0].xyzz, CONST[7].xyzz
 36: DP3 TEMP[2].x, TEMP[2].xyzz, TEMP[4].xyzz
 37: MAX TEMP[2].x, TEMP[2].xxxx, IMM[0].wwww
 38: MUL TEMP[2].xyz, TEMP[6].xyzz, TEMP[2].xxxx
 39: MAD TEMP[2].xyz, TEMP[5].xyzz, TEMP[3].xxxx, TEMP[2].xyzz
 40: MOV TEMP[3].xy, IN[0].zwww
 41: TEX TEMP[3].xyz, TEMP[3], SAMP[4], 2D
 42: MAX TEMP[4].x, IMM[1].yyyy, TEMP[4].zzzz
 43: RCP TEMP[4].x, TEMP[4].xxxx
 44: MUL TEMP[3].xyz, TEMP[3].xyzz, TEMP[4].xxxx
 45: MUL TEMP[0].xyz, TEMP[0].xyzz, CONST[6].xyzz
 46: MAD TEMP[1].xyz, TEMP[2].xyzz, TEMP[3].xyzz, TEMP[0].xyzz
 47: MOV TEMP[0].xy, IN[0].xyyy
 48: TEX TEMP[0].xyz, TEMP[0], SAMP[3], 2D
 49: MAD TEMP[1].xyz, TEMP[0].xyzz, CONST[10].xyzz, TEMP[1].xyzz
 50: MOV OUT[0], TEMP[1]
 51: END

FRAG
0000: 018a1009 00000000 00000000 00150018  MOV t10.xy__, void, void, t1.xyyy
0001: 0f8a1018 3900af20 00000000 00000000  TEXLD t10, tex1, t10, void, void
0002: 00891003 3fc0a800 000005c0 00000002  MUL t9.x___, t10.wwww, u11.xxxx, void
0003: 04091009 00000000 00000000 00000098  MOV t9.___w, void, void, t9.xxxx
0004: 01861009 00000000 00000000 00150018  MOV t6.xy__, void, void, t1.xyyy
0005: 03861018 39006f20 00000000 00000000  TEXLD t6.xyz_, tex0, t6, void, void
0006: 03861001 29006800 00000000 200000c8  ADD t6.xyz_, t6.xyzz, void, u12.xxxx
0007: 00871005 29006800 01480340 00000000  DP3 t7.x___, t6.xyzz, t6.xyzz, void
0008: 0087100d 00000000 00000000 00000078  RSQ t7.x___, void, void, t7.xxxx
0009: 03861003 29006800 000003c0 00000000  MUL t6.xyz_, t6.xyzz, t7.xxxx, void
0010: 01871009 00000000 00000000 00150018  MOV t7.xy__, void, void, t1.xyyy
0011: 17871018 39007f20 00000000 00000000  TEXLD t7, tex2, t7, void, void
0012: 01881009 00000000 00000000 003f8018  MOV t8.xy__, void, void, t1.zwww
0013: 2b881018 39008f20 00000000 00000000  TEXLD t8.xyz_, tex5, t8, void, void
0014: 03881002 29008800 00aa0640 202a80ca  MAD t8.xyz_, t8.xyzz, u12.yyyy, u12.zzzz
0015: 00831005 29008800 014801c0 00000000  DP3 t3.x___, t8.xyzz, t3.xyzz, void
0016: 00841005 29008800 01480240 00000000  DP3 t4.x___, t8.xyzz, t4.xyzz, void
0017: 01031009 00000000 00000000 00000048  MOV t3._y__, void, void, t4.xxxx
0018: 00881005 29008800 014802c0 00000000  DP3 t8.x___, t8.xyzz, t5.xyzz, void
0019: 02031009 00000000 00000000 00000088  MOV t3.__z_, void, void, t8.xxxx
0020: 00881005 29003800 014801c0 00000000  DP3 t8.x___, t3.xyzz, t3.xyzz, void
0021: 0088100d 00000000 00000000 00000088  RSQ t8.x___, void, void, t8.xxxx
0022: 03881003 29003800 00000440 00000000  MUL t8.xyz_, t3.xyzz, t8.xxxx, void
0023: 03831003 29007800 01480440 00000002  MUL t3.xyz_, t7.xyzz, u8.xyzz, void
0024: 00841005 29006800 01480440 00000000  DP3 t4.x___, t6.xyzz, t8.xyzz, void
0025: 03841003 00004800 01480340 00000000  MUL t4.xyz_, t4.xxxx, t6.xyzz, void
0026: 03841003 1540c800 01480250 00000000  MUL t4.xyz_, u12.yyyy, t4.xyzz, void
0027: 03841001 29008800 00000000 00690048  ADD t4.xyz_, t8.xyzz, void, -t4.xyzz
0028: 00851005 29002800 01480140 00000000  DP3 t5.x___, t2.xyzz, t2.xyzz, void
0029: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0030: 03851003 29002800 000002c0 00000000  MUL t5.xyz_, t2.xyzz, t5.xxxx, void
0031: 00841005 29004800 014802c0 00000000  DP3 t4.x___, t4.xyzz, t5.xyzz, void
0032: 0084108f 40004800 01fe0640 0040004a  SELECT.LT t4.x___, -t4.xxxx, u12.wwww, -t4.xxxx
0033: 078b1009 00000000 00000000 200000d8  MOV t11, void, void, u13.xxxx
0034: 00871002 00009800 01fe03d0 003900b8  MAD t7.x___, u9.xxxx, t7.wwww, t11
0035: 00821012 00000000 00000000 00000048  LOG t2.x___, void, void, t4.xxxx
0036: 00821003 00007800 00000140 00000000  MUL t2.x___, t7.xxxx, t2.xxxx, void
0037: 00871011 00000000 00000000 00000028  EXP t7.x___, void, void, t2.xxxx
0038: 03841003 2900a800 014803c0 00000002  MUL t4.xyz_, t10.xyzz, u7.xyzz, void
0039: 00861005 29006800 01480440 00000000  DP3 t6.x___, t6.xyzz, t8.xyzz, void
0040: 0086108f 00006800 01fe0640 0000006a  SELECT.LT t6.x___, t6.xxxx, u12.wwww, t6.xxxx
0041: 03861003 29004800 00000340 00000000  MUL t6.xyz_, t4.xyzz, t6.xxxx, void
0042: 03861002 29003800 000003c0 00290068  MAD t6.xyz_, t3.xyzz, t7.xxxx, t6.xyzz
0043: 01871009 00000000 00000000 003f8018  MOV t7.xy__, void, void, t1.zwww
0044: 23871018 39007f20 00000000 00000000  TEXLD t7.xyz_, tex4, t7, void, void
0045: 0088108f 1540d800 01540450 201540d8  SELECT.LT t8.x___, u13.yyyy, t8.zzzz, u13.yyyy
0046: 0088100c 00000000 00000000 00000088  RCP t8.x___, void, void, t8.xxxx
0047: 03871003 29007800 00000440 00000000  MUL t7.xyz_, t7.xyzz, t8.xxxx, void
0048: 038a1003 2900a800 01480340 00000002  MUL t10.xyz_, t10.xyzz, u6.xyzz, void
0049: 03891002 29006800 014803c0 002900a8  MAD t9.xyz_, t6.xyzz, t7.xyzz, t10.xyzz
0050: 018a1009 00000000 00000000 00150018  MOV t10.xy__, void, void, t1.xyyy
0051: 1b8a1018 3900af20 00000000 00000000  TEXLD t10.xyz_, tex3, t10, void, void
0052: 03891002 2900a800 01480540 0029009a  MAD t9.xyz_, t10.xyzz, u10.xyzz, t9.xyzz
num loops: 0
num temps: 12
num const: 48
immediates:
 [12].x = -0.500000 (0xbf000000)
 [12].y = 2.000000 (0x40000000)
 [12].z = -1.000000 (0xbf800000)
 [12].w = 0.000000 (0x00000000)
 [13].x = 1.000000 (0x3f800000)
 [13].y = 0.250000 (0x3e800000)
 [13].z = 0.000000 (0x00000000)
 [13].w = 0.000000 (0x00000000)
 [14].x = 0.000000 (0x00000000)
 [14].y = 1.000000 (0x3f800000)
 [14].z = 128.000000 (0x43000000)
 [14].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=4
 [2] name=GENERIC index=21 comps=3
 [3] name=GENERIC index=22 comps=3
 [4] name=GENERIC index=23 comps=3
 [5] name=GENERIC index=24 comps=3
outputs:
special:
  ps_color_out_reg=9
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
