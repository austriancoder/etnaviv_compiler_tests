
VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL IN[3]
DCL IN[4]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[20]
DCL OUT[2], GENERIC[21]
DCL CONST[0..8]
DCL TEMP[0..2], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].zw, IMM[0].xxxx
  1: MUL TEMP[1], CONST[5], IN[1].xxxx
  2: MAD TEMP[1], CONST[6], IN[1].yyyy, TEMP[1]
  3: MAD TEMP[1], CONST[7], IN[1].zzzz, TEMP[1]
  4: MAD TEMP[1].xy, CONST[8], IN[1].wwww, TEMP[1]
  5: MOV TEMP[0].xy, TEMP[1].xyxx
  6: DP3 TEMP[1].x, CONST[4].xyzz, IN[2].xyzz
  7: DP3 TEMP[2].x, CONST[4].xyzz, IN[3].xyzz
  8: MOV TEMP[1].y, TEMP[2].xxxx
  9: DP3 TEMP[2].x, CONST[4].xyzz, IN[4].xyzz
 10: MOV TEMP[1].z, TEMP[2].xxxx
 11: MUL TEMP[2], CONST[0], IN[0].xxxx
 12: MAD TEMP[2], CONST[1], IN[0].yyyy, TEMP[2]
 13: MAD TEMP[2], CONST[2], IN[0].zzzz, TEMP[2]
 14: MAD TEMP[2], CONST[3], IN[0].wwww, TEMP[2]
 15: MOV TEMP[1].xyz, TEMP[1].xyzx
 16: MOV OUT[2], TEMP[1]
 17: MOV OUT[0], TEMP[2]
 18: MOV OUT[1], TEMP[0]
 19: END

VERT
0000: 06001009 00000000 00000000 20000098  MOV t0.__zw, void, void, u9.xxxx
0001: 07811003 39005800 00000150 00000000  MUL t1, u5, t2.xxxx, void
0002: 07811002 39006800 00aa0150 00390018  MAD t1, u6, t2.yyyy, t1
0003: 07811002 39007800 01540150 00390018  MAD t1, u7, t2.zzzz, t1
0004: 01811002 39008800 01fe0150 00390018  MAD t1.xy__, u8, t2.wwww, t1
0005: 01801009 00000000 00000000 00010018  MOV t0.xy__, void, void, t1.xyxx
0006: 00811005 29004800 014801d0 00000000  DP3 t1.x___, u4.xyzz, t3.xyzz, void
0007: 00821005 29004800 01480250 00000000  DP3 t2.x___, u4.xyzz, t4.xyzz, void
0008: 01011009 00000000 00000000 00000028  MOV t1._y__, void, void, t2.xxxx
0009: 00821005 29004800 014802d0 00000000  DP3 t2.x___, u4.xyzz, t5.xyzz, void
0010: 02011009 00000000 00000000 00000028  MOV t1.__z_, void, void, t2.xxxx
0011: 07821003 39000800 00000350 00000000  MUL t2, u0, t6.xxxx, void
0012: 07821002 39001800 00aa0350 00390028  MAD t2, u1, t6.yyyy, t2
0013: 07821002 39002800 01540350 00390028  MAD t2, u2, t6.zzzz, t2
0014: 07821002 39003800 01fe0350 00390028  MAD t2, u3, t6.wwww, t2
0015: 03811009 00000000 00000000 00090018  MOV t1.xyz_, void, void, t1.xyzx
num loops: 0
num temps: 7
num const: 36
immediates:
 [9].x = 0.000000 (0x00000000)
 [9].y = 0.000000 (0x00000000)
 [9].z = 0.000000 (0x00000000)
 [9].w = 0.000000 (0x00000000)
inputs:
 [6] name=POSITION index=0 comps=4
 [2] name=POSITION index=0 comps=4
 [3] name=POSITION index=0 comps=3
 [4] name=POSITION index=0 comps=3
 [5] name=POSITION index=0 comps=3
outputs:
 [0] name=GENERIC index=20 comps=4
 [1] name=GENERIC index=21 comps=4
special:
  vs_pos_out_reg=2
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0512
  input_count_unk8=0x00000001
