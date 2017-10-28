
FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL IN[2], GENERIC[22], PERSPECTIVE
DCL IN[3], GENERIC[23], PERSPECTIVE
DCL IN[4], GENERIC[24], PERSPECTIVE
DCL IN[5], GENERIC[25], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL SAMP[4]
DCL SAMP[5]
DCL SAMP[6]
DCL SAMP[7]
DCL CONST[6..17]
DCL CONST[20]
DCL TEMP[0..7], LOCAL
IMM[0] FLT32 {   -0.5000,     2.0000,     0.0000,     1.0000}
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[1], 2D
  2: MUL TEMP[1].x, TEMP[0].wwww, CONST[13].xxxx
  3: MOV TEMP[1].w, TEMP[1].xxxx
  4: MOV TEMP[2].xy, IN[0].xyyy
  5: TEX TEMP[2].xyz, TEMP[2], SAMP[5], 2D
  6: MOV TEMP[3].xy, IN[0].xyyy
  7: TEX TEMP[3].xyz, TEMP[3], SAMP[4], 2D
  8: MUL TEMP[3].xyz, TEMP[3].xyzz, CONST[6].xyzz
  9: MAD TEMP[2].xyz, TEMP[2].xyzz, CONST[7].xyzz, TEMP[3].xyzz
 10: ADD TEMP[1].xyz, TEMP[0].xyzz, TEMP[2].xyzz
 11: MOV TEMP[0].xy, IN[0].xyyy
 12: TEX TEMP[0].xyz, TEMP[0], SAMP[0], 2D
 13: ADD TEMP[0].xyz, TEMP[0].xyzz, IMM[0].xxxx
 14: DP3 TEMP[2].x, TEMP[0].xyzz, TEMP[0].xyzz
 15: RSQ TEMP[2].x, TEMP[2].xxxx
 16: MUL TEMP[0].xyz, TEMP[0].xyzz, TEMP[2].xxxx
 17: MOV TEMP[2].xy, IN[0].xyyy
 18: TEX TEMP[2], TEMP[2], SAMP[2], 2D
 19: MOV TEMP[3].xyz, -IN[1].xyzx
 20: DP3 TEMP[4].x, TEMP[0].xyzz, TEMP[3].xyzz
 21: MUL TEMP[4].xyz, TEMP[4].xxxx, TEMP[0].xyzz
 22: MUL TEMP[4].xyz, IMM[0].yyyy, TEMP[4].xyzz
 23: ADD TEMP[3].xyz, TEMP[3].xyzz, -TEMP[4].xyzz
 24: MUL TEMP[4].xyz, TEMP[3].xxxx, IN[2].xyzz
 25: MAD TEMP[4].xyz, TEMP[3].yyyy, IN[3].xyzz, TEMP[4].xyzz
 26: MAD TEMP[3].xyz, TEMP[3].zzzz, IN[4].xyzz, TEMP[4].xyzz
 27: MOV TEMP[4].xy, IN[0].xyyy
 28: TEX TEMP[4].xyz, TEMP[4], SAMP[6], 2D
 29: MUL TEMP[5], CONST[14], TEMP[3].xxxx
 30: MAD TEMP[5], CONST[15], TEMP[3].yyyy, TEMP[5]
 31: MAD TEMP[3].xyz, CONST[16], TEMP[3].zzzz, TEMP[5]
 32: MOV TEMP[3].xyz, TEMP[3].xyzz
 33: TEX TEMP[3].xyz, TEMP[3], SAMP[7], CUBE
 34: MAD TEMP[3].xyz, TEMP[4].xyzz, TEMP[3].xyzz, TEMP[1].xyzz
 35: DP3 TEMP[4].x, IN[5].xyzz, IN[5].xyzz
 36: RSQ TEMP[4].x, TEMP[4].xxxx
 37: MUL TEMP[4].xyz, IN[5].xyzz, TEMP[4].xxxx
 38: MUL TEMP[5].xyz, TEMP[2].xyzz, CONST[10].xyzz
 39: DP3 TEMP[6].x, TEMP[0].xyzz, TEMP[4].xyzz
 40: MUL TEMP[6].xyz, TEMP[6].xxxx, TEMP[0].xyzz
 41: MUL TEMP[6].xyz, IMM[0].yyyy, TEMP[6].xyzz
 42: ADD TEMP[6].xyz, TEMP[4].xyzz, -TEMP[6].xyzz
 43: DP3 TEMP[7].x, IN[1].xyzz, IN[1].xyzz
 44: RSQ TEMP[7].x, TEMP[7].xxxx
 45: MUL TEMP[7].xyz, IN[1].xyzz, TEMP[7].xxxx
 46: DP3 TEMP[6].x, TEMP[6].xyzz, TEMP[7].xyzz
 47: MAX TEMP[6].x, -TEMP[6].xxxx, IMM[0].zzzz
 48: MAD TEMP[2].x, CONST[11].xxxx, TEMP[2].wwww, IMM[0].wwww
 49: POW TEMP[2].x, TEMP[6].xxxx, TEMP[2].xxxx
 50: MUL TEMP[6].xyz, TEMP[3].xyzz, CONST[9].xyzz
 51: DP3 TEMP[0].x, TEMP[0].xyzz, TEMP[4].xyzz
 52: MAX TEMP[0].x, TEMP[0].xxxx, IMM[0].zzzz
 53: MUL TEMP[0].xyz, TEMP[6].xyzz, TEMP[0].xxxx
 54: MAD TEMP[0].xyz, TEMP[5].xyzz, TEMP[2].xxxx, TEMP[0].xyzz
 55: MUL TEMP[2].xyz, TEMP[3].xyzz, CONST[8].xyzz
 56: MAD TEMP[1].xyz, TEMP[0].xyzz, CONST[20].xyzz, TEMP[2].xyzz
 57: MOV TEMP[0].xy, IN[0].xyyy
 58: TEX TEMP[0].xyz, TEMP[0], SAMP[3], 2D
 59: MAD TEMP[1].xyz, TEMP[0].xyzz, CONST[12].xyzz, TEMP[1].xyzz
 60: MOV OUT[0], TEMP[1]
 61: END

FRAG
0000: 018b1009 00000000 00000000 00150018  MOV t11.xy__, void, void, t1.xyyy
0001: 0f8b1018 3900bf20 00000000 00000000  TEXLD t11, tex1, t11, void, void
0002: 008a1003 3fc0b800 000006c0 00000002  MUL t10.x___, t11.wwww, u13.xxxx, void
0003: 040a1009 00000000 00000000 000000a8  MOV t10.___w, void, void, t10.xxxx
0004: 01891009 00000000 00000000 00150018  MOV t9.xy__, void, void, t1.xyyy
0005: 2b891018 39009f20 00000000 00000000  TEXLD t9.xyz_, tex5, t9, void, void
0006: 01871009 00000000 00000000 00150018  MOV t7.xy__, void, void, t1.xyyy
0007: 23871018 39007f20 00000000 00000000  TEXLD t7.xyz_, tex4, t7, void, void
0008: 03871003 29007800 01480340 00000002  MUL t7.xyz_, t7.xyzz, u6.xyzz, void
0009: 03891002 29009800 014803c0 0029007a  MAD t9.xyz_, t9.xyzz, u7.xyzz, t7.xyzz
0010: 038a1001 2900b800 00000000 00290098  ADD t10.xyz_, t11.xyzz, void, t9.xyzz
0011: 018b1009 00000000 00000000 00150018  MOV t11.xy__, void, void, t1.xyyy
0012: 038b1018 3900bf20 00000000 00000000  TEXLD t11.xyz_, tex0, t11, void, void
0013: 038b1001 2900b800 00000000 20000158  ADD t11.xyz_, t11.xyzz, void, u21.xxxx
0014: 00891005 2900b800 014805c0 00000000  DP3 t9.x___, t11.xyzz, t11.xyzz, void
0015: 0089100d 00000000 00000000 00000098  RSQ t9.x___, void, void, t9.xxxx
0016: 038b1003 2900b800 000004c0 00000000  MUL t11.xyz_, t11.xyzz, t9.xxxx, void
0017: 01891009 00000000 00000000 00150018  MOV t9.xy__, void, void, t1.xyyy
0018: 17891018 39009f20 00000000 00000000  TEXLD t9, tex2, t9, void, void
0019: 03871009 00000000 00000000 00490028  MOV t7.xyz_, void, void, -t2.xyzx
0020: 00881005 2900b800 014803c0 00000000  DP3 t8.x___, t11.xyzz, t7.xyzz, void
0021: 03881003 00008800 014805c0 00000000  MUL t8.xyz_, t8.xxxx, t11.xyzz, void
0022: 03881003 15415800 01480450 00000000  MUL t8.xyz_, u21.yyyy, t8.xyzz, void
0023: 03871001 29007800 00000000 00690088  ADD t7.xyz_, t7.xyzz, void, -t8.xyzz
0024: 03881003 00007800 014801c0 00000000  MUL t8.xyz_, t7.xxxx, t3.xyzz, void
0025: 03881002 15407800 01480240 00290088  MAD t8.xyz_, t7.yyyy, t4.xyzz, t8.xyzz
0026: 03871002 2a807800 014802c0 00290088  MAD t7.xyz_, t7.zzzz, t5.xyzz, t8.xyzz
0027: 01881009 00000000 00000000 00150018  MOV t8.xy__, void, void, t1.xyyy
0028: 33881018 39008f20 00000000 00000000  TEXLD t8.xyz_, tex6, t8, void, void
0029: 07831003 3900e800 000003d0 00000000  MUL t3, u14, t7.xxxx, void
0030: 07831002 3900f800 00aa03d0 00390038  MAD t3, u15, t7.yyyy, t3
0031: 03871002 39010800 015403d0 00390038  MAD t7.xyz_, u16, t7.zzzz, t3
0032: 03871009 00000000 00000000 00290078  MOV t7.xyz_, void, void, t7.xyzz
0033: 3b871018 39007f20 00000000 00000000  TEXLD t7.xyz_, tex7, t7, void, void
0034: 03871002 29008800 014803c0 002900a8  MAD t7.xyz_, t8.xyzz, t7.xyzz, t10.xyzz
0035: 00881005 29006800 01480340 00000000  DP3 t8.x___, t6.xyzz, t6.xyzz, void
0036: 0088100d 00000000 00000000 00000088  RSQ t8.x___, void, void, t8.xxxx
0037: 03881003 29006800 00000440 00000000  MUL t8.xyz_, t6.xyzz, t8.xxxx, void
0038: 03831003 29009800 01480540 00000002  MUL t3.xyz_, t9.xyzz, u10.xyzz, void
0039: 00841005 2900b800 01480440 00000000  DP3 t4.x___, t11.xyzz, t8.xyzz, void
0040: 03841003 00004800 014805c0 00000000  MUL t4.xyz_, t4.xxxx, t11.xyzz, void
0041: 03841003 15415800 01480250 00000000  MUL t4.xyz_, u21.yyyy, t4.xyzz, void
0042: 03841001 29008800 00000000 00690048  ADD t4.xyz_, t8.xyzz, void, -t4.xyzz
0043: 00851005 29002800 01480140 00000000  DP3 t5.x___, t2.xyzz, t2.xyzz, void
0044: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0045: 03851003 29002800 000002c0 00000000  MUL t5.xyz_, t2.xyzz, t5.xxxx, void
0046: 00841005 29004800 014802c0 00000000  DP3 t4.x___, t4.xyzz, t5.xyzz, void
0047: 0084108f 40004800 01540ac0 0040004a  SELECT.LT t4.x___, -t4.xxxx, u21.zzzz, -t4.xxxx
0048: 078c1009 00000000 00000000 203fc158  MOV t12, void, void, u21.wwww
0049: 00891002 0000b800 01fe04d0 003900c8  MAD t9.x___, u11.xxxx, t9.wwww, t12
0050: 00861012 00000000 00000000 00000048  LOG t6.x___, void, void, t4.xxxx
0051: 00861003 00009800 00000340 00000000  MUL t6.x___, t9.xxxx, t6.xxxx, void
0052: 00891011 00000000 00000000 00000068  EXP t9.x___, void, void, t6.xxxx
0053: 03841003 29007800 014804c0 00000002  MUL t4.xyz_, t7.xyzz, u9.xyzz, void
0054: 008b1005 2900b800 01480440 00000000  DP3 t11.x___, t11.xyzz, t8.xyzz, void
0055: 008b108f 0000b800 01540ac0 000000ba  SELECT.LT t11.x___, t11.xxxx, u21.zzzz, t11.xxxx
0056: 038b1003 29004800 000005c0 00000000  MUL t11.xyz_, t4.xyzz, t11.xxxx, void
0057: 038b1002 29003800 000004c0 002900b8  MAD t11.xyz_, t3.xyzz, t9.xxxx, t11.xyzz
0058: 03891003 29007800 01480440 00000002  MUL t9.xyz_, t7.xyzz, u8.xyzz, void
0059: 038a1002 2900b800 01480a40 0029009a  MAD t10.xyz_, t11.xyzz, u20.xyzz, t9.xyzz
0060: 018b1009 00000000 00000000 00150018  MOV t11.xy__, void, void, t1.xyyy
0061: 1b8b1018 3900bf20 00000000 00000000  TEXLD t11.xyz_, tex3, t11, void, void
0062: 038a1002 2900b800 01480640 002900aa  MAD t10.xyz_, t11.xyzz, u12.xyzz, t10.xyzz
num loops: 0
num temps: 13
num const: 84
immediates:
 [21].x = -0.500000 (0xbf000000)
 [21].y = 2.000000 (0x40000000)
 [21].z = 0.000000 (0x00000000)
 [21].w = 1.000000 (0x3f800000)
 [22].x = 0.000000 (0x00000000)
 [22].y = 1.000000 (0x3f800000)
 [22].z = 128.000000 (0x43000000)
 [22].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=2
 [2] name=GENERIC index=21 comps=3
 [3] name=GENERIC index=22 comps=3
 [4] name=GENERIC index=23 comps=3
 [5] name=GENERIC index=24 comps=3
 [6] name=GENERIC index=25 comps=3
outputs:
special:
  ps_color_out_reg=10
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
