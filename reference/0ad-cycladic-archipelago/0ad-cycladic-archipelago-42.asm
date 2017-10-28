FRAG
PROPERTY FS_COORD_PIXEL_CENTER INTEGER
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], POSITION, LINEAR
DCL IN[1], GENERIC[9], PERSPECTIVE
DCL IN[2], GENERIC[10], PERSPECTIVE
DCL IN[3], GENERIC[11], PERSPECTIVE
DCL IN[4], GENERIC[12], PERSPECTIVE
DCL IN[5], GENERIC[13], PERSPECTIVE
DCL IN[6], GENERIC[14], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL SAMP[4]
DCL CONST[12..13]
DCL CONST[5..11]
DCL TEMP[0]
DCL TEMP[1..10], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     2.0000,    -1.0000}
IMM[1] FLT32 {   -0.0005,    -0.5000,     1.0000,     1.4427}
IMM[2] FLT32 {    0.1111,     0.0300,     0.0000,     0.0000}
  0: ADD TEMP[0], IN[0], IMM[0].xxyy
  1: MAD TEMP[0].y, TEMP[0], CONST[13].xxxx, CONST[13].yyyy
  2: MOV TEMP[1].x, IN[4].wwww
  3: MOV TEMP[1].yz, IN[5].yxyy
  4: MOV TEMP[2].xy, IN[5].zwzz
  5: MOV TEMP[2].z, IN[6].xxxx
  6: MOV TEMP[3].xy, IN[3].zwww
  7: TEX TEMP[3], TEMP[3], SAMP[0], 2D
  8: MOV TEMP[4].w, TEMP[3].wwww
  9: MOV TEMP[5].xy, IN[3].zwww
 10: TEX TEMP[5].xyz, TEMP[5], SAMP[2], 2D
 11: MAD TEMP[5].xyz, TEMP[5].xyzz, IMM[0].zzzz, IMM[0].wwww
 12: MUL TEMP[6].xyz, IN[4].xyzz, -IN[2].wwww
 13: MUL TEMP[7].xyz, IN[2].xyzz, TEMP[5].xxxx
 14: MAD TEMP[6].xyz, TEMP[6].xyzz, TEMP[5].yyyy, TEMP[7].xyzz
 15: MAD TEMP[5].xyz, IN[6].yzww, TEMP[5].zzzz, TEMP[6].xyzz
 16: DP3 TEMP[6].x, TEMP[5].xyzz, TEMP[5].xyzz
 17: RSQ TEMP[6].x, TEMP[6].xxxx
 18: MUL TEMP[5].xyz, TEMP[5].xyzz, TEMP[6].xxxx
 19: MOV TEMP[6].xy, IN[3].zwww
 20: TEX TEMP[6].xyz, TEMP[6], SAMP[3], 2D
 21: MUL TEMP[6].xyz, CONST[8].xyzz, TEMP[6].xyzz
 22: DP3 TEMP[7].x, TEMP[5].xyzz, TEMP[5].xyzz
 23: RSQ TEMP[7].x, TEMP[7].xxxx
 24: MUL TEMP[7].xyz, TEMP[5].xyzz, TEMP[7].xxxx
 25: DP3 TEMP[7].x, TEMP[7].xyzz, TEMP[1].xyzz
 26: MAX TEMP[7].x, IMM[0].yyyy, TEMP[7].xxxx
 27: POW TEMP[7].x, TEMP[7].xxxx, CONST[12].yyyy
 28: MUL TEMP[1].xyz, TEMP[6].xyzz, TEMP[7].xxxx
 29: ADD TEMP[6].x, IN[1].zzzz, IMM[1].xxxx
 30: ADD TEMP[7].xy, IN[1].xyyy, IMM[1].yyyy
 31: FRC TEMP[7].xy, TEMP[7].xyyy
 32: ADD TEMP[8].xy, TEMP[7].xyyy, IMM[1].zzzz
 33: ADD TEMP[9].xy, IMM[0].zzzz, -TEMP[7].xyyy
 34: MOV TEMP[8].zw, TEMP[9].yyxy
 35: MUL TEMP[7].xy, IMM[0].xxxx, TEMP[7].xyyy
 36: ADD TEMP[7].xy, IN[1].xyyy, -TEMP[7].xyyy
 37: ADD TEMP[7], IMM[1].zzyy, TEMP[7].xyxy
 38: MUL TEMP[7], TEMP[7], CONST[5].zwzw
 39: MOV TEMP[9].xy, TEMP[7].zwww
 40: MOV TEMP[9].z, TEMP[6].xxxx
 41: TEX TEMP[9].x, TEMP[9], SAMP[4], SHADOW2D
 42: MOV TEMP[9].x, TEMP[9].xxxx
 43: MOV TEMP[10].xy, TEMP[7].xwww
 44: MOV TEMP[10].z, TEMP[6].xxxx
 45: TEX TEMP[10].x, TEMP[10], SAMP[4], SHADOW2D
 46: MOV TEMP[9].y, TEMP[10].xxxx
 47: MOV TEMP[10].xy, TEMP[7].zyyy
 48: MOV TEMP[10].z, TEMP[6].xxxx
 49: TEX TEMP[10].x, TEMP[10], SAMP[4], SHADOW2D
 50: MOV TEMP[9].z, TEMP[10].xxxx
 51: MOV TEMP[7].xy, TEMP[7].xyyy
 52: MOV TEMP[7].z, TEMP[6].xxxx
 53: TEX TEMP[6].x, TEMP[7], SAMP[4], SHADOW2D
 54: MOV TEMP[9].w, TEMP[6].xxxx
 55: RCP TEMP[6].x, TEMP[0].wwww
 56: MUL TEMP[6].x, TEMP[0].zzzz, TEMP[6].xxxx
 57: MUL TEMP[7].x, -CONST[11].xxxx, CONST[11].xxxx
 58: MUL TEMP[7].x, TEMP[7].xxxx, TEMP[6].xxxx
 59: MUL TEMP[6].x, TEMP[7].xxxx, TEMP[6].xxxx
 60: MUL TEMP[6].x, TEMP[6].xxxx, IMM[1].wwww
 61: EX2 TEMP[6].x, TEMP[6].xxxx
 62: LRP TEMP[6].x, TEMP[6].xxxx, IMM[1].zzzz, CONST[11].yyyy
 63: MOV_SAT TEMP[6].x, TEMP[6].xxxx
 64: DP3 TEMP[5].x, -CONST[9].xyzz, TEMP[5].xyzz
 65: MAX TEMP[5].x, TEMP[5].xxxx, IMM[0].yyyy
 66: MAD TEMP[5].xyz, TEMP[5].xxxx, CONST[8].xyzz, -TEMP[2].xyzz
 67: MAD TEMP[2].xyz, TEMP[5].xyzz, CONST[12].xxxx, TEMP[2].xyzz
 68: MAD TEMP[1].xyz, TEMP[3].xyzz, TEMP[2].xyzz, TEMP[1].xyzz
 69: MUL TEMP[2], TEMP[8].zxzx, TEMP[8].wwyy
 70: DP4 TEMP[2].x, TEMP[2], TEMP[9]
 71: MUL TEMP[2].x, IMM[2].xxxx, TEMP[2].xxxx
 72: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[2].xxxx
 73: MAD TEMP[1].xyz, TEMP[3].xyzz, CONST[7].xyzz, TEMP[1].xyzz
 74: LRP TEMP[1].xyz, TEMP[6].xxxx, TEMP[1].xyzz, CONST[10].xyzz
 75: MOV TEMP[2].xy, IN[3].xyyy
 76: TEX TEMP[2].w, TEMP[2], SAMP[1], 2D
 77: SLT TEMP[3].x, TEMP[2].wwww, IMM[2].yyyy
 78: IF TEMP[3].xxxx :2
 79:   MOV TFRAG
0000: 078b1001 39000800 00000000 201400e8  ADD t11, t0, void, u14.xxyy
0001: 010b1002 3900b800 000006c0 201540da  MAD t11._y__, t11, u13.xxxx, u13.yyyy
0002: 00881009 00000000 00000000 003fc048  MOV t8.x___, void, void, t4.wwww
0003: 03081009 00000000 00000000 00144058  MOV t8._yz_, void, void, t5.yxyy
0004: 01851009 00000000 00000000 002b8058  MOV t5.xy__, void, void, t5.zwzz
0005: 02051009 00000000 00000000 00000068  MOV t5.__z_, void, void, t6.xxxx
0006: 01871009 00000000 00000000 003f8038  MOV t7.xy__, void, void, t3.zwww
0007: 07871018 39007f20 00000000 00000000  TEXLD t7, tex0, t7, void, void
0008: 040d1009 00000000 00000000 003fc078  MOV t13.___w, void, void, t7.wwww
0009: 018c1009 00000000 00000000 003f8038  MOV t12.xy__, void, void, t3.zwww
0010: 138c1018 3900cf20 00000000 00000000  TEXLD t12.xyz_, tex2, t12, void, void
0011: 038c1002 2900c800 01540740 203fc0ea  MAD t12.xyz_, t12.xyzz, u14.zzzz, u14.wwww
0012: 03841003 29004800 03fe0140 00000000  MUL t4.xyz_, t4.xyzz, -t2.wwww, void
0013: 03821003 29002800 00000640 00000000  MUL t2.xyz_, t2.xyzz, t12.xxxx, void
0014: 03841002 29004800 00aa0640 00290028  MAD t4.xyz_, t4.xyzz, t12.yyyy, t2.xyzz
0015: 038c1002 3e406800 01540640 00290048  MAD t12.xyz_, t6.yzww, t12.zzzz, t4.xyzz
0016: 00841005 2900c800 01480640 00000000  DP3 t4.x___, t12.xyzz, t12.xyzz, void
0017: 0084100d 00000000 00000000 00000048  RSQ t4.x___, void, void, t4.xxxx
0018: 038c1003 2900c800 00000240 00000000  MUL t12.xyz_, t12.xyzz, t4.xxxx, void
0019: 01841009 00000000 00000000 003f8038  MOV t4.xy__, void, void, t3.zwww
0020: 1b841018 39004f20 00000000 00000000  TEXLD t4.xyz_, tex3, t4, void, void
0021: 03841003 29008800 01480250 00000000  MUL t4.xyz_, u8.xyzz, t4.xyzz, void
0022: 00821005 2900c800 01480640 00000000  DP3 t2.x___, t12.xyzz, t12.xyzz, void
0023: 0082100d 00000000 00000000 00000028  RSQ t2.x___, void, void, t2.xxxx
0024: 03821003 2900c800 00000140 00000000  MUL t2.xyz_, t12.xyzz, t2.xxxx, void
0025: 00821005 29002800 01480440 00000000  DP3 t2.x___, t2.xyzz, t8.xyzz, void
0026: 0082108f 1540e800 00000150 201540e8  SELECT.LT t2.x___, u14.yyyy, t2.xxxx, u14.yyyy
0027: 00861012 00000000 00000000 00000028  LOG t6.x___, void, void, t2.xxxx
0028: 00861003 1540c800 00000350 00000000  MUL t6.x___, u12.yyyy, t6.xxxx, void
0029: 00821011 00000000 00000000 00000068  EXP t2.x___, void, void, t6.xxxx
0030: 03881003 29004800 00000140 00000000  MUL t8.xyz_, t4.xyzz, t2.xxxx, void
0031: 00841001 2a801800 00000000 200000f8  ADD t4.x___, t1.zzzz, void, u15.xxxx
0032: 01821001 15001800 00000000 201540f8  ADD t2.xy__, t1.xyyy, void, u15.yyyy
0033: 01821013 00000000 00000000 00150028  FRC t2.xy__, void, void, t2.xyyy
0034: 01891001 15002800 00000000 202a80f8  ADD t9.xy__, t2.xyyy, void, u15.zzzz
0035: 018a1001 2a80e800 00000010 00550028  ADD t10.xy__, u14.zzzz, void, -t2.xyyy
0036: 06091009 00000000 00000000 001140a8  MOV t9.__zw, void, void, t10.yyxy
0037: 01821003 0000e800 00a80150 00000000  MUL t2.xy__, u14.xxxx, t2.xyyy, void
0038: 01821001 15001800 00000000 00550028  ADD t2.xy__, t1.xyyy, void, -t2.xyyy
0039: 07821001 1680f800 00000010 00110028  ADD t2, u15.zzyy, void, t2.xyxy
0040: 07821003 39002800 01dc02c0 00000002  MUL t2, t2, u5.zwzw, void
0041: 018a1009 00000000 00000000 003f8028  MOV t10.xy__, void, void, t2.zwww
0042: 020a1009 00000000 00000000 00000048  MOV t10.__z_, void, void, t4.xxxx
0043: 208a1018 3900af20 00000000 00000000  TEXLD t10.x___, tex4, t10, void, void
0044: 008a1009 00000000 00000000 000000a8  MOV t10.x___, void, void, t10.xxxx
0045: 01811009 00000000 00000000 003f0028  MOV t1.xy__, void, void, t2.xwww
0046: 02011009 00000000 00000000 00000048  MOV t1.__z_, void, void, t4.xxxx
0047: 20811018 39001f20 00000000 00000000  TEXLD t1.x___, tex4, t1, void, void
0048: 010a1009 00000000 00000000 00000018  MOV t10._y__, void, void, t1.xxxx
0049: 01811009 00000000 00000000 00158028  MOV t1.xy__, void, void, t2.zyyy
0050: 02011009 00000000 00000000 00000048  MOV t1.__z_, void, void, t4.xxxx
0051: 20811018 39001f20 00000000 00000000  TEXLD t1.x___, tex4, t1, void, void
0052: 020a1009 00000000 00000000 00000018  MOV t10.__z_, void, void, t1.xxxx
0053: 01821009 00000000 00000000 00150028  MOV t2.xy__, void, void, t2.xyyy
0054: 02021009 00000000 00000000 00000048  MOV t2.__z_, void, void, t4.xxxx
0055: 20841018 39002f20 00000000 00000000  TEXLD t4.x___, tex4, t2, void, void
0056: 040a1009 00000000 00000000 00000048  MOV t10.___w, void, void, t4.xxxx
0057: 0084100c 00000000 00000000 003fc0b8  RCP t4.x___, void, void, t11.wwww
0058: 00841003 2a80b800 00000240 00000000  MUL t4.x___, t11.zzzz, t4.xxxx, void
0059: 00821003 4000b800 000005d0 00000002  MUL t2.x___, -u11.xxxx, u11.xxxx, void
0060: 00821003 00002800 00000240 00000000  MUL t2.x___, t2.xxxx, t4.xxxx, void
0061: 00841003 00002800 00000240 00000000  MUL t4.x___, t2.xxxx, t4.xxxx, void
0062: 00841003 00004800 01fe07c0 00000002  MUL t4.x___, t4.xxxx, u15.wwww, void
0063: 00841011 00000000 00000000 00000048  EXP t4.x___, void, void, t4.xxxx
0064: 078e1002 00004800 00aa05c0 205540ba  MAD t14, t4.xxxx, u11.yyyy, -u11.yyyy
0065: 00841002 00004800 015407c0 007900ea  MAD t4.x___, t4.xxxx, u15.zzzz, -t14
0066: 00841809 00000000 00000000 00000048  MOV.SAT t4.x___, void, void, t4.xxxx
0067: 008c1005 69009800 01480650 00000000  DP3 t12.x___, -u9.xyzz, t12.xyzz, void
0068: 008c108f 0000c800 00aa0740 000000ca  SELECT.LT t12.x___, t12.xxxx, u14.yyyy, t12.xxxx
0069: 038c1002 0000c800 01480440 0069005a  MAD t12.xyz_, t12.xxxx, u8.xyzz, -t5.xyzz
0070: 03851002 2900c800 00000640 0029005a  MAD t5.xyz_, t12.xyzz, u12.xxxx, t5.xyzz
0071: 03881002 29007800 014802c0 00290088  MAD t8.xyz_, t7.xyzz, t5.xyzz, t8.xyzz
0072: 07851003 08809800 00be04c0 00000000  MUL t5, t9.zxzx, t9.wwyy, void
0073: 00851006 39005800 01c80540 00000000  DP4 t5.x___, t5, t10, void
0074: 00851003 00010800 000002d0 00000000  MUL t5.x___, u16.xxxx, t5.xxxx, void
0075: 03881003 29008800 000002c0 00000000  MUL t8.xyz_, t8.xyzz, t5.xxxx, void
0076: 03881002 29007800 014803c0 0029008a  MAD t8.xyz_, t7.xyzz, u7.xyzz, t8.xyzz
0077: 078e1002 00004800 01480540 206900aa  MAD t14, t4.xxxx, u10.xyzz, -u10.xyzz
0078: 03881002 00004800 01480440 007900e8  MAD t8.xyz_, t4.xxxx, t8.xyzz, -t14
0079: 01851009 00000000 00000000 00150038  MOV t5.xy__, void, void, t3.xyyy
0080: 0c051018 39005f20 00000000 00000000  TEXLD t5.___w, tex1, t5, void, void
0081: 00871090 3fc05800 00aa0840 00000002  SET.LT t7.x___, t5.wwww, u16.yyyy, void
0082: 00000156 00007800 00aa0740 00002a82  BRANCH.EQ void, t7.xxxx, u14.yyyy, label_0085
0083: 00871009 00000000 00000000 201540e8  MOV t7.x___, void, void, u14.yyyy
0084: 00000016 00000000 00000000 00002b00  BRANCH void, void, void, label_0086
0085: 00871009 00000000 00000000 003fc058  MOV t7.x___, void, void, t5.wwww
0086: 03881003 29008800 000003c0 00000000  MUL t8.xyz_, t8.xyzz, t7.xxxx, void
0087: 03881003 29008800 01480340 00000002  MUL t8.xyz_, t8.xyzz, u6.xyzz, void
0088: 038d1009 00000000 00000000 00090088  MOV t13.xyz_, void, void, t8.xyzx
num loops: 0
num temps: 15
num const: 56
immediates:
 [14].x = 0.500000 (0x3f000000)
 [14].y = 0.000000 (0x00000000)
 [14].z = 2.000000 (0x40000000)
 [14].w = -1.000000 (0xbf800000)
 [15].x = -0.000500 (0xba03126f)
 [15].y = -0.500000 (0xbf000000)
 [15].z = 1.000000 (0x3f800000)
 [15].w = 1.442700 (0x3fb8aa65)
 [16].x = 0.111100 (0x3de38866)
 [16].y = 0.030000 (0x3cf5c28f)
 [16].z = 0.000000 (0x00000000)
 [16].w = 0.000000 (0x00000000)
 [17].x = 0.000000 (0x00000000)
 [17].y = 1.000000 (0x3f800000)
 [17].z = 128.000000 (0x43000000)
 [17].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=9 comps=3
 [2] name=GENERIC index=10 comps=4
 [3] name=GENERIC index=11 comps=4
 [4] name=GENERIC index=12 comps=4
 [5] name=GENERIC index=13 comps=4
 [6] name=GENERIC index=14 comps=4
outputs:
special:
  ps_color_out_reg=13
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
