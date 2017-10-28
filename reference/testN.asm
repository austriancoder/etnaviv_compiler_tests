VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[20]
DCL SAMP[0]
DCL CONST[0..3]
DCL TEMP[0..2], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].xz, IN[0].xxyx
  1: MAD TEMP[1].xy, IN[0].xyyy, IMM[0].xxxx, IMM[0].xxxx
  2: MOV TEMP[1].xy, TEMP[1].xyyy
  3: TEX TEMP[1].x, TEMP[1], SAMP[0], 2D
  4: ADD TEMP[1].x, IN[0].zzzz, TEMP[1].xxxx
  5: MOV TEMP[0].y, TEMP[1].xxxx
  6: MUL TEMP[2], CONST[0], IN[0].xxxx
  7: MAD TEMP[1], CONST[1], TEMP[1].xxxx, TEMP[2]
  8: MAD TEMP[1], CONST[2], IN[0].yyyy, TEMP[1]
  9: ADD TEMP[1], TEMP[1], CONST[3]
 10: MOV TEMP[0].xyz, TEMP[0].xyzx
 11: MOV OUT[1], TEMP[0]
 12: MOV OUT[0], TEMP[1]
 13: END

VERT
0000: 02801009 00000000 00000000 00040038  MOV t0.x_z_, void, void, t3.xxyx
0001: 01811002 15003800 00000240 2000004a  MAD t1.xy__, t3.xyyy, u4.xxxx, u4.xxxx
0002: 01811009 00000000 00000000 00150018  MOV t1.xy__, void, void, t1.xyyy
0003: 40811018 39001f20 00000000 00000000  TEXLD t1.x___, tex8, t1, void, void
0004: 00811001 2a803800 00000000 00000018  ADD t1.x___, t3.zzzz, void, t1.xxxx
0005: 01001009 00000000 00000000 00000018  MOV t0._y__, void, void, t1.xxxx
0006: 07821003 39000800 000001d0 00000000  MUL t2, u0, t3.xxxx, void
0007: 07811002 39001800 000000d0 00390028  MAD t1, u1, t1.xxxx, t2
0008: 07811002 39002800 00aa01d0 00390018  MAD t1, u2, t3.yyyy, t1
0009: 07811001 39001800 00000000 20390038  ADD t1, t1, void, u3
0010: 03801009 00000000 00000000 00090008  MOV t0.xyz_, void, void, t0.xyzx
num loops: 0
num temps: 4
num const: 16
immediates:
 [4].x = 0.500000 (0x3f000000)
 [4].y = 0.000000 (0x00000000)
 [4].z = 0.000000 (0x00000000)
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
