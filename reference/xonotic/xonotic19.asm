VERT
DCL IN[0]
DCL IN[1]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[0]
DCL CONST[0..7]
DCL TEMP[0]
  0: MUL TEMP[0], IN[0].xxxx, CONST[0]
  1: MAD TEMP[0], IN[0].yyyy, CONST[1], TEMP[0]
  2: MAD TEMP[0], IN[0].zzzz, CONST[2], TEMP[0]
  3: MAD OUT[0], IN[0].wwww, CONST[3], TEMP[0]
  4: MUL TEMP[0], IN[1].xxxx, CONST[4]
  5: MAD TEMP[0], IN[1].yyyy, CONST[5], TEMP[0]
  6: MAD TEMP[0], IN[1].zzzz, CONST[6], TEMP[0]
  7: MAD OUT[1], IN[1].wwww, CONST[7], TEMP[0]
  8: END

VERT
0000: 07801003 00001800 01c80040 00000002  MUL t0, t1.xxxx, u0, void
0001: 07801002 15401800 01c800c0 0039000a  MAD t0, t1.yyyy, u1, t0
0002: 07801002 2a801800 01c80140 0039000a  MAD t0, t1.zzzz, u2, t0
0003: 07831002 3fc01800 01c801c0 0039000a  MAD t3, t1.wwww, u3, t0
0004: 07801003 00002800 01c80240 00000002  MUL t0, t2.xxxx, u4, void
0005: 07801002 15402800 01c802c0 0039000a  MAD t0, t2.yyyy, u5, t0
0006: 07801002 2a802800 01c80340 0039000a  MAD t0, t2.zzzz, u6, t0
0007: 07841002 3fc02800 01c803c0 0039000a  MAD t4, t2.wwww, u7, t0
num loops: 0
num temps: 5
num const: 32
immediates:
inputs:
 [1] name=POSITION index=0 comps=4
 [2] name=POSITION index=0 comps=4
outputs:
 [4] name=GENERIC index=0 comps=4
special:
  vs_pos_out_reg=3
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
