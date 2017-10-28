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
DCL CONST[0..10]
DCL TEMP[0..5], LOCAL
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[2], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[3]
  4: MUL TEMP[1], CONST[6], IN[0].xxxx
  5: MAD TEMP[1], CONST[7], IN[0].yyyy, TEMP[1]
  6: MAD TEMP[1], CONST[8], IN[0].zzzz, TEMP[1]
  7: ADD TEMP[1], TEMP[1], CONST[9]
  8: MOV TEMP[2].zw, TEMP[1].wwzw
  9: MUL TEMP[2].xy, TEMP[1].xyyy, CONST[10].xyyy
 10: MOV TEMP[1].xy, IN[3].xyxx
 11: MUL TEMP[3].xyz, IN[2].xyzz, CONST[4].xyzz
 12: MAD TEMP[4].xy, IN[0].xzzz, CONST[5].xxxx, CONST[5].yyyy
 13: MOV TEMP[1].zw, TEMP[4].yyxy
 14: MOV TEMP[3].w, IN[1].xxxx
 15: MOV TEMP[4].xy, IN[1].yzyy
 16: MOV TEMP[4].zw, IN[0].yyxy
 17: MOV TEMP[5].x, IN[0].zzzz
 18: MOV OUT[2], TEMP[1]
 19: MOV OUT[1], TEMP[2]
 20: MOV OUT[3], TEMP[3]
 21: MOV OUT[5], TEMP[5]
 22: MOV OUT[4], TEMP[4]
 23: MOV OUT[0], TEMP[0]
 24: END

VERT
0000: 07801003 39000800 00000350 00000000  MUL t0, u0, t6.xxxx, void
0001: 07801002 39001800 00aa0350 00390008  MAD t0, u1, t6.yyyy, t0
0002: 07801002 39002800 01540350 00390008  MAD t0, u2, t6.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0004: 07811003 39006800 00000350 00000000  MUL t1, u6, t6.xxxx, void
0005: 07811002 39007800 00aa0350 00390018  MAD t1, u7, t6.yyyy, t1
0006: 07811002 39008800 01540350 00390018  MAD t1, u8, t6.zzzz, t1
0007: 07811001 39001800 00000000 20390098  ADD t1, t1, void, u9
0008: 06021009 00000000 00000000 003bc018  MOV t2.__zw, void, void, t1.wwzw
0009: 01821003 15001800 00a80540 00000002  MUL t2.xy__, t1.xyyy, u10.xyyy, void
0010: 01811009 00000000 00000000 00010038  MOV t1.xy__, void, void, t3.xyxx
0011: 03831003 29004800 01480240 00000002  MUL t3.xyz_, t4.xyzz, u4.xyzz, void
0012: 01841002 2a006800 000002c0 2015405a  MAD t4.xy__, t6.xzzz, u5.xxxx, u5.yyyy
0013: 06011009 00000000 00000000 00114048  MOV t1.__zw, void, void, t4.yyxy
0014: 04031009 00000000 00000000 00000058  MOV t3.___w, void, void, t5.xxxx
0015: 01841009 00000000 00000000 00164058  MOV t4.xy__, void, void, t5.yzyy
0016: 06041009 00000000 00000000 00114068  MOV t4.__zw, void, void, t6.yyxy
0017: 00851009 00000000 00000000 002a8068  MOV t5.x___, void, void, t6.zzzz
num loops: 0
num temps: 7
num const: 44
immediates:
inputs:
 [6] name=POSITION index=0 comps=3
 [5] name=POSITION index=0 comps=3
 [4] name=POSITION index=0 comps=3
 [3] name=POSITION index=0 comps=2
outputs:
 [2] name=GENERIC index=9 comps=4
 [1] name=GENERIC index=10 comps=4
 [3] name=GENERIC index=11 comps=4
 [4] name=GENERIC index=12 comps=4
 [5] name=GENERIC index=13 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f050d
  input_count_unk8=0x00000001
