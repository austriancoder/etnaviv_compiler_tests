VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL CONST[0..15]
DCL TEMP[0..3], LOCAL
  0: MUL TEMP[0], CONST[12], IN[1].xxxx
  1: MAD TEMP[0], CONST[13], IN[1].yyyy, TEMP[0]
  2: MAD TEMP[0].xyz, CONST[14], IN[1].zzzz, TEMP[0]
  3: MUL TEMP[1], CONST[0], IN[0].xxxx
  4: MAD TEMP[1], CONST[1], IN[0].yyyy, TEMP[1]
  5: MAD TEMP[1], CONST[2], IN[0].zzzz, TEMP[1]
  6: MAD TEMP[1], CONST[3], IN[0].wwww, TEMP[1]
  7: MOV TEMP[2].zw, TEMP[0].yyxy
  8: MOV TEMP[0].x, TEMP[0].zzzz
  9: MOV TEMP[2].xy, IN[2].xyxx
 10: MUL TEMP[3], CONST[4], IN[0].xxxx
 11: MAD TEMP[3], CONST[5], IN[0].yyyy, TEMP[3]
 12: MAD TEMP[3], CONST[6], IN[0].zzzz, TEMP[3]
 13: MAD TEMP[3], CONST[7], IN[0].wwww, TEMP[3]
 14: ADD TEMP[3].xyz, CONST[11], -TEMP[3]
 15: MOV TEMP[0].yzw, TEMP[3].yxyz
 16: MOV OUT[1], TEMP[2]
 17: MOV OUT[0], TEMP[1]
 18: MOV OUT[2], TEMP[0]
 19: END

VERT
0000: 07801003 3900c800 000000d0 00000000  MUL t0, u12, t1.xxxx, void
0001: 07801002 3900d800 00aa00d0 00390008  MAD t0, u13, t1.yyyy, t0
0002: 03801002 3900e800 015400d0 00390008  MAD t0.xyz_, u14, t1.zzzz, t0
0003: 07811003 39000800 00000250 00000000  MUL t1, u0, t4.xxxx, void
0004: 07811002 39001800 00aa0250 00390018  MAD t1, u1, t4.yyyy, t1
0005: 07811002 39002800 01540250 00390018  MAD t1, u2, t4.zzzz, t1
0006: 07811002 39003800 01fe0250 00390018  MAD t1, u3, t4.wwww, t1
0007: 06021009 00000000 00000000 00114008  MOV t2.__zw, void, void, t0.yyxy
0008: 00801009 00000000 00000000 002a8008  MOV t0.x___, void, void, t0.zzzz
0009: 01821009 00000000 00000000 00010038  MOV t2.xy__, void, void, t3.xyxx
0010: 07831003 39004800 00000250 00000000  MUL t3, u4, t4.xxxx, void
0011: 07831002 39005800 00aa0250 00390038  MAD t3, u5, t4.yyyy, t3
0012: 07831002 39006800 01540250 00390038  MAD t3, u6, t4.zzzz, t3
0013: 07831002 39007800 01fe0250 00390038  MAD t3, u7, t4.wwww, t3
0014: 03831001 3900b800 00000010 00790038  ADD t3.xyz_, u11, void, -t3
0015: 07001009 00000000 00000000 00244038  MOV t0._yzw, void, void, t3.yxyz
num loops: 0
num temps: 5
num const: 64
immediates:
inputs:
 [4] name=POSITION index=0 comps=4
 [1] name=POSITION index=0 comps=3
 [3] name=POSITION index=0 comps=2
outputs:
 [2] name=GENERIC index=9 comps=4
 [0] name=GENERIC index=10 comps=4
special:
  vs_pos_out_reg=1
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0512
  input_count_unk8=0x00000001
