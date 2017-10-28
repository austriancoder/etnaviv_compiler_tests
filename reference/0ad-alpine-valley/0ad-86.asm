VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL CONST[0..15]
DCL TEMP[0..4], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  0: MUL TEMP[0], CONST[11], IN[0].xxxx
  1: MAD TEMP[0], CONST[12], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[13], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[14]
  4: MUL TEMP[1], CONST[0], TEMP[0].xxxx
  5: MAD TEMP[1], CONST[1], TEMP[0].yyyy, TEMP[1]
  6: MAD TEMP[1], CONST[2], TEMP[0].zzzz, TEMP[1]
  7: MAD TEMP[1], CONST[3], TEMP[0].wwww, TEMP[1]
  8: MUL TEMP[2].xyz, CONST[11].xyzz, IN[1].xxxx
  9: MAD TEMP[2].xyz, CONST[12].xyzz, IN[1].yyyy, TEMP[2].xyzz
 10: MAD TEMP[2].xyz, CONST[13].xyzz, IN[1].zzzz, TEMP[2].xyzz
 11: DP3 TEMP[2].x, TEMP[2].xyzz, -CONST[4].xyzz
 12: MAX TEMP[2].x, IMM[0].xxxx, TEMP[2].xxxx
 13: MUL TEMP[2].xyz, TEMP[2].xxxx, CONST[5].xyzz
 14: MUL TEMP[3], CONST[7], TEMP[0].xxxx
 15: MAD TEMP[3], CONST[8], TEMP[0].yyyy, TEMP[3]
 16: MAD TEMP[3], CONST[9], TEMP[0].zzzz, TEMP[3]
 17: MAD TEMP[3], CONST[10], TEMP[0].wwww, TEMP[3]
 18: MOV TEMP[4].zw, TEMP[3].wwzw
 19: MUL TEMP[4].xy, TEMP[3].xyyy, CONST[15].xyyy
 20: MAD TEMP[0].xy, TEMP[0].xzzz, CONST[6].xxxx, CONST[6].yyyy
 21: MOV TEMP[0].zw, IN[2].yyxy
 22: MOV OUT[2], TEMP[4]
 23: MOV OUT[1], TEMP[2]
 24: MOV OUT[3], TEMP[0]
 25: MOV OUT[0], TEMP[1]
 26: END

VERT
0000: 07801003 3900b800 000000d0 00000000  MUL t0, u11, t1.xxxx, void
0001: 07801002 3900c800 00aa00d0 00390008  MAD t0, u12, t1.yyyy, t0
0002: 07801002 3900d800 015400d0 00390008  MAD t0, u13, t1.zzzz, t0
0003: 07801001 39000800 00000000 203900e8  ADD t0, t0, void, u14
0004: 07811003 39000800 00000050 00000000  MUL t1, u0, t0.xxxx, void
0005: 07811002 39001800 00aa0050 00390018  MAD t1, u1, t0.yyyy, t1
0006: 07811002 39002800 01540050 00390018  MAD t1, u2, t0.zzzz, t1
0007: 07811002 39003800 01fe0050 00390018  MAD t1, u3, t0.wwww, t1
0008: 03821003 2900b800 000001d0 00000000  MUL t2.xyz_, u11.xyzz, t3.xxxx, void
0009: 03821002 2900c800 00aa01d0 00290028  MAD t2.xyz_, u12.xyzz, t3.yyyy, t2.xyzz
0010: 03821002 2900d800 015401d0 00290028  MAD t2.xyz_, u13.xyzz, t3.zzzz, t2.xyzz
0011: 00821005 29002800 03480240 00000002  DP3 t2.x___, t2.xyzz, -u4.xyzz, void
0012: 0082108f 00010800 00000150 20000108  SELECT.LT t2.x___, u16.xxxx, t2.xxxx, u16.xxxx
0013: 03821003 00002800 014802c0 00000002  MUL t2.xyz_, t2.xxxx, u5.xyzz, void
0014: 07831003 39007800 00000050 00000000  MUL t3, u7, t0.xxxx, void
0015: 07831002 39008800 00aa0050 00390038  MAD t3, u8, t0.yyyy, t3
0016: 07831002 39009800 01540050 00390038  MAD t3, u9, t0.zzzz, t3
0017: 07831002 3900a800 01fe0050 00390038  MAD t3, u10, t0.wwww, t3
0018: 06041009 00000000 00000000 003bc038  MOV t4.__zw, void, void, t3.wwzw
0019: 01841003 15003800 00a807c0 00000002  MUL t4.xy__, t3.xyyy, u15.xyyy, void
0020: 01801002 2a000800 00000340 2015406a  MAD t0.xy__, t0.xzzz, u6.xxxx, u6.yyyy
0021: 06001009 00000000 00000000 00114058  MOV t0.__zw, void, void, t5.yyxy
num loops: 0
num temps: 6
num const: 64
immediates:
 [16].x = 0.000000 (0x00000000)
 [16].y = 0.000000 (0x00000000)
 [16].z = 0.000000 (0x00000000)
 [16].w = 0.000000 (0x00000000)
inputs:
 [1] name=POSITION index=0 comps=3
 [3] name=POSITION index=0 comps=3
 [5] name=POSITION index=0 comps=2
outputs:
 [2] name=GENERIC index=9 comps=4
 [4] name=GENERIC index=10 comps=4
 [0] name=GENERIC index=11 comps=4
special:
  vs_pos_out_reg=1
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0512
  input_count_unk8=0x00000001
