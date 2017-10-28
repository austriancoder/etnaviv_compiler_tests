VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL IN[3]
DCL IN[4]
DCL IN[5]
DCL IN[6]
DCL OUT[0], POSITION
DCL OUT[1], COLOR
DCL OUT[2], GENERIC[0]
DCL CONST[0..7]
DCL TEMP[0..2]
  0: MUL TEMP[0], IN[0].xxxx, CONST[0]
  1: MAD TEMP[0], IN[0].yyyy, CONST[1], TEMP[0]
  2: MAD TEMP[0], IN[0].zzzz, CONST[2], TEMP[0]
  3: MAD OUT[0], IN[0].wwww, CONST[3], TEMP[0]
  4: DP3 TEMP[0].x, IN[1], CONST[4]
  5: DP3 TEMP[0].y, IN[1], CONST[5]
  6: DP3 TEMP[0].z, IN[1], CONST[6]
  7: MOV TEMP[1].w, IN[6].xxxx
  8: MOV TEMP[2], IN[2]
  9: MAD TEMP[2].xyz, CONST[7], IN[4], IN[5]
 10: MOV_SAT OUT[1], TEMP[2]
 11: MOV OUT[2], IN[3]
 12: END

VERT
0000: 07801003 00001800 01c80040 00000002  MUL t0, t1.xxxx, u0, void
0001: 07801002 15401800 01c800c0 0039000a  MAD t0, t1.yyyy, u1, t0
0002: 07801002 2a801800 01c80140 0039000a  MAD t0, t1.zzzz, u2, t0
0003: 07881002 3fc01800 01c801c0 0039000a  MAD t8, t1.wwww, u3, t0
0004: 00801005 39002800 01c80240 00000002  DP3 t0.x___, t2, u4, void
0005: 01001005 39002800 01c802c0 00000002  DP3 t0._y__, t2, u5, void
0006: 02001005 39002800 01c80340 00000002  DP3 t0.__z_, t2, u6, void
0007: 04011009 00000000 00000000 00000048  MOV t1.___w, void, void, t4.xxxx
0008: 07821009 00000000 00000000 00390058  MOV t2, void, void, t5
0009: 03821002 39007800 01c80350 00390078  MAD t2.xyz_, u7, t6, t7
0010: 07891809 00000000 00000000 00390028  MOV.SAT t9, void, void, t2
num loops: 0
num temps: 10
num const: 32
immediates:
inputs:
 [1] name=POSITION index=0 comps=4
 [2] name=POSITION index=0 comps=3
 [5] name=POSITION index=0 comps=4
 [3] name=POSITION index=0 comps=4
 [6] name=POSITION index=0 comps=3
 [7] name=POSITION index=0 comps=3
 [4] name=POSITION index=0 comps=1
outputs:
 [9] name=COLOR index=0 comps=4
 [3] name=GENERIC index=0 comps=4
special:
  vs_pos_out_reg=8
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0512
  input_count_unk8=0x00000001
