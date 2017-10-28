VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL IN[3]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL OUT[4], GENERIC[12]
DCL OUT[5], GENERIC[13]
DCL OUT[6], GENERIC[14]
DCL OUT[7], GENERIC[15]
DCL CONST[0..12]
DCL TEMP[0..7], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,    -1.0000,     0.0000}
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[2], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[3]
  4: MUL TEMP[1].xyz, IN[2].xyzz, CONST[6].xyzz
  5: MUL TEMP[2], CONST[8], IN[0].xxxx
  6: MAD TEMP[2], CONST[9], IN[0].yyyy, TEMP[2]
  7: MAD TEMP[2], CONST[10], IN[0].zzzz, TEMP[2]
  8: ADD TEMP[2], TEMP[2], CONST[11]
  9: MOV TEMP[3].zw, TEMP[2].wwzw
 10: MUL TEMP[3].xy, TEMP[2].xyyy, CONST[12].xyyy
 11: MUL TEMP[2].xyz, IN[1].xyzz, IN[1].xxxx
 12: ADD TEMP[2].xyz, IMM[0].xyyy, -TEMP[2].xyzz
 13: DP3 TEMP[4].x, TEMP[2].xyzz, TEMP[2].xyzz
 14: RSQ TEMP[4].x, TEMP[4].xxxx
 15: MUL TEMP[2].xyz, TEMP[2].xyzz, TEMP[4].xxxx
 16: MOV TEMP[4].w, IMM[0].zzzz
 17: MOV TEMP[4].xyz, TEMP[2].xyzx
 18: ADD TEMP[5].xyz, CONST[4].xyzz, -IN[0].xyzz
 19: DP3 TEMP[6].x, TEMP[5].xyzz, TEMP[5].xyzz
 20: RSQ TEMP[6].x, TEMP[6].xxxx
 21: MAD TEMP[5].xyz, TEMP[5].xyzz, TEMP[6].xxxx, -CONST[5].xyzz
 22: DP3 TEMP[6].x, TEMP[5].xyzz, TEMP[5].xyzz
 23: RSQ TEMP[6].x, TEMP[6].xxxx
 24: MUL TEMP[5].xyz, TEMP[5].xyzz, TEMP[6].xxxx
 25: MUL TEMP[6].xyz, IN[1].zxyy, TEMP[2].yzxx
 26: MAD TEMP[2].xyz, IN[1].yzxx, TEMP[2].zxyy, -TEMP[6].xyzz
 27: MOV TEMP[6].xy, IN[3].xyxx
 28: MOV TEMP[2].w, TEMP[5].xxxx
 29: MOV TEMP[5].xy, TEMP[5].yzyy
 30: MOV TEMP[5].zw, TEMP[1].yyxy
 31: MOV TEMP[1].x, TEMP[1].zzzz
 32: MAD TEMP[7].xy, IN[0].xzzz, CONST[7].xxxx, CONST[7].yyyy
 33: MOV TEMP[6].zw, TEMP[7].yyxy
 34: MOV TEMP[1].yzw, IN[1].yxyz
 35: MOV TEMP[7].xyz, IN[0].xyzx
 36: MOV OUT[3], TEMP[6]
 37: MOV OUT[1], TEMP[3]
 38: MOV OUT[6], TEMP[1]
 39: MOV OUT[4], TEMP[2]
 40: MOV OUT[2], TEMP[4]
 41: MOV OUT[0], TEMP[0]
 42: MOV OUT[7], TEMP[7]
 43: MOV OUT[5], TEMP[5]
 44: END

VERT
0000: 07801003 39000800 000004d0 00000000  MUL t0, u0, t9.xxxx, void
0001: 07801002 39001800 00aa04d0 00390008  MAD t0, u1, t9.yyyy, t0
0002: 07801002 39002800 015404d0 00390008  MAD t0, u2, t9.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0004: 03811003 29001800 01480340 00000002  MUL t1.xyz_, t1.xyzz, u6.xyzz, void
0005: 07821003 39008800 000004d0 00000000  MUL t2, u8, t9.xxxx, void
0006: 07821002 39009800 00aa04d0 00390028  MAD t2, u9, t9.yyyy, t2
0007: 07821002 3900a800 015404d0 00390028  MAD t2, u10, t9.zzzz, t2
0008: 07821001 39002800 00000000 203900b8  ADD t2, t2, void, u11
0009: 06031009 00000000 00000000 003bc028  MOV t3.__zw, void, void, t2.wwzw
0010: 01831003 15002800 00a80640 00000002  MUL t3.xy__, t2.xyyy, u12.xyyy, void
0011: 03821003 29008800 00000440 00000000  MUL t2.xyz_, t8.xyzz, t8.xxxx, void
0012: 03821001 1500d800 00000010 00690028  ADD t2.xyz_, u13.xyyy, void, -t2.xyzz
0013: 00841005 29002800 01480140 00000000  DP3 t4.x___, t2.xyzz, t2.xyzz, void
0014: 0084100d 00000000 00000000 00000048  RSQ t4.x___, void, void, t4.xxxx
0015: 03821003 29002800 00000240 00000000  MUL t2.xyz_, t2.xyzz, t4.xxxx, void
0016: 04041009 00000000 00000000 202a80d8  MOV t4.___w, void, void, u13.zzzz
0017: 03841009 00000000 00000000 00090028  MOV t4.xyz_, void, void, t2.xyzx
0018: 03851001 29004800 00000010 00690098  ADD t5.xyz_, u4.xyzz, void, -t9.xyzz
0019: 00861005 29005800 014802c0 00000000  DP3 t6.x___, t5.xyzz, t5.xyzz, void
0020: 0086100d 00000000 00000000 00000068  RSQ t6.x___, void, void, t6.xxxx
0021: 03851002 29005800 00000340 20690058  MAD t5.xyz_, t5.xyzz, t6.xxxx, -u5.xyzz
0022: 00861005 29005800 014802c0 00000000  DP3 t6.x___, t5.xyzz, t5.xyzz, void
0023: 0086100d 00000000 00000000 00000068  RSQ t6.x___, void, void, t6.xxxx
0024: 03851003 29005800 00000340 00000000  MUL t5.xyz_, t5.xyzz, t6.xxxx, void
0025: 03861003 14808800 00120140 00000000  MUL t6.xyz_, t8.zxyy, t2.yzxx, void
0026: 03821002 02408800 00a40140 00690068  MAD t2.xyz_, t8.yzxx, t2.zxyy, -t6.xyzz
0027: 01861009 00000000 00000000 00010078  MOV t6.xy__, void, void, t7.xyxx
0028: 04021009 00000000 00000000 00000058  MOV t2.___w, void, void, t5.xxxx
0029: 01851009 00000000 00000000 00164058  MOV t5.xy__, void, void, t5.yzyy
0030: 06051009 00000000 00000000 00114018  MOV t5.__zw, void, void, t1.yyxy
0031: 00811009 00000000 00000000 002a8018  MOV t1.x___, void, void, t1.zzzz
0032: 01871002 2a009800 000003c0 2015407a  MAD t7.xy__, t9.xzzz, u7.xxxx, u7.yyyy
0033: 06061009 00000000 00000000 00114078  MOV t6.__zw, void, void, t7.yyxy
0034: 07011009 00000000 00000000 00244088  MOV t1._yzw, void, void, t8.yxyz
0035: 03871009 00000000 00000000 00090098  MOV t7.xyz_, void, void, t9.xyzx
num loops: 0
num temps: 10
num const: 52
immediates:
 [13].x = 1.000000 (0x3f800000)
 [13].y = 0.000000 (0x00000000)
 [13].z = -1.000000 (0xbf800000)
 [13].w = 0.000000 (0x00000000)
inputs:
 [9] name=POSITION index=0 comps=3
 [8] name=POSITION index=0 comps=3
 [1] name=POSITION index=0 comps=3
 [7] name=POSITION index=0 comps=2
outputs:
 [3] name=GENERIC index=9 comps=4
 [4] name=GENERIC index=10 comps=4
 [6] name=GENERIC index=11 comps=4
 [2] name=GENERIC index=12 comps=4
 [5] name=GENERIC index=13 comps=4
 [1] name=GENERIC index=14 comps=4
 [7] name=GENERIC index=15 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f060b
  input_count_unk8=0x00000001
