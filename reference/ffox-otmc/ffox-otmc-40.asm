VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL CONST[0..16]
DCL TEMP[0..4], LOCAL
  0: MUL TEMP[0], CONST[5], IN[0].xxxx
  1: MAD TEMP[0], CONST[6], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[7], IN[0].zzzz, TEMP[0]
  3: MAD TEMP[0], CONST[8], IN[0].wwww, TEMP[0]
  4: ADD TEMP[1].xyz, CONST[4].xyzz, -TEMP[0].xyzz
  5: MUL TEMP[2], CONST[0], IN[0].xxxx
  6: MAD TEMP[2], CONST[1], IN[0].yyyy, TEMP[2]
  7: MAD TEMP[2], CONST[2], IN[0].zzzz, TEMP[2]
  8: MAD TEMP[2], CONST[3], IN[0].wwww, TEMP[2]
  9: MOV TEMP[3].zw, TEMP[1].yyxy
 10: MOV TEMP[1].x, TEMP[1].zzzz
 11: MUL TEMP[4], CONST[13], IN[1].xxxx
 12: MAD TEMP[4], CONST[14], IN[1].yyyy, TEMP[4]
 13: MAD TEMP[4].xyz, CONST[15], IN[1].zzzz, TEMP[4]
 14: MOV TEMP[1].yzw, TEMP[4].yxyz
 15: MOV TEMP[3].xy, IN[2].xyxx
 16: ADD TEMP[0].xyz, CONST[12], -TEMP[0]
 17: MOV TEMP[0].xyz, TEMP[0].xyzx
 18: MOV OUT[2], TEMP[1]
 19: MOV OUT[1], TEMP[3]
 20: MOV OUT[3], TEMP[0]
 21: MOV OUT[0], TEMP[2]
 22: END

VERT
0000: 07801003 39005800 000001d0 00000000  MUL t0, u5, t3.xxxx, void
0001: 07801002 39006800 00aa01d0 00390008  MAD t0, u6, t3.yyyy, t0
0002: 07801002 39007800 015401d0 00390008  MAD t0, u7, t3.zzzz, t0
0003: 07801002 39008800 01fe01d0 00390008  MAD t0, u8, t3.wwww, t0
0004: 03811001 29004800 00000010 00690008  ADD t1.xyz_, u4.xyzz, void, -t0.xyzz
0005: 07821003 39000800 000001d0 00000000  MUL t2, u0, t3.xxxx, void
0006: 07821002 39001800 00aa01d0 00390028  MAD t2, u1, t3.yyyy, t2
0007: 07821002 39002800 015401d0 00390028  MAD t2, u2, t3.zzzz, t2
0008: 07821002 39003800 01fe01d0 00390028  MAD t2, u3, t3.wwww, t2
0009: 06031009 00000000 00000000 00114018  MOV t3.__zw, void, void, t1.yyxy
0010: 00811009 00000000 00000000 002a8018  MOV t1.x___, void, void, t1.zzzz
0011: 07841003 3900d800 000002d0 00000000  MUL t4, u13, t5.xxxx, void
0012: 07841002 3900e800 00aa02d0 00390048  MAD t4, u14, t5.yyyy, t4
0013: 03841002 3900f800 015402d0 00390048  MAD t4.xyz_, u15, t5.zzzz, t4
0014: 07011009 00000000 00000000 00244048  MOV t1._yzw, void, void, t4.yxyz
0015: 01831009 00000000 00000000 00010068  MOV t3.xy__, void, void, t6.xyxx
0016: 03801001 3900c800 00000010 00790008  ADD t0.xyz_, u12, void, -t0
0017: 03801009 00000000 00000000 00090008  MOV t0.xyz_, void, void, t0.xyzx
num loops: 0
num temps: 7
num const: 68
immediates:
inputs:
 [3] name=POSITION index=0 comps=4
 [5] name=POSITION index=0 comps=3
 [6] name=POSITION index=0 comps=2
outputs:
 [3] name=GENERIC index=9 comps=4
 [1] name=GENERIC index=10 comps=4
 [0] name=GENERIC index=11 comps=4
special:
  vs_pos_out_reg=2
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0512
  input_count_unk8=0x00000001
