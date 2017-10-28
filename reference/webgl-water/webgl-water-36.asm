FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL CONST[1..3]
DCL TEMP[0..3], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     1.0000,     3.1416}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[4]
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[0], 2D
  2: MOV TEMP[1].yzw, TEMP[0].zyzw
  3: MAD TEMP[2].xy, CONST[1].xyyy, IMM[0].xxxx, IMM[0].xxxx
  4: ADD TEMP[2].xy, TEMP[2].xyyy, -IN[0].xyyy
  5: MUL TEMP[4].x, TEMP[2].xxxx, TEMP[2].xxxx
  6: MAD TEMP[2].x, TEMP[2].yyyy, TEMP[2].yyyy, TEMP[4].xxxx
  7: SQRT TEMP[2].x, TEMP[2].xxxx
  8: RCP TEMP[3].x, CONST[2].xxxx
  9: MUL TEMP[2].x, TEMP[2].xxxx, TEMP[3].xxxx
 10: ADD TEMP[2].x, IMM[0].zzzz, -TEMP[2].xxxx
 11: MAX TEMP[2].x, IMM[0].yyyy, TEMP[2].xxxx
 12: MUL TEMP[2].x, TEMP[2].xxxx, IMM[0].wwww
 13: COS TEMP[2].x, TEMP[2].xxxx
 14: MUL TEMP[2].x, TEMP[2].xxxx, IMM[0].xxxx
 15: ADD TEMP[2].x, IMM[0].xxxx, -TEMP[2].xxxx
 16: MAD TEMP[1].x, TEMP[2].xxxx, CONST[3].xxxx, TEMP[0].xxxx
 17: MOV OUT[0], TEMP[1]
 18: END

FRAG
0000: 01851009 00000000 00000000 00150018  MOV t5.xy__, void, void, t1.xyyy
0001: 07851018 39005f20 00000000 00000000  TEXLD t5, tex0, t5, void, void
0002: 07021009 00000000 00000000 00398058  MOV t2._yzw, void, void, t5.zyzw
0003: 07861009 00000000 00000000 20000048  MOV t6, void, void, u4.xxxx
0004: 07871009 00000000 00000000 20000048  MOV t7, void, void, u4.xxxx
0005: 01831002 15001800 01c80350 00390078  MAD t3.xy__, u1.xyyy, t6, t7
0006: 01831001 15003800 00000000 00550018  ADD t3.xy__, t3.xyyy, void, -t1.xyyy
0007: 00811003 00003800 000001c0 00000000  MUL t1.x___, t3.xxxx, t3.xxxx, void
0008: 00831002 15403800 00aa01c0 00000018  MAD t3.x___, t3.yyyy, t3.yyyy, t1.xxxx
0009: 00831021 00000000 00000000 00000038  SQRT t3.x___, void, void, t3.xxxx
0010: 0084100c 00000000 00000000 20000028  RCP t4.x___, void, void, u2.xxxx
0011: 00831003 00003800 00000240 00000000  MUL t3.x___, t3.xxxx, t4.xxxx, void
0012: 00831001 2a804800 00000010 00400038  ADD t3.x___, u4.zzzz, void, -t3.xxxx
0013: 0083108f 15404800 000001d0 20154048  SELECT.LT t3.x___, u4.yyyy, t3.xxxx, u4.yyyy
0014: 00831003 00003800 01fe0240 00000002  MUL t3.x___, t3.xxxx, u4.wwww, void
0015: 07861003 00003800 00000340 00000002  MUL t6, t3.xxxx, u6.xxxx, void
0016: 00831023 00000000 00000000 00390068  COS t3.x___, void, void, t6
0017: 00831003 00003800 00000240 00000002  MUL t3.x___, t3.xxxx, u4.xxxx, void
0018: 00831001 00004800 00000010 00400038  ADD t3.x___, u4.xxxx, void, -t3.xxxx
0019: 00821002 00003800 000001c0 0000005a  MAD t2.x___, t3.xxxx, u3.xxxx, t5.xxxx
num loops: 0
num temps: 8
num const: 16
immediates:
 [4].x = 0.500000 (0x3f000000)
 [4].y = 0.000000 (0x00000000)
 [4].z = 1.000000 (0x3f800000)
 [4].w = 3.141600 (0x40490ff9)
 [5].x = 0.000000 (0x00000000)
 [5].y = 1.000000 (0x3f800000)
 [5].z = 128.000000 (0x43000000)
 [5].w = 0.000000 (0x00000000)
 [6].x = 0.636620 (0x3f22f983)
inputs:
 [1] name=GENERIC index=20 comps=2
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
