VERT
DCL IN[0]
DCL IN[1]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL CONST[0..7]
DCL TEMP[0..1], LOCAL
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[2], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[3]
  4: MUL TEMP[1], CONST[4], IN[1].xxxx
  5: MAD TEMP[1], CONST[5], IN[1].yyyy, TEMP[1]
  6: ADD TEMP[1].xy, TEMP[1], CONST[7]
  7: MOV TEMP[1].xy, TEMP[1].xyxx
  8: MOV OUT[0], TEMP[0]
  9: MOV OUT[1], TEMP[1]
 10: END

VERT
0000: 07801003 39000800 000000d0 00000000  MUL t0, u0, t1.xxxx, void
0001: 07801002 39001800 00aa00d0 00390008  MAD t0, u1, t1.yyyy, t0
0002: 07801002 39002800 015400d0 00390008  MAD t0, u2, t1.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0004: 07811003 39004800 00000150 00000000  MUL t1, u4, t2.xxxx, void
0005: 07811002 39005800 00aa0150 00390018  MAD t1, u5, t2.yyyy, t1
0006: 01811001 39001800 00000000 20390078  ADD t1.xy__, t1, void, u7
0007: 01811009 00000000 00000000 00010018  MOV t1.xy__, void, void, t1.xyxx
num loops: 0
num temps: 3
num const: 32
immediates:
inputs:
 [1] name=POSITION index=0 comps=3
 [2] name=POSITION index=0 comps=2
outputs:
 [1] name=GENERIC index=9 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
