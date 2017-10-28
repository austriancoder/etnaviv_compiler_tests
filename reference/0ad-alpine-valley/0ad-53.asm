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
DCL OUT[6], GENERIC[14]
DCL OUT[7], GENERIC[15]
DCL CONST[0..12]
DCL TEMP[0..7], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,    -1.0000,     0.0000}
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[2], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[3]
  4: MUL TEMP[1], CONST[8], IN[0].xxxx
  5: MAD TEMP[1], CONST[9], IN[0].yyyy, TEMP[1]
  6: MAD TEMP[1], CONST[10], IN[0].zzzz, TEMP[1]
  7: ADD TEMP[1], TEMP[1], CONST[11]
  8: MOV TEMP[2].zw, TEMP[1].wwzw
  9: MUL TEMP[2].xy, TEMP[1].xyyy, CONST[12].xyyy
 10: MUL TEMP[1].xyz, IN[1].xyzz, IN[1].xxxx
 11: ADD TEMP[1].xyz, IMM[0].xyyy, -TEMP[1].xyzz
 12: DP3 TEMP[3].x, TEMP[1].xyzz, TEMP[1].xyzz
 13: RSQ TEMP[3].x, TEMP[3].xxxx
 14: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[3].xxxx
 15: MOV TEMP[3].w, IMM[0].zzzz
 16: MOV TEMP[3].xyz, TEMP[1].xyzx
 17: MUL TEMP[4].xyz, IN[1].zxyy, TEMP[1].yzxx
 18: MAD TEMP[1].xyz, IN[1].yzxx, TEMP[1].zxyy, -TEMP[4].xyzz
 19: ADD TEMP[4].xyz, CONST[4].xyzz, -IN[0].xyzz
 20: DP3 TEMP[5].x, TEMP[4].xyzz, TEMP[4].xyzz
 21: RSQ TEMP[5].x, TEMP[5].xxxx
 22: MAD TEMP[4].xyz, TEMP[4].xyzz, TEMP[5].xxxx, -CONST[5].xyzz
 23: MOV TEMP[5].zw, TEMP[1].yyxy
 24: MOV TEMP[1].x, TEMP[1].zzzz
 25: DP3 TEMP[6].x, TEMP[4].xyzz, TEMP[4].xyzz
 26: RSQ TEMP[6].x, TEMP[6].xxxx
 27: MUL TEMP[4].xyz, TEMP[4].xyzz, TEMP[6].xxxx
 28: MOV TEMP[1].yzw, TEMP[4].yxyz
 29: MUL TEMP[4].xyz, IN[2].xyzz, CONST[6].xyzz
 30: MAD TEMP[5].xy, IN[0].xzzz, CONST[7].xxxx, CONST[7].yyyy
 31: MOV TEMP[4].w, IN[1].xxxx
 32: MOV TEMP[6].xy, IN[1].yzyy
 33: MOV TEMP[6].zw, IN[0].yyxy
 34: MOV TEMP[7].x, IN[0].zzzz
 35: MOV OUT[1], TEMP[2]
 36: MOV OUT[5], TEMP[4]
 37: MOV OUT[7], TEMP[7]
 38: MOV OUT[3], TEMP[5]
 39: MOV OUT[6], TEMP[6]
 40: MOV OUT[2], TEMP[3]
 41: MOV OUT[4], TEMP[1]
 42: MOV OUT[0], TEMP[0]
 43: END

VERT
0000: 07801003 39000800 000004d0 00000000  MUL t0, u0, t9.xxxx, void
0001: 07801002 39001800 00aa04d0 00390008  MAD t0, u1, t9.yyyy, t0
0002: 07801002 39002800 015404d0 00390008  MAD t0, u2, t9.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0004: 07811003 39008800 000004d0 00000000  MUL t1, u8, t9.xxxx, void
0005: 07811002 39009800 00aa04d0 00390018  MAD t1, u9, t9.yyyy, t1
0006: 07811002 3900a800 015404d0 00390018  MAD t1, u10, t9.zzzz, t1
0007: 07811001 39001800 00000000 203900b8  ADD t1, t1, void, u11
0008: 06021009 00000000 00000000 003bc018  MOV t2.__zw, void, void, t1.wwzw
0009: 01821003 15001800 00a80640 00000002  MUL t2.xy__, t1.xyyy, u12.xyyy, void
0010: 03811003 29008800 00000440 00000000  MUL t1.xyz_, t8.xyzz, t8.xxxx, void
0011: 03811001 1500d800 00000010 00690018  ADD t1.xyz_, u13.xyyy, void, -t1.xyzz
0012: 00831005 29001800 014800c0 00000000  DP3 t3.x___, t1.xyzz, t1.xyzz, void
0013: 0083100d 00000000 00000000 00000038  RSQ t3.x___, void, void, t3.xxxx
0014: 03811003 29001800 000001c0 00000000  MUL t1.xyz_, t1.xyzz, t3.xxxx, void
0015: 04031009 00000000 00000000 202a80d8  MOV t3.___w, void, void, u13.zzzz
0016: 03831009 00000000 00000000 00090018  MOV t3.xyz_, void, void, t1.xyzx
0017: 03841003 14808800 001200c0 00000000  MUL t4.xyz_, t8.zxyy, t1.yzxx, void
0018: 03811002 02408800 00a400c0 00690048  MAD t1.xyz_, t8.yzxx, t1.zxyy, -t4.xyzz
0019: 03841001 29004800 00000010 00690098  ADD t4.xyz_, u4.xyzz, void, -t9.xyzz
0020: 00851005 29004800 01480240 00000000  DP3 t5.x___, t4.xyzz, t4.xyzz, void
0021: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0022: 03841002 29004800 000002c0 20690058  MAD t4.xyz_, t4.xyzz, t5.xxxx, -u5.xyzz
0023: 06051009 00000000 00000000 00114018  MOV t5.__zw, void, void, t1.yyxy
0024: 00811009 00000000 00000000 002a8018  MOV t1.x___, void, void, t1.zzzz
0025: 00861005 29004800 01480240 00000000  DP3 t6.x___, t4.xyzz, t4.xyzz, void
0026: 0086100d 00000000 00000000 00000068  RSQ t6.x___, void, void, t6.xxxx
0027: 03841003 29004800 00000340 00000000  MUL t4.xyz_, t4.xyzz, t6.xxxx, void
0028: 07011009 00000000 00000000 00244048  MOV t1._yzw, void, void, t4.yxyz
0029: 03841003 29007800 01480340 00000002  MUL t4.xyz_, t7.xyzz, u6.xyzz, void
0030: 01851002 2a009800 000003c0 2015407a  MAD t5.xy__, t9.xzzz, u7.xxxx, u7.yyyy
0031: 04041009 00000000 00000000 00000088  MOV t4.___w, void, void, t8.xxxx
0032: 01861009 00000000 00000000 00164088  MOV t6.xy__, void, void, t8.yzyy
0033: 06061009 00000000 00000000 00114098  MOV t6.__zw, void, void, t9.yyxy
0034: 00871009 00000000 00000000 002a8098  MOV t7.x___, void, void, t9.zzzz
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
 [7] name=POSITION index=0 comps=3
outputs:
 [2] name=GENERIC index=9 comps=4
 [3] name=GENERIC index=10 comps=4
 [5] name=GENERIC index=11 comps=4
 [1] name=GENERIC index=12 comps=4
 [4] name=GENERIC index=13 comps=4
 [6] name=GENERIC index=14 comps=4
 [7] name=GENERIC index=15 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f060b
  input_count_unk8=0x00000001
