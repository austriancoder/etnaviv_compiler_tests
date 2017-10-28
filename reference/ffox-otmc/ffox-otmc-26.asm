VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL IN[3]
DCL IN[4]
DCL IN[5]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL CONST[0..18]
DCL TEMP[0..8], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     1.0000,     0.0000}
  0: MUL TEMP[0], CONST[4], IN[2].xxxx
  1: MAD TEMP[0], CONST[5], IN[2].yyyy, TEMP[0]
  2: MAD TEMP[0].xyz, CONST[6], IN[2].zzzz, TEMP[0]
  3: ADD TEMP[0].xyz, TEMP[0].xyzz, CONST[12].xyzz
  4: MUL TEMP[1], CONST[4], IN[3].xxxx
  5: MAD TEMP[1], CONST[5], IN[3].yyyy, TEMP[1]
  6: MAD TEMP[1].xyz, CONST[6], IN[3].zzzz, TEMP[1]
  7: ADD TEMP[1].xyz, TEMP[1].xyzz, CONST[13].xyzz
  8: ADD TEMP[2].x, CONST[15].xxxx, -CONST[16].xxxx
  9: ADD TEMP[2].x, TEMP[2].xxxx, -IN[1].wwww
 10: RCP TEMP[3].x, CONST[14].xxxx
 11: MUL TEMP[2].x, TEMP[2].xxxx, TEMP[3].xxxx
 12: FRC TEMP[2].x, TEMP[2].xxxx
 13: MUL TEMP[2].x, CONST[14].xxxx, TEMP[2].xxxx
 14: RCP TEMP[3].x, IN[0].zzzz
 15: MUL TEMP[3].x, TEMP[2].xxxx, TEMP[3].xxxx
 16: RCP TEMP[4].x, CONST[18].xxxx
 17: ADD TEMP[5].x, IN[0].xxxx, IMM[0].xxxx
 18: RCP TEMP[6].x, CONST[17].xxxx
 19: MAD TEMP[6].x, TEMP[2].xxxx, TEMP[6].xxxx, IN[0].wwww
 20: FLR TEMP[6].x, TEMP[6].xxxx
 21: MUL TEMP[6].x, TEMP[6].xxxx, TEMP[4].xxxx
 22: FRC TEMP[6].x, TEMP[6].xxxx
 23: MUL TEMP[6].x, CONST[18].xxxx, TEMP[6].xxxx
 24: MUL TEMP[6].x, TEMP[6].xxxx, TEMP[4].xxxx
 25: MAD TEMP[4].x, TEMP[5].xxxx, TEMP[4].xxxx, TEMP[6].xxxx
 26: ADD TEMP[5].x, IN[0].yyyy, IMM[0].xxxx
 27: MOV TEMP[4].y, TEMP[5].xxxx
 28: LRP TEMP[5].x, TEMP[3].xxxx, IN[3].wwww, IN[2].wwww
 29: SLT TEMP[6].x, TEMP[3].xxxx, IMM[0].yyyy
 30: SLT TEMP[7].x, IMM[0].zzzz, TEMP[3].xxxx
 31: ADD TEMP[6].x, TEMP[6].xxxx, TEMP[7].xxxx
 32: SLT TEMP[6].x, -TEMP[6].xxxx, IMM[0].yyyy
 33: IF TEMP[6].xxxx :0
 34:   MOV TEMP[6].x, IMM[0].yyyy
 35: ELSE :0
 36:   MOV TEMP[6].x, TEMP[5].xxxx
 37: ENDIF
 38: MAD TEMP[5].x, IN[4].yyyy, TEMP[2].xxxx, IN[4].xxxx
 39: SIN TEMP[5].x, TEMP[5].xxxx
 40: MAD TEMP[7].x, IN[4].yyyy, TEMP[2].xxxx, IN[4].xxxx
 41: COS TEMP[7].x, TEMP[7].xxxx
 42: MUL TEMP[8].x, IN[0].xxxx, TEMP[7].xxxx
 43: MAD TEMP[8].x, IN[0].yyyy, TEMP[5].xxxx, TEMP[8].xxxx
 44: MUL TEMP[5].x, -IN[0].xxxx, TEMP[5].xxxx
 45: MAD TEMP[5].x, IN[0].yyyy, TEMP[7].xxxx, TEMP[5].xxxx
 46: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[2].xxxx
 47: MUL TEMP[7].xyz, CONST[8].xyzz, TEMP[8].xxxx
 48: MAD TEMP[5].xyz, CONST[9].xyzz, TEMP[5].xxxx, TEMP[7].xyzz
 49: MUL TEMP[5].xyz, TEMP[5].xyzz, TEMP[6].xxxx
 50: MAD TEMP[5].xyz, TEMP[0].xyzz, TEMP[2].xxxx, TEMP[5].xyzz
 51: MAD TEMP[1].xyz, TEMP[1].xyzz, TEMP[2].xxxx, TEMP[5].xyzz
 52: ADD TEMP[1].xyz, TEMP[1].xyzz, IN[1].xyzz
 53: ADD TEMP[0].xyz, TEMP[1].xyzz, CONST[7].xyzz
 54: MUL TEMP[1], CONST[0], TEMP[0].xxxx
 55: MAD TEMP[1], CONST[1], TEMP[0].yyyy, TEMP[1]
 56: MAD TEMP[0], CONST[2], TEMP[0].zzzz, TEMP[1]
 57: ADD TEMP[0], TEMP[0], CONST[3]
 58: MOV TEMP[1].xy, TEMP[4].xyxx
 59: MOV TEMP[1].z, TEMP[3].xxxx
 60: MOV OUT[1], IN[5]
 61: MOV OUT[2], TEMP[1]
 62: MOV OUT[0], TEMP[0]
 63: END

VERT
0000: 07801003 39004800 000003d0 00000000  MUL t0, u4, t7.xxxx, void
0001: 07801002 39005800 00aa03d0 00390008  MAD t0, u5, t7.yyyy, t0
0002: 03801002 39006800 015403d0 00390008  MAD t0.xyz_, u6, t7.zzzz, t0
0003: 03801001 29000800 00000000 202900c8  ADD t0.xyz_, t0.xyzz, void, u12.xyzz
0004: 07811003 39004800 00000450 00000000  MUL t1, u4, t8.xxxx, void
0005: 07811002 39005800 00aa0450 00390018  MAD t1, u5, t8.yyyy, t1
0006: 03811002 39006800 01540450 00390018  MAD t1.xyz_, u6, t8.zzzz, t1
0007: 03811001 29001800 00000000 202900d8  ADD t1.xyz_, t1.xyzz, void, u13.xyzz
0008: 078d1009 00000000 00000000 20400108  MOV t13, void, void, -u16.xxxx
0009: 00821001 0000f800 00000010 003900d8  ADD t2.x___, u15.xxxx, void, t13
0010: 00821001 00002800 00000000 007fc0c8  ADD t2.x___, t2.xxxx, void, -t12.wwww
0011: 0083100c 00000000 00000000 200000e8  RCP t3.x___, void, void, u14.xxxx
0012: 00821003 00002800 000001c0 00000000  MUL t2.x___, t2.xxxx, t3.xxxx, void
0013: 00821013 00000000 00000000 00000028  FRC t2.x___, void, void, t2.xxxx
0014: 00821003 0000e800 00000150 00000000  MUL t2.x___, u14.xxxx, t2.xxxx, void
0015: 0083100c 00000000 00000000 002a80b8  RCP t3.x___, void, void, t11.zzzz
0016: 00831003 00002800 000001c0 00000000  MUL t3.x___, t2.xxxx, t3.xxxx, void
0017: 0084100c 00000000 00000000 20000128  RCP t4.x___, void, void, u18.xxxx
0018: 00851001 0000b800 00000000 20000138  ADD t5.x___, t11.xxxx, void, u19.xxxx
0019: 0086100c 00000000 00000000 20000118  RCP t6.x___, void, void, u17.xxxx
0020: 00861002 00002800 00000340 003fc0b8  MAD t6.x___, t2.xxxx, t6.xxxx, t11.wwww
0021: 00861025 00000000 00000000 00000068  FLOOR t6.x___, void, void, t6.xxxx
0022: 00861003 00006800 00000240 00000000  MUL t6.x___, t6.xxxx, t4.xxxx, void
0023: 00861013 00000000 00000000 00000068  FRC t6.x___, void, void, t6.xxxx
0024: 00861003 00012800 00000350 00000000  MUL t6.x___, u18.xxxx, t6.xxxx, void
0025: 00861003 00006800 00000240 00000000  MUL t6.x___, t6.xxxx, t4.xxxx, void
0026: 00841002 00005800 00000240 00000068  MAD t4.x___, t5.xxxx, t4.xxxx, t6.xxxx
0027: 00851001 1540b800 00000000 20000138  ADD t5.x___, t11.yyyy, void, u19.xxxx
0028: 01041009 00000000 00000000 00000058  MOV t4._y__, void, void, t5.xxxx
0029: 078d1002 00003800 01fe03c0 007fc078  MAD t13, t3.xxxx, t7.wwww, -t7.wwww
0030: 00851002 00003800 01fe0440 007900d8  MAD t5.x___, t3.xxxx, t8.wwww, -t13
0031: 00861090 00003800 00aa09c0 00000002  SET.LT t6.x___, t3.xxxx, u19.yyyy, void
0032: 00871090 2a813800 000001d0 00000000  SET.LT t7.x___, u19.zzzz, t3.xxxx, void
0033: 00861001 00006800 00000000 00000078  ADD t6.x___, t6.xxxx, void, t7.xxxx
0034: 00861090 40006800 00aa09c0 00000002  SET.LT t6.x___, -t6.xxxx, u19.yyyy, void
0035: 00000156 00006800 00aa09c0 00001302  BRANCH.EQ void, t6.xxxx, u19.yyyy, label_0038
0036: 00861009 00000000 00000000 20154138  MOV t6.x___, void, void, u19.yyyy
0037: 00000016 00000000 00000000 00001380  BRANCH void, void, void, label_0039
0038: 00861009 00000000 00000000 00000058  MOV t6.x___, void, void, t5.xxxx
0039: 00851002 1540a800 00000140 000000a8  MAD t5.x___, t10.yyyy, t2.xxxx, t10.xxxx
0040: 078d1003 00005800 00000a40 00000002  MUL t13, t5.xxxx, u20.xxxx, void
0041: 00851022 00000000 00000000 003900d8  SIN t5.x___, void, void, t13
0042: 00871002 1540a800 00000140 000000a8  MAD t7.x___, t10.yyyy, t2.xxxx, t10.xxxx
0043: 078d1003 00007800 00000a40 00000002  MUL t13, t7.xxxx, u20.xxxx, void
0044: 00871023 00000000 00000000 003900d8  COS t7.x___, void, void, t13
0045: 00881003 0000b800 000003c0 00000000  MUL t8.x___, t11.xxxx, t7.xxxx, void
0046: 00881002 1540b800 000002c0 00000088  MAD t8.x___, t11.yyyy, t5.xxxx, t8.xxxx
0047: 00851003 4000b800 000002c0 00000000  MUL t5.x___, -t11.xxxx, t5.xxxx, void
0048: 00851002 1540b800 000003c0 00000058  MAD t5.x___, t11.yyyy, t7.xxxx, t5.xxxx
0049: 03811003 29001800 00000140 00000000  MUL t1.xyz_, t1.xyzz, t2.xxxx, void
0050: 03871003 29008800 00000450 00000000  MUL t7.xyz_, u8.xyzz, t8.xxxx, void
0051: 03851002 29009800 000002d0 00290078  MAD t5.xyz_, u9.xyzz, t5.xxxx, t7.xyzz
0052: 03851003 29005800 00000340 00000000  MUL t5.xyz_, t5.xyzz, t6.xxxx, void
0053: 03851002 29000800 00000140 00290058  MAD t5.xyz_, t0.xyzz, t2.xxxx, t5.xyzz
0054: 03811002 29001800 00000140 00290058  MAD t1.xyz_, t1.xyzz, t2.xxxx, t5.xyzz
0055: 03811001 29001800 00000000 002900c8  ADD t1.xyz_, t1.xyzz, void, t12.xyzz
0056: 03801001 29001800 00000000 20290078  ADD t0.xyz_, t1.xyzz, void, u7.xyzz
0057: 07811003 39000800 00000050 00000000  MUL t1, u0, t0.xxxx, void
0058: 07811002 39001800 00aa0050 00390018  MAD t1, u1, t0.yyyy, t1
0059: 07801002 39002800 01540050 00390018  MAD t0, u2, t0.zzzz, t1
0060: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0061: 01811009 00000000 00000000 00010048  MOV t1.xy__, void, void, t4.xyxx
0062: 02011009 00000000 00000000 00000038  MOV t1.__z_, void, void, t3.xxxx
num loops: 0
num temps: 14
num const: 76
immediates:
 [19].x = 0.500000 (0x3f000000)
 [19].y = 0.000000 (0x00000000)
 [19].z = 1.000000 (0x3f800000)
 [19].w = 0.000000 (0x00000000)
 [20].x = 0.636620 (0x3f22f983)
inputs:
 [11] name=POSITION index=0 comps=4
 [12] name=POSITION index=0 comps=4
 [7] name=POSITION index=0 comps=4
 [8] name=POSITION index=0 comps=4
 [10] name=POSITION index=0 comps=2
 [9] name=POSITION index=0 comps=4
outputs:
 [9] name=GENERIC index=9 comps=4
 [1] name=GENERIC index=10 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0512
  input_count_unk8=0x00000001
