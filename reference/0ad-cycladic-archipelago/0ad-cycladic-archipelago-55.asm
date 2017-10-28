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
DCL CONST[0..16]
DCL TEMP[0..6], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  0: MUL TEMP[0], CONST[12], IN[0].xxxx
  1: MAD TEMP[0], CONST[13], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[14], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[15]
  4: MUL TEMP[1].xyz, CONST[12].xyzz, IN[1].xxxx
  5: MAD TEMP[1].xyz, CONST[13].xyzz, IN[1].yyyy, TEMP[1].xyzz
  6: MAD TEMP[1].xyz, CONST[14].xyzz, IN[1].zzzz, TEMP[1].xyzz
  7: MUL TEMP[2], CONST[0], TEMP[0].xxxx
  8: MAD TEMP[2], CONST[1], TEMP[0].yyyy, TEMP[2]
  9: MAD TEMP[2], CONST[2], TEMP[0].zzzz, TEMP[2]
 10: MAD TEMP[2], CONST[3], TEMP[0].wwww, TEMP[2]
 11: MOV TEMP[3].xyz, TEMP[1].xyzx
 12: ADD TEMP[4].xyz, CONST[4].xyzz, -TEMP[0].xyzz
 13: MOV TEMP[5].xyz, -CONST[5].xyzx
 14: DP3 TEMP[6].x, TEMP[4].xyzz, TEMP[4].xyzz
 15: RSQ TEMP[6].x, TEMP[6].xxxx
 16: MAD TEMP[4].xyz, TEMP[4].xyzz, TEMP[6].xxxx, TEMP[5].xyzz
 17: DP3 TEMP[1].x, TEMP[1].xyzz, TEMP[5].xyzz
 18: MAX TEMP[1].x, IMM[0].xxxx, TEMP[1].xxxx
 19: MUL TEMP[1].xyz, TEMP[1].xxxx, CONST[6].xyzz
 20: MUL TEMP[5], CONST[8], TEMP[0].xxxx
 21: MAD TEMP[5], CONST[9], TEMP[0].yyyy, TEMP[5]
 22: MAD TEMP[5], CONST[10], TEMP[0].zzzz, TEMP[5]
 23: MAD TEMP[5], CONST[11], TEMP[0].wwww, TEMP[5]
 24: MOV TEMP[6].zw, TEMP[5].wwzw
 25: MUL TEMP[6].xy, TEMP[5].xyyy, CONST[16].xyyy
 26: DP3 TEMP[5].x, TEMP[4].xyzz, TEMP[4].xyzz
 27: RSQ TEMP[5].x, TEMP[5].xxxx
 28: MUL TEMP[4].xyz, TEMP[4].xyzz, TEMP[5].xxxx
 29: MAD TEMP[0].xy, TEMP[0].xzzz, CONST[7].xxxx, CONST[7].yyyy
 30: MOV TEMP[0].zw, IN[2].yyxy
 31: MOV OUT[3], TEMP[6]
 32: MOV OUT[1], TEMP[1]
 33: MOV OUT[2], TEMP[3]
 34: MOV OUT[5], TEMP[4]
 35: MOV OUT[4], TEMP[0]
 36: MOV OUT[0], TEMP[2]
 37: END

VERT
0000: 07801003 3900c800 000000d0 00000000  MUL t0, u12, t1.xxxx, void
0001: 07801002 3900d800 00aa00d0 00390008  MAD t0, u13, t1.yyyy, t0
0002: 07801002 3900e800 015400d0 00390008  MAD t0, u14, t1.zzzz, t0
0003: 07801001 39000800 00000000 203900f8  ADD t0, t0, void, u15
0004: 03811003 2900c800 00000150 00000000  MUL t1.xyz_, u12.xyzz, t2.xxxx, void
0005: 03811002 2900d800 00aa0150 00290018  MAD t1.xyz_, u13.xyzz, t2.yyyy, t1.xyzz
0006: 03811002 2900e800 01540150 00290018  MAD t1.xyz_, u14.xyzz, t2.zzzz, t1.xyzz
0007: 07821003 39000800 00000050 00000000  MUL t2, u0, t0.xxxx, void
0008: 07821002 39001800 00aa0050 00390028  MAD t2, u1, t0.yyyy, t2
0009: 07821002 39002800 01540050 00390028  MAD t2, u2, t0.zzzz, t2
0010: 07821002 39003800 01fe0050 00390028  MAD t2, u3, t0.wwww, t2
0011: 03831009 00000000 00000000 00090018  MOV t3.xyz_, void, void, t1.xyzx
0012: 03841001 29004800 00000010 00690008  ADD t4.xyz_, u4.xyzz, void, -t0.xyzz
0013: 03851009 00000000 00000000 20490058  MOV t5.xyz_, void, void, -u5.xyzx
0014: 00861005 29004800 01480240 00000000  DP3 t6.x___, t4.xyzz, t4.xyzz, void
0015: 0086100d 00000000 00000000 00000068  RSQ t6.x___, void, void, t6.xxxx
0016: 03841002 29004800 00000340 00290058  MAD t4.xyz_, t4.xyzz, t6.xxxx, t5.xyzz
0017: 00811005 29001800 014802c0 00000000  DP3 t1.x___, t1.xyzz, t5.xyzz, void
0018: 0081108f 00011800 000000d0 20000118  SELECT.LT t1.x___, u17.xxxx, t1.xxxx, u17.xxxx
0019: 03811003 00001800 01480340 00000002  MUL t1.xyz_, t1.xxxx, u6.xyzz, void
0020: 07851003 39008800 00000050 00000000  MUL t5, u8, t0.xxxx, void
0021: 07851002 39009800 00aa0050 00390058  MAD t5, u9, t0.yyyy, t5
0022: 07851002 3900a800 01540050 00390058  MAD t5, u10, t0.zzzz, t5
0023: 07851002 3900b800 01fe0050 00390058  MAD t5, u11, t0.wwww, t5
0024: 06061009 00000000 00000000 003bc058  MOV t6.__zw, void, void, t5.wwzw
0025: 01861003 15005800 00a80840 00000002  MUL t6.xy__, t5.xyyy, u16.xyyy, void
0026: 00851005 29004800 01480240 00000000  DP3 t5.x___, t4.xyzz, t4.xyzz, void
0027: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0028: 03841003 29004800 000002c0 00000000  MUL t4.xyz_, t4.xyzz, t5.xxxx, void
0029: 01801002 2a000800 000003c0 2015407a  MAD t0.xy__, t0.xzzz, u7.xxxx, u7.yyyy
0030: 06001009 00000000 00000000 00114078  MOV t0.__zw, void, void, t7.yyxy
num loops: 0
num temps: 8
num const: 68
immediates:
 [17].x = 0.000000 (0x00000000)
 [17].y = 0.000000 (0x00000000)
 [17].z = 0.000000 (0x00000000)
 [17].w = 0.000000 (0x00000000)
inputs:
 [1] name=POSITION index=0 comps=3
 [2] name=POSITION index=0 comps=3
 [7] name=POSITION index=0 comps=2
outputs:
 [1] name=GENERIC index=9 comps=4
 [3] name=GENERIC index=10 comps=4
 [6] name=GENERIC index=11 comps=4
 [0] name=GENERIC index=12 comps=4
 [4] name=GENERIC index=13 comps=4
special:
  vs_pos_out_reg=2
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f050d
  input_count_unk8=0x00000001
