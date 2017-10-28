VERT
DCL IN[0]
DCL IN[1]
DCL OUT[0], POSITION
DCL OUT[1], COLOR
DCL CONST[0..3]
DCL TEMP[0]
  0: MUL TEMP[0], IN[0].xxxx, CONST[0]
  1: MAD TEMP[0], IN[0].yyyy, CONST[1], TEMP[0]
  2: MAD TEMP[0], IN[0].zzzz, CONST[2], TEMP[0]
  3: MAD OUT[0], IN[0].wwww, CONST[3], TEMP[0]
  4: MOV OUT[1], IN[1]
  5: END

VERT
0000: 07801003 00002800 01c80040 00000002  MUL t0, t2.xxxx, u0, void
0001: 07801002 15402800 01c800c0 0039000a  MAD t0, t2.yyyy, u1, t0
0002: 07801002 2a802800 01c80140 0039000a  MAD t0, t2.zzzz, u2, t0
0003: 07801002 3fc02800 01c801c0 0039000a  MAD t0, t2.wwww, u3, t0
num loops: 0
num temps: 3
num const: 16
immediates:
inputs:
 [2] name=POSITION index=0 comps=4
 [1] name=POSITION index=0 comps=4
outputs:
 [1] name=COLOR index=0 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
