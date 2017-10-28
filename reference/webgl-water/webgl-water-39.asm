VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[20]
DCL CONST[0..3]
DCL TEMP[0..2], LOCAL
IMM[0] FLT32 {    1.0000,     0.5833,    -1.0000,     0.0000}
  0: MOV TEMP[0].xz, IN[0].xxzx
  1: ADD TEMP[1].x, IMM[0].xxxx, -IN[0].yyyy
  2: MAD TEMP[1].x, TEMP[1].xxxx, IMM[0].yyyy, IMM[0].zzzz
  3: MOV TEMP[0].y, TEMP[1].xxxx
  4: MUL TEMP[2], CONST[0], IN[0].xxxx
  5: MAD TEMP[1], CONST[1], TEMP[1].xxxx, TEMP[2]
  6: MAD TEMP[1], CONST[2], IN[0].zzzz, TEMP[1]
  7: ADD TEMP[1], TEMP[1], CONST[3]
  8: MOV TEMP[0].xyz, TEMP[0].xyzx
  9: MOV OUT[1], TEMP[0]
 10: MOV OUT[0], TEMP[1]
 11: END

VERT
0000: 02801009 00000000 00000000 00080038  MOV t0.x_z_, void, void, t3.xxzx
0001: 00811001 00004800 00000010 00554038  ADD t1.x___, u4.xxxx, void, -t3.yyyy
0002: 00811002 00001800 00aa0240 202a804a  MAD t1.x___, t1.xxxx, u4.yyyy, u4.zzzz
0003: 01001009 00000000 00000000 00000018  MOV t0._y__, void, void, t1.xxxx
0004: 07821003 39000800 000001d0 00000000  MUL t2, u0, t3.xxxx, void
0005: 07811002 39001800 000000d0 00390028  MAD t1, u1, t1.xxxx, t2
0006: 07811002 39002800 015401d0 00390018  MAD t1, u2, t3.zzzz, t1
0007: 07811001 39001800 00000000 20390038  ADD t1, t1, void, u3
0008: 03801009 00000000 00000000 00090008  MOV t0.xyz_, void, void, t0.xyzx
num loops: 0
num temps: 4
num const: 16
immediates:
 [4].x = 1.000000 (0x3f800000)
 [4].y = 0.583300 (0x3f155326)
 [4].z = -1.000000 (0xbf800000)
 [4].w = 0.000000 (0x00000000)
inputs:
 [3] name=POSITION index=0 comps=3
outputs:
 [0] name=GENERIC index=20 comps=4
special:
  vs_pos_out_reg=1
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
