FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL IN[2], GENERIC[22], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0..3], LOCAL
IMM[0] FLT32 {    0.0010,     0.0000,    13.0000,   100.0000}
IMM[1] FLT32 {    0.8000,     1.0000,     0.6667,     0.3333}
IMM[2] FLT32 {    0.1600,     1.0000,     0.4082,     0.8165}
IMM[3] FLT32 {    0.1000,     1.0000,     0.0000,     0.0000}
IMM[4] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[4]
  0: MOV TEMP[0].xy, IN[0].zwzz
  1: MOV TEMP[0].z, IN[1].xxxx
  2: MOV TEMP[1].xy, IN[0].xyyy
  3: TEX TEMP[1].x, TEMP[1], SAMP[0], 2D
  4: ADD TEMP[2].xy, IN[0].xyyy, IMM[0].xyyy
  5: MOV TEMP[2].xy, TEMP[2].xyyy
  6: TEX TEMP[2].x, TEMP[2], SAMP[0], 2D
  7: ADD TEMP[2].x, TEMP[2].xxxx, -TEMP[1].xxxx
  8: ADD TEMP[3].xy, IN[0].xyyy, IMM[0].yxxx
  9: MOV TEMP[3].xy, TEMP[3].xyyy
 10: TEX TEMP[3].x, TEMP[3], SAMP[0], 2D
 11: ADD TEMP[1].x, TEMP[3].xxxx, -TEMP[1].xxxx
 12: MUL TEMP[2].x, IMM[0].zzzz, TEMP[2].xxxx
 13: MUL TEMP[2].xyz, TEMP[2].xxxx, IN[1].yzww
 14: ADD TEMP[0].xyz, TEMP[0].xyzz, -TEMP[2].xyzz
 15: MUL TEMP[1].x, IMM[0].zzzz, TEMP[1].xxxx
 16: MUL TEMP[1].xyz, TEMP[1].xxxx, IN[2].xyzz
 17: ADD TEMP[0].xyz, TEMP[0].xyzz, -TEMP[1].xyzz
 18: MUL TEMP[4].x, TEMP[0].xxxx, TEMP[0].xxxx
 19: MAD TEMP[4].x, TEMP[0].yyyy, TEMP[0].yyyy, TEMP[4].xxxx
 20: MAD TEMP[1].x, TEMP[0].zzzz, TEMP[0].zzzz, TEMP[4].xxxx
 21: RSQ TEMP[1].x, TEMP[1].xxxx
 22: MUL TEMP[0].xyz, TEMP[0].xyzz, TEMP[1].xxxx
 23: MUL TEMP[4].x, TEMP[0].xxxx, IMM[1].zzzz
 24: MAD TEMP[4].x, TEMP[0].yyyy, IMM[1].zzzz, TEMP[4].xxxx
 25: MAD TEMP[1].x, TEMP[0].zzzz, IMM[1].wwww, TEMP[4].xxxx
 26: MAX TEMP[1].x, TEMP[1].xxxx, IMM[0].yyyy
 27: MUL TEMP[4].x, TEMP[0].xxxx, IMM[2].zzzz
 28: MAD TEMP[4].x, TEMP[0].yyyy, IMM[2].zzzz, TEMP[4].xxxx
 29: MAD TEMP[0].x, TEMP[0].zzzz, IMM[2].wwww, TEMP[4].xxxx
 30: MAX TEMP[0].x, TEMP[0].xxxx, IMM[0].yyyy
 31: LG2 TEMP[4].x, TEMP[0].xxxx
 32: MUL TEMP[4].x, IMM[0].wwww, TEMP[4].xxxx
 33: EX2 TEMP[0].x, TEMP[4].xxxx
 34: MAD TEMP[0], IMM[2].xxxy, TEMP[0].xxxx, IMM[3].xxxy
 35: MAD TEMP[0], IMM[1].xxxy, TEMP[1].xxxx, TEMP[0]
 36: MOV OUT[0], TEMP[0]
 37: END


FRAG
0000: 01841009 00000000 00000000 002b8018  MOV t4.xy__, void, void, t1.zwzz
0001: 02041009 00000000 00000000 00000028  MOV t4.__z_, void, void, t2.xxxx
0002: 01851009 00000000 00000000 00150018  MOV t5.xy__, void, void, t1.xyyy
0003: 00851018 39005f20 00000000 00000000  TEXLD t5.x___, tex0, t5, void, void
0004: 01861001 15001800 00000000 20150008  ADD t6.xy__, t1.xyyy, void, u0.xyyy
0005: 01861009 00000000 00000000 00150068  MOV t6.xy__, void, void, t6.xyyy
0006: 00861018 39006f20 00000000 00000000  TEXLD t6.x___, tex0, t6, void, void
0007: 00861001 00006800 00000000 00400058  ADD t6.x___, t6.xxxx, void, -t5.xxxx
0008: 01811001 15001800 00000000 20004008  ADD t1.xy__, t1.xyyy, void, u0.yxxx
0009: 01811009 00000000 00000000 00150018  MOV t1.xy__, void, void, t1.xyyy
0010: 00811018 39001f20 00000000 00000000  TEXLD t1.x___, tex0, t1, void, void
0011: 00851001 00001800 00000000 00400058  ADD t5.x___, t1.xxxx, void, -t5.xxxx
0012: 00861003 2a800800 00000350 00000000  MUL t6.x___, u0.zzzz, t6.xxxx, void
0013: 03861003 00006800 01f20140 00000000  MUL t6.xyz_, t6.xxxx, t2.yzww, void
0014: 03841001 29004800 00000000 00690068  ADD t4.xyz_, t4.xyzz, void, -t6.xyzz
0015: 00851003 2a800800 000002d0 00000000  MUL t5.x___, u0.zzzz, t5.xxxx, void
0016: 03851003 00005800 014801c0 00000000  MUL t5.xyz_, t5.xxxx, t3.xyzz, void
0017: 03841001 29004800 00000000 00690058  ADD t4.xyz_, t4.xyzz, void, -t5.xyzz
0018: 00821003 00004800 00000240 00000000  MUL t2.x___, t4.xxxx, t4.xxxx, void
0019: 00821002 15404800 00aa0240 00000028  MAD t2.x___, t4.yyyy, t4.yyyy, t2.xxxx
0020: 00851002 2a804800 01540240 00000028  MAD t5.x___, t4.zzzz, t4.zzzz, t2.xxxx
0021: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0022: 03841003 29004800 000002c0 00000000  MUL t4.xyz_, t4.xyzz, t5.xxxx, void
0023: 00821003 00004800 015400c0 00000002  MUL t2.x___, t4.xxxx, u1.zzzz, void
0024: 00821002 15404800 015400c0 0000002a  MAD t2.x___, t4.yyyy, u1.zzzz, t2.xxxx
0025: 00851002 2a804800 01fe00c0 0000002a  MAD t5.x___, t4.zzzz, u1.wwww, t2.xxxx
0026: 0085108f 00005800 00aa0040 0000005a  SELECT.LT t5.x___, t5.xxxx, u0.yyyy, t5.xxxx
0027: 00821003 00004800 01540140 00000002  MUL t2.x___, t4.xxxx, u2.zzzz, void
0028: 00821002 15404800 01540140 0000002a  MAD t2.x___, t4.yyyy, u2.zzzz, t2.xxxx
0029: 00841002 2a804800 01fe0140 0000002a  MAD t4.x___, t4.zzzz, u2.wwww, t2.xxxx
0030: 0084108f 00004800 00aa0040 0000004a  SELECT.LT t4.x___, t4.xxxx, u0.yyyy, t4.xxxx
0031: 00821012 00000000 00000000 00000048  LOG t2.x___, void, void, t4.xxxx
0032: 00821003 3fc00800 00000150 00000000  MUL t2.x___, u0.wwww, t2.xxxx, void
0033: 00841011 00000000 00000000 00000028  EXP t4.x___, void, void, t2.xxxx
0034: 07871009 00000000 00000000 20100038  MOV t7, void, void, u3.xxxy
0035: 07841002 10002800 00000250 00390078  MAD t4, u2.xxxy, t4.xxxx, t7
0036: 07841002 10001800 000002d0 00390048  MAD t4, u1.xxxy, t5.xxxx, t4
num loops: 0
num temps: 8
num const: 0
immediates:
 [0].x = 0.001000 (0x3a83126f)
 [0].y = 0.000000 (0x00000000)
 [0].z = 13.000000 (0x41500000)
 [0].w = 100.000000 (0x42c80000)
 [1].x = 0.800000 (0x3f4ccccd)
 [1].y = 1.000000 (0x3f800000)
 [1].z = 0.666700 (0x3f2aacda)
 [1].w = 0.333300 (0x3eaaa64c)
 [2].x = 0.160000 (0x3e23d70a)
 [2].y = 1.000000 (0x3f800000)
 [2].z = 0.408200 (0x3ed0ff97)
 [2].w = 0.816500 (0x3f510625)
 [3].x = 0.100000 (0x3dcccccd)
 [3].y = 1.000000 (0x3f800000)
 [3].z = 0.000000 (0x00000000)
 [3].w = 0.000000 (0x00000000)
 [4].x = 0.000000 (0x00000000)
 [4].y = 1.000000 (0x3f800000)
 [4].z = 128.000000 (0x43000000)
 [4].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=4
 [2] name=GENERIC index=21 comps=4
 [3] name=GENERIC index=22 comps=3
outputs:
special:
  ps_color_out_reg=4
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
