FRAG
PROPERTY FS_COORD_PIXEL_CENTER INTEGER
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], POSITION, LINEAR
DCL IN[1], GENERIC[9], PERSPECTIVE
DCL IN[2], GENERIC[10], PERSPECTIVE
DCL IN[3], GENERIC[11], PERSPECTIVE
DCL IN[4], GENERIC[12], PERSPECTIVE
DCL IN[5], GENERIC[13], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL CONST[11..12]
DCL CONST[3..10]
DCL TEMP[0]
DCL TEMP[1..8], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     1.0000,    -0.0030}
IMM[1] FLT32 {   -0.5000,     2.0000,     1.0000,     0.1111}
IMM[2] FLT32 {    1.4427,     0.0300,     0.0000,     0.0000}
  0: ADD TEMP[0], IN[0], IMM[0].xxyy
  1: MAD TEMP[0].y, TEMP[0], CONST[12].xxxx, CONST[12].yyyy
  2: MOV TEMP[1].xy, IN[4].zwww
  3: TEX TEMP[1], TEMP[1], SAMP[0], 2D
  4: MOV TEMP[2].w, IMM[0].zzzz
  5: LRP TEMP[3].xyz, TEMP[1].wwww, IMM[0].zzzz, CONST[4].xyzz
  6: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[3].xyzz
  7: MUL TEMP[4].xyz, CONST[7].xyzz, CONST[11].xyzz
  8: DP3 TEMP[5].x, IN[2].xyzz, IN[2].xyzz
  9: RSQ TEMP[5].x, TEMP[5].xxxx
 10: MUL TEMP[5].xyz, IN[2].xyzz, TEMP[5].xxxx
 11: DP3 TEMP[5].x, TEMP[5].xyzz, IN[5].xyzz
 12: MAX TEMP[5].x, IMM[0].yyyy, TEMP[5].xxxx
 13: POW TEMP[5].x, TEMP[5].xxxx, CONST[10].xxxx
 14: MUL TEMP[3].xyz, TEMP[4].xyzz, TEMP[5].xxxx
 15: ADD TEMP[4].x, IN[3].zzzz, IMM[0].wwww
 16: ADD TEMP[5].xy, IN[3].xyyy, IMM[1].xxxx
 17: FRC TEMP[5].xy, TEMP[5].xyyy
 18: ADD TEMP[6].xy, TEMP[5].xyyy, IMM[0].zzzz
 19: ADD TEMP[7].xy, IMM[1].yyyy, -TEMP[5].xyyy
 20: MOV TEMP[6].zw, TEMP[7].yyxy
 21: MUL TEMP[5].xy, IMM[0].xxxx, TEMP[5].xyyy
 22: ADD TEMP[5].xy, IN[3].xyyy, -TEMP[5].xyyy
 23: ADD TEMP[5], IMM[1].zzxx, TEMP[5].xyxy
 24: MUL TEMP[5], TEMP[5], CONST[3].zwzw
 25: MOV TEMP[7].xy, TEMP[5].zwww
 26: MOV TEMP[7].z, TEMP[4].xxxx
 27: TEX TEMP[7].x, TEMP[7], SAMP[2], SHADOW2D
 28: MOV TEMP[7].x, TEMP[7].xxxx
 29: MOV TEMP[8].xy, TEMP[5].xwww
 30: MOV TEMP[8].z, TEMP[4].xxxx
 31: TEX TEMP[8].x, TEMP[8], SAMP[2], SHADOW2D
 32: MOV TEMP[7].y, TEMP[8].xxxx
 33: MOV TEMP[8].xy, TEMP[5].zyyy
 34: MOV TEMP[8].z, TEMP[4].xxxx
 35: TEX TEMP[8].x, TEMP[8], SAMP[2], SHADOW2D
 36: MOV TEMP[7].z, TEMP[8].xxxx
 37: MOV TEMP[5].xy, TEMP[5].xyyy
 38: MOV TEMP[5].z, TEMP[4].xxxx
 39: TEX TEMP[4].x, TEMP[5], SAMP[2], SHADOW2D
 40: MOV TEMP[7].w, TEMP[4].xxxx
 41: MAD TEMP[3].xyz, TEMP[1].xyzz, IN[1].xyzz, TEMP[3].xyzz
 42: MUL TEMP[4], TEMP[6].zxzx, TEMP[6].wwyy
 43: DP4 TEMP[4].x, TEMP[4], TEMP[7]
 44: MUL TEMP[4].x, IMM[1].wwww, TEMP[4].xxxx
 45: MUL TEMP[3].xyz, TEMP[3].xyzz, TEMP[4].xxxx
 46: MAD TEMP[1].xyz, TEMP[1].xyzz, CONST[6].xyzz, TEMP[3].xyzz
 47: RCP TEMP[3].x, TEMP[0].wwww
 48: MUL TEMP[3].x, TEMP[0].zzzz, TEMP[3].xxxx
 49: MUL TEMP[4].x, -CONST[9].xxxx, CONST[9].xxxx
 50: MUL TEMP[4].x, TEMP[4].xxxx, TEMP[3].xxxx
 51: MUL TEMP[3].x, TEMP[4].xxxx, TEMP[3].xxxx
 52: MUL TEMP[3].x, TEMP[3].xxxx, IMM[2].xxxx
 53: EX2 TEMP[3].x, TEMP[3].xxxx
 54: LRP TEMP[3].x, TEMP[3].xxxx, IMM[0].zzzz, CONST[9].yyyy
 55: MOV_SAT TEMP[3].x, TEMP[3].xxxx
 56: LRP TEMP[3].xyz, TEMP[3].xxxx, TEMP[1].xyzz, CONST[8].xyzz
 57: MOV TEMP[4].xy, IN[4].xyyy
 58: TEX TEMP[4].w, TEMP[4], SAMP[1], 2D
 59: SLT TEMP[5].x, TEMP[4].wwww, IMM[2].yyyy
 60: IF TEMP[5].xxxx :2
 61:   MOV TEMP[5].x, IMM[0].yyyy
 62: ELSE :2
 63:   MOV TEMP[5].x, TEMP[4].wwww
 64: ENDIF
 65: MUL TEMP[1].xyz, TEMP[3].xyzz, TEMP[5].xxxx
 66: MUL TEMP[1].xyz, TEMP[1].xyzz, CONST[5].xyzz
 67: MOV TEMP[2].xyz, TEMP[1].xyzx
 68: MOV OUT[0], TEMP[2]
 69: END

FRAG
0000: 078b1001 39000800 00000000 201400d8  ADD t11, t0, void, u13.xxyy
0001: 010b1002 3900b800 00000640 201540ca  MAD t11._y__, t11, u12.xxxx, u12.yyyy
0002: 018a1009 00000000 00000000 003f8048  MOV t10.xy__, void, void, t4.zwww
0003: 078a1018 3900af20 00000000 00000000  TEXLD t10, tex0, t10, void, void
0004: 04091009 00000000 00000000 202a80d8  MOV t9.___w, void, void, u13.zzzz
0005: 078d1002 3fc0a800 01480240 2069004a  MAD t13, t10.wwww, u4.xyzz, -u4.xyzz
0006: 038c1002 3fc0a800 015406c0 007900da  MAD t12.xyz_, t10.wwww, u13.zzzz, -t13
0007: 038a1003 2900a800 01480640 00000000  MUL t10.xyz_, t10.xyzz, t12.xyzz, void
0008: 078d1009 00000000 00000000 202900b8  MOV t13, void, void, u11.xyzz
0009: 03871003 29007800 01c806d0 00000000  MUL t7.xyz_, u7.xyzz, t13, void
0010: 00861005 29002800 01480140 00000000  DP3 t6.x___, t2.xyzz, t2.xyzz, void
0011: 0086100d 00000000 00000000 00000068  RSQ t6.x___, void, void, t6.xxxx
0012: 03861003 29002800 00000340 00000000  MUL t6.xyz_, t2.xyzz, t6.xxxx, void
0013: 00861005 29006800 014802c0 00000000  DP3 t6.x___, t6.xyzz, t5.xyzz, void
0014: 0086108f 1540d800 00000350 201540d8  SELECT.LT t6.x___, u13.yyyy, t6.xxxx, u13.yyyy
0015: 00821012 00000000 00000000 00000068  LOG t2.x___, void, void, t6.xxxx
0016: 00821003 0000a800 00000150 00000000  MUL t2.x___, u10.xxxx, t2.xxxx, void
0017: 00861011 00000000 00000000 00000028  EXP t6.x___, void, void, t2.xxxx
0018: 038c1003 29007800 00000340 00000000  MUL t12.xyz_, t7.xyzz, t6.xxxx, void
0019: 00871001 2a803800 00000000 203fc0d8  ADD t7.x___, t3.zzzz, void, u13.wwww
0020: 01861001 15003800 00000000 200000e8  ADD t6.xy__, t3.xyyy, void, u14.xxxx
0021: 01861013 00000000 00000000 00150068  FRC t6.xy__, void, void, t6.xyyy
0022: 01851001 15006800 00000000 202a80d8  ADD t5.xy__, t6.xyyy, void, u13.zzzz
0023: 01881001 1540e800 00000010 00550068  ADD t8.xy__, u14.yyyy, void, -t6.xyyy
0024: 06051009 00000000 00000000 00114088  MOV t5.__zw, void, void, t8.yyxy
0025: 01861003 0000d800 00a80350 00000000  MUL t6.xy__, u13.xxxx, t6.xyyy, void
0026: 01861001 15003800 00000000 00550068  ADD t6.xy__, t3.xyyy, void, -t6.xyyy
0027: 07861001 0280e800 00000010 00110068  ADD t6, u14.zzxx, void, t6.xyxy
0028: 07861003 39006800 01dc01c0 00000002  MUL t6, t6, u3.zwzw, void
0029: 01881009 00000000 00000000 003f8068  MOV t8.xy__, void, void, t6.zwww
0030: 02081009 00000000 00000000 00000078  MOV t8.__z_, void, void, t7.xxxx
0031: 10881018 39008f20 00000000 00000000  TEXLD t8.x___, tex2, t8, void, void
0032: 00881009 00000000 00000000 00000088  MOV t8.x___, void, void, t8.xxxx
0033: 01831009 00000000 00000000 003f0068  MOV t3.xy__, void, void, t6.xwww
0034: 02031009 00000000 00000000 00000078  MOV t3.__z_, void, void, t7.xxxx
0035: 10831018 39003f20 00000000 00000000  TEXLD t3.x___, tex2, t3, void, void
0036: 01081009 00000000 00000000 00000038  MOV t8._y__, void, void, t3.xxxx
0037: 01831009 00000000 00000000 00158068  MOV t3.xy__, void, void, t6.zyyy
0038: 02031009 00000000 00000000 00000078  MOV t3.__z_, void, void, t7.xxxx
0039: 10831018 39003f20 00000000 00000000  TEXLD t3.x___, tex2, t3, void, void
0040: 02081009 00000000 00000000 00000038  MOV t8.__z_, void, void, t3.xxxx
0041: 01861009 00000000 00000000 00150068  MOV t6.xy__, void, void, t6.xyyy
0042: 02061009 00000000 00000000 00000078  MOV t6.__z_, void, void, t7.xxxx
0043: 10871018 39006f20 00000000 00000000  TEXLD t7.x___, tex2, t6, void, void
0044: 04081009 00000000 00000000 00000078  MOV t8.___w, void, void, t7.xxxx
0045: 038c1002 2900a800 014800c0 002900c8  MAD t12.xyz_, t10.xyzz, t1.xyzz, t12.xyzz
0046: 07871003 08805800 00be02c0 00000000  MUL t7, t5.zxzx, t5.wwyy, void
0047: 00871006 39007800 01c80440 00000000  DP4 t7.x___, t7, t8, void
0048: 00871003 3fc0e800 000003d0 00000000  MUL t7.x___, u14.wwww, t7.xxxx, void
0049: 038c1003 2900c800 000003c0 00000000  MUL t12.xyz_, t12.xyzz, t7.xxxx, void
0050: 038a1002 2900a800 01480340 002900ca  MAD t10.xyz_, t10.xyzz, u6.xyzz, t12.xyzz
0051: 008c100c 00000000 00000000 003fc0b8  RCP t12.x___, void, void, t11.wwww
0052: 008c1003 2a80b800 00000640 00000000  MUL t12.x___, t11.zzzz, t12.xxxx, void
0053: 00871003 40009800 000004d0 00000002  MUL t7.x___, -u9.xxxx, u9.xxxx, void
0054: 00871003 00007800 00000640 00000000  MUL t7.x___, t7.xxxx, t12.xxxx, void
0055: 008c1003 00007800 00000640 00000000  MUL t12.x___, t7.xxxx, t12.xxxx, void
0056: 008c1003 0000c800 000007c0 00000002  MUL t12.x___, t12.xxxx, u15.xxxx, void
0057: 008c1011 00000000 00000000 000000c8  EXP t12.x___, void, void, t12.xxxx
0058: 078d1002 0000c800 00aa04c0 2055409a  MAD t13, t12.xxxx, u9.yyyy, -u9.yyyy
0059: 008c1002 0000c800 015406c0 007900da  MAD t12.x___, t12.xxxx, u13.zzzz, -t13
0060: 008c1809 00000000 00000000 000000c8  MOV.SAT t12.x___, void, void, t12.xxxx
0061: 078d1002 0000c800 01480440 2069008a  MAD t13, t12.xxxx, u8.xyzz, -u8.xyzz
0062: 038c1002 0000c800 01480540 007900d8  MAD t12.xyz_, t12.xxxx, t10.xyzz, -t13
0063: 01871009 00000000 00000000 00150048  MOV t7.xy__, void, void, t4.xyyy
0064: 0c071018 39007f20 00000000 00000000  TEXLD t7.___w, tex1, t7, void, void
0065: 00861090 3fc07800 00aa07c0 00000002  SET.LT t6.x___, t7.wwww, u15.yyyy, void
0066: 00000156 00006800 00aa06c0 00002282  BRANCH.EQ void, t6.xxxx, u13.yyyy, label_0069
0067: 00861009 00000000 00000000 201540d8  MOV t6.x___, void, void, u13.yyyy
0068: 00000016 00000000 00000000 00002300  BRANCH void, void, void, label_0070
0069: 00861009 00000000 00000000 003fc078  MOV t6.x___, void, void, t7.wwww
0070: 038a1003 2900c800 00000340 00000000  MUL t10.xyz_, t12.xyzz, t6.xxxx, void
0071: 038a1003 2900a800 014802c0 00000002  MUL t10.xyz_, t10.xyzz, u5.xyzz, void
0072: 03891009 00000000 00000000 000900a8  MOV t9.xyz_, void, void, t10.xyzx
num loops: 0
num temps: 14
num const: 52
immediates:
 [13].x = 0.500000 (0x3f000000)
 [13].y = 0.000000 (0x00000000)
 [13].z = 1.000000 (0x3f800000)
 [13].w = -0.003000 (0xbb449ba6)
 [14].x = -0.500000 (0xbf000000)
 [14].y = 2.000000 (0x40000000)
 [14].z = 1.000000 (0x3f800000)
 [14].w = 0.111100 (0x3de38866)
 [15].x = 1.442700 (0x3fb8aa65)
 [15].y = 0.030000 (0x3cf5c28f)
 [15].z = 0.000000 (0x00000000)
 [15].w = 0.000000 (0x00000000)
 [16].x = 0.000000 (0x00000000)
 [16].y = 1.000000 (0x3f800000)
 [16].z = 128.000000 (0x43000000)
 [16].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=9 comps=3
 [2] name=GENERIC index=10 comps=3
 [3] name=GENERIC index=11 comps=3
 [4] name=GENERIC index=12 comps=4
 [5] name=GENERIC index=13 comps=3
outputs:
special:
  ps_color_out_reg=9
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
