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
DCL CONST[0..13]
DCL TEMP[0..8], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,    -1.0000,     0.0000}
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[2], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[3]
  4: MOV TEMP[1].x, -CONST[7].yyyy
  5: MUL TEMP[2].x, IN[0].xxxx, CONST[7].xxxx
  6: MAD TEMP[2].x, IN[0].zzzz, -TEMP[1].xxxx, TEMP[2].xxxx
  7: MUL TEMP[1].x, IN[0].xxxx, -TEMP[1].xxxx
  8: MAD TEMP[1].x, IN[0].zzzz, -CONST[7].xxxx, TEMP[1].xxxx
  9: MOV TEMP[2].y, TEMP[1].xxxx
 10: MUL TEMP[1], CONST[9], IN[0].xxxx
 11: MAD TEMP[1], CONST[10], IN[0].yyyy, TEMP[1]
 12: MAD TEMP[1], CONST[11], IN[0].zzzz, TEMP[1]
 13: ADD TEMP[1], TEMP[1], CONST[12]
 14: MOV TEMP[3].zw, TEMP[1].wwzw
 15: MUL TEMP[3].xy, TEMP[1].xyyy, CONST[13].xyyy
 16: MUL TEMP[1].xyz, IN[1].xyzz, IN[1].xxxx
 17: ADD TEMP[1].xyz, IMM[0].xyyy, -TEMP[1].xyzz
 18: DP3 TEMP[4].x, TEMP[1].xyzz, TEMP[1].xyzz
 19: RSQ TEMP[4].x, TEMP[4].xxxx
 20: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[4].xxxx
 21: MOV TEMP[4].w, IMM[0].zzzz
 22: MOV TEMP[4].xyz, TEMP[1].xyzx
 23: MUL TEMP[5].xyz, IN[1].zxyy, TEMP[1].yzxx
 24: MAD TEMP[1].xyz, IN[1].yzxx, TEMP[1].zxyy, -TEMP[5].xyzz
 25: ADD TEMP[5].xyz, CONST[4].xyzz, -IN[0].xyzz
 26: DP3 TEMP[6].x, TEMP[5].xyzz, TEMP[5].xyzz
 27: RSQ TEMP[6].x, TEMP[6].xxxx
 28: MAD TEMP[5].xyz, TEMP[5].xyzz, TEMP[6].xxxx, -CONST[5].xyzz
 29: MOV TEMP[6].zw, TEMP[1].yyxy
 30: MOV TEMP[1].x, TEMP[1].zzzz
 31: MOV TEMP[7].xy, IN[3].xyxx
 32: DP3 TEMP[8].x, TEMP[5].xyzz, TEMP[5].xyzz
 33: RSQ TEMP[8].x, TEMP[8].xxxx
 34: MUL TEMP[5].xyz, TEMP[5].xyzz, TEMP[8].xxxx
 35: MOV TEMP[1].yzw, TEMP[5].yxyz
 36: MUL TEMP[5].xyz, IN[2].xyzz, CONST[6].xyzz
 37: MAD TEMP[8].xy, IN[0].xzzz, CONST[8].xxxx, CONST[8].yyyy
 38: MOV TEMP[7].zw, TEMP[8].yyxy
 39: MOV TEMP[5].w, IN[1].xxxx
 40: MOV TEMP[8].xy, IN[1].yzyy
 41: MOV TEMP[6].xy, TEMP[2].xyxx
 42: MOV OUT[3], TEMP[7]
 43: MOV OUT[1], TEMP[3]
 44: MOV OUT[6], TEMP[5]
 45: MOV OUT[7], TEMP[8]
 46: MOV OUT[4], TEMP[6]
 47: MOV OUT[2], TEMP[4]
 48: MOV OUT[5], TEMP[1]
 49: MOV OUT[0], TEMP[0]
 50: END

VERT
0000: 07801003 39000800 00000550 00000000  MUL t0, u0, t10.xxxx, void
0001: 07801002 39001800 00aa0550 00390008  MAD t0, u1, t10.yyyy, t0
0002: 07801002 39002800 01540550 00390008  MAD t0, u2, t10.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0004: 00811009 00000000 00000000 20554078  MOV t1.x___, void, void, -u7.yyyy
0005: 00821003 0000a800 000003c0 00000002  MUL t2.x___, t10.xxxx, u7.xxxx, void
0006: 00821002 2a80a800 020000c0 00000028  MAD t2.x___, t10.zzzz, -t1.xxxx, t2.xxxx
0007: 00811003 0000a800 020000c0 00000000  MUL t1.x___, t10.xxxx, -t1.xxxx, void
0008: 00811002 2a80a800 020003c0 0000001a  MAD t1.x___, t10.zzzz, -u7.xxxx, t1.xxxx
0009: 01021009 00000000 00000000 00000018  MOV t2._y__, void, void, t1.xxxx
0010: 07811003 39009800 00000550 00000000  MUL t1, u9, t10.xxxx, void
0011: 07811002 3900a800 00aa0550 00390018  MAD t1, u10, t10.yyyy, t1
0012: 07811002 3900b800 01540550 00390018  MAD t1, u11, t10.zzzz, t1
0013: 07811001 39001800 00000000 203900c8  ADD t1, t1, void, u12
0014: 06031009 00000000 00000000 003bc018  MOV t3.__zw, void, void, t1.wwzw
0015: 01831003 15001800 00a806c0 00000002  MUL t3.xy__, t1.xyyy, u13.xyyy, void
0016: 03811003 2900b800 000005c0 00000000  MUL t1.xyz_, t11.xyzz, t11.xxxx, void
0017: 03811001 1500e800 00000010 00690018  ADD t1.xyz_, u14.xyyy, void, -t1.xyzz
0018: 00841005 29001800 014800c0 00000000  DP3 t4.x___, t1.xyzz, t1.xyzz, void
0019: 0084100d 00000000 00000000 00000048  RSQ t4.x___, void, void, t4.xxxx
0020: 03811003 29001800 00000240 00000000  MUL t1.xyz_, t1.xyzz, t4.xxxx, void
0021: 04041009 00000000 00000000 202a80e8  MOV t4.___w, void, void, u14.zzzz
0022: 03841009 00000000 00000000 00090018  MOV t4.xyz_, void, void, t1.xyzx
0023: 03851003 1480b800 001200c0 00000000  MUL t5.xyz_, t11.zxyy, t1.yzxx, void
0024: 03811002 0240b800 00a400c0 00690058  MAD t1.xyz_, t11.yzxx, t1.zxyy, -t5.xyzz
0025: 03851001 29004800 00000010 006900a8  ADD t5.xyz_, u4.xyzz, void, -t10.xyzz
0026: 00861005 29005800 014802c0 00000000  DP3 t6.x___, t5.xyzz, t5.xyzz, void
0027: 0086100d 00000000 00000000 00000068  RSQ t6.x___, void, void, t6.xxxx
0028: 03851002 29005800 00000340 20690058  MAD t5.xyz_, t5.xyzz, t6.xxxx, -u5.xyzz
0029: 06061009 00000000 00000000 00114018  MOV t6.__zw, void, void, t1.yyxy
0030: 00811009 00000000 00000000 002a8018  MOV t1.x___, void, void, t1.zzzz
0031: 01871009 00000000 00000000 00010078  MOV t7.xy__, void, void, t7.xyxx
0032: 00881005 29005800 014802c0 00000000  DP3 t8.x___, t5.xyzz, t5.xyzz, void
0033: 0088100d 00000000 00000000 00000088  RSQ t8.x___, void, void, t8.xxxx
0034: 03851003 29005800 00000440 00000000  MUL t5.xyz_, t5.xyzz, t8.xxxx, void
0035: 07011009 00000000 00000000 00244058  MOV t1._yzw, void, void, t5.yxyz
0036: 03851003 29009800 01480340 00000002  MUL t5.xyz_, t9.xyzz, u6.xyzz, void
0037: 01881002 2a00a800 00000440 2015408a  MAD t8.xy__, t10.xzzz, u8.xxxx, u8.yyyy
0038: 06071009 00000000 00000000 00114088  MOV t7.__zw, void, void, t8.yyxy
0039: 04051009 00000000 00000000 000000b8  MOV t5.___w, void, void, t11.xxxx
0040: 01881009 00000000 00000000 001640b8  MOV t8.xy__, void, void, t11.yzyy
0041: 01861009 00000000 00000000 00010028  MOV t6.xy__, void, void, t2.xyxx
num loops: 0
num temps: 12
num const: 56
immediates:
 [14].x = 1.000000 (0x3f800000)
 [14].y = 0.000000 (0x00000000)
 [14].z = -1.000000 (0xbf800000)
 [14].w = 0.000000 (0x00000000)
inputs:
 [10] name=POSITION index=0 comps=3
 [11] name=POSITION index=0 comps=3
 [9] name=POSITION index=0 comps=3
 [7] name=POSITION index=0 comps=2
outputs:
 [3] name=GENERIC index=9 comps=4
 [4] name=GENERIC index=10 comps=4
 [7] name=GENERIC index=11 comps=4
 [6] name=GENERIC index=12 comps=4
 [1] name=GENERIC index=13 comps=4
 [5] name=GENERIC index=14 comps=4
 [8] name=GENERIC index=15 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f060b
  input_count_unk8=0x00000001
