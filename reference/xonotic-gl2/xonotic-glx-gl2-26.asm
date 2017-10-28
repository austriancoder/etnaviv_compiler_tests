
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
DCL CONST[4..13]
DCL CONST[16]
DCL TEMP[0..7], LOCAL
IMM[0] FLT32 {   -0.5000,     2.0000,     0.0000,     1.0000}
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[1], 2D
  2: MUL TEMP[1].x, TEMP[0].wwww, CONST[9].xxxx
  3: MOV TEMP[1].w, TEMP[1].xxxx
  4: MOV TEMP[2].xy, IN[0].xyyy
  5: TEX TEMP[2].xyz, TEMP[2], SAMP[0], 2D
  6: ADD TEMP[2].xyz, TEMP[2].xyzz, IMM[0].xxxx
  7: DP3 TEMP[3].x, TEMP[2].xyzz, TEMP[2].xyzz
  8: RSQ TEMP[3].x, TEMP[3].xxxx
  9: MUL TEMP[2].xyz, TEMP[2].xyzz, TEMP[3].xxxx
 10: MOV TEMP[3].xy, IN[0].xyyy
 11: TEX TEMP[3], TEMP[3], SAMP[2], 2D
 12: MOV TEMP[4].xyz, -IN[1].xyzx
 13: DP3 TEMP[5].x, TEMP[2].xyzz, TEMP[4].xyzz
 14: MUL TEMP[5].xyz, TEMP[5].xxxx, TEMP[2].xyzz
 15: MUL TEMP[5].xyz, IMM[0].yyyy, TEMP[5].xyzz
 16: ADD TEMP[4].xyz, TEMP[4].xyzz, -TEMP[5].xyzz
 17: MUL TEMP[5].xyz, TEMP[4].xxxx, IN[2].xyzz
 18: MAD TEMP[5].xyz, TEMP[4].yyyy, IN[3].xyzz, TEMP[5].xyzz
 19: MAD TEMP[4].xyz, TEMP[4].zzzz, IN[4].xyzz, TEMP[5].xyzz
 20: MOV TEMP[5].xy, IN[0].xyyy
 21: TEX TEMP[5].xyz, TEMP[5], SAMP[4], 2D
 22: MUL TEMP[6], CONST[10], TEMP[4].xxxx
 23: MAD TEMP[6], CONST[11], TEMP[4].yyyy, TEMP[6]
 24: MAD TEMP[4].xyz, CONST[12], TEMP[4].zzzz, TEMP[6]
 25: MOV TEMP[4].xyz, TEMP[4].xyzz
 26: TEX TEMP[4].xyz, TEMP[4], SAMP[5], CUBE
 27: MAD TEMP[0].xyz, TEMP[5].xyzz, TEMP[4].xyzz, TEMP[0].xyzz
 28: DP3 TEMP[4].x, IN[5].xyzz, IN[5].xyzz
 29: RSQ TEMP[4].x, TEMP[4].xxxx
 30: MUL TEMP[4].xyz, IN[5].xyzz, TEMP[4].xxxx
 31: MUL TEMP[5].xyz, TEMP[3].xyzz, CONST[6].xyzz
 32: DP3 TEMP[6].x, TEMP[2].xyzz, TEMP[4].xyzz
 33: MUL TEMP[6].xyz, TEMP[6].xxxx, TEMP[2].xyzz
 34: MUL TEMP[6].xyz, IMM[0].yyyy, TEMP[6].xyzz
 35: ADD TEMP[6].xyz, TEMP[4].xyzz, -TEMP[6].xyzz
 36: DP3 TEMP[7].x, IN[1].xyzz, IN[1].xyzz
 37: RSQ TEMP[7].x, TEMP[7].xxxx
 38: MUL TEMP[7].xyz, IN[1].xyzz, TEMP[7].xxxx
 39: DP3 TEMP[6].x, TEMP[6].xyzz, TEMP[7].xyzz
 40: MAX TEMP[6].x, -TEMP[6].xxxx, IMM[0].zzzz
 41: MAD TEMP[3].x, CONST[7].xxxx, TEMP[3].wwww, IMM[0].wwww
 42: POW TEMP[3].x, TEMP[6].xxxx, TEMP[3].xxxx
 43: MUL TEMP[6].xyz, TEMP[0].xyzz, CONST[5].xyzz
 44: DP3 TEMP[2].x, TEMP[2].xyzz, TEMP[4].xyzz
 45: MAX TEMP[2].x, TEMP[2].xxxx, IMM[0].zzzz
 46: MUL TEMP[2].xyz, TEMP[6].xyzz, TEMP[2].xxxx
 47: MAD TEMP[2].xyz, TEMP[5].xyzz, TEMP[3].xxxx, TEMP[2].xyzz
 48: MUL TEMP[0].xyz, TEMP[0].xyzz, CONST[4].xyzz
 49: MAD TEMP[1].xyz, TEMP[2].xyzz, CONST[16].xyzz, TEMP[0].xyzz
 50: MOV TEMP[0].xy, IN[0].xyyy
 51: TEX TEMP[0].xyz, TEMP[0], SAMP[3], 2D
 52: MAD TEMP[1].xyz, TEMP[0].xyzz, CONST[8].xyzz, TEMP[1].xyzz
 53: MOV OUT[0], TEMP[1]
 54: END

FRAG
0000: 018c1009 00000000 00000000 00150018  MOV t12.xy__, void, void, t1.xyyy
0001: 0f8c1018 3900cf20 00000000 00000000  TEXLD t12, tex1, t12, void, void
0002: 008b1003 3fc0c800 000004c0 00000002  MUL t11.x___, t12.wwww, u9.xxxx, void
0003: 040b1009 00000000 00000000 000000b8  MOV t11.___w, void, void, t11.xxxx
0004: 01871009 00000000 00000000 00150018  MOV t7.xy__, void, void, t1.xyyy
0005: 03871018 39007f20 00000000 00000000  TEXLD t7.xyz_, tex0, t7, void, void
0006: 03871001 29007800 00000000 20000118  ADD t7.xyz_, t7.xyzz, void, u17.xxxx
0007: 00881005 29007800 014803c0 00000000  DP3 t8.x___, t7.xyzz, t7.xyzz, void
0008: 0088100d 00000000 00000000 00000088  RSQ t8.x___, void, void, t8.xxxx
0009: 03871003 29007800 00000440 00000000  MUL t7.xyz_, t7.xyzz, t8.xxxx, void
0010: 01881009 00000000 00000000 00150018  MOV t8.xy__, void, void, t1.xyyy
0011: 17881018 39008f20 00000000 00000000  TEXLD t8, tex2, t8, void, void
0012: 03891009 00000000 00000000 00490028  MOV t9.xyz_, void, void, -t2.xyzx
0013: 008a1005 29007800 014804c0 00000000  DP3 t10.x___, t7.xyzz, t9.xyzz, void
0014: 038a1003 0000a800 014803c0 00000000  MUL t10.xyz_, t10.xxxx, t7.xyzz, void
0015: 038a1003 15411800 01480550 00000000  MUL t10.xyz_, u17.yyyy, t10.xyzz, void
0016: 03891001 29009800 00000000 006900a8  ADD t9.xyz_, t9.xyzz, void, -t10.xyzz
0017: 038a1003 00009800 014801c0 00000000  MUL t10.xyz_, t9.xxxx, t3.xyzz, void
0018: 038a1002 15409800 01480240 002900a8  MAD t10.xyz_, t9.yyyy, t4.xyzz, t10.xyzz
0019: 03891002 2a809800 014802c0 002900a8  MAD t9.xyz_, t9.zzzz, t5.xyzz, t10.xyzz
0020: 018a1009 00000000 00000000 00150018  MOV t10.xy__, void, void, t1.xyyy
0021: 238a1018 3900af20 00000000 00000000  TEXLD t10.xyz_, tex4, t10, void, void
0022: 07831003 3900a800 000004d0 00000000  MUL t3, u10, t9.xxxx, void
0023: 07831002 3900b800 00aa04d0 00390038  MAD t3, u11, t9.yyyy, t3
0024: 03891002 3900c800 015404d0 00390038  MAD t9.xyz_, u12, t9.zzzz, t3
0025: 03891009 00000000 00000000 00290098  MOV t9.xyz_, void, void, t9.xyzz
0026: 2b891018 39009f20 00000000 00000000  TEXLD t9.xyz_, tex5, t9, void, void
0027: 038c1002 2900a800 014804c0 002900c8  MAD t12.xyz_, t10.xyzz, t9.xyzz, t12.xyzz
0028: 00891005 29006800 01480340 00000000  DP3 t9.x___, t6.xyzz, t6.xyzz, void
0029: 0089100d 00000000 00000000 00000098  RSQ t9.x___, void, void, t9.xxxx
0030: 03891003 29006800 000004c0 00000000  MUL t9.xyz_, t6.xyzz, t9.xxxx, void
0031: 038a1003 29008800 01480340 00000002  MUL t10.xyz_, t8.xyzz, u6.xyzz, void
0032: 00831005 29007800 014804c0 00000000  DP3 t3.x___, t7.xyzz, t9.xyzz, void
0033: 03831003 00003800 014803c0 00000000  MUL t3.xyz_, t3.xxxx, t7.xyzz, void
0034: 03831003 15411800 014801d0 00000000  MUL t3.xyz_, u17.yyyy, t3.xyzz, void
0035: 03831001 29009800 00000000 00690038  ADD t3.xyz_, t9.xyzz, void, -t3.xyzz
0036: 00841005 29002800 01480140 00000000  DP3 t4.x___, t2.xyzz, t2.xyzz, void
0037: 0084100d 00000000 00000000 00000048  RSQ t4.x___, void, void, t4.xxxx
0038: 03841003 29002800 00000240 00000000  MUL t4.xyz_, t2.xyzz, t4.xxxx, void
0039: 00831005 29003800 01480240 00000000  DP3 t3.x___, t3.xyzz, t4.xyzz, void
0040: 0083108f 40003800 015408c0 0040003a  SELECT.LT t3.x___, -t3.xxxx, u17.zzzz, -t3.xxxx
0041: 078d1009 00000000 00000000 203fc118  MOV t13, void, void, u17.wwww
0042: 00881002 00007800 01fe0450 003900d8  MAD t8.x___, u7.xxxx, t8.wwww, t13
0043: 00851012 00000000 00000000 00000038  LOG t5.x___, void, void, t3.xxxx
0044: 00851003 00008800 000002c0 00000000  MUL t5.x___, t8.xxxx, t5.xxxx, void
0045: 00881011 00000000 00000000 00000058  EXP t8.x___, void, void, t5.xxxx
0046: 03831003 2900c800 014802c0 00000002  MUL t3.xyz_, t12.xyzz, u5.xyzz, void
0047: 00871005 29007800 014804c0 00000000  DP3 t7.x___, t7.xyzz, t9.xyzz, void
0048: 0087108f 00007800 015408c0 0000007a  SELECT.LT t7.x___, t7.xxxx, u17.zzzz, t7.xxxx
0049: 03871003 29003800 000003c0 00000000  MUL t7.xyz_, t3.xyzz, t7.xxxx, void
0050: 03871002 2900a800 00000440 00290078  MAD t7.xyz_, t10.xyzz, t8.xxxx, t7.xyzz
0051: 038c1003 2900c800 01480240 00000002  MUL t12.xyz_, t12.xyzz, u4.xyzz, void
0052: 038b1002 29007800 01480840 002900ca  MAD t11.xyz_, t7.xyzz, u16.xyzz, t12.xyzz
0053: 018c1009 00000000 00000000 00150018  MOV t12.xy__, void, void, t1.xyyy
0054: 1b8c1018 3900cf20 00000000 00000000  TEXLD t12.xyz_, tex3, t12, void, void
0055: 038b1002 2900c800 01480440 002900ba  MAD t11.xyz_, t12.xyzz, u8.xyzz, t11.xyzz
num loops: 0
num temps: 14
num const: 68
immediates:
 [17].x = -0.500000 (0xbf000000)
 [17].y = 2.000000 (0x40000000)
 [17].z = 0.000000 (0x00000000)
 [17].w = 1.000000 (0x3f800000)
 [18].x = 0.000000 (0x00000000)
 [18].y = 1.000000 (0x3f800000)
 [18].z = 128.000000 (0x43000000)
 [18].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=2
 [2] name=GENERIC index=21 comps=3
 [3] name=GENERIC index=22 comps=3
 [4] name=GENERIC index=23 comps=3
 [5] name=GENERIC index=24 comps=3
 [6] name=GENERIC index=25 comps=3
outputs:
special:
  ps_color_out_reg=11
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
