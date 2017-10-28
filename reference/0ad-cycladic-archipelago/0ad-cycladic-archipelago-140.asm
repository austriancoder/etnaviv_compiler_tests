VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL OUT[4], GENERIC[12]
DCL OUT[5], GENERIC[13]
DCL CONST[0..12]
DCL TEMP[0..5], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[2], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[3]
  4: MOV TEMP[1].xyz, IN[1].xyzx
  5: ADD TEMP[2].xyz, CONST[4].xyzz, -IN[0].xyzz
  6: MOV TEMP[3].xyz, -CONST[5].xyzx
  7: DP3 TEMP[4].x, TEMP[2].xyzz, TEMP[2].xyzz
  8: RSQ TEMP[4].x, TEMP[4].xxxx
  9: MAD TEMP[2].xyz, TEMP[2].xyzz, TEMP[4].xxxx, TEMP[3].xyzz
 10: DP3 TEMP[3].x, IN[1].xyzz, TEMP[3].xyzz
 11: MAX TEMP[3].x, IMM[0].xxxx, TEMP[3].xxxx
 12: MUL TEMP[3].xyz, TEMP[3].xxxx, CONST[6].xyzz
 13: MUL TEMP[4], CONST[8], IN[0].xxxx
 14: MAD TEMP[4], CONST[9], IN[0].yyyy, TEMP[4]
 15: MAD TEMP[4], CONST[10], IN[0].zzzz, TEMP[4]
 16: ADD TEMP[4], TEMP[4], CONST[11]
 17: MOV TEMP[5].zw, TEMP[4].wwzw
 18: MUL TEMP[5].xy, TEMP[4].xyyy, CONST[12].xyyy
 19: DP3 TEMP[4].x, TEMP[2].xyzz, TEMP[2].xyzz
 20: RSQ TEMP[4].x, TEMP[4].xxxx
 21: MUL TEMP[2].xyz, TEMP[2].xyzz, TEMP[4].xxxx
 22: MAD TEMP[4].xy, IN[0].xzzz, CONST[7].xxxx, CONST[7].yyyy
 23: MOV TEMP[4].zw, IN[2].yyxy
 24: MOV OUT[3], TEMP[5]
 25: MOV OUT[1], TEMP[3]
 26: MOV OUT[2], TEMP[1]
 27: MOV OUT[5], TEMP[2]
 28: MOV OUT[4], TEMP[4]
 29: MOV OUT[0], TEMP[0]
 30: END

VERT
0000: 07801003 39000800 00000350 00000000  MUL t0, u0, t6.xxxx, void
0001: 07801002 39001800 00aa0350 00390008  MAD t0, u1, t6.yyyy, t0
0002: 07801002 39002800 01540350 00390008  MAD t0, u2, t6.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0004: 03811009 00000000 00000000 00090058  MOV t1.xyz_, void, void, t5.xyzx
0005: 03821001 29004800 00000010 00690068  ADD t2.xyz_, u4.xyzz, void, -t6.xyzz
0006: 03831009 00000000 00000000 20490058  MOV t3.xyz_, void, void, -u5.xyzx
0007: 00841005 29002800 01480140 00000000  DP3 t4.x___, t2.xyzz, t2.xyzz, void
0008: 0084100d 00000000 00000000 00000048  RSQ t4.x___, void, void, t4.xxxx
0009: 03821002 29002800 00000240 00290038  MAD t2.xyz_, t2.xyzz, t4.xxxx, t3.xyzz
0010: 00831005 29005800 014801c0 00000000  DP3 t3.x___, t5.xyzz, t3.xyzz, void
0011: 0083108f 0000d800 000001d0 200000d8  SELECT.LT t3.x___, u13.xxxx, t3.xxxx, u13.xxxx
0012: 03831003 00003800 01480340 00000002  MUL t3.xyz_, t3.xxxx, u6.xyzz, void
0013: 07841003 39008800 00000350 00000000  MUL t4, u8, t6.xxxx, void
0014: 07841002 39009800 00aa0350 00390048  MAD t4, u9, t6.yyyy, t4
0015: 07841002 3900a800 01540350 00390048  MAD t4, u10, t6.zzzz, t4
0016: 07841001 39004800 00000000 203900b8  ADD t4, t4, void, u11
0017: 06051009 00000000 00000000 003bc048  MOV t5.__zw, void, void, t4.wwzw
0018: 01851003 15004800 00a80640 00000002  MUL t5.xy__, t4.xyyy, u12.xyyy, void
0019: 00841005 29002800 01480140 00000000  DP3 t4.x___, t2.xyzz, t2.xyzz, void
0020: 0084100d 00000000 00000000 00000048  RSQ t4.x___, void, void, t4.xxxx
0021: 03821003 29002800 00000240 00000000  MUL t2.xyz_, t2.xyzz, t4.xxxx, void
0022: 01841002 2a006800 000003c0 2015407a  MAD t4.xy__, t6.xzzz, u7.xxxx, u7.yyyy
0023: 06041009 00000000 00000000 00114078  MOV t4.__zw, void, void, t7.yyxy
num loops: 0
num temps: 8
num const: 52
immediates:
 [13].x = 0.000000 (0x00000000)
 [13].y = 0.000000 (0x00000000)
 [13].z = 0.000000 (0x00000000)
 [13].w = 0.000000 (0x00000000)
inputs:
 [6] name=POSITION index=0 comps=3
 [5] name=POSITION index=0 comps=3
 [7] name=POSITION index=0 comps=2
outputs:
 [3] name=GENERIC index=9 comps=4
 [1] name=GENERIC index=10 comps=4
 [5] name=GENERIC index=11 comps=4
 [4] name=GENERIC index=12 comps=4
 [2] name=GENERIC index=13 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f050d
  input_count_unk8=0x00000001
