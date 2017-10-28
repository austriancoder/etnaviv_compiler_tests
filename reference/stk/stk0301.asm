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
  4: MOV_SAT OUT[1], IN[1]
  5: END


VERT
0000: 07801003 00001800 01c80040 00000002  MUL t0, t1.xxxx, u0, void
0001: 07801002 15401800 01c800c0 0039000a  MAD t0, t1.yyyy, u1, t0
0002: 07801002 2a801800 01c80140 0039000a  MAD t0, t1.zzzz, u2, t0
0003: 07801002 3fc01800 01c801c0 0039000a  MAD t0, t1.wwww, u3, t0
0004: 07831809 00000000 00000000 00390028  MOV.SAT t3, void, void, t2
num loops: 0
num temps: 4
num const: 16
immediates:
inputs:
 [1] name=POSITION index=0 comps=4
 [2] name=POSITION index=0 comps=4
outputs:
 [3] name=COLOR index=0 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
