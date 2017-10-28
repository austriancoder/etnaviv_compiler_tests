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
DCL CONST[0..7]
DCL TEMP[0..4], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  0: MUL TEMP[0], CONST[4], IN[1].xxxx
  1: MAD TEMP[0], CONST[5], IN[1].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[6], IN[1].zzzz, TEMP[0]
  3: MAD TEMP[0].xy, CONST[7], IN[1].wwww, TEMP[0]
  4: MOV TEMP[0].xy, TEMP[0].xyxx
  5: MOV TEMP[0].zw, IN[5].yyxy
  6: MOV TEMP[1].w, IMM[0].xxxx
  7: MOV TEMP[1].xyz, IN[2].xyzx
  8: MOV TEMP[2].w, IMM[0].xxxx
  9: MOV TEMP[2].xyz, IN[3].xyzx
 10: MOV TEMP[3].w, IMM[0].xxxx
 11: MOV TEMP[3].xyz, IN[4].xyzx
 12: MUL TEMP[4], CONST[0], IN[0].xxxx
 13: MAD TEMP[4], CONST[1], IN[0].yyyy, TEMP[4]
 14: MAD TEMP[4], CONST[2], IN[0].zzzz, TEMP[4]
 15: MAD TEMP[4], CONST[3], IN[0].wwww, TEMP[4]
 16: MOV OUT[4], TEMP[3]
 17: MOV OUT[2], TEMP[1]
 18: MOV OUT[0], TEMP[4]
 19: MOV OUT[3], TEMP[2]
 20: MOV OUT[1], TEMP[0]
 21: END


VERT
0000: 07801003 39004800 000000d0 00000000  MUL t0, u4, t1.xxxx, void
0001: 07801002 39005800 00aa00d0 00390008  MAD t0, u5, t1.yyyy, t0
0002: 07801002 39006800 015400d0 00390008  MAD t0, u6, t1.zzzz, t0
0003: 01801002 39007800 01fe00d0 00390008  MAD t0.xy__, u7, t1.wwww, t0
0004: 01801009 00000000 00000000 00010008  MOV t0.xy__, void, void, t0.xyxx
0005: 06001009 00000000 00000000 00114028  MOV t0.__zw, void, void, t2.yyxy
0006: 04011009 00000000 00000000 20000088  MOV t1.___w, void, void, u8.xxxx
0007: 03811009 00000000 00000000 00090038  MOV t1.xyz_, void, void, t3.xyzx
0008: 04021009 00000000 00000000 20000088  MOV t2.___w, void, void, u8.xxxx
0009: 03821009 00000000 00000000 00090048  MOV t2.xyz_, void, void, t4.xyzx
0010: 04031009 00000000 00000000 20000088  MOV t3.___w, void, void, u8.xxxx
0011: 03831009 00000000 00000000 00090058  MOV t3.xyz_, void, void, t5.xyzx
0012: 07841003 39000800 00000350 00000000  MUL t4, u0, t6.xxxx, void
0013: 07841002 39001800 00aa0350 00390048  MAD t4, u1, t6.yyyy, t4
0014: 07841002 39002800 01540350 00390048  MAD t4, u2, t6.zzzz, t4
0015: 07841002 39003800 01fe0350 00390048  MAD t4, u3, t6.wwww, t4
num loops: 0
num temps: 7
num const: 32
immediates:
 [8].x = 0.000000 (0x00000000)
 [8].y = 0.000000 (0x00000000)
 [8].z = 0.000000 (0x00000000)
 [8].w = 0.000000 (0x00000000)
inputs:
 [6] name=POSITION index=0 comps=4
 [1] name=POSITION index=0 comps=4
 [3] name=POSITION index=0 comps=3
 [4] name=POSITION index=0 comps=3
 [5] name=POSITION index=0 comps=3
 [2] name=POSITION index=0 comps=2
outputs:
 [0] name=GENERIC index=20 comps=4
 [1] name=GENERIC index=21 comps=4
 [2] name=GENERIC index=22 comps=4
 [3] name=GENERIC index=23 comps=4
special:
  vs_pos_out_reg=4
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f050d
  input_count_unk8=0x00000001
