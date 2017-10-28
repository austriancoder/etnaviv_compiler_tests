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
DCL IN[7], GENERIC[15], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL SAMP[4]
DCL SAMP[5]
DCL CONST[12..13]
DCL CONST[6..11]
DCL TEMP[0]
DCL TEMP[1..9], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     1.0000,     2.0000}
IMM[1] FLT32 {   -1.0000,    -0.0005,    -0.5000,     1.0000}
IMM[2] FLT32 {    1.4427,     0.1111,     0.0300,     0.0000}
  0: ADD TEMP[0], IN[0], IMM[0].xxyy
  1: MAD TEMP[0].y, TEMP[0], CONST[13].xxxx, CONST[13].yyyy
  2: MOV TEMP[1].xy, IN[4].zwzz
  3: MOV TEMP[1].z, IN[5].xxxx
  4: MOV TEMP[2].x, IN[6].wwww
  5: MOV TEMP[2].yz, IN[7].yxyy
  6: MOV TEMP[3].xy, IN[3].xyyy
  7: TEX TEMP[3].w, TEMP[3], SAMP[1], 2D
  8: ADD TEMP[3].x, IMM[0].zzzz, -TEMP[3].wwww
  9: MOV TEMP[3].w, TEMP[3].xxxx
 10: MOV TEMP[4].xy, IN[4].xyyy
 11: TEX TEMP[4].xyz, TEMP[4], SAMP[0], 2D
 12: MOV TEMP[5].xy, IN[4].xyyy
 13: TEX TEMP[5].xyz, TEMP[5], SAMP[3], 2D
 14: MAD TEMP[5].xyz, TEMP[5].xyzz, IMM[0].wwww, IMM[1].xxxx
 15: MUL TEMP[1].xyz, TEMP[1].xyzz, -IN[2].wwww
 16: MUL TEMP[6].xyz, IN[2].xyzz, TEMP[5].xxxx
 17: MAD TEMP[1].xyz, TEMP[1].xyzz, TEMP[5].yyyy, TEMP[6].xyzz
 18: MAD TEMP[1].xyz, TEMP[2].xyzz, TEMP[5].zzzz, TEMP[1].xyzz
 19: DP3 TEMP[2].x, TEMP[1].xyzz, TEMP[1].xyzz
 20: RSQ TEMP[2].x, TEMP[2].xxxx
 21: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[2].xxxx
 22: MOV TEMP[2].xy, IN[4].xyyy
 23: TEX TEMP[2].xyz, TEMP[2], SAMP[4], 2D
 24: MUL TEMP[5].xyz, CONST[8].xyzz, TEMP[2].xyzz
 25: DP3 TEMP[6].x, TEMP[1].xyzz, TEMP[1].xyzz
 26: RSQ TEMP[6].x, TEMP[6].xxxx
 27: MUL TEMP[6].xyz, TEMP[1].xyzz, TEMP[6].xxxx
 28: DP3 TEMP[6].x, TEMP[6].xyzz, IN[5].yzww
 29: MAX TEMP[6].x, IMM[0].yyyy, TEMP[6].xxxx
 30: POW TEMP[6].x, TEMP[6].xxxx, CONST[12].yyyy
 31: MUL TEMP[2].xyz, TEMP[5].xyzz, TEMP[6].xxxx
 32: ADD TEMP[5].x, IN[1].zzzz, IMM[1].yyyy
 33: ADD TEMP[6].xy, IN[1].xyyy, IMM[1].zzzz
 34: FRC TEMP[6].xy, TEMP[6].xyyy
 35: ADD TEMP[7].xy, TEMP[6].xyyy, IMM[0].zzzz
 36: ADD TEMP[8].xy, IMM[0].wwww, -TEMP[6].xyyy
 37: MOV TEMP[7].zw, TEMP[8].yyxy
 38: MUL TEMP[6].xy, IMM[0].xxxx, TEMP[6].xyyy
 39: ADD TEMP[6].xy, IN[1].xyyy, -TEMP[6].xyyy
 40: ADD TEMP[6], IMM[1].wwzz, TEMP[6].xyxy
 41: MUL TEMP[6], TEMP[6], CONST[6].zwzw
 42: MOV TEMP[8].xy, TEMP[6].zwww
 43: MOV TEMP[8].z, TEMP[5].xxxx
 44: TEX TEMP[8].x, TEMP[8], SAMP[5], SHADOW2D
 45: MOV TEMP[8].x, TEMP[8].xxxx
 46: MOV TEMP[9].xy, TEMP[6].xwww
 47: MOV TEMP[9].z, TEMP[5].xxxx
 48: TEX TEMP[9].x, TEMP[9], SAMP[5], SHADOW2D
 49: MOV TEMP[8].y, TEMP[9].xxxx
 50: MOV TEMP[9].xy, TEMP[6].zyyy
 51: MOV TEMP[9].z, TEMP[5].xxxx
 52: TEX TEMP[9].x, TEMP[9], SAMP[5], SHADOW2D
 53: MOV TEMP[8].z, TEMP[9].xxxx
 54: MOV TEMP[6].xy, TEMP[6].xyyy
 55: MOV TEMP[6].z, TEMP[5].xxxx
 56: TEX TEMP[5].x, TEMP[6], SAMP[5], SHADOW2D
 57: MOV TEMP[8].w, TEMP[5].xxxx
 58: RCP TEMP[5].x, TEMP[0].wwww
 59: MUL TEMP[5].x, TEMP[0].zzzz, TEMP[5].xxxx
 60: MUL TEMP[6].x, -CONST[11].xxxx, CONST[11].xxxx
 61: MUL TEMP[6].x, TEMP[6].xxxx, TEMP[5].xxxx
 62: MUL TEMP[5].x, TEMP[6].xxxx, TEMP[5].xxxx
 63: MUL TEMP[5].x, TEMP[5].xxxx, IMM[2].xxxx
 64: EX2 TEMP[5].x, TEMP[5].xxxx
 65: LRP TEMP[5].x, TEMP[5].xxxx, IMM[0].zzzz, CONST[11].yyyy
 66: MOV_SAT TEMP[5].x, TEMP[5].xxxx
 67: DP3 TEMP[1].x, -CONST[9].xyzz, TEMP[1].xyzz
 68: MAX TEMP[1].x, TEMP[1].xxxx, IMM[0].yyyy
 69: MAD TEMP[1].xyz, TEMP[1].xxxx, CONST[8].xyzz, -IN[6].xyzz
 70: MAD TEMP[1].xyz, TEMP[1].xyzz, CONST[12].xxxx, IN[6].xyzz
 71: MAD TEMP[1].xyz, TEMP[4].xyzz, TEMP[1].xyzz, TEMP[2].xyzz
 72: MUL TEMP[2], TEMP[7].zxzx, TEMP[7].wwyy
 73: DP4 TEMP[2].x, TEMP[2], TEMP[8]
 74: MUL TEMP[2].x, IMM[2].yyyy, TEMP[2].xxxx
 75: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[2].xxxx
 76: MAD TEMP[1].xyz, TEMP[4].xyzz, CONST[7].xyzz, TEMP[1].xyzz
 77: LRP TEMP[1].xyz, TEMP[5].xxxx, TEMP[1].xyzz, CONST[10].xFRAG
0000: 078a1001 39000800 00000000 201400e8  ADD t10, t0, void, u14.xxyy
0001: 010a1002 3900a800 000006c0 201540da  MAD t10._y__, t10, u13.xxxx, u13.yyyy
0002: 018b1009 00000000 00000000 002b8048  MOV t11.xy__, void, void, t4.zwzz
0003: 020b1009 00000000 00000000 00000058  MOV t11.__z_, void, void, t5.xxxx
0004: 008d1009 00000000 00000000 003fc068  MOV t13.x___, void, void, t6.wwww
0005: 030d1009 00000000 00000000 00144078  MOV t13._yz_, void, void, t7.yxyy
0006: 01871009 00000000 00000000 00150038  MOV t7.xy__, void, void, t3.xyyy
0007: 0c071018 39007f20 00000000 00000000  TEXLD t7.___w, tex1, t7, void, void
0008: 00871001 2a80e800 00000010 007fc078  ADD t7.x___, u14.zzzz, void, -t7.wwww
0009: 04071009 00000000 00000000 00000078  MOV t7.___w, void, void, t7.xxxx
0010: 01881009 00000000 00000000 00150048  MOV t8.xy__, void, void, t4.xyyy
0011: 03881018 39008f20 00000000 00000000  TEXLD t8.xyz_, tex0, t8, void, void
0012: 018c1009 00000000 00000000 00150048  MOV t12.xy__, void, void, t4.xyyy
0013: 1b8c1018 3900cf20 00000000 00000000  TEXLD t12.xyz_, tex3, t12, void, void
0014: 078e1009 00000000 00000000 200000f8  MOV t14, void, void, u15.xxxx
0015: 038c1002 2900c800 01fe0740 003900ea  MAD t12.xyz_, t12.xyzz, u14.wwww, t14
0016: 038b1003 2900b800 03fe0140 00000000  MUL t11.xyz_, t11.xyzz, -t2.wwww, void
0017: 03821003 29002800 00000640 00000000  MUL t2.xyz_, t2.xyzz, t12.xxxx, void
0018: 038b1002 2900b800 00aa0640 00290028  MAD t11.xyz_, t11.xyzz, t12.yyyy, t2.xyzz
0019: 038b1002 2900d800 01540640 002900b8  MAD t11.xyz_, t13.xyzz, t12.zzzz, t11.xyzz
0020: 008d1005 2900b800 014805c0 00000000  DP3 t13.x___, t11.xyzz, t11.xyzz, void
0021: 008d100d 00000000 00000000 000000d8  RSQ t13.x___, void, void, t13.xxxx
0022: 038b1003 2900b800 000006c0 00000000  MUL t11.xyz_, t11.xyzz, t13.xxxx, void
0023: 018d1009 00000000 00000000 00150048  MOV t13.xy__, void, void, t4.xyyy
0024: 238d1018 3900df20 00000000 00000000  TEXLD t13.xyz_, tex4, t13, void, void
0025: 038c1003 29008800 014806d0 00000000  MUL t12.xyz_, u8.xyzz, t13.xyzz, void
0026: 00821005 2900b800 014805c0 00000000  DP3 t2.x___, t11.xyzz, t11.xyzz, void
0027: 0082100d 00000000 00000000 00000028  RSQ t2.x___, void, void, t2.xxxx
0028: 03821003 2900b800 00000140 00000000  MUL t2.xyz_, t11.xyzz, t2.xxxx, void
0029: 00821005 29002800 01f202c0 00000000  DP3 t2.x___, t2.xyzz, t5.yzww, void
0030: 0082108f 1540e800 00000150 201540e8  SELECT.LT t2.x___, u14.yyyy, t2.xxxx, u14.yyyy
0031: 00841012 00000000 00000000 00000028  LOG t4.x___, void, void, t2.xxxx
0032: 00841003 1540c800 00000250 00000000  MUL t4.x___, u12.yyyy, t4.xxxx, void
0033: 00821011 00000000 00000000 00000048  EXP t2.x___, void, void, t4.xxxx
0034: 038d1003 2900c800 00000140 00000000  MUL t13.xyz_, t12.xyzz, t2.xxxx, void
0035: 008c1001 2a801800 00000000 201540f8  ADD t12.x___, t1.zzzz, void, u15.yyyy
0036: 01821001 15001800 00000000 202a80f8  ADD t2.xy__, t1.xyyy, void, u15.zzzz
0037: 01821013 00000000 00000000 00150028  FRC t2.xy__, void, void, t2.xyyy
0038: 01851001 15002800 00000000 202a80e8  ADD t5.xy__, t2.xyyy, void, u14.zzzz
0039: 01891001 3fc0e800 00000010 00550028  ADD t9.xy__, u14.wwww, void, -t2.xyyy
0040: 06051009 00000000 00000000 00114098  MOV t5.__zw, void, void, t9.yyxy
0041: 01821003 0000e800 00a80150 00000000  MUL t2.xy__, u14.xxxx, t2.xyyy, void
0042: 01821001 15001800 00000000 00550028  ADD t2.xy__, t1.xyyy, void, -t2.xyyy
0043: 07821001 2bc0f800 00000010 00110028  ADD t2, u15.wwzz, void, t2.xyxy
0044: 07821003 39002800 01dc0340 00000002  MUL t2, t2, u6.zwzw, void
0045: 01891009 00000000 00000000 003f8028  MOV t9.xy__, void, void, t2.zwww
0046: 02091009 00000000 00000000 000000c8  MOV t9.__z_, void, void, t12.xxxx
0047: 28891018 39009f20 00000000 00000000  TEXLD t9.x___, tex5, t9, void, void
0048: 00891009 00000000 00000000 00000098  MOV t9.x___, void, void, t9.xxxx
0049: 01811009 00000000 00000000 003f0028  MOV t1.xy__, void, void, t2.xwww
0050: 02011009 00000000 00000000 000000c8  MOV t1.__z_, void, void, t12.xxxx
0051: 28811018 39001f20 00000000 00000000  TEXLD t1.x___, tex5, t1, void, void
0052: 01091009 00000000 00000000 00000018  MOV t9._y__, void, void, t1.xxxx
0053: 01811009 00000000 00000000 00158028  MOV t1.xy__, void, void, t2.zyyy
0054: 02011009 00000000 00000000 000000c8  MOV t1.__z_, void, void, t12.xxxx
0055: 28811018 39001f20 00000000 00000000  TEXLD t1.x___, tex5, t1, void, void
0056: 02091009 00000000 00000000 00000018  MOV t9.__z_, void, void, t1.xxxx
0057: 01821009 00000000 00000000 00150028  MOV t2.xy__, void, void, t2.xyyy
0058: 02021009 00000000 00000000 000000c8  MOV t2.__z_, void, void, t12.xxxx
0059: 288c1018 39002f20 00000000 00000000  TEXLD t12.x___, tex5, t2, void, void
0060: 04091009 00000000 00000000 000000c8  MOV t9.___w, void, void, t12.xxxx
0061: 008c100c 00000000 00000000 003fc0a8  RCP t12.x___, void, void, t10.wwww
0062: 008c1003 2a80a800 00000640 00000000  MUL t12.x___, t10.zzzz, t12.xxxx, void
0063: 00821003 4000b800 000005d0 00000002  MUL t2.x___, -u11.xxxx, u11.xxxx, void
0064: 00821003 00002800 00000640 00000000  MUL t2.x___, t2.xxxx, t12.xxxx, void
0065: 008c1003 00002800 00000640 00000000  MUL t12.x___, t2.xxxx, t12.xxxx, void
0066: 008c1003 0000c800 00000840 00000002  MUL t12.x___, t12.xxxx, u16.xxxx, void
0067: 008c1011 00000000 00000000 000000c8  EXP t12.x___, void, void, t12.xxxx
0068: 078e1002 0000c800 00aa05c0 205540ba  MAD t14, t12.xxxx, u11.yyyy, -u11.yyyy
0069: 008c1002 0000c800 01540740 007900ea  MAD t12.x___, t12.xxxx, u14.zzzz, -t14
0070: 008c1809 00000000 00000000 000000c8  MOV.SAT t12.x___, void, void, t12.xxxx
0071: 008b1005 69009800 014805d0 00000000  DP3 t11.x___, -u9.xyzz, t11.xyzz, void
0072: 008b108f 0000b800 00aa0740 000000ba  SELECT.LT t11.x___, t11.xxxx, u14.yyyy, t11.xxxx
0073: 038b1002 0000b800 01480440 0069006a  MAD t11.xyz_, t11.xxxx, u8.xyzz, -t6.xyzz
0074: 038b1002 2900b800 00000640 0029006a  MAD t11.xyz_, t11.xyzz, u12.xxxx, t6.xyzz
0075: 038b1002 29008800 014805c0 002900d8  MAD t11.xyz_, t8.xyzz, t11.xyzz, t13.xyzz
0076: 078d1003 08805800 00be02c0 00000000  MUL t13, t5.zxzx, t5.wwyy, void
0077: 008d1006 3900d800 01c804c0 00000000  DP4 t13.x___, t13, t9, void
0078: 008d1003 15410800 000006d0 00000000  MUL t13.x___, u16.yyyy, t13.xxxx, void
0079: 038b1003 2900b800 000006c0 00000000  MUL t11.xyz_, t11.xyzz, t13.xxxx, void
0080: 038b1002 29008800 014803c0 002900ba  MAD t11.xyz_, t8.xyzz, u7.xyzz, t11.xyzz
0081: 078e1002 0000c800 01480540 206900aa  MAD t14, t12.xxxx, u10.xyzz, -u10.xyzz
0082: 038b1002 0000c800 014805c0 007900e8  MAD t11.xyz_, t12.xxxx, t11.xyzz, -t14
0083: 018d1009 00000000 00000000 003f8038  MOV t13.xy__, void, void, t3.zwww
0084: 140d1018 3900df20 00000000 00000000  TEXLD t13.___w, tex2, t13, void, void
0085: 00881090 3fc0d800 01540840 00000002  SET.LT t8.x___, t13.wwww, u16.zzzz, void
0086: 00000156 00008800 00aa0740 00002c82  BRANCH.EQ void, t8.xxxx, u14.yyyy, label_0089
0087: 00881009 00000000 00000000 201540e8  MOV t8.x___, void, void, u14.yyyy
0088: 00000016 00000000 00000000 00002d00  BRANCH void, void, void, label_0090
0089: 00881009 00000000 00000000 003fc0d8  MOV t8.x___, void, void, t13.wwww
0090: 038b1003 2900b800 00000440 00000000  MUL t11.xyz_, t11.xyzz, t8.xxxx, void
0091: 03871009 00000000 00000000 000900b8  MOV t7.xyz_, void, void, t11.xyzx
num loops: 0
num temps: 15
num const: 56
immediates:
 [14].x = 0.500000 (0x3f000000)
 [14].y = 0.000000 (0x00000000)
 [14].z = 1.000000 (0x3f800000)
 [14].w = 2.000000 (0x40000000)
 [15].x = -1.000000 (0xbf800000)
 [15].y = -0.000500 (0xba03126f)
 [15].z = -0.500000 (0xbf000000)
 [15].w = 1.000000 (0x3f800000)
 [16].x = 1.442700 (0x3fb8aa65)
 [16].y = 0.111100 (0x3de38866)
 [16].z = 0.030000 (0x3cf5c28f)
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
 [7] name=GENERIC index=15 comps=2
outputs:
special:
  ps_color_out_reg=7
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
