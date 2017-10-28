VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL CONST[0..11]
DCL TEMP[0..3], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  0: MUL TEMP[0], CONST[0], IN[0].xxxx
  1: MAD TEMP[0], CONST[1], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[2], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[3]
  4: DP3 TEMP[1].x, IN[1].xyzz, -CONST[4].xyzz
  5: MAX TEMP[1].x, IMM[0].xxxx, TEMP[1].xxxx
  6: MUL TEMP[1].xyz, TEMP[1].xxxx, CONST[5].xyzz
  7: MUL TEMP[2], CONST[7], IN[0].xxxx
  8: MAD TEMP[2], CONST[8], IN[0].yyyy, TEMP[2]
  9: MAD TEMP[2], CONST[9], IN[0].zzzz, TEMP[2]
 10: ADD TEMP[2], TEMP[2], CONST[10]
 11: MOV TEMP[3].zw, TEMP[2].wwzw
 12: MUL TEMP[3].xy, TEMP[2].xyyy, CONST[11].xyyy
 13: MAD TEMP[2].xy, IN[0].xzzz, CONST[6].xxxx, CONST[6].yyyy
 14: MOV TEMP[2].zw, IN[2].yyxy
 15: MOV OUT[2], TEMP[3]
 16: MOV OUT[1], TEMP[1]
 17: MOV OUT[3], TEMP[2]
 18: MOV OUT[0], TEMP[0]
 19: END

VERT
0000: 07801003 39000800 00000250 00000000  MUL t0, u0, t4.xxxx, void
0001: 07801002 39001800 00aa0250 00390008  MAD t0, u1, t4.yyyy, t0
0002: 07801002 39002800 01540250 00390008  MAD t0, u2, t4.zzzz, t0
0003: 07801001 39000800 00000000 20390038  ADD t0, t0, void, u3
0004: 00811005 29001800 03480240 00000002  DP3 t1.x___, t1.xyzz, -u4.xyzz, void
0005: 0081108f 0000c800 000000d0 200000c8  SELECT.LT t1.x___, u12.xxxx, t1.xxxx, u12.xxxx
0006: 03811003 00001800 014802c0 00000002  MUL t1.xyz_, t1.xxxx, u5.xyzz, void
0007: 07821003 39007800 00000250 00000000  MUL t2, u7, t4.xxxx, void
0008: 07821002 39008800 00aa0250 00390028  MAD t2, u8, t4.yyyy, t2
0009: 07821002 39009800 01540250 00390028  MAD t2, u9, t4.zzzz, t2
0010: 07821001 39002800 00000000 203900a8  ADD t2, t2, void, u10
0011: 06031009 00000000 00000000 003bc028  MOV t3.__zw, void, void, t2.wwzw
0012: 01831003 15002800 00a805c0 00000002  MUL t3.xy__, t2.xyyy, u11.xyyy, void
0013: 01821002 2a004800 00000340 2015406a  MAD t2.xy__, t4.xzzz, u6.xxxx, u6.yyyy
0014: 06021009 00000000 00000000 00114058  MOV t2.__zw, void, void, t5.yyxy
num loops: 0
num temps: 6
num const: 48
immediates:
 [12].x = 0.000000 (0x00000000)
 [12].y = 0.000000 (0x00000000)
 [12].z = 0.000000 (0x00000000)
 [12].w = 0.000000 (0x00000000)
inputs:
 [4] name=POSITION index=0 comps=3
 [1] name=POSITION index=0 comps=3
 [5] name=POSITION index=0 comps=2
outputs:
 [1] name=GENERIC index=9 comps=4
 [3] name=GENERIC index=10 comps=4
 [2] name=GENERIC index=11 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0512
  input_count_unk8=0x00000001
