FRAG
PROPERTY FS_COORD_PIXEL_CENTER INTEGER
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], POSITION, LINEAR
DCL IN[1], GENERIC[9], PERSPECTIVE
DCL IN[2], GENERIC[10], PERSPECTIVE
DCL IN[3], GENERIC[11], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL CONST[8..9]
DCL CONST[3..7]
DCL TEMP[0]
DCL TEMP[1..7], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     1.0000,    -0.0030}
IMM[1] FLT32 {   -0.5000,     2.0000,     1.0000,     0.1111}
IMM[2] FLT32 {    1.4427,     0.0300,     0.0000,     0.0000}
  0: ADD TEMP[0], IN[0], IMM[0].xxyy
  1: MAD TEMP[0].y, TEMP[0], CONST[9].xxxx, CONST[9].yyyy
  2: MOV TEMP[1].xy, IN[3].zwww
  3: TEX TEMP[1], TEMP[1], SAMP[0], 2D
  4: MOV TEMP[2].w, IMM[0].zzzz
  5: LRP TEMP[3].xyz, TEMP[1].wwww, IMM[0].zzzz, CONST[4].xyzz
  6: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[3].xyzz
  7: ADD TEMP[3].x, IN[2].zzzz, IMM[0].wwww
  8: ADD TEMP[4].xy, IN[2].xyyy, IMM[1].xxxx
  9: FRC TEMP[4].xy, TEMP[4].xyyy
 10: ADD TEMP[5].xy, TEMP[4].xyyy, IMM[0].zzzz
 11: ADD TEMP[6].xy, IMM[1].yyyy, -TEMP[4].xyyy
 12: MOV TEMP[5].zw, TEMP[6].yyxy
 13: MUL TEMP[4].xy, IMM[0].xxxx, TEMP[4].xyyy
 14: ADD TEMP[4].xy, IN[2].xyyy, -TEMP[4].xyyy
 15: ADD TEMP[4], IMM[1].zzxx, TEMP[4].xyxy
 16: MUL TEMP[4], TEMP[4], CONST[3].zwzw
 17: MOV TEMP[6].xy, TEMP[4].zwww
 18: MOV TEMP[6].z, TEMP[3].xxxx
 19: TEX TEMP[6].x, TEMP[6], SAMP[2], SHADOW2D
 20: MOV TEMP[6].x, TEMP[6].xxxx
 21: MOV TEMP[7].xy, TEMP[4].xwww
 22: MOV TEMP[7].z, TEMP[3].xxxx
 23: TEX TEMP[7].x, TEMP[7], SAMP[2], SHADOW2D
 24: MOV TEMP[6].y, TEMP[7].xxxx
 25: MOV TEMP[7].xy, TEMP[4].zyyy
 26: MOV TEMP[7].z, TEMP[3].xxxx
 27: TEX TEMP[7].x, TEMP[7], SAMP[2], SHADOW2D
 28: MOV TEMP[6].z, TEMP[7].xxxx
 29: MOV TEMP[4].xy, TEMP[4].xyyy
 30: MOV TEMP[4].z, TEMP[3].xxxx
 31: TEX TEMP[3].x, TEMP[4], SAMP[2], SHADOW2D
 32: MOV TEMP[6].w, TEMP[3].xxxx
 33: MUL TEMP[3].xyz, TEMP[1].xyzz, IN[1].xyzz
 34: MUL TEMP[4], TEMP[5].zxzx, TEMP[5].wwyy
 35: DP4 TEMP[4].x, TEMP[4], TEMP[6]
 36: MUL TEMP[4].x, IMM[1].wwww, TEMP[4].xxxx
 37: MUL TEMP[3].xyz, TEMP[3].xyzz, TEMP[4].xxxx
 38: MAD TEMP[1].xyz, TEMP[1].xyzz, CONST[6].xyzz, TEMP[3].xyzz
 39: RCP TEMP[3].x, TEMP[0].wwww
 40: MUL TEMP[3].x, TEMP[0].zzzz, TEMP[3].xxxx
 41: MUL TEMP[4].x, -CONST[8].xxxx, CONST[8].xxxx
 42: MUL TEMP[4].x, TEMP[4].xxxx, TEMP[3].xxxx
 43: MUL TEMP[3].x, TEMP[4].xxxx, TEMP[3].xxxx
 44: MUL TEMP[3].x, TEMP[3].xxxx, IMM[2].xxxx
 45: EX2 TEMP[3].x, TEMP[3].xxxx
 46: LRP TEMP[3].x, TEMP[3].xxxx, IMM[0].zzzz, CONST[8].yyyy
 47: MOV_SAT TEMP[3].x, TEMP[3].xxxx
 48: LRP TEMP[3].xyz, TEMP[3].xxxx, TEMP[1].xyzz, CONST[7].xyzz
 49: MOV TEMP[4].xy, IN[3].xyyy
 50: TEX TEMP[4].w, TEMP[4], SAMP[1], 2D
 51: SLT TEMP[5].x, TEMP[4].wwww, IMM[2].yyyy
 52: IF TEMP[5].xxxx :2
 53:   MOV TEMP[5].x, IMM[0].yyyy
 54: ELSE :2
 55:   MOV TEMP[5].x, TEMP[4].wwww
 56: ENDIF
 57: MUL TEMP[1].xyz, TEMP[3].xyzz, TEMP[5].xxxx
 58: MUL TEMP[1].xyz, TEMP[1].xyzz, CONST[5].xyzz
 59: MOV TEMP[2].xyz, TEMP[1].xyzx
 60: MOV OUT[0], TEMP[2]
 61: END

FRAG
0000: 07891001 39000800 00000000 201400a8  ADD t9, t0, void, u10.xxyy
0001: 01091002 39009800 000004c0 2015409a  MAD t9._y__, t9, u9.xxxx, u9.yyyy
0002: 01881009 00000000 00000000 003f8038  MOV t8.xy__, void, void, t3.zwww
0003: 07881018 39008f20 00000000 00000000  TEXLD t8, tex0, t8, void, void
0004: 040a1009 00000000 00000000 202a80a8  MOV t10.___w, void, void, u10.zzzz
0005: 078b1002 3fc08800 01480240 2069004a  MAD t11, t8.wwww, u4.xyzz, -u4.xyzz
0006: 03841002 3fc08800 01540540 007900ba  MAD t4.xyz_, t8.wwww, u10.zzzz, -t11
0007: 03881003 29008800 01480240 00000000  MUL t8.xyz_, t8.xyzz, t4.xyzz, void
0008: 00841001 2a802800 00000000 203fc0a8  ADD t4.x___, t2.zzzz, void, u10.wwww
0009: 01851001 15002800 00000000 200000b8  ADD t5.xy__, t2.xyyy, void, u11.xxxx
0010: 01851013 00000000 00000000 00150058  FRC t5.xy__, void, void, t5.xyyy
0011: 01861001 15005800 00000000 202a80a8  ADD t6.xy__, t5.xyyy, void, u10.zzzz
0012: 01871001 1540b800 00000010 00550058  ADD t7.xy__, u11.yyyy, void, -t5.xyyy
0013: 06061009 00000000 00000000 00114078  MOV t6.__zw, void, void, t7.yyxy
0014: 01851003 0000a800 00a802d0 00000000  MUL t5.xy__, u10.xxxx, t5.xyyy, void
0015: 01851001 15002800 00000000 00550058  ADD t5.xy__, t2.xyyy, void, -t5.xyyy
0016: 07851001 0280b800 00000010 00110058  ADD t5, u11.zzxx, void, t5.xyxy
0017: 07851003 39005800 01dc01c0 00000002  MUL t5, t5, u3.zwzw, void
0018: 01871009 00000000 00000000 003f8058  MOV t7.xy__, void, void, t5.zwww
0019: 02071009 00000000 00000000 00000048  MOV t7.__z_, void, void, t4.xxxx
0020: 10871018 39007f20 00000000 00000000  TEXLD t7.x___, tex2, t7, void, void
0021: 00871009 00000000 00000000 00000078  MOV t7.x___, void, void, t7.xxxx
0022: 01821009 00000000 00000000 003f0058  MOV t2.xy__, void, void, t5.xwww
0023: 02021009 00000000 00000000 00000048  MOV t2.__z_, void, void, t4.xxxx
0024: 10821018 39002f20 00000000 00000000  TEXLD t2.x___, tex2, t2, void, void
0025: 01071009 00000000 00000000 00000028  MOV t7._y__, void, void, t2.xxxx
0026: 01821009 00000000 00000000 00158058  MOV t2.xy__, void, void, t5.zyyy
0027: 02021009 00000000 00000000 00000048  MOV t2.__z_, void, void, t4.xxxx
0028: 10821018 39002f20 00000000 00000000  TEXLD t2.x___, tex2, t2, void, void
0029: 02071009 00000000 00000000 00000028  MOV t7.__z_, void, void, t2.xxxx
0030: 01851009 00000000 00000000 00150058  MOV t5.xy__, void, void, t5.xyyy
0031: 02051009 00000000 00000000 00000048  MOV t5.__z_, void, void, t4.xxxx
0032: 10841018 39005f20 00000000 00000000  TEXLD t4.x___, tex2, t5, void, void
0033: 04071009 00000000 00000000 00000048  MOV t7.___w, void, void, t4.xxxx
0034: 03841003 29008800 014800c0 00000000  MUL t4.xyz_, t8.xyzz, t1.xyzz, void
0035: 07851003 08806800 00be0340 00000000  MUL t5, t6.zxzx, t6.wwyy, void
0036: 00851006 39005800 01c803c0 00000000  DP4 t5.x___, t5, t7, void
0037: 00851003 3fc0b800 000002d0 00000000  MUL t5.x___, u11.wwww, t5.xxxx, void
0038: 03841003 29004800 000002c0 00000000  MUL t4.xyz_, t4.xyzz, t5.xxxx, void
0039: 03881002 29008800 01480340 0029004a  MAD t8.xyz_, t8.xyzz, u6.xyzz, t4.xyzz
0040: 0084100c 00000000 00000000 003fc098  RCP t4.x___, void, void, t9.wwww
0041: 00841003 2a809800 00000240 00000000  MUL t4.x___, t9.zzzz, t4.xxxx, void
0042: 00851003 40008800 00000450 00000002  MUL t5.x___, -u8.xxxx, u8.xxxx, void
0043: 00851003 00005800 00000240 00000000  MUL t5.x___, t5.xxxx, t4.xxxx, void
0044: 00841003 00005800 00000240 00000000  MUL t4.x___, t5.xxxx, t4.xxxx, void
0045: 00841003 00004800 00000640 00000002  MUL t4.x___, t4.xxxx, u12.xxxx, void
0046: 00841011 00000000 00000000 00000048  EXP t4.x___, void, void, t4.xxxx
0047: 078b1002 00004800 00aa0440 2055408a  MAD t11, t4.xxxx, u8.yyyy, -u8.yyyy
0048: 00841002 00004800 01540540 007900ba  MAD t4.x___, t4.xxxx, u10.zzzz, -t11
0049: 00841809 00000000 00000000 00000048  MOV.SAT t4.x___, void, void, t4.xxxx
0050: 078b1002 00004800 014803c0 2069007a  MAD t11, t4.xxxx, u7.xyzz, -u7.xyzz
0051: 03841002 00004800 01480440 007900b8  MAD t4.xyz_, t4.xxxx, t8.xyzz, -t11
0052: 01851009 00000000 00000000 00150038  MOV t5.xy__, void, void, t3.xyyy
0053: 0c051018 39005f20 00000000 00000000  TEXLD t5.___w, tex1, t5, void, void
0054: 00861090 3fc05800 00aa0640 00000002  SET.LT t6.x___, t5.wwww, u12.yyyy, void
0055: 00000156 00006800 00aa0540 00001d02  BRANCH.EQ void, t6.xxxx, u10.yyyy, label_0058
0056: 00861009 00000000 00000000 201540a8  MOV t6.x___, void, void, u10.yyyy
0057: 00000016 00000000 00000000 00001d80  BRANCH void, void, void, label_0059
0058: 00861009 00000000 00000000 003fc058  MOV t6.x___, void, void, t5.wwww
0059: 03881003 29004800 00000340 00000000  MUL t8.xyz_, t4.xyzz, t6.xxxx, void
0060: 03881003 29008800 014802c0 00000002  MUL t8.xyz_, t8.xyzz, u5.xyzz, void
0061: 038a1009 00000000 00000000 00090088  MOV t10.xyz_, void, void, t8.xyzx
num loops: 0
num temps: 12
num const: 40
immediates:
 [10].x = 0.500000 (0x3f000000)
 [10].y = 0.000000 (0x00000000)
 [10].z = 1.000000 (0x3f800000)
 [10].w = -0.003000 (0xbb449ba6)
 [11].x = -0.500000 (0xbf000000)
 [11].y = 2.000000 (0x40000000)
 [11].z = 1.000000 (0x3f800000)
 [11].w = 0.111100 (0x3de38866)
 [12].x = 1.442700 (0x3fb8aa65)
 [12].y = 0.030000 (0x3cf5c28f)
 [12].z = 0.000000 (0x00000000)
 [12].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=9 comps=3
 [2] name=GENERIC index=10 comps=3
 [3] name=GENERIC index=11 comps=4
outputs:
special:
  ps_color_out_reg=10
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
