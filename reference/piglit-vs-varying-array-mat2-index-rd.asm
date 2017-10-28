VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL OUT[4], GENERIC[12]
DCL CONST[0..5]
DCL TEMP[0], LOCAL
DCL TEMP[1..2], ARRAY(1), LOCAL
DCL TEMP[3..8], ARRAY(2), LOCAL
DCL TEMP[9..10], ARRAY(3), LOCAL
DCL TEMP[11..12], ARRAY(4), LOCAL
DCL TEMP[13..16], LOCAL
DCL ADDR[0]
IMM[0] FLT32 {    1.0000,     2.0000,     3.0000,     4.0000}
IMM[1] FLT32 {    5.0000,     6.0000,     7.0000,     8.0000}
IMM[2] FLT32 {    9.0000,    10.0000,    11.0000,    12.0000}
IMM[3] FLT32 {    0.0000,     1.0000,     0.0000,     0.0000}
  0: MUL TEMP[0], CONST[2], IN[0].xxxx
  1: MAD TEMP[0], CONST[3], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[4], IN[0].zzzz, TEMP[0]
  3: MAD TEMP[0], CONST[5], IN[0].wwww, TEMP[0]
  4: MOV TEMP[1], IMM[0].xyxx
  5: MOV TEMP[2], IMM[0].zwzz
  6: MOV TEMP[3], TEMP[1].xyyy
  7: MOV TEMP[4], TEMP[2].xyyy
  8: MOV TEMP[9], IMM[1].xyxx
  9: MOV TEMP[10], IMM[1].zwzz
 10: MOV TEMP[5], TEMP[9].xyyy
 11: MOV TEMP[6], TEMP[10].xyyy
 12: MOV TEMP[11], IMM[2].xyxx
 13: MOV TEMP[12], IMM[2].zwzz
 14: MOV TEMP[7], TEMP[11].xyyy
 15: MOV TEMP[8], TEMP[12].xyyy
 16: MUL TEMP[13].x, CONST[0].xxxx, IMM[0].yyyy
 17: ARL ADDR[0].x, TEMP[13].xxxx
 18: SNE TEMP[14], TEMP[ADDR[0].x+4](2).xyyy, CONST[1].xyyy
 19: DP2 TEMP[13].x, TEMP[14], TEMP[14]
 20: SGE TEMP[13].x, -TEMP[13].xxxx, IMM[3].xxxx
 21: IF TEMP[13].xxxx :0
 22:   MOV TEMP[13], IMM[3].xyxy
 23: ELSE :0
 24:   MOV TEMP[13], IMM[3].yxxy
 25: ENDIF
 26: MOV TEMP[14].xy, TEMP[3].xyxx
 27: MOV TEMP[14].zw, TEMP[4].yyxy
 28: MOV TEMP[15].xy, TEMP[5].xyxx
 29: MOV TEMP[15].zw, TEMP[6].yyxy
 30: MOV TEMP[16].xy, TEMP[7].xyxx
 31: MOV TEMP[16].zw, TEMP[8].yyxy
 32: MOV OUT[3], TEMP[15]
 33: MOV OUT[4], TEMP[16]
 34: MOV OUT[1], TEMP[13]
 35: MOV OUT[0], TEMP[0]
 36: MOV OUT[2], TEMP[14]
 37: END


VERT
0000: 07801003 39002800 000000d0 00000000  MUL t0, u2, t1.xxxx, void
0001: 07801002 39003800 00aa00d0 00390008  MAD t0, u3, t1.yyyy, t0
0002: 07801002 39004800 015400d0 00390008  MAD t0, u4, t1.zzzz, t0
0003: 07801002 39005800 01fe00d0 00390008  MAD t0, u5, t1.wwww, t0
0004: 07811009 00000000 00000000 20010068  MOV t1, void, void, u6.xyxx
0005: 07821009 00000000 00000000 202b8068  MOV t2, void, void, u6.zwzz
0006: 07831009 00000000 00000000 00150018  MOV t3, void, void, t1.xyyy
0007: 07841009 00000000 00000000 00150028  MOV t4, void, void, t2.xyyy
0008: 07891009 00000000 00000000 20010078  MOV t9, void, void, u7.xyxx
0009: 078a1009 00000000 00000000 202b8078  MOV t10, void, void, u7.zwzz
0010: 07851009 00000000 00000000 00150098  MOV t5, void, void, t9.xyyy
0011: 07861009 00000000 00000000 001500a8  MOV t6, void, void, t10.xyyy
0012: 078b1009 00000000 00000000 20010088  MOV t11, void, void, u8.xyxx
0013: 078c1009 00000000 00000000 202b8088  MOV t12, void, void, u8.zwzz
0014: 07871009 00000000 00000000 001500b8  MOV t7, void, void, t11.xyyy
0015: 07881009 00000000 00000000 001500c8  MOV t8, void, void, t12.xyyy
0016: 07921009 00000000 00000000 20154068  MOV t18, void, void, u6.yyyy
0017: 008d1003 00000800 01c80950 00000000  MUL t13.x___, u0.xxxx, t18, void
0018: 07921025 00000000 00000000 000000d8  FLOOR t18, void, void, t13.xxxx
0019: 0080000a 00000000 00000000 00390128  MOVAR a0.x___, void, void, t18
0020: 078e1190 15004800 00a800c1 00000002  SET.NE t14, t4[a.x].xyyy, u1.xyyy, void
0021: 00911003 0000e800 00000740 00000000  MUL t17.x___, t14.xxxx, t14.xxxx, void
0022: 008d1002 1540e800 00aa0740 00000118  MAD t13.x___, t14.yyyy, t14.yyyy, t17.xxxx
0023: 008d10d0 4000d800 000004c0 00000002  SET.GE t13.x___, -t13.xxxx, u9.xxxx, void
0024: 00000156 0000d800 000004c0 00000d82  BRANCH.EQ void, t13.xxxx, u9.xxxx, label_0027
0025: 078d1009 00000000 00000000 20110098  MOV t13, void, void, u9.xyxy
0026: 00000016 00000000 00000000 00000e00  BRANCH void, void, void, label_0028
0027: 078d1009 00000000 00000000 20104098  MOV t13, void, void, u9.yxxy
0028: 018e1009 00000000 00000000 00010038  MOV t14.xy__, void, void, t3.xyxx
0029: 060e1009 00000000 00000000 00114048  MOV t14.__zw, void, void, t4.yyxy
0030: 018f1009 00000000 00000000 00010058  MOV t15.xy__, void, void, t5.xyxx
0031: 060f1009 00000000 00000000 00114068  MOV t15.__zw, void, void, t6.yyxy
0032: 01901009 00000000 00000000 00010078  MOV t16.xy__, void, void, t7.xyxx
0033: 06101009 00000000 00000000 00114088  MOV t16.__zw, void, void, t8.yyxy
num loops: 0
num temps: 19
num const: 24
immediates:
 [6].x = 1.000000 (0x3f800000)
 [6].y = 2.000000 (0x40000000)
 [6].z = 3.000000 (0x40400000)
 [6].w = 4.000000 (0x40800000)
 [7].x = 5.000000 (0x40a00000)
 [7].y = 6.000000 (0x40c00000)
 [7].z = 7.000000 (0x40e00000)
 [7].w = 8.000000 (0x41000000)
 [8].x = 9.000000 (0x41100000)
 [8].y = 10.000000 (0x41200000)
 [8].z = 11.000000 (0x41300000)
 [8].w = 12.000000 (0x41400000)
 [9].x = 0.000000 (0x00000000)
 [9].y = 1.000000 (0x3f800000)
 [9].z = 0.000000 (0x00000000)
 [9].w = 0.000000 (0x00000000)
 [10].x = 0.000000 (0x00000000)
 [10].y = 1.000000 (0x3f800000)
 [10].z = 128.000000 (0x43000000)
 [10].w = 0.000000 (0x00000000)
inputs:
 [1] name=POSITION index=0 comps=4
outputs:
 [13] name=GENERIC index=9 comps=4
 [14] name=GENERIC index=10 comps=4
 [15] name=GENERIC index=11 comps=4
 [16] name=GENERIC index=12 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f050d
  input_count_unk8=0x00000001