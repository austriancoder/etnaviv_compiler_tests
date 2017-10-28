
FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL IN[2], GENERIC[22], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL SAMP[4]
DCL SAMP[5]
DCL CONST[6..14]
DCL TEMP[0..6], LOCAL
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
 19: DP3 TEMP[3].x, IN[2].xyzz, IN[2].xyzz
 20: RSQ TEMP[3].x, TEMP[3].xxxx
 21: MUL TEMP[3].xyz, IN[2].xyzz, TEMP[3].xxxx
 22: MUL TEMP[4].xyz, TEMP[2].xyzz, CONST[10].xyzz
 23: DP3 TEMP[5].x, TEMP[0].xyzz, TEMP[3].xyzz
 24: MUL TEMP[5].xyz, TEMP[5].xxxx, TEMP[0].xyzz
 25: MUL TEMP[5].xyz, IMM[0].yyyy, TEMP[5].xyzz
 26: ADD TEMP[5].xyz, TEMP[3].xyzz, -TEMP[5].xyzz
 27: DP3 TEMP[6].x, IN[1].xyzz, IN[1].xyzz
 28: RSQ TEMP[6].x, TEMP[6].xxxx
 29: MUL TEMP[6].xyz, IN[1].xyzz, TEMP[6].xxxx
 30: DP3 TEMP[5].x, TEMP[5].xyzz, TEMP[6].xyzz
 31: MAX TEMP[5].x, -TEMP[5].xxxx, IMM[0].zzzz
 32: MAD TEMP[2].x, CONST[11].xxxx, TEMP[2].wwww, IMM[0].wwww
 33: POW TEMP[2].x, TEMP[5].xxxx, TEMP[2].xxxx
 34: MUL TEMP[5].xyz, TEMP[1].xyzz, CONST[9].xyzz
 35: DP3 TEMP[0].x, TEMP[0].xyzz, TEMP[3].xyzz
 36: MAX TEMP[0].x, TEMP[0].xxxx, IMM[0].zzzz
 37: MUL TEMP[0].xyz, TEMP[5].xyzz, TEMP[0].xxxx
 38: MAD TEMP[0].xyz, TEMP[4].xyzz, TEMP[2].xxxx, TEMP[0].xyzz
 39: MUL TEMP[2].xyz, TEMP[1].xyzz, CONST[8].xyzz
 40: MAD TEMP[1].xyz, TEMP[0].xyzz, CONST[14].xyzz, TEMP[2].xyzz
 41: MOV TEMP[0].xy, IN[0].xyyy
 42: TEX TEMP[0].xyz, TEMP[0], SAMP[3], 2D
 43: MAD TEMP[1].xyz, TEMP[0].xyzz, CONST[12].xyzz, TEMP[1].xyzz
 44: MOV OUT[0], TEMP[1]
 45: END

FRAG
0000: 01891009 00000000 00000000 00150018  MOV t9.xy__, void, void, t1.xyyy
0001: 0f891018 39009f20 00000000 00000000  TEXLD t9, tex1, t9, void, void
0002: 00881003 3fc09800 000006c0 00000002  MUL t8.x___, t9.wwww, u13.xxxx, void
0003: 04081009 00000000 00000000 00000088  MOV t8.___w, void, void, t8.xxxx
0004: 01851009 00000000 00000000 00150018  MOV t5.xy__, void, void, t1.xyyy
0005: 2b851018 39005f20 00000000 00000000  TEXLD t5.xyz_, tex5, t5, void, void
0006: 01841009 00000000 00000000 00150018  MOV t4.xy__, void, void, t1.xyyy
0007: 23841018 39004f20 00000000 00000000  TEXLD t4.xyz_, tex4, t4, void, void
0008: 03841003 29004800 01480340 00000002  MUL t4.xyz_, t4.xyzz, u6.xyzz, void
0009: 03851002 29005800 014803c0 0029004a  MAD t5.xyz_, t5.xyzz, u7.xyzz, t4.xyzz
0010: 03881001 29009800 00000000 00290058  ADD t8.xyz_, t9.xyzz, void, t5.xyzz
0011: 01891009 00000000 00000000 00150018  MOV t9.xy__, void, void, t1.xyyy
0012: 03891018 39009f20 00000000 00000000  TEXLD t9.xyz_, tex0, t9, void, void
0013: 03891001 29009800 00000000 200000f8  ADD t9.xyz_, t9.xyzz, void, u15.xxxx
0014: 00851005 29009800 014804c0 00000000  DP3 t5.x___, t9.xyzz, t9.xyzz, void
0015: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0016: 03891003 29009800 000002c0 00000000  MUL t9.xyz_, t9.xyzz, t5.xxxx, void
0017: 01851009 00000000 00000000 00150018  MOV t5.xy__, void, void, t1.xyyy
0018: 17851018 39005f20 00000000 00000000  TEXLD t5, tex2, t5, void, void
0019: 00841005 29003800 014801c0 00000000  DP3 t4.x___, t3.xyzz, t3.xyzz, void
0020: 0084100d 00000000 00000000 00000048  RSQ t4.x___, void, void, t4.xxxx
0021: 03841003 29003800 00000240 00000000  MUL t4.xyz_, t3.xyzz, t4.xxxx, void
0022: 03831003 29005800 01480540 00000002  MUL t3.xyz_, t5.xyzz, u10.xyzz, void
0023: 00861005 29009800 01480240 00000000  DP3 t6.x___, t9.xyzz, t4.xyzz, void
0024: 03861003 00006800 014804c0 00000000  MUL t6.xyz_, t6.xxxx, t9.xyzz, void
0025: 03861003 1540f800 01480350 00000000  MUL t6.xyz_, u15.yyyy, t6.xyzz, void
0026: 03861001 29004800 00000000 00690068  ADD t6.xyz_, t4.xyzz, void, -t6.xyzz
0027: 00871005 29002800 01480140 00000000  DP3 t7.x___, t2.xyzz, t2.xyzz, void
0028: 0087100d 00000000 00000000 00000078  RSQ t7.x___, void, void, t7.xxxx
0029: 03871003 29002800 000003c0 00000000  MUL t7.xyz_, t2.xyzz, t7.xxxx, void
0030: 00861005 29006800 014803c0 00000000  DP3 t6.x___, t6.xyzz, t7.xyzz, void
0031: 0086108f 40006800 015407c0 0040006a  SELECT.LT t6.x___, -t6.xxxx, u15.zzzz, -t6.xxxx
0032: 078a1009 00000000 00000000 203fc0f8  MOV t10, void, void, u15.wwww
0033: 00851002 0000b800 01fe02d0 003900a8  MAD t5.x___, u11.xxxx, t5.wwww, t10
0034: 00821012 00000000 00000000 00000068  LOG t2.x___, void, void, t6.xxxx
0035: 00821003 00005800 00000140 00000000  MUL t2.x___, t5.xxxx, t2.xxxx, void
0036: 00851011 00000000 00000000 00000028  EXP t5.x___, void, void, t2.xxxx
0037: 03861003 29008800 014804c0 00000002  MUL t6.xyz_, t8.xyzz, u9.xyzz, void
0038: 00891005 29009800 01480240 00000000  DP3 t9.x___, t9.xyzz, t4.xyzz, void
0039: 0089108f 00009800 015407c0 0000009a  SELECT.LT t9.x___, t9.xxxx, u15.zzzz, t9.xxxx
0040: 03891003 29006800 000004c0 00000000  MUL t9.xyz_, t6.xyzz, t9.xxxx, void
0041: 03891002 29003800 000002c0 00290098  MAD t9.xyz_, t3.xyzz, t5.xxxx, t9.xyzz
0042: 03851003 29008800 01480440 00000002  MUL t5.xyz_, t8.xyzz, u8.xyzz, void
0043: 03881002 29009800 01480740 0029005a  MAD t8.xyz_, t9.xyzz, u14.xyzz, t5.xyzz
0044: 01891009 00000000 00000000 00150018  MOV t9.xy__, void, void, t1.xyyy
0045: 1b891018 39009f20 00000000 00000000  TEXLD t9.xyz_, tex3, t9, void, void
0046: 03881002 29009800 01480640 0029008a  MAD t8.xyz_, t9.xyzz, u12.xyzz, t8.xyzz
num loops: 0
num temps: 11
num const: 60
immediates:
 [15].x = -0.500000 (0xbf000000)
 [15].y = 2.000000 (0x40000000)
 [15].z = 0.000000 (0x00000000)
 [15].w = 1.000000 (0x3f800000)
 [16].x = 0.000000 (0x00000000)
 [16].y = 1.000000 (0x3f800000)
 [16].z = 128.000000 (0x43000000)
 [16].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=2
 [2] name=GENERIC index=21 comps=3
 [3] name=GENERIC index=22 comps=3
outputs:
special:
  ps_color_out_reg=8
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
