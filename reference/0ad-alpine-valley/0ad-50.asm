VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL OUT[4], GENERIC[12]
DCL CONST[0..10]
DCL TEMP[0..4], LOCAL
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[2], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[3]
  4: MUL TEMP[1].xyz, IN[2].xyzz, CONST[4].xyzz
  5: MUL TEMP[2], CONST[6], IN[0].xxxx
  6: MAD TEMP[2], CONST[7], IN[0].yyyy, TEMP[2]
  7: MAD TEMP[2], CONST[8], IN[0].zzzz, TEMP[2]
  8: ADD TEMP[2], TEMP[2], CONST[9]
  9: MOV TEMP[3].zw, TEMP[2].wwzw
 10: MUL TEMP[3].xy, TEMP[2].xyyy, CONST[10].xyyy
 11: MOV TEMP[2].zw, TEMP[1].yyxy
 12: MOV TEMP[1].x, TEMP[1].zzzz
 13: MAD TEMP[2].xy, IN[0].xzzz, CONST[5].xxxx, CONST[5].yyyy
 14: MOV TEMP[1].yzw, IN[1].yxyz
 15: MOV TEMP[4].xyz, IN[0].xyzx
 16: MOV OUT[2], TEMP[2]
 17: MOV OUT[1], TEMP[3]
 18: MOV OUT[3], TEMP[1]
 19: MOV OUT[0], TEMP[0]
 20: MOV OUT[4], TEMP[4]
 21: END

VERT
0000: 07801003 39000800 000002d0 00000000  MUL t0, u0, t5.xxxx, void
0001: 07801002 39001800 00aa02d0 00390008  MAD t0, u1, t5.yyyy, t0
0002: 07801002 39002800 015402d0 00390008  MAD t0, u2, t5.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0004: 03811003 29001800 01480240 00000002  MUL t1.xyz_, t1.xyzz, u4.xyzz, void
0005: 07821003 39006800 000002d0 00000000  MUL t2, u6, t5.xxxx, void
0006: 07821002 39007800 00aa02d0 00390028  MAD t2, u7, t5.yyyy, t2
0007: 07821002 39008800 015402d0 00390028  MAD t2, u8, t5.zzzz, t2
0008: 07821001 39002800 00000000 20390098  ADD t2, t2, void, u9
0009: 06031009 00000000 00000000 003bc028  MOV t3.__zw, void, void, t2.wwzw
0010: 01831003 15002800 00a80540 00000002  MUL t3.xy__, t2.xyyy, u10.xyyy, void
0011: 06021009 00000000 00000000 00114018  MOV t2.__zw, void, void, t1.yyxy
0012: 00811009 00000000 00000000 002a8018  MOV t1.x___, void, void, t1.zzzz
0013: 01821002 2a005800 000002c0 2015405a  MAD t2.xy__, t5.xzzz, u5.xxxx, u5.yyyy
0014: 07011009 00000000 00000000 00244048  MOV t1._yzw, void, void, t4.yxyz
0015: 03841009 00000000 00000000 00090058  MOV t4.xyz_, void, void, t5.xyzx
num loops: 0
num temps: 6
num const: 44
immediates:
inputs:
 [5] name=POSITION index=0 comps=3
 [4] name=POSITION index=0 comps=3
 [1] name=POSITION index=0 comps=3
outputs:
 [3] name=GENERIC index=9 comps=4
 [2] name=GENERIC index=10 comps=4
 [1] name=GENERIC index=11 comps=4
 [4] name=GENERIC index=12 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f050d
  input_count_unk8=0x00000001
