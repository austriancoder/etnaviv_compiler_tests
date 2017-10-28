VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL OUT[4], GENERIC[12]
DCL CONST[0..11]
DCL TEMP[0..6], LOCAL
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[2], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[3]
  4: MUL TEMP[1].xyz, IN[1].xyzz, CONST[4].xyzz
  5: MOV TEMP[2].x, -CONST[5].yyyy
  6: MUL TEMP[3].x, IN[0].xxxx, CONST[5].xxxx
  7: MAD TEMP[3].x, IN[0].zzzz, -TEMP[2].xxxx, TEMP[3].xxxx
  8: MUL TEMP[2].x, IN[0].xxxx, -TEMP[2].xxxx
  9: MAD TEMP[2].x, IN[0].zzzz, -CONST[5].xxxx, TEMP[2].xxxx
 10: MOV TEMP[3].y, TEMP[2].xxxx
 11: MUL TEMP[2], CONST[7], IN[0].xxxx
 12: MAD TEMP[2], CONST[8], IN[0].yyyy, TEMP[2]
 13: MAD TEMP[2], CONST[9], IN[0].zzzz, TEMP[2]
 14: ADD TEMP[2], TEMP[2], CONST[10]
 15: MOV TEMP[4].zw, TEMP[2].wwzw
 16: MUL TEMP[4].xy, TEMP[2].xyyy, CONST[11].xyyy
 17: MOV TEMP[2].xy, IN[2].xyxx
 18: MOV TEMP[5].zw, TEMP[1].yyxy
 19: MOV TEMP[1].x, TEMP[1].zzzz
 20: MAD TEMP[6].xy, IN[0].xzzz, CONST[6].xxxx, CONST[6].yyyy
 21: MOV TEMP[2].zw, TEMP[6].yyxy
 22: MOV TEMP[5].xy, TEMP[3].xyxx
 23: MOV OUT[2], TEMP[2]
 24: MOV OUT[1], TEMP[4]
 25: MOV OUT[3], TEMP[5]
 26: MOV OUT[4], TEMP[1]
 27: MOV OUT[0], TEMP[0]
 28: END

VERT
0000: 07801003 39000800 00000350 00000000  MUL t0, u0, t6.xxxx, void
0001: 07801002 39001800 00aa0350 00390008  MAD t0, u1, t6.yyyy, t0
0002: 07801002 39002800 01540350 00390008  MAD t0, u2, t6.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0004: 03811003 29001800 01480240 00000002  MUL t1.xyz_, t1.xyzz, u4.xyzz, void
0005: 00821009 00000000 00000000 20554058  MOV t2.x___, void, void, -u5.yyyy
0006: 00831003 00006800 000002c0 00000002  MUL t3.x___, t6.xxxx, u5.xxxx, void
0007: 00831002 2a806800 02000140 00000038  MAD t3.x___, t6.zzzz, -t2.xxxx, t3.xxxx
0008: 00821003 00006800 02000140 00000000  MUL t2.x___, t6.xxxx, -t2.xxxx, void
0009: 00821002 2a806800 020002c0 0000002a  MAD t2.x___, t6.zzzz, -u5.xxxx, t2.xxxx
0010: 01031009 00000000 00000000 00000028  MOV t3._y__, void, void, t2.xxxx
0011: 07821003 39007800 00000350 00000000  MUL t2, u7, t6.xxxx, void
0012: 07821002 39008800 00aa0350 00390028  MAD t2, u8, t6.yyyy, t2
0013: 07821002 39009800 01540350 00390028  MAD t2, u9, t6.zzzz, t2
0014: 07821001 39002800 00000000 203900a8  ADD t2, t2, void, u10
0015: 06041009 00000000 00000000 003bc028  MOV t4.__zw, void, void, t2.wwzw
0016: 01841003 15002800 00a805c0 00000002  MUL t4.xy__, t2.xyyy, u11.xyyy, void
0017: 01821009 00000000 00000000 00010058  MOV t2.xy__, void, void, t5.xyxx
0018: 06051009 00000000 00000000 00114018  MOV t5.__zw, void, void, t1.yyxy
0019: 00811009 00000000 00000000 002a8018  MOV t1.x___, void, void, t1.zzzz
0020: 01861002 2a006800 00000340 2015406a  MAD t6.xy__, t6.xzzz, u6.xxxx, u6.yyyy
0021: 06021009 00000000 00000000 00114068  MOV t2.__zw, void, void, t6.yyxy
0022: 01851009 00000000 00000000 00010038  MOV t5.xy__, void, void, t3.xyxx
num loops: 0
num temps: 7
num const: 48
immediates:
inputs:
 [6] name=POSITION index=0 comps=3
 [1] name=POSITION index=0 comps=3
 [5] name=POSITION index=0 comps=2
outputs:
 [4] name=GENERIC index=9 comps=4
 [2] name=GENERIC index=10 comps=4
 [5] name=GENERIC index=11 comps=4
 [1] name=GENERIC index=12 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f050d
  input_count_unk8=0x00000001
