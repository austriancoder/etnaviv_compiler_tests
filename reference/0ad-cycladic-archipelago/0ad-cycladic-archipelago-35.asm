VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL OUT[4], GENERIC[12]
DCL OUT[5], GENERIC[13]
DCL OUT[6], GENERIC[14]
DCL CONST[0..13]
DCL TEMP[0..7], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,    -1.0000,     0.0000}
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[2], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[3]
  4: MUL TEMP[1].xyz, IN[2].xyzz, CONST[6].xyzz
  5: MOV TEMP[2].x, -CONST[7].yyyy
  6: MUL TEMP[3].x, IN[0].xxxx, CONST[7].xxxx
  7: MAD TEMP[3].x, IN[0].zzzz, -TEMP[2].xxxx, TEMP[3].xxxx
  8: MUL TEMP[2].x, IN[0].xxxx, -TEMP[2].xxxx
  9: MAD TEMP[2].x, IN[0].zzzz, -CONST[7].xxxx, TEMP[2].xxxx
 10: MOV TEMP[3].y, TEMP[2].xxxx
 11: MUL TEMP[2], CONST[9], IN[0].xxxx
 12: MAD TEMP[2], CONST[10], IN[0].yyyy, TEMP[2]
 13: MAD TEMP[2], CONST[11], IN[0].zzzz, TEMP[2]
 14: ADD TEMP[2], TEMP[2], CONST[12]
 15: MOV TEMP[4].zw, TEMP[2].wwzw
 16: MUL TEMP[4].xy, TEMP[2].xyyy, CONST[13].xyyy
 17: MUL TEMP[2].xyz, IN[1].xyzz, IN[1].xxxx
 18: ADD TEMP[2].xyz, IMM[0].xyyy, -TEMP[2].xyzz
 19: DP3 TEMP[5].x, TEMP[2].xyzz, TEMP[2].xyzz
 20: RSQ TEMP[5].x, TEMP[5].xxxx
 21: MUL TEMP[2].xyz, TEMP[2].xyzz, TEMP[5].xxxx
 22: MOV TEMP[5].w, IMM[0].zzzz
 23: MOV TEMP[5].xyz, TEMP[2].xyzx
 24: ADD TEMP[6].xyz, CONST[4].xyzz, -IN[0].xyzz
 25: DP3 TEMP[7].x, TEMP[6].xyzz, TEMP[6].xyzz
 26: RSQ TEMP[7].x, TEMP[7].xxxx
 27: MAD TEMP[6].xyz, TEMP[6].xyzz, TEMP[7].xxxx, -CONST[5].xyzz
 28: DP3 TEMP[7].x, TEMP[6].xyzz, TEMP[6].xyzz
 29: RSQ TEMP[7].x, TEMP[7].xxxx
 30: MUL TEMP[6].xyz, TEMP[6].xyzz, TEMP[7].xxxx
 31: MUL TEMP[7].xyz, IN[1].zxyy, TEMP[2].yzxx
 32: MAD TEMP[2].xyz, IN[1].yzxx, TEMP[2].zxyy, -TEMP[7].xyzz
 33: MOV TEMP[2].w, TEMP[6].xxxx
 34: MOV TEMP[6].xy, TEMP[6].yzyy
 35: MOV TEMP[6].zw, TEMP[1].yyxy
 36: MOV TEMP[1].x, TEMP[1].zzzz
 37: MAD TEMP[7].xy, IN[0].xzzz, CONST[8].xxxx, CONST[8].yyyy
 38: MOV TEMP[1].yzw, IN[1].yxyz
 39: MOV TEMP[7].zw, TEMP[3].yyxy
 40: MOV OUT[1], TEMP[4]
 41: MOV OUT[6], TEMP[1]
 42: MOV OUT[4], TEMP[2]
 43: MOV OUT[2], TEMP[5]
 44: MOV OUT[3], TEMP[7]
 45: MOV OUT[0], TEMP[0]
 46: MOV OUT[5], TEMP[6]
 47: END

VERT
0000: 07801003 39000800 00000450 00000000  MUL t0, u0, t8.xxxx, void
0001: 07801002 39001800 00aa0450 00390008  MAD t0, u1, t8.yyyy, t0
0002: 07801002 39002800 01540450 00390008  MAD t0, u2, t8.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0004: 03811003 29001800 01480340 00000002  MUL t1.xyz_, t1.xyzz, u6.xyzz, void
0005: 00821009 00000000 00000000 20554078  MOV t2.x___, void, void, -u7.yyyy
0006: 00831003 00008800 000003c0 00000002  MUL t3.x___, t8.xxxx, u7.xxxx, void
0007: 00831002 2a808800 02000140 00000038  MAD t3.x___, t8.zzzz, -t2.xxxx, t3.xxxx
0008: 00821003 00008800 02000140 00000000  MUL t2.x___, t8.xxxx, -t2.xxxx, void
0009: 00821002 2a808800 020003c0 0000002a  MAD t2.x___, t8.zzzz, -u7.xxxx, t2.xxxx
0010: 01031009 00000000 00000000 00000028  MOV t3._y__, void, void, t2.xxxx
0011: 07821003 39009800 00000450 00000000  MUL t2, u9, t8.xxxx, void
0012: 07821002 3900a800 00aa0450 00390028  MAD t2, u10, t8.yyyy, t2
0013: 07821002 3900b800 01540450 00390028  MAD t2, u11, t8.zzzz, t2
0014: 07821001 39002800 00000000 203900c8  ADD t2, t2, void, u12
0015: 06041009 00000000 00000000 003bc028  MOV t4.__zw, void, void, t2.wwzw
0016: 01841003 15002800 00a806c0 00000002  MUL t4.xy__, t2.xyyy, u13.xyyy, void
0017: 03821003 29009800 000004c0 00000000  MUL t2.xyz_, t9.xyzz, t9.xxxx, void
0018: 03821001 1500e800 00000010 00690028  ADD t2.xyz_, u14.xyyy, void, -t2.xyzz
0019: 00851005 29002800 01480140 00000000  DP3 t5.x___, t2.xyzz, t2.xyzz, void
0020: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0021: 03821003 29002800 000002c0 00000000  MUL t2.xyz_, t2.xyzz, t5.xxxx, void
0022: 04051009 00000000 00000000 202a80e8  MOV t5.___w, void, void, u14.zzzz
0023: 03851009 00000000 00000000 00090028  MOV t5.xyz_, void, void, t2.xyzx
0024: 03861001 29004800 00000010 00690088  ADD t6.xyz_, u4.xyzz, void, -t8.xyzz
0025: 00871005 29006800 01480340 00000000  DP3 t7.x___, t6.xyzz, t6.xyzz, void
0026: 0087100d 00000000 00000000 00000078  RSQ t7.x___, void, void, t7.xxxx
0027: 03861002 29006800 000003c0 20690058  MAD t6.xyz_, t6.xyzz, t7.xxxx, -u5.xyzz
0028: 00871005 29006800 01480340 00000000  DP3 t7.x___, t6.xyzz, t6.xyzz, void
0029: 0087100d 00000000 00000000 00000078  RSQ t7.x___, void, void, t7.xxxx
0030: 03861003 29006800 000003c0 00000000  MUL t6.xyz_, t6.xyzz, t7.xxxx, void
0031: 03871003 14809800 00120140 00000000  MUL t7.xyz_, t9.zxyy, t2.yzxx, void
0032: 03821002 02409800 00a40140 00690078  MAD t2.xyz_, t9.yzxx, t2.zxyy, -t7.xyzz
0033: 04021009 00000000 00000000 00000068  MOV t2.___w, void, void, t6.xxxx
0034: 01861009 00000000 00000000 00164068  MOV t6.xy__, void, void, t6.yzyy
0035: 06061009 00000000 00000000 00114018  MOV t6.__zw, void, void, t1.yyxy
0036: 00811009 00000000 00000000 002a8018  MOV t1.x___, void, void, t1.zzzz
0037: 01871002 2a008800 00000440 2015408a  MAD t7.xy__, t8.xzzz, u8.xxxx, u8.yyyy
0038: 07011009 00000000 00000000 00244098  MOV t1._yzw, void, void, t9.yxyz
0039: 06071009 00000000 00000000 00114038  MOV t7.__zw, void, void, t3.yyxy
num loops: 0
num temps: 10
num const: 56
immediates:
 [14].x = 1.000000 (0x3f800000)
 [14].y = 0.000000 (0x00000000)
 [14].z = -1.000000 (0xbf800000)
 [14].w = 0.000000 (0x00000000)
inputs:
 [8] name=POSITION index=0 comps=3
 [9] name=POSITION index=0 comps=3
 [1] name=POSITION index=0 comps=3
outputs:
 [4] name=GENERIC index=9 comps=4
 [5] name=GENERIC index=10 comps=4
 [7] name=GENERIC index=11 comps=4
 [2] name=GENERIC index=12 comps=4
 [6] name=GENERIC index=13 comps=4
 [1] name=GENERIC index=14 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f060b
  input_count_unk8=0x00000001
