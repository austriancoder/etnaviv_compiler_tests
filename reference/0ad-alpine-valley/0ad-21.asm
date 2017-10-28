VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL CONST[0..12]
DCL TEMP[0..1], LOCAL
  0: MUL TEMP[0], CONST[8], IN[0].xxxx
  1: MAD TEMP[0], CONST[9], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[10], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[11]
  4: MUL TEMP[1], CONST[0], TEMP[0].xxxx
  5: MAD TEMP[1], CONST[1], TEMP[0].yyyy, TEMP[1]
  6: MAD TEMP[1], CONST[2], TEMP[0].zzzz, TEMP[1]
  7: MAD TEMP[0], CONST[3], TEMP[0].wwww, TEMP[1]
  8: MOV OUT[0], TEMP[0]
  9: END

VERT
0000: 07801003 39008800 000000d0 00000000  MUL t0, u8, t1.xxxx, void
0001: 07801002 39009800 00aa00d0 00390008  MAD t0, u9, t1.yyyy, t0
0002: 07801002 3900a800 015400d0 00390008  MAD t0, u10, t1.zzzz, t0
0003: 07801001 39000800 00000000 203900b8  ADD t0, t0, void, u11
0004: 07811003 39000800 00000050 00000000  MUL t1, u0, t0.xxxx, void
0005: 07811002 39001800 00aa0050 00390018  MAD t1, u1, t0.yyyy, t1
0006: 07811002 39002800 01540050 00390018  MAD t1, u2, t0.zzzz, t1
0007: 07801002 39003800 01fe0050 00390018  MAD t0, u3, t0.wwww, t1
num loops: 0
num temps: 2
num const: 52
immediates:
inputs:
 [1] name=POSITION index=0 comps=3
outputs:
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
