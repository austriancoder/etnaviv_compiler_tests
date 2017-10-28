
VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL IN[3]
DCL IN[4]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[20]
DCL OUT[2], GENERIC[21]
DCL OUT[3], GENERIC[22]
DCL CONST[0..9]
DCL TEMP[0..4], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].zw, IMM[0].xxxx
  1: MUL TEMP[1], CONST[6], IN[1].xxxx
  2: MAD TEMP[1], CONST[7], IN[1].yyyy, TEMP[1]
  3: MAD TEMP[1], CONST[8], IN[1].zzzz, TEMP[1]
  4: MAD TEMP[1].xy, CONST[9], IN[1].wwww, TEMP[1]
  5: MOV TEMP[0].xy, TEMP[1].xyxx
  6: DP3 TEMP[1].x, CONST[5].xyzz, IN[2].xyzz
  7: DP3 TEMP[2].x, CONST[5].xyzz, IN[3].xyzz
  8: MOV TEMP[1].y, TEMP[2].xxxx
  9: DP3 TEMP[2].x, CONST[5].xyzz, IN[4].xyzz
 10: MOV TEMP[1].z, TEMP[2].xxxx
 11: ADD TEMP[2].xyz, CONST[4].xyzz, -IN[0].xyzz
 12: DP3 TEMP[3].x, TEMP[2].xyzz, IN[2].xyzz
 13: DP3 TEMP[4].x, TEMP[2].xyzz, IN[3].xyzz
 14: MOV TEMP[3].y, TEMP[4].xxxx
 15: DP3 TEMP[2].x, TEMP[2].xyzz, IN[4].xyzz
 16: MOV TEMP[3].z, TEMP[2].xxxx
 17: MOV TEMP[3].w, IMM[0].xxxx
 18: MUL TEMP[2], CONST[0], IN[0].xxxx
 19: MAD TEMP[2], CONST[1], IN[0].yyyy, TEMP[2]
 20: MAD TEMP[2], CONST[2], IN[0].zzzz, TEMP[2]
 21: MAD TEMP[2], CONST[3], IN[0].wwww, TEMP[2]
 22: MOV TEMP[1].xyz, TEMP[1].xyzx
 23: MOV OUT[3], TEMP[1]
 24: MOV OUT[0], TEMP[2]
 25: MOV OUT[2], TEMP[3]
 26: MOV OUT[1], TEMP[0]
 27: END

VERT
0000: 06001009 00000000 00000000 200000a8  MOV t0.__zw, void, void, u10.xxxx
0001: 07811003 39006800 00000150 00000000  MUL t1, u6, t2.xxxx, void
0002: 07811002 39007800 00aa0150 00390018  MAD t1, u7, t2.yyyy, t1
0003: 07811002 39008800 01540150 00390018  MAD t1, u8, t2.zzzz, t1
0004: 01811002 39009800 01fe0150 00390018  MAD t1.xy__, u9, t2.wwww, t1
0005: 01801009 00000000 00000000 00010018  MOV t0.xy__, void, void, t1.xyxx
0006: 00811005 29005800 014801d0 00000000  DP3 t1.x___, u5.xyzz, t3.xyzz, void
0007: 00821005 29005800 01480250 00000000  DP3 t2.x___, u5.xyzz, t4.xyzz, void
0008: 01011009 00000000 00000000 00000028  MOV t1._y__, void, void, t2.xxxx
0009: 00821005 29005800 014802d0 00000000  DP3 t2.x___, u5.xyzz, t5.xyzz, void
0010: 02011009 00000000 00000000 00000028  MOV t1.__z_, void, void, t2.xxxx
0011: 03821001 29004800 00000010 00690068  ADD t2.xyz_, u4.xyzz, void, -t6.xyzz
0012: 00831005 29002800 014801c0 00000000  DP3 t3.x___, t2.xyzz, t3.xyzz, void
0013: 00841005 29002800 01480240 00000000  DP3 t4.x___, t2.xyzz, t4.xyzz, void
0014: 01031009 00000000 00000000 00000048  MOV t3._y__, void, void, t4.xxxx
0015: 00821005 29002800 014802c0 00000000  DP3 t2.x___, t2.xyzz, t5.xyzz, void
0016: 02031009 00000000 00000000 00000028  MOV t3.__z_, void, void, t2.xxxx
0017: 04031009 00000000 00000000 200000a8  MOV t3.___w, void, void, u10.xxxx
0018: 07821003 39000800 00000350 00000000  MUL t2, u0, t6.xxxx, void
0019: 07821002 39001800 00aa0350 00390028  MAD t2, u1, t6.yyyy, t2
0020: 07821002 39002800 01540350 00390028  MAD t2, u2, t6.zzzz, t2
0021: 07821002 39003800 01fe0350 00390028  MAD t2, u3, t6.wwww, t2
0022: 03811009 00000000 00000000 00090018  MOV t1.xyz_, void, void, t1.xyzx
num loops: 0
num temps: 7
num const: 40
immediates:
 [10].x = 0.000000 (0x00000000)
 [10].y = 0.000000 (0x00000000)
 [10].z = 0.000000 (0x00000000)
 [10].w = 0.000000 (0x00000000)
inputs:
 [6] name=POSITION index=0 comps=4
 [2] name=POSITION index=0 comps=4
 [3] name=POSITION index=0 comps=3
 [4] name=POSITION index=0 comps=3
 [5] name=POSITION index=0 comps=3
outputs:
 [0] name=GENERIC index=20 comps=4
 [3] name=GENERIC index=21 comps=4
 [1] name=GENERIC index=22 comps=4
special:
  vs_pos_out_reg=2
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0512
  input_count_unk8=0x00000001
