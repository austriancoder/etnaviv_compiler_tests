VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], COLOR
DCL OUT[2], GENERIC[0]
DCL OUT[3], GENERIC[1]
DCL CONST[0..4]
  0: DP4 OUT[0].x, CONST[0], IN[0]
  1: DP4 OUT[0].y, CONST[1], IN[0]
  2: DP4 OUT[0].z, CONST[2], IN[0]
  3: DP4 OUT[0].w, CONST[3], IN[0]
  4: MOV OUT[2], IN[2]
  5: MAD OUT[3], IN[0].xzzz, CONST[4].xxxx, CONST[4].yyyy
  6: MOV_SAT OUT[1], IN[1]
  7: END

VERT
0000: 00831006 39000800 01c800d0 00000000  DP4 t3.x___, u0, t1, void
0001: 01031006 39001800 01c800d0 00000000  DP4 t3._y__, u1, t1, void
0002: 02031006 39002800 01c800d0 00000000  DP4 t3.__z_, u2, t1, void
0003: 04031006 39003800 01c800d0 00000000  DP4 t3.___w, u3, t1, void
0004: 07841002 2a001800 00000240 2015404a  MAD t4, t1.xzzz, u4.xxxx, u4.yyyy
0005: 07851809 00000000 00000000 00390028  MOV.SAT t5, void, void, t2
num loops: 0
num temps: 6
num const: 20
immediates:
inputs:
 [1] name=POSITION index=0 comps=4
 [2] name=POSITION index=0 comps=4
 [0] name=POSITION index=0 comps=4
outputs:
 [5] name=COLOR index=0 comps=4
 [0] name=GENERIC index=0 comps=4
 [4] name=GENERIC index=1 comps=4
special:
  vs_pos_out_reg=3
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0512
  input_count_unk8=0x00000001
