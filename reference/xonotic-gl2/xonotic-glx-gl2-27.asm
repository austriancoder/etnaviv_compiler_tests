
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
DCL OUT[4], GENERIC[23]
DCL OUT[5], GENERIC[24]
DCL OUT[6], GENERIC[25]
DCL CONST[0..9]
DCL TEMP[0..6], LOCAL
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
 18: MOV TEMP[2].w, IMM[0].xxxx
 19: MOV TEMP[2].xyz, IN[2].xyzx
 20: MOV TEMP[4].w, IMM[0].xxxx
 21: MOV TEMP[4].xyz, IN[3].xyzx
 22: MOV TEMP[5].w, IMM[0].xxxx
 23: MOV TEMP[5].xyz, IN[4].xyzx
 24: MUL TEMP[6], CONST[0], IN[0].xxxx
 25: MAD TEMP[6], CONST[1], IN[0].yyyy, TEMP[6]
 26: MAD TEMP[6], CONST[2], IN[0].zzzz, TEMP[6]
 27: MAD TEMP[6], CONST[3], IN[0].wwww, TEMP[6]
 28: MOV TEMP[1].xyz, TEMP[1].xyzx
 29: MOV OUT[6], TEMP[1]
 30: MOV OUT[5], TEMP[5]
 31: MOV OUT[3], TEMP[2]
 32: MOV OUT[0], TEMP[6]
 33: MOV OUT[4], TEMP[4]
 34: MOV OUT[2], TEMP[3]
 35: MOV OUT[1], TEMP[0]
 36: END

VERT
0000: 06001009 00000000 00000000 200000a8  MOV t0.__zw, void, void, u10.xxxx
0001: 07811003 39006800 00000150 00000000  MUL t1, u6, t2.xxxx, void
0002: 07811002 39007800 00aa0150 00390018  MAD t1, u7, t2.yyyy, t1
0003: 07811002 39008800 01540150 00390018  MAD t1, u8, t2.zzzz, t1
0004: 01811002 39009800 01fe0150 00390018  MAD t1.xy__, u9, t2.wwww, t1
0005: 01801009 00000000 00000000 00010018  MOV t0.xy__, void, void, t1.xyxx
0006: 00811005 29005800 014802d0 00000000  DP3 t1.x___, u5.xyzz, t5.xyzz, void
0007: 00821005 29005800 01480350 00000000  DP3 t2.x___, u5.xyzz, t6.xyzz, void
0008: 01011009 00000000 00000000 00000028  MOV t1._y__, void, void, t2.xxxx
0009: 00821005 29005800 014803d0 00000000  DP3 t2.x___, u5.xyzz, t7.xyzz, void
0010: 02011009 00000000 00000000 00000028  MOV t1.__z_, void, void, t2.xxxx
0011: 03821001 29004800 00000010 00690088  ADD t2.xyz_, u4.xyzz, void, -t8.xyzz
0012: 00831005 29002800 014802c0 00000000  DP3 t3.x___, t2.xyzz, t5.xyzz, void
0013: 00841005 29002800 01480340 00000000  DP3 t4.x___, t2.xyzz, t6.xyzz, void
0014: 01031009 00000000 00000000 00000048  MOV t3._y__, void, void, t4.xxxx
0015: 00821005 29002800 014803c0 00000000  DP3 t2.x___, t2.xyzz, t7.xyzz, void
0016: 02031009 00000000 00000000 00000028  MOV t3.__z_, void, void, t2.xxxx
0017: 04031009 00000000 00000000 200000a8  MOV t3.___w, void, void, u10.xxxx
0018: 04021009 00000000 00000000 200000a8  MOV t2.___w, void, void, u10.xxxx
0019: 03821009 00000000 00000000 00090058  MOV t2.xyz_, void, void, t5.xyzx
0020: 04041009 00000000 00000000 200000a8  MOV t4.___w, void, void, u10.xxxx
0021: 03841009 00000000 00000000 00090068  MOV t4.xyz_, void, void, t6.xyzx
0022: 04051009 00000000 00000000 200000a8  MOV t5.___w, void, void, u10.xxxx
0023: 03851009 00000000 00000000 00090078  MOV t5.xyz_, void, void, t7.xyzx
0024: 07861003 39000800 00000450 00000000  MUL t6, u0, t8.xxxx, void
0025: 07861002 39001800 00aa0450 00390068  MAD t6, u1, t8.yyyy, t6
0026: 07861002 39002800 01540450 00390068  MAD t6, u2, t8.zzzz, t6
0027: 07861002 39003800 01fe0450 00390068  MAD t6, u3, t8.wwww, t6
0028: 03811009 00000000 00000000 00090018  MOV t1.xyz_, void, void, t1.xyzx
num loops: 0
num temps: 9
num const: 40
immediates:
 [10].x = 0.000000 (0x00000000)
 [10].y = 0.000000 (0x00000000)
 [10].z = 0.000000 (0x00000000)
 [10].w = 0.000000 (0x00000000)
inputs:
 [8] name=POSITION index=0 comps=4
 [2] name=POSITION index=0 comps=4
 [5] name=POSITION index=0 comps=3
 [6] name=POSITION index=0 comps=3
 [7] name=POSITION index=0 comps=3
outputs:
 [0] name=GENERIC index=20 comps=4
 [3] name=GENERIC index=21 comps=4
 [2] name=GENERIC index=22 comps=4
 [4] name=GENERIC index=23 comps=4
 [5] name=GENERIC index=24 comps=4
 [1] name=GENERIC index=25 comps=4
special:
  vs_pos_out_reg=6
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f060b
  input_count_unk8=0x00000001
