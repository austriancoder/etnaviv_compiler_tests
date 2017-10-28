VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL CONST[0..10]
DCL TEMP[0..3], LOCAL
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
 10: MUL TEMP[1].xyz, IN[1].xyzz, CONST[4].xyzz
 11: MAD TEMP[3].xy, IN[0].xzzz, CONST[5].xxxx, CONST[5].yyyy
 12: MOV TEMP[3].zw, IN[2].yyxy
 13: MOV OUT[1], TEMP[2]
 14: MOV OUT[3], TEMP[1]
 15: MOV OUT[2], TEMP[3]
 16: MOV OUT[0], TEMP[0]
 17: END

VERT
0000: 07801003 39000800 00000250 00000000  MUL t0, u0, t4.xxxx, void
0001: 07801002 39001800 00aa0250 00390008  MAD t0, u1, t4.yyyy, t0
0002: 07801002 39002800 01540250 00390008  MAD t0, u2, t4.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0004: 07811003 39006800 00000250 00000000  MUL t1, u6, t4.xxxx, void
0005: 07811002 39007800 00aa0250 00390018  MAD t1, u7, t4.yyyy, t1
0006: 07811002 39008800 01540250 00390018  MAD t1, u8, t4.zzzz, t1
0007: 07811001 39001800 00000000 20390098  ADD t1, t1, void, u9
0008: 06021009 00000000 00000000 003bc018  MOV t2.__zw, void, void, t1.wwzw
0009: 01821003 15001800 00a80540 00000002  MUL t2.xy__, t1.xyyy, u10.xyyy, void
0010: 03811003 29003800 01480240 00000002  MUL t1.xyz_, t3.xyzz, u4.xyzz, void
0011: 01831002 2a004800 000002c0 2015405a  MAD t3.xy__, t4.xzzz, u5.xxxx, u5.yyyy
0012: 06031009 00000000 00000000 00114058  MOV t3.__zw, void, void, t5.yyxy
num loops: 0
num temps: 6
num const: 44
immediates:
inputs:
 [4] name=POSITION index=0 comps=3
 [3] name=POSITION index=0 comps=3
 [5] name=POSITION index=0 comps=2
outputs:
 [2] name=GENERIC index=9 comps=4
 [3] name=GENERIC index=10 comps=4
 [1] name=GENERIC index=11 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0512
  input_count_unk8=0x00000001
