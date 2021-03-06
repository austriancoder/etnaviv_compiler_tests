FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[9], PERSPECTIVE
DCL IN[1], GENERIC[10], PERSPECTIVE
DCL IN[2], GENERIC[11], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL CONST[0..1]
DCL CONST[3..5]
DCL TEMP[0..4], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].xy, IN[0].zwzz
  1: MOV TEMP[0].z, IN[1].xxxx
  2: MOV TEMP[1].xy, IN[0].xyyy
  3: TEX TEMP[1], TEMP[1], SAMP[0], 2D
  4: DP3 TEMP[2].x, IN[1].yzww, IN[1].yzww
  5: RSQ TEMP[2].x, TEMP[2].xxxx
  6: MUL TEMP[2].xyz, IN[1].yzww, TEMP[2].xxxx
  7: DP3 TEMP[3].x, TEMP[0].xyzz, TEMP[0].xyzz
  8: RSQ TEMP[3].x, TEMP[3].xxxx
  9: MUL TEMP[0].xyz, TEMP[0].xyzz, TEMP[3].xxxx
 10: DP3 TEMP[3].x, IN[2].xyzz, IN[2].xyzz
 11: RSQ TEMP[3].x, TEMP[3].xxxx
 12: MAD TEMP[3].xyz, IN[2].xyzz, TEMP[3].xxxx, TEMP[0].xyzz
 13: DP3 TEMP[0].x, TEMP[2].xyzz, TEMP[0].xyzz
 14: DP3 TEMP[4].x, TEMP[3].xyzz, TEMP[3].xyzz
 15: RSQ TEMP[4].x, TEMP[4].xxxx
 16: MUL TEMP[3].xyz, TEMP[3].xyzz, TEMP[4].xxxx
 17: DP3 TEMP[2].x, TEMP[2].xyzz, TEMP[3].xyzz
 18: MAX TEMP[3].x, TEMP[0].xxxx, IMM[0].xxxx
 19: SLT TEMP[0].x, IMM[0].xxxx, TEMP[0].xxxx
 20: IF TEMP[0].xxxx :0
 21:   MAX TEMP[0].x, IMM[0].xxxx, TEMP[2].xxxx
 22:   POW TEMP[0].x, TEMP[0].xxxx, CONST[4].xxxx
 23: ELSE :0
 24:   MOV TEMP[0].x, IMM[0].xxxx
 25: ENDIF
 26: MUL TEMP[0], CONST[3], TEMP[0].xxxx
 27: MUL TEMP[2], TEMP[1], TEMP[3].xxxx
 28: MAD TEMP[2], TEMP[1], CONST[1], TEMP[2]
 29: MAD TEMP[0], TEMP[0], CONST[5].xxxx, TEMP[2]
 30: MUL TEMP[0].xyz, CONST[0], TEMP[0]
 31: MOV TEMP[0].xyz, TEMP[0].xyzx
 32: MOV TEMP[0].w, TEMP[1].wwww
 33: MOV OUT[0], TEMP[0]
 34: END

FRAG
0000: 01841009 00000000 00000000 002b8018  MOV t4.xy__, void, void, t1.zwzz
0001: 02041009 00000000 00000000 00000028  MOV t4.__z_, void, void, t2.xxxx
0002: 01811009 00000000 00000000 00150018  MOV t1.xy__, void, void, t1.xyyy
0003: 07811018 39001f20 00000000 00000000  TEXLD t1, tex0, t1, void, void
0004: 00851005 3e402800 01f20140 00000000  DP3 t5.x___, t2.yzww, t2.yzww, void
0005: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0006: 03851003 3e402800 000002c0 00000000  MUL t5.xyz_, t2.yzww, t5.xxxx, void
0007: 00821005 29004800 01480240 00000000  DP3 t2.x___, t4.xyzz, t4.xyzz, void
0008: 0082100d 00000000 00000000 00000028  RSQ t2.x___, void, void, t2.xxxx
0009: 03841003 29004800 00000140 00000000  MUL t4.xyz_, t4.xyzz, t2.xxxx, void
0010: 00821005 29003800 014801c0 00000000  DP3 t2.x___, t3.xyzz, t3.xyzz, void
0011: 0082100d 00000000 00000000 00000028  RSQ t2.x___, void, void, t2.xxxx
0012: 03821002 29003800 00000140 00290048  MAD t2.xyz_, t3.xyzz, t2.xxxx, t4.xyzz
0013: 00841005 29005800 01480240 00000000  DP3 t4.x___, t5.xyzz, t4.xyzz, void
0014: 00831005 29002800 01480140 00000000  DP3 t3.x___, t2.xyzz, t2.xyzz, void
0015: 0083100d 00000000 00000000 00000038  RSQ t3.x___, void, void, t3.xxxx
0016: 03821003 29002800 000001c0 00000000  MUL t2.xyz_, t2.xyzz, t3.xxxx, void
0017: 00851005 29005800 01480140 00000000  DP3 t5.x___, t5.xyzz, t2.xyzz, void
0018: 0082108f 00004800 00000340 0000004a  SELECT.LT t2.x___, t4.xxxx, u6.xxxx, t4.xxxx
0019: 00841090 00006800 00000250 00000000  SET.LT t4.x___, u6.xxxx, t4.xxxx, void
0020: 00000156 00004800 00000340 00000d02  BRANCH.EQ void, t4.xxxx, u6.xxxx, label_0026
0021: 0084108f 00006800 000002d0 20000068  SELECT.LT t4.x___, u6.xxxx, t5.xxxx, u6.xxxx
0022: 00861012 00000000 00000000 00000048  LOG t6.x___, void, void, t4.xxxx
0023: 00861003 00004800 00000350 00000000  MUL t6.x___, u4.xxxx, t6.xxxx, void
0024: 00841011 00000000 00000000 00000068  EXP t4.x___, void, void, t6.xxxx
0025: 00000016 00000000 00000000 00000d80  BRANCH void, void, void, label_0027
0026: 00841009 00000000 00000000 20000068  MOV t4.x___, void, void, u6.xxxx
0027: 07841003 39003800 00000250 00000000  MUL t4, u3, t4.xxxx, void
0028: 07851003 39001800 00000140 00000000  MUL t5, t1, t2.xxxx, void
0029: 07851002 39001800 01c800c0 0039005a  MAD t5, t1, u1, t5
0030: 07841002 39004800 000002c0 0039005a  MAD t4, t4, u5.xxxx, t5
0031: 03841003 39000800 01c80250 00000000  MUL t4.xyz_, u0, t4, void
0032: 03841009 00000000 00000000 00090048  MOV t4.xyz_, void, void, t4.xyzx
0033: 04041009 00000000 00000000 003fc018  MOV t4.___w, void, void, t1.wwww
num loops: 0
num temps: 7
num const: 24
immediates:
 [6].x = 0.000000 (0x00000000)
 [6].y = 0.000000 (0x00000000)
 [6].z = 0.000000 (0x00000000)
 [6].w = 0.000000 (0x00000000)
 [7].x = 0.000000 (0x00000000)
 [7].y = 1.000000 (0x3f800000)
 [7].z = 128.000000 (0x43000000)
 [7].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=9 comps=4
 [2] name=GENERIC index=10 comps=4
 [3] name=GENERIC index=11 comps=3
outputs:
special:
  ps_color_out_reg=4
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
