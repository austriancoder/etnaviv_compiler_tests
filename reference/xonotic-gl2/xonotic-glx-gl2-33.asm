
VERT
DCL IN[0]
DCL IN[1]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[20]
DCL CONST[0..7]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].zw, IMM[0].xxxx
  1: MUL TEMP[1], CONST[4], IN[1].xxxx
  2: MAD TEMP[1], CONST[5], IN[1].yyyy, TEMP[1]
  3: MAD TEMP[1], CONST[6], IN[1].zzzz, TEMP[1]
  4: MAD TEMP[1].xy, CONST[7], IN[1].wwww, TEMP[1]
  5: MOV TEMP[0].xy, TEMP[1].xyxx
  6: MUL TEMP[1], CONST[0], IN[0].xxxx
  7: MAD TEMP[1], CONST[1], IN[0].yyyy, TEMP[1]
  8: MAD TEMP[1], CONST[2], IN[0].zzzz, TEMP[1]
  9: MAD TEMP[1], CONST[3], IN[0].wwww, TEMP[1]
 10: MOV OUT[0], TEMP[1]
 11: MOV OUT[1], TEMP[0]
 12: END

VERT
0000: 06001009 00000000 00000000 20000088  MOV t0.__zw, void, void, u8.xxxx
0001: 07811003 39004800 00000150 00000000  MUL t1, u4, t2.xxxx, void
0002: 07811002 39005800 00aa0150 00390018  MAD t1, u5, t2.yyyy, t1
0003: 07811002 39006800 01540150 00390018  MAD t1, u6, t2.zzzz, t1
0004: 01811002 39007800 01fe0150 00390018  MAD t1.xy__, u7, t2.wwww, t1
0005: 01801009 00000000 00000000 00010018  MOV t0.xy__, void, void, t1.xyxx
0006: 07811003 39000800 000001d0 00000000  MUL t1, u0, t3.xxxx, void
0007: 07811002 39001800 00aa01d0 00390018  MAD t1, u1, t3.yyyy, t1
0008: 07811002 39002800 015401d0 00390018  MAD t1, u2, t3.zzzz, t1
0009: 07811002 39003800 01fe01d0 00390018  MAD t1, u3, t3.wwww, t1
num loops: 0
num temps: 4
num const: 32
immediates:
 [8].x = 0.000000 (0x00000000)
 [8].y = 0.000000 (0x00000000)
 [8].z = 0.000000 (0x00000000)
 [8].w = 0.000000 (0x00000000)
inputs:
 [3] name=POSITION index=0 comps=4
 [2] name=POSITION index=0 comps=4
outputs:
 [0] name=GENERIC index=20 comps=4
special:
  vs_pos_out_reg=1
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
