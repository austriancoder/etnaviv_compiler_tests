FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[0], PERSPECTIVE
DCL IN[1], GENERIC[19], PERSPECTIVE
DCL IN[2], GENERIC[20], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL CONST[3..4]
DCL TEMP[0..4], LOCAL
IMM[0] FLT32 {    2.0000,    -1.0000,     4.0000,     0.5000}
IMM[1] FLT32 {    0.0000,     0.7000,     0.3000,     0.0500}
  0: MOV TEMP[0].x, IN[1].wwww
  1: MOV TEMP[0].yz, IN[2].yxyy
  2: ADD TEMP[1].xy, IN[0].xyyy, CONST[3].xyyy
  3: MOV TEMP[1].xy, TEMP[1].xyyy
  4: TEX TEMP[1].xyz, TEMP[1], SAMP[0], 2D
  5: MAD TEMP[1].xyz, IMM[0].xxxx, TEMP[1].xyzz, IMM[0].yyyy
  6: ADD TEMP[2].xy, IN[0].xyyy, CONST[4].xyyy
  7: MOV TEMP[2].xy, TEMP[2].xyyy
  8: TEX TEMP[2].xyz, TEMP[2], SAMP[1], 2D
  9: MAD TEMP[2].xyz, IMM[0].xxxx, TEMP[2].xyzz, IMM[0].yyyy
 10: MOV TEMP[3].xz, TEMP[2].xxzx
 11: MUL TEMP[4].x, IMM[0].zzzz, TEMP[1].yyyy
 12: MOV TEMP[1].y, TEMP[4].xxxx
 13: MUL TEMP[2].x, IMM[0].zzzz, TEMP[2].yyyy
 14: MOV TEMP[3].y, TEMP[2].xxxx
 15: DP3 TEMP[2].x, TEMP[3].xyzz, TEMP[3].xyzz
 16: RSQ TEMP[2].x, TEMP[2].xxxx
 17: DP3 TEMP[4].x, TEMP[1].xyzz, TEMP[1].xyzz
 18: RSQ TEMP[4].x, TEMP[4].xxxx
 19: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[4].xxxx
 20: MAD TEMP[1].xyz, TEMP[3].xyzz, TEMP[2].xxxx, TEMP[1].xyzz
 21: MUL TEMP[1].xyz, TEMP[1].xyzz, IMM[0].wwww
 22: MOV TEMP[2].y, IMM[1].xxxx
 23: MOV TEMP[2].x, CONST[3].xxxx
 24: ADD TEMP[2].xy, IN[0].xyyy, TEMP[2].xyyy
 25: MOV TEMP[2].xy, TEMP[2].xyyy
 26: TEX TEMP[2], TEMP[2], SAMP[2], 2D
 27: DP3 TEMP[3].x, IN[1].xyzz, TEMP[1].xyzz
 28: MAX TEMP[3].x, TEMP[3].xxxx, IMM[1].xxxx
 29: MAD TEMP[3].x, TEMP[3].xxxx, IMM[1].yyyy, IMM[1].zzzz
 30: MUL TEMP[2], TEMP[2], TEMP[3].xxxx
 31: DP3 TEMP[3].x, TEMP[1].xyzz, IN[1].xyzz
 32: MUL TEMP[1].xyz, TEMP[3].xxxx, TEMP[1].xyzz
 33: MUL TEMP[1].xyz, IMM[0].xxxx, TEMP[1].xyzz
 34: ADD TEMP[1].xyz, IN[1].xyzz, -TEMP[1].xyzz
 35: DP3 TEMP[3].x, TEMP[1].xyzz, TEMP[1].xyzz
 36: RSQ TEMP[3].x, TEMP[3].xxxx
 37: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[3].xxxx
 38: DP3 TEMP[0].x, TEMP[1].xyzz, TEMP[0].xyzz
 39: MAX TEMP[0].x, TEMP[0].xxxx, IMM[1].xxxx
 40: SLT TEMP[1].x, IMM[1].xxxx, TEMP[0].xxxx
 41: IF TEMP[1].xxxx :0
 42:   MUL TEMP[0].x, TEMP[0].xxxx, TEMP[0].xxxx
 43:   MUL TEMP[0].x, TEMP[0].xxxx, TEMP[0].xxxx
 44:   MUL TEMP[1].x, TEMP[0].xxxx, IMM[1].wwww
 45:   MOV TEMP[3].w, IMM[1].xxxx
 46:   MOV TEMP[3].x, TEMP[1].xxxx
 47:   MOV TEMP[3].y, TEMP[1].xxxx
 48:   MOV TEMP[3].z, TEMP[1].xxxx
 49:   MUL TEMP[0].x, TEMP[0].xxxx, TEMP[0].xxxx
 50:   MUL TEMP[0].x, TEMP[0].xxxx, IMM[1].zzzz
 51:   MOV TEMP[1].w, IMM[1].xxxx
 52:   MOV TEMP[1].x, TEMP[0].xxxx
 53:   MOV TEMP[1].y, TEMP[0].xxxx
 54:   MOV TEMP[1].z, TEMP[0].xxxx
 55:   ADD TEMP[0], TEMP[2], TEMP[3]
 56:   ADD TEMP[2], TEMP[0], TEMP[1]
 57: ENDIF
 58: MOV OUT[0], TEMP[2]
 59: END


FRAG
0000: 00861009 00000000 00000000 003fc028  MOV t6.x___, void, void, t2.wwww
0001: 03061009 00000000 00000000 00144038  MOV t6._yz_, void, void, t3.yxyy
0002: 01831001 15001800 00000000 20150038  ADD t3.xy__, t1.xyyy, void, u3.xyyy
0003: 01831009 00000000 00000000 00150038  MOV t3.xy__, void, void, t3.xyyy
0004: 03831018 39003f20 00000000 00000000  TEXLD t3.xyz_, tex0, t3, void, void
0005: 03831002 00005800 014801d0 20154058  MAD t3.xyz_, u5.xxxx, t3.xyzz, u5.yyyy
0006: 01871001 15001800 00000000 20150048  ADD t7.xy__, t1.xyyy, void, u4.xyyy
0007: 01871009 00000000 00000000 00150078  MOV t7.xy__, void, void, t7.xyyy
0008: 0b871018 39007f20 00000000 00000000  TEXLD t7.xyz_, tex1, t7, void, void
0009: 03871002 00005800 014803d0 20154058  MAD t7.xyz_, u5.xxxx, t7.xyzz, u5.yyyy
0010: 02841009 00000000 00000000 00080078  MOV t4.x_z_, void, void, t7.xxzx
0011: 00851003 2a805800 00aa01d0 00000000  MUL t5.x___, u5.zzzz, t3.yyyy, void
0012: 01031009 00000000 00000000 00000058  MOV t3._y__, void, void, t5.xxxx
0013: 00871003 2a805800 00aa03d0 00000000  MUL t7.x___, u5.zzzz, t7.yyyy, void
0014: 01041009 00000000 00000000 00000078  MOV t4._y__, void, void, t7.xxxx
0015: 00871005 29004800 01480240 00000000  DP3 t7.x___, t4.xyzz, t4.xyzz, void
0016: 0087100d 00000000 00000000 00000078  RSQ t7.x___, void, void, t7.xxxx
0017: 00851005 29003800 014801c0 00000000  DP3 t5.x___, t3.xyzz, t3.xyzz, void
0018: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0019: 03831003 29003800 000002c0 00000000  MUL t3.xyz_, t3.xyzz, t5.xxxx, void
0020: 03831002 29004800 000003c0 00290038  MAD t3.xyz_, t4.xyzz, t7.xxxx, t3.xyzz
0021: 03831003 29003800 01fe02c0 00000002  MUL t3.xyz_, t3.xyzz, u5.wwww, void
0022: 01071009 00000000 00000000 20000068  MOV t7._y__, void, void, u6.xxxx
0023: 00871009 00000000 00000000 20000038  MOV t7.x___, void, void, u3.xxxx
0024: 01871001 15001800 00000000 00150078  ADD t7.xy__, t1.xyyy, void, t7.xyyy
0025: 01871009 00000000 00000000 00150078  MOV t7.xy__, void, void, t7.xyyy
0026: 17871018 39007f20 00000000 00000000  TEXLD t7, tex2, t7, void, void
0027: 00841005 29002800 014801c0 00000000  DP3 t4.x___, t2.xyzz, t3.xyzz, void
0028: 0084108f 00004800 00000340 0000004a  SELECT.LT t4.x___, t4.xxxx, u6.xxxx, t4.xxxx
0029: 00841002 00004800 00aa0340 202a806a  MAD t4.x___, t4.xxxx, u6.yyyy, u6.zzzz
0030: 07871003 39007800 00000240 00000000  MUL t7, t7, t4.xxxx, void
0031: 00841005 29003800 01480140 00000000  DP3 t4.x___, t3.xyzz, t2.xyzz, void
0032: 03831003 00004800 014801c0 00000000  MUL t3.xyz_, t4.xxxx, t3.xyzz, void
0033: 03831003 00005800 014801d0 00000000  MUL t3.xyz_, u5.xxxx, t3.xyzz, void
0034: 03831001 29002800 00000000 00690038  ADD t3.xyz_, t2.xyzz, void, -t3.xyzz
0035: 00841005 29003800 014801c0 00000000  DP3 t4.x___, t3.xyzz, t3.xyzz, void
0036: 0084100d 00000000 00000000 00000048  RSQ t4.x___, void, void, t4.xxxx
0037: 03831003 29003800 00000240 00000000  MUL t3.xyz_, t3.xyzz, t4.xxxx, void
0038: 00861005 29003800 01480340 00000000  DP3 t6.x___, t3.xyzz, t6.xyzz, void
0039: 0086108f 00006800 00000340 0000006a  SELECT.LT t6.x___, t6.xxxx, u6.xxxx, t6.xxxx
0040: 00831090 00006800 00000350 00000000  SET.LT t3.x___, u6.xxxx, t6.xxxx, void
0041: 00000156 00003800 00000340 00001c82  BRANCH.EQ void, t3.xxxx, u6.xxxx, label_0057
0042: 00861003 00006800 00000340 00000000  MUL t6.x___, t6.xxxx, t6.xxxx, void
0043: 00861003 00006800 00000340 00000000  MUL t6.x___, t6.xxxx, t6.xxxx, void
0044: 00831003 00006800 01fe0340 00000002  MUL t3.x___, t6.xxxx, u6.wwww, void
0045: 04041009 00000000 00000000 20000068  MOV t4.___w, void, void, u6.xxxx
0046: 00841009 00000000 00000000 00000038  MOV t4.x___, void, void, t3.xxxx
0047: 01041009 00000000 00000000 00000038  MOV t4._y__, void, void, t3.xxxx
0048: 02041009 00000000 00000000 00000038  MOV t4.__z_, void, void, t3.xxxx
0049: 00861003 00006800 00000340 00000000  MUL t6.x___, t6.xxxx, t6.xxxx, void
0050: 00861003 00006800 01540340 00000002  MUL t6.x___, t6.xxxx, u6.zzzz, void
0051: 04031009 00000000 00000000 20000068  MOV t3.___w, void, void, u6.xxxx
0052: 00831009 00000000 00000000 00000068  MOV t3.x___, void, void, t6.xxxx
0053: 01031009 00000000 00000000 00000068  MOV t3._y__, void, void, t6.xxxx
0054: 02031009 00000000 00000000 00000068  MOV t3.__z_, void, void, t6.xxxx
0055: 07861001 39007800 00000000 00390048  ADD t6, t7, void, t4
0056: 07871001 39006800 00000000 00390038  ADD t7, t6, void, t3
0057: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 8
num const: 20
immediates:
 [5].x = 2.000000 (0x40000000)
 [5].y = -1.000000 (0xbf800000)
 [5].z = 4.000000 (0x40800000)
 [5].w = 0.500000 (0x3f000000)
 [6].x = 0.000000 (0x00000000)
 [6].y = 0.700000 (0x3f333333)
 [6].z = 0.300000 (0x3e99999a)
 [6].w = 0.050000 (0x3d4ccccd)
inputs:
 [1] name=GENERIC index=0 comps=2
 [2] name=GENERIC index=19 comps=4
 [3] name=GENERIC index=20 comps=2
outputs:
special:
  ps_color_out_reg=7
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
