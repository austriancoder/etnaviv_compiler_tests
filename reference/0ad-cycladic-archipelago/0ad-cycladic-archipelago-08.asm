VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL CONST[0..8]
DCL TEMP[0], LOCAL
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[2], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[3]
  4: MOV OUT[0], TEMP[0]
  5: END

VERT
0000: 07801003 39000800 000000d0 00000000  MUL t0, u0, t1.xxxx, void
0001: 07801002 39001800 00aa00d0 00390008  MAD t0, u1, t1.yyyy, t0
0002: 07801002 39002800 015400d0 00390008  MAD t0, u2, t1.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
num loops: 0
num temps: 2
num const: 36
immediates:
inputs:
 [1] name=POSITION index=0 comps=3
outputs:
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
