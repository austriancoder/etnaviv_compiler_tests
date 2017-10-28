VERT
DCL IN[0]
DCL IN[1]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL CONST[0..3]
DCL TEMP[0..1], LOCAL
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: ADD TEMP[0], TEMP[0], CONST[3]
  3: MOV TEMP[1].xyz, IN[1].xyzx
  4: MOV OUT[1], TEMP[1]
  5: MOV OUT[0], TEMP[0]
  6: END

VERT
0000: 07801003 39000800 000000d0 00000000  MUL t0, u0, t1.xxxx, void
0001: 07801002 39001800 00aa00d0 00390008  MAD t0, u1, t1.yyyy, t0
0002: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0003: 03811009 00000000 00000000 00090028  MOV t1.xyz_, void, void, t2.xyzx
num loops: 0
num temps: 3
num const: 16
immediates:
inputs:
 [1] name=POSITION index=0 comps=2
 [2] name=POSITION index=0 comps=3
outputs:
 [1] name=GENERIC index=9 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
