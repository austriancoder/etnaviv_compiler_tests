VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL IN[3]
DCL IN[4]
DCL IN[5]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[20]
DCL OUT[2], GENERIC[21]
DCL OUT[3], GENERIC[22]
DCL OUT[4], GENERIC[23]
DCL OUT[5], GENERIC[24]
DCL CONST[0..8]
DCL TEMP[0..5], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  0: MUL TEMP[0], CONST[5], IN[1].xxxx
  1: MAD TEMP[0], CONST[6], IN[1].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[7], IN[1].zzzz, TEMP[0]
  3: MAD TEMP[0].xy, CONST[8], IN[1].wwww, TEMP[0]
  4: MOV TEMP[0].xy, TEMP[0].xyxx
  5: MOV TEMP[0].zw, IN[5].yyxy
  6: ADD TEMP[1].xyz, CONST[4].xyzz, -IN[0].xyzz
  7: DP3 TEMP[2].x, TEMP[1].xyzz, IN[2].xyzz
  8: DP3 TEMP[3].x, TEMP[1].xyzz, IN[3].xyzz
  9: MOV TEMP[2].y, TEMP[3].xxxx
 10: DP3 TEMP[1].x, TEMP[1].xyzz, IN[4].xyzz
 11: MOV TEMP[2].z, TEMP[1].xxxx
 12: MOV TEMP[2].w, IMM[0].xxxx
 13: MOV TEMP[1].w, IMM[0].xxxx
 14: MOV TEMP[1].xyz, IN[2].xyzx
 15: MOV TEMP[3].w, IMM[0].xxxx
 16: MOV TEMP[3].xyz, IN[3].xyzx
 17: MOV TEMP[4].w, IMM[0].xxxx
 18: MOV TEMP[4].xyz, IN[4].xyzx
 19: MUL TEMP[5], CONST[0], IN[0].xxxx
 20: MAD TEMP[5], CONST[1], IN[0].yyyy, TEMP[5]
 21: MAD TEMP[5], CONST[2], IN[0].zzzz, TEMP[5]
 22: MAD TEMP[5], CONST[3], IN[0].wwww, TEMP[5]
 23: MOV OUT[5], TEMP[4]
 24: MOV OUT[3], TEMP[1]
 25: MOV OUT[0], TEMP[5]
 26: MOV OUT[4], TEMP[3]
 27: MOV OUT[2], TEMP[2]
 28: MOV OUT[1], TEMP[0]
 29: END


VERT
0000: 07801003 39005800 000000d0 00000000  MUL t0, u5, t1.xxxx, void
0001: 07801002 39006800 00aa00d0 00390008  MAD t0, u6, t1.yyyy, t0
0002: 07801002 39007800 015400d0 00390008  MAD t0, u7, t1.zzzz, t0
0003: 01801002 39008800 01fe00d0 00390008  MAD t0.xy__, u8, t1.wwww, t0
0004: 01801009 00000000 00000000 00010008  MOV t0.xy__, void, void, t0.xyxx
0005: 06001009 00000000 00000000 00114028  MOV t0.__zw, void, void, t2.yyxy
0006: 03811001 29004800 00000010 00690078  ADD t1.xyz_, u4.xyzz, void, -t7.xyzz
0007: 00821005 29001800 01480240 00000000  DP3 t2.x___, t1.xyzz, t4.xyzz, void
0008: 00831005 29001800 014802c0 00000000  DP3 t3.x___, t1.xyzz, t5.xyzz, void
0009: 01021009 00000000 00000000 00000038  MOV t2._y__, void, void, t3.xxxx
0010: 00811005 29001800 01480340 00000000  DP3 t1.x___, t1.xyzz, t6.xyzz, void
0011: 02021009 00000000 00000000 00000018  MOV t2.__z_, void, void, t1.xxxx
0012: 04021009 00000000 00000000 20000098  MOV t2.___w, void, void, u9.xxxx
0013: 04011009 00000000 00000000 20000098  MOV t1.___w, void, void, u9.xxxx
0014: 03811009 00000000 00000000 00090048  MOV t1.xyz_, void, void, t4.xyzx
0015: 04031009 00000000 00000000 20000098  MOV t3.___w, void, void, u9.xxxx
0016: 03831009 00000000 00000000 00090058  MOV t3.xyz_, void, void, t5.xyzx
0017: 04041009 00000000 00000000 20000098  MOV t4.___w, void, void, u9.xxxx
0018: 03841009 00000000 00000000 00090068  MOV t4.xyz_, void, void, t6.xyzx
0019: 07851003 39000800 000003d0 00000000  MUL t5, u0, t7.xxxx, void
0020: 07851002 39001800 00aa03d0 00390058  MAD t5, u1, t7.yyyy, t5
0021: 07851002 39002800 015403d0 00390058  MAD t5, u2, t7.zzzz, t5
0022: 07851002 39003800 01fe03d0 00390058  MAD t5, u3, t7.wwww, t5
num loops: 0
num temps: 8
num const: 36
immediates:
 [9].x = 0.000000 (0x00000000)
 [9].y = 0.000000 (0x00000000)
 [9].z = 0.000000 (0x00000000)
 [9].w = 0.000000 (0x00000000)
inputs:
 [7] name=POSITION index=0 comps=4
 [1] name=POSITION index=0 comps=4
 [4] name=POSITION index=0 comps=3
 [5] name=POSITION index=0 comps=3
 [6] name=POSITION index=0 comps=3
 [2] name=POSITION index=0 comps=2
outputs:
 [0] name=GENERIC index=20 comps=4
 [2] name=GENERIC index=21 comps=4
 [1] name=GENERIC index=22 comps=4
 [3] name=GENERIC index=23 comps=4
 [4] name=GENERIC index=24 comps=4
special:
  vs_pos_out_reg=5
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f050d
  input_count_unk8=0x00000001
