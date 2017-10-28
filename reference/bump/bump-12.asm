VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL IN[3]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[20]
DCL OUT[2], GENERIC[21]
DCL OUT[3], GENERIC[22]
DCL CONST[0..7]
DCL TEMP[0..5], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,     0.0000,     0.0000}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[6]
  0: MUL TEMP[0], CONST[4], IN[2].xxxx
  1: MAD TEMP[0], CONST[5], IN[2].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[6], IN[2].zzzz, TEMP[0]
  3: ADD TEMP[0].xyz, TEMP[0], CONST[7]
  4: MUL TEMP[6].x, TEMP[0].xxxx, TEMP[0].xxxx
  5: MAD TEMP[6].x, TEMP[0].yyyy, TEMP[0].yyyy, TEMP[6].xxxx
  6: MAD TEMP[1].x, TEMP[0].zzzz, TEMP[0].zzzz, TEMP[6].xxxx
  7: RSQ TEMP[1].x, TEMP[1].xxxx
  8: MUL TEMP[0].xyz, TEMP[0].xyzz, TEMP[1].xxxx
  9: MUL TEMP[1], CONST[4], IN[3].xxxx
 10: MAD TEMP[1], CONST[5], IN[3].yyyy, TEMP[1]
 11: MAD TEMP[1], CONST[6], IN[3].zzzz, TEMP[1]
 12: ADD TEMP[1].xyz, TEMP[1], CONST[7]
 13: MUL TEMP[2].xyz, IN[2].zxyy, IN[3].yzxx
 14: MAD TEMP[2].xyz, IN[2].yzxx, IN[3].zxyy, -TEMP[2].xyzz
 15: MUL TEMP[3], CONST[4], TEMP[2].xxxx
 16: MAD TEMP[3], CONST[5], TEMP[2].yyyy, TEMP[3]
 17: MAD TEMP[2], CONST[6], TEMP[2].zzzz, TEMP[3]
 18: ADD TEMP[2].xyz, TEMP[2], CONST[7]
 19: MUL TEMP[3], CONST[0], IN[0].xxxx
 20: MAD TEMP[3], CONST[1], IN[0].yyyy, TEMP[3]
 21: MAD TEMP[3], CONST[2], IN[0].zzzz, TEMP[3]
 22: ADD TEMP[3], TEMP[3], CONST[3]
 23: MOV TEMP[4].xy, IN[1].xyxx
 24: MOV TEMP[4].zw, TEMP[0].yyxy
 25: MOV TEMP[0].x, TEMP[0].zzzz
 26: MUL TEMP[6].x, TEMP[1].xxxx, TEMP[1].xxxx
 27: MAD TEMP[6].x, TEMP[1].yyyy, TEMP[1].yyyy, TEMP[6].xxxx
 28: MAD TEMP[5].x, TEMP[1].zzzz, TEMP[1].zzzz, TEMP[6].xxxx
 29: RSQ TEMP[5].x, TEMP[5].xxxx
 30: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[5].xxxx
 31: MOV TEMP[0].yzw, TEMP[1].yxyz
 32: MUL TEMP[6].x, TEMP[2].xxxx, TEMP[2].xxxx
 33: MAD TEMP[6].x, TEMP[2].yyyy, TEMP[2].yyyy, TEMP[6].xxxx
 34: MAD TEMP[1].x, TEMP[2].zzzz, TEMP[2].zzzz, TEMP[6].xxxx
 35: RSQ TEMP[1].x, TEMP[1].xxxx
 36: MUL TEMP[1].xyz, TEMP[2].xyzz, TEMP[1].xxxx
 37: MOV OUT[3], TEMP[1]
 38: MOV OUT[1], TEMP[4]
 39: MOV OUT[2], TEMP[0]
 40: MOV OUT[0], TEMP[3]
 41: END

VERT
0000: 07801003 39004800 000001d0 00000000  MUL t0, u4, t3.xxxx, void
0001: 07801002 39005800 00aa01d0 00390008  MAD t0, u5, t3.yyyy, t0
0002: 07801002 39006800 015401d0 00390008  MAD t0, u6, t3.zzzz, t0
0003: 03801001 39000800 00000000 20390078  ADD t0.xyz_, t0, void, u7
0004: 00861003 00000800 00000040 00000000  MUL t6.x___, t0.xxxx, t0.xxxx, void
0005: 00861002 15400800 00aa0040 00000068  MAD t6.x___, t0.yyyy, t0.yyyy, t6.xxxx
0006: 00811002 2a800800 01540040 00000068  MAD t1.x___, t0.zzzz, t0.zzzz, t6.xxxx
0007: 0081100d 00000000 00000000 00000018  RSQ t1.x___, void, void, t1.xxxx
0008: 03801003 29000800 000000c0 00000000  MUL t0.xyz_, t0.xyzz, t1.xxxx, void
0009: 07811003 39004800 00000250 00000000  MUL t1, u4, t4.xxxx, void
0010: 07811002 39005800 00aa0250 00390018  MAD t1, u5, t4.yyyy, t1
0011: 07811002 39006800 01540250 00390018  MAD t1, u6, t4.zzzz, t1
0012: 03811001 39001800 00000000 20390078  ADD t1.xyz_, t1, void, u7
0013: 03821003 14803800 00120240 00000000  MUL t2.xyz_, t3.zxyy, t4.yzxx, void
0014: 03821002 02403800 00a40240 00690028  MAD t2.xyz_, t3.yzxx, t4.zxyy, -t2.xyzz
0015: 07831003 39004800 00000150 00000000  MUL t3, u4, t2.xxxx, void
0016: 07831002 39005800 00aa0150 00390038  MAD t3, u5, t2.yyyy, t3
0017: 07821002 39006800 01540150 00390038  MAD t2, u6, t2.zzzz, t3
0018: 03821001 39002800 00000000 20390078  ADD t2.xyz_, t2, void, u7
0019: 07831003 39000800 000002d0 00000000  MUL t3, u0, t5.xxxx, void
0020: 07831002 39001800 00aa02d0 00390038  MAD t3, u1, t5.yyyy, t3
0021: 07831002 39002800 015402d0 00390038  MAD t3, u2, t5.zzzz, t3
0022: 07831001 39003800 00000000 20390038  ADD t3, t3, void, u3
0023: 01841009 00000000 00000000 00010078  MOV t4.xy__, void, void, t7.xyxx
0024: 06041009 00000000 00000000 00114008  MOV t4.__zw, void, void, t0.yyxy
0025: 00801009 00000000 00000000 002a8008  MOV t0.x___, void, void, t0.zzzz
0026: 00861003 00001800 000000c0 00000000  MUL t6.x___, t1.xxxx, t1.xxxx, void
0027: 00861002 15401800 00aa00c0 00000068  MAD t6.x___, t1.yyyy, t1.yyyy, t6.xxxx
0028: 00851002 2a801800 015400c0 00000068  MAD t5.x___, t1.zzzz, t1.zzzz, t6.xxxx
0029: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0030: 03811003 29001800 000002c0 00000000  MUL t1.xyz_, t1.xyzz, t5.xxxx, void
0031: 07001009 00000000 00000000 00244018  MOV t0._yzw, void, void, t1.yxyz
0032: 00861003 00002800 00000140 00000000  MUL t6.x___, t2.xxxx, t2.xxxx, void
0033: 00861002 15402800 00aa0140 00000068  MAD t6.x___, t2.yyyy, t2.yyyy, t6.xxxx
0034: 00811002 2a802800 01540140 00000068  MAD t1.x___, t2.zzzz, t2.zzzz, t6.xxxx
0035: 0081100d 00000000 00000000 00000018  RSQ t1.x___, void, void, t1.xxxx
0036: 03811003 29002800 000000c0 00000000  MUL t1.xyz_, t2.xyzz, t1.xxxx, void
num loops: 0
num temps: 8
num const: 32
immediates:
 [8].x = 1.000000 (0x3f800000)
 [8].y = 0.000000 (0x00000000)
 [8].z = 0.000000 (0x00000000)
 [8].w = 0.000000 (0x00000000)
 [9].x = 0.000000 (0x00000000)
 [9].y = 1.000000 (0x3f800000)
 [9].z = 128.000000 (0x43000000)
 [9].w = 0.000000 (0x00000000)
inputs:
 [5] name=POSITION index=0 comps=3
 [7] name=POSITION index=0 comps=2
 [3] name=POSITION index=0 comps=3
 [4] name=POSITION index=0 comps=3
outputs:
 [4] name=GENERIC index=20 comps=4
 [0] name=GENERIC index=21 comps=4
 [1] name=GENERIC index=22 comps=4
special:
  vs_pos_out_reg=3
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0512
  input_count_unk8=0x00000001
