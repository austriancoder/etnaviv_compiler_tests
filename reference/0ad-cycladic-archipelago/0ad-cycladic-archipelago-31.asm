VERT
DCL IN[0]
DCL IN[1]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL CONST[0..11]
DCL TEMP[0..4], LOCAL
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[2], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[3]
  4: MOV TEMP[1].x, -CONST[5].yyyy
  5: MUL TEMP[2].x, IN[0].xxxx, CONST[5].xxxx
  6: MAD TEMP[2].x, IN[0].zzzz, -TEMP[1].xxxx, TEMP[2].xxxx
  7: MUL TEMP[1].x, IN[0].xxxx, -TEMP[1].xxxx
  8: MAD TEMP[1].x, IN[0].zzzz, -CONST[5].xxxx, TEMP[1].xxxx
  9: MOV TEMP[2].y, TEMP[1].xxxx
 10: MUL TEMP[1], CONST[7], IN[0].xxxx
 11: MAD TEMP[1], CONST[8], IN[0].yyyy, TEMP[1]
 12: MAD TEMP[1], CONST[9], IN[0].zzzz, TEMP[1]
 13: ADD TEMP[1], TEMP[1], CONST[10]
 14: MOV TEMP[3].zw, TEMP[1].wwzw
 15: MUL TEMP[3].xy, TEMP[1].xyyy, CONST[11].xyyy
 16: MUL TEMP[1].xyz, IN[1].xyzz, CONST[4].xyzz
 17: MAD TEMP[4].xy, IN[0].xzzz, CONST[6].xxxx, CONST[6].yyyy
 18: MOV TEMP[4].zw, TEMP[2].yyxy
 19: MOV OUT[1], TEMP[3]
 20: MOV OUT[3], TEMP[1]
 21: MOV OUT[2], TEMP[4]
 22: MOV OUT[0], TEMP[0]
 23: END

VERT
0000: 07801003 39000800 000002d0 00000000  MUL t0, u0, t5.xxxx, void
0001: 07801002 39001800 00aa02d0 00390008  MAD t0, u1, t5.yyyy, t0
0002: 07801002 39002800 015402d0 00390008  MAD t0, u2, t5.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0004: 00811009 00000000 00000000 20554058  MOV t1.x___, void, void, -u5.yyyy
0005: 00821003 00005800 000002c0 00000002  MUL t2.x___, t5.xxxx, u5.xxxx, void
0006: 00821002 2a805800 020000c0 00000028  MAD t2.x___, t5.zzzz, -t1.xxxx, t2.xxxx
0007: 00811003 00005800 020000c0 00000000  MUL t1.x___, t5.xxxx, -t1.xxxx, void
0008: 00811002 2a805800 020002c0 0000001a  MAD t1.x___, t5.zzzz, -u5.xxxx, t1.xxxx
0009: 01021009 00000000 00000000 00000018  MOV t2._y__, void, void, t1.xxxx
0010: 07811003 39007800 000002d0 00000000  MUL t1, u7, t5.xxxx, void
0011: 07811002 39008800 00aa02d0 00390018  MAD t1, u8, t5.yyyy, t1
0012: 07811002 39009800 015402d0 00390018  MAD t1, u9, t5.zzzz, t1
0013: 07811001 39001800 00000000 203900a8  ADD t1, t1, void, u10
0014: 06031009 00000000 00000000 003bc018  MOV t3.__zw, void, void, t1.wwzw
0015: 01831003 15001800 00a805c0 00000002  MUL t3.xy__, t1.xyyy, u11.xyyy, void
0016: 03811003 29004800 01480240 00000002  MUL t1.xyz_, t4.xyzz, u4.xyzz, void
0017: 01841002 2a005800 00000340 2015406a  MAD t4.xy__, t5.xzzz, u6.xxxx, u6.yyyy
0018: 06041009 00000000 00000000 00114028  MOV t4.__zw, void, void, t2.yyxy
num loops: 0
num temps: 6
num const: 48
immediates:
inputs:
 [5] name=POSITION index=0 comps=3
 [4] name=POSITION index=0 comps=3
outputs:
 [3] name=GENERIC index=9 comps=4
 [4] name=GENERIC index=10 comps=4
 [1] name=GENERIC index=11 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0512
  input_count_unk8=0x00000001
