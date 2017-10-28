
VERT
DCL IN[0]
DCL IN[1]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[19]
DCL CONST[0..9]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  0: MUL TEMP[0], CONST[4], IN[1].xxxx
  1: MAD TEMP[0], CONST[5], IN[1].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[6], IN[1].zzzz, TEMP[0]
  3: ADD TEMP[0].xyz, TEMP[0], CONST[7]
  4: DP3 TEMP[1].x, TEMP[0].xyzz, TEMP[0].xyzz
  5: RSQ TEMP[1].x, TEMP[1].xxxx
  6: MUL TEMP[0].xyz, TEMP[0].xyzz, TEMP[1].xxxx
  7: DP3 TEMP[1].x, CONST[8].xyzz, CONST[8].xyzz
  8: RSQ TEMP[1].x, TEMP[1].xxxx
  9: MUL TEMP[1].xyz, CONST[8].xyzz, TEMP[1].xxxx
 10: DP3 TEMP[0].x, TEMP[0].xyzz, TEMP[1].xyzz
 11: MAX TEMP[0].x, TEMP[0].xxxx, IMM[0].xxxx
 12: MUL TEMP[0], TEMP[0].xxxx, CONST[9]
 13: MUL TEMP[1], CONST[0], IN[0].xxxx
 14: MAD TEMP[1], CONST[1], IN[0].yyyy, TEMP[1]
 15: MAD TEMP[1], CONST[2], IN[0].zzzz, TEMP[1]
 16: ADD TEMP[1], TEMP[1], CONST[3]
 17: MOV OUT[1], TEMP[0]
 18: MOV OUT[0], TEMP[1]
 19: END


VERT
0000: 07801003 39004800 000000d0 00000000  MUL t0, u4, t1.xxxx, void
0001: 07801002 39005800 00aa00d0 00390008  MAD t0, u5, t1.yyyy, t0
0002: 07801002 39006800 015400d0 00390008  MAD t0, u6, t1.zzzz, t0
0003: 03801001 39000800 00000000 20390078  ADD t0.xyz_, t0, void, u7
0004: 00811005 29000800 01480040 00000000  DP3 t1.x___, t0.xyzz, t0.xyzz, void
0005: 0081100d 00000000 00000000 00000018  RSQ t1.x___, void, void, t1.xxxx
0006: 03801003 29000800 000000c0 00000000  MUL t0.xyz_, t0.xyzz, t1.xxxx, void
0007: 00811005 29008800 01480450 00000002  DP3 t1.x___, u8.xyzz, u8.xyzz, void
0008: 0081100d 00000000 00000000 00000018  RSQ t1.x___, void, void, t1.xxxx
0009: 03811003 29008800 000000d0 00000000  MUL t1.xyz_, u8.xyzz, t1.xxxx, void
0010: 00801005 29000800 014800c0 00000000  DP3 t0.x___, t0.xyzz, t1.xyzz, void
0011: 0080108f 00000800 00000540 0000000a  SELECT.LT t0.x___, t0.xxxx, u10.xxxx, t0.xxxx
0012: 07801003 00000800 01c804c0 00000002  MUL t0, t0.xxxx, u9, void
0013: 07811003 39000800 00000150 00000000  MUL t1, u0, t2.xxxx, void
0014: 07811002 39001800 00aa0150 00390018  MAD t1, u1, t2.yyyy, t1
0015: 07811002 39002800 01540150 00390018  MAD t1, u2, t2.zzzz, t1
0016: 07811001 39001800 00000000 20390038  ADD t1, t1, void, u3
num loops: 0
num temps: 3
num const: 40
immediates:
 [10].x = 0.000000 (0x00000000)
 [10].y = 0.000000 (0x00000000)
 [10].z = 0.000000 (0x00000000)
 [10].w = 0.000000 (0x00000000)
inputs:
 [2] name=POSITION index=0 comps=3
 [1] name=POSITION index=0 comps=3
outputs:
 [0] name=GENERIC index=19 comps=4
special:
  vs_pos_out_reg=1
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
