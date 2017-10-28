VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[0]
DCL OUT[2], GENERIC[20]
DCL OUT[3], GENERIC[21]
DCL OUT[4], GENERIC[22]
DCL CONST[0..11]
DCL TEMP[0..2], ARRAY(1), LOCAL
DCL TEMP[3..6], LOCAL
  0: MOV TEMP[0], CONST[1].xyzz
  1: MOV TEMP[1], CONST[2].xyzz
  2: MOV TEMP[2], CONST[3].xyzz
  3: MUL TEMP[3].xyz, TEMP[0].xyzz, IN[1].xxxx
  4: MAD TEMP[3].xyz, TEMP[1].xyzz, IN[1].yyyy, TEMP[3].xyzz
  5: MAD TEMP[3].xyz, TEMP[2].xyzz, IN[1].zzzz, TEMP[3].xyzz
  6: DP3 TEMP[4].x, TEMP[3].xyzz, TEMP[3].xyzz
  7: RSQ TEMP[4].x, TEMP[4].xxxx
  8: MUL TEMP[3].xyz, TEMP[3].xyzz, TEMP[4].xxxx
  9: DP3 TEMP[4].x, TEMP[0].xyzz, TEMP[0].xyzz
 10: RSQ TEMP[4].x, TEMP[4].xxxx
 11: MUL TEMP[4].xyz, TEMP[0].xyzz, TEMP[4].xxxx
 12: MUL TEMP[5].xyz, TEMP[3].zxyy, TEMP[4].yzxx
 13: MAD TEMP[5].xyz, TEMP[3].yzxx, TEMP[4].zxyy, -TEMP[5].xyzz
 14: MUL TEMP[6], CONST[8], IN[0].xxxx
 15: MAD TEMP[6], CONST[9], IN[0].yyyy, TEMP[6]
 16: MAD TEMP[6], CONST[10], IN[0].zzzz, TEMP[6]
 17: MAD TEMP[6].xyz, CONST[11], IN[0].wwww, TEMP[6]
 18: DP3 TEMP[4].x, CONST[0].xyzz, TEMP[4].xyzz
 19: DP3 TEMP[5].x, CONST[0].xyzz, TEMP[5].xyzz
 20: MOV TEMP[4].y, TEMP[5].xxxx
 21: DP3 TEMP[3].x, CONST[0].xyzz, TEMP[3].xyzz
 22: MOV TEMP[4].z, TEMP[3].xxxx
 23: DP3 TEMP[3].x, TEMP[4].xyzz, TEMP[4].xyzz
 24: RSQ TEMP[3].x, TEMP[3].xxxx
 25: MUL TEMP[3].xyz, TEMP[4].xyzz, TEMP[3].xxxx
 26: DP3 TEMP[4].x, TEMP[6].xyzz, TEMP[6].xyzz
 27: RSQ TEMP[4].x, TEMP[4].xxxx
 28: MUL TEMP[4].xyz, TEMP[6].xyzz, TEMP[4].xxxx
 29: MOV TEMP[4].xyz, -TEMP[4].xyzx
 30: DP3 TEMP[5].x, TEMP[4].xyzz, TEMP[4].xyzz
 31: RSQ TEMP[5].x, TEMP[5].xxxx
 32: MUL TEMP[4].xyz, TEMP[4].xyzz, TEMP[5].xxxx
 33: MUL TEMP[5], CONST[4], IN[0].xxxx
 34: MAD TEMP[5], CONST[5], IN[0].yyyy, TEMP[5]
 35: MAD TEMP[5], CONST[6], IN[0].zzzz, TEMP[5]
 36: MAD TEMP[5], CONST[7], IN[0].wwww, TEMP[5]
 37: MOV TEMP[3].xyz, TEMP[3].xyzx
 38: MOV TEMP[3].w, TEMP[4].xxxx
 39: MOV TEMP[4].xy, TEMP[4].yzyy
 40: MOV OUT[3], TEMP[3]
 41: MOV OUT[1], IN[2]
 42: MOV OUT[4], TEMP[4]
 43: MOV OUT[2], TEMP[5]
 44: MOV OUT[0], TEMP[5]
 45: END

VERT
0000: 07801009 00000000 00000000 20290018  MOV t0, void, void, u1.xyzz
0001: 07811009 00000000 00000000 20290028  MOV t1, void, void, u2.xyzz
0002: 07821009 00000000 00000000 20290038  MOV t2, void, void, u3.xyzz
0003: 03831003 29000800 00000240 00000000  MUL t3.xyz_, t0.xyzz, t4.xxxx, void
0004: 03831002 29001800 00aa0240 00290038  MAD t3.xyz_, t1.xyzz, t4.yyyy, t3.xyzz
0005: 03831002 29002800 01540240 00290038  MAD t3.xyz_, t2.xyzz, t4.zzzz, t3.xyzz
0006: 00841005 29003800 014801c0 00000000  DP3 t4.x___, t3.xyzz, t3.xyzz, void
0007: 0084100d 00000000 00000000 00000048  RSQ t4.x___, void, void, t4.xxxx
0008: 03831003 29003800 00000240 00000000  MUL t3.xyz_, t3.xyzz, t4.xxxx, void
0009: 00841005 29000800 01480040 00000000  DP3 t4.x___, t0.xyzz, t0.xyzz, void
0010: 0084100d 00000000 00000000 00000048  RSQ t4.x___, void, void, t4.xxxx
0011: 03841003 29000800 00000240 00000000  MUL t4.xyz_, t0.xyzz, t4.xxxx, void
0012: 03851003 14803800 00120240 00000000  MUL t5.xyz_, t3.zxyy, t4.yzxx, void
0013: 03851002 02403800 00a40240 00690058  MAD t5.xyz_, t3.yzxx, t4.zxyy, -t5.xyzz
0014: 07861003 39008800 00000450 00000000  MUL t6, u8, t8.xxxx, void
0015: 07861002 39009800 00aa0450 00390068  MAD t6, u9, t8.yyyy, t6
0016: 07861002 3900a800 01540450 00390068  MAD t6, u10, t8.zzzz, t6
0017: 03861002 3900b800 01fe0450 00390068  MAD t6.xyz_, u11, t8.wwww, t6
0018: 00841005 29000800 01480250 00000000  DP3 t4.x___, u0.xyzz, t4.xyzz, void
0019: 00851005 29000800 014802d0 00000000  DP3 t5.x___, u0.xyzz, t5.xyzz, void
0020: 01041009 00000000 00000000 00000058  MOV t4._y__, void, void, t5.xxxx
0021: 00831005 29000800 014801d0 00000000  DP3 t3.x___, u0.xyzz, t3.xyzz, void
0022: 02041009 00000000 00000000 00000038  MOV t4.__z_, void, void, t3.xxxx
0023: 00831005 29004800 01480240 00000000  DP3 t3.x___, t4.xyzz, t4.xyzz, void
0024: 0083100d 00000000 00000000 00000038  RSQ t3.x___, void, void, t3.xxxx
0025: 03831003 29004800 000001c0 00000000  MUL t3.xyz_, t4.xyzz, t3.xxxx, void
0026: 00841005 29006800 01480340 00000000  DP3 t4.x___, t6.xyzz, t6.xyzz, void
0027: 0084100d 00000000 00000000 00000048  RSQ t4.x___, void, void, t4.xxxx
0028: 03841003 29006800 00000240 00000000  MUL t4.xyz_, t6.xyzz, t4.xxxx, void
0029: 03841009 00000000 00000000 00490048  MOV t4.xyz_, void, void, -t4.xyzx
0030: 00851005 29004800 01480240 00000000  DP3 t5.x___, t4.xyzz, t4.xyzz, void
0031: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0032: 03841003 29004800 000002c0 00000000  MUL t4.xyz_, t4.xyzz, t5.xxxx, void
0033: 07851003 39004800 00000450 00000000  MUL t5, u4, t8.xxxx, void
0034: 07851002 39005800 00aa0450 00390058  MAD t5, u5, t8.yyyy, t5
0035: 07851002 39006800 01540450 00390058  MAD t5, u6, t8.zzzz, t5
0036: 07851002 39007800 01fe0450 00390058  MAD t5, u7, t8.wwww, t5
0037: 03831009 00000000 00000000 00090038  MOV t3.xyz_, void, void, t3.xyzx
0038: 04031009 00000000 00000000 00000048  MOV t3.___w, void, void, t4.xxxx
0039: 01841009 00000000 00000000 00164048  MOV t4.xy__, void, void, t4.yzyy
0040: 07811009 00000000 00000000 00390058  MOV t1, void, void, t5
num loops: 0
num temps: 9
num const: 48
immediates:
inputs:
 [8] name=POSITION index=0 comps=4
 [4] name=POSITION index=0 comps=3
 [7] name=POSITION index=0 comps=4
outputs:
 [7] name=GENERIC index=0 comps=4
 [1] name=GENERIC index=20 comps=4
 [3] name=GENERIC index=21 comps=4
 [4] name=GENERIC index=22 comps=4
special:
  vs_pos_out_reg=5
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f050d
  input_count_unk8=0x00000001
