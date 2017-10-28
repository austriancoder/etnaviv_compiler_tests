VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[20]
DCL CONST[0..39]
DCL TEMP[0..4], LOCAL
DCL ADDR[0]
IMM[0] FLT32 {    0.2500,     0.0000,     7.0000,     4.0000}
  0: MUL TEMP[0].x, IN[2].xxxx, IMM[0].xxxx
  1: TRUNC TEMP[0].x, TEMP[0].xxxx
  2: MAX TEMP[1].x, TEMP[0].xxxx, IMM[0].yyyy
  3: MIN TEMP[1].x, TEMP[1].xxxx, IMM[0].zzzz
  4: TRUNC TEMP[1].x, TEMP[1].xxxx
  5: MUL TEMP[1].x, TEMP[1].xxxx, IMM[0].wwww
  6: MAX TEMP[2].x, TEMP[0].xxxx, IMM[0].yyyy
  7: MIN TEMP[2].x, TEMP[2].xxxx, IMM[0].zzzz
  8: TRUNC TEMP[2].x, TEMP[2].xxxx
  9: MUL TEMP[2].x, TEMP[2].xxxx, IMM[0].wwww
 10: MAX TEMP[3].x, TEMP[0].xxxx, IMM[0].yyyy
 11: MIN TEMP[3].x, TEMP[3].xxxx, IMM[0].zzzz
 12: TRUNC TEMP[3].x, TEMP[3].xxxx
 13: MUL TEMP[3].x, TEMP[3].xxxx, IMM[0].wwww
 14: MAX TEMP[4].x, TEMP[0].xxxx, IMM[0].yyyy
 15: MIN TEMP[4].x, TEMP[4].xxxx, IMM[0].zzzz
 16: TRUNC TEMP[4].x, TEMP[4].xxxx
 17: MUL TEMP[4].x, TEMP[4].xxxx, IMM[0].wwww
 18: ARL ADDR[0].x, TEMP[4].xxxx
 19: MUL TEMP[4], CONST[ADDR[0].x], IN[0].xxxx
 20: ARL ADDR[0].x, TEMP[3].xxxx
 21: MAD TEMP[3], CONST[ADDR[0].x+1], IN[0].yyyy, TEMP[4]
 22: ARL ADDR[0].x, TEMP[2].xxxx
 23: MAD TEMP[2], CONST[ADDR[0].x+2], IN[0].zzzz, TEMP[3]
 24: ARL ADDR[0].x, TEMP[1].xxxx
 25: ARL ADDR[0].x, TEMP[1].xxxx
 26: MAD TEMP[1], CONST[ADDR[0].x+3], IN[0].wwww, TEMP[2]
 27: MAX TEMP[0].x, TEMP[0].xxxx, IMM[0].yyyy
 28: MIN TEMP[0].x, TEMP[0].xxxx, IMM[0].zzzz
 29: TRUNC TEMP[0].x, TEMP[0].xxxx
 30: ARL ADDR[0].x, TEMP[0].xxxx
 31: MOV TEMP[0], CONST[ADDR[0].x+32]
 32: MAD TEMP[0].xy, IN[1].xyyy, TEMP[0].zwww, TEMP[0].xyyy
 33: MOV OUT[1], TEMP[0]
 34: MOV OUT[0], TEMP[1]
 35: END


VERT
0000: 00801003 00000800 00001440 00000002  MUL t0.x___, t0.xxxx, u40.xxxx, void
0001: 07851025 00000000 00000000 00800008  FLOOR t5, void, void, |t0.xxxx|
0002: 008013cf 00000800 03c802c0 00390058  SELECT.LZ t0.x___, t0.xxxx, -t5, t5
0003: 0081108f 00000800 00aa1440 0000000a  SELECT.LT t1.x___, t0.xxxx, u40.yyyy, t0.xxxx
0004: 0081104f 00001800 01541440 0000001a  SELECT.GT t1.x___, t1.xxxx, u40.zzzz, t1.xxxx
0005: 07851025 00000000 00000000 00800018  FLOOR t5, void, void, |t1.xxxx|
0006: 008113cf 00001800 03c802c0 00390058  SELECT.LZ t1.x___, t1.xxxx, -t5, t5
0007: 00811003 00001800 01fe1440 00000002  MUL t1.x___, t1.xxxx, u40.wwww, void
0008: 0082108f 00000800 00aa1440 0000000a  SELECT.LT t2.x___, t0.xxxx, u40.yyyy, t0.xxxx
0009: 0082104f 00002800 01541440 0000002a  SELECT.GT t2.x___, t2.xxxx, u40.zzzz, t2.xxxx
0010: 07851025 00000000 00000000 00800028  FLOOR t5, void, void, |t2.xxxx|
0011: 008213cf 00002800 03c802c0 00390058  SELECT.LZ t2.x___, t2.xxxx, -t5, t5
0012: 00821003 00002800 01fe1440 00000002  MUL t2.x___, t2.xxxx, u40.wwww, void
0013: 0083108f 00000800 00aa1440 0000000a  SELECT.LT t3.x___, t0.xxxx, u40.yyyy, t0.xxxx
0014: 0083104f 00003800 01541440 0000003a  SELECT.GT t3.x___, t3.xxxx, u40.zzzz, t3.xxxx
0015: 07851025 00000000 00000000 00800038  FLOOR t5, void, void, |t3.xxxx|
0016: 008313cf 00003800 03c802c0 00390058  SELECT.LZ t3.x___, t3.xxxx, -t5, t5
0017: 00831003 00003800 01fe1440 00000002  MUL t3.x___, t3.xxxx, u40.wwww, void
0018: 0084108f 00000800 00aa1440 0000000a  SELECT.LT t4.x___, t0.xxxx, u40.yyyy, t0.xxxx
0019: 0084104f 00004800 01541440 0000004a  SELECT.GT t4.x___, t4.xxxx, u40.zzzz, t4.xxxx
0020: 07851025 00000000 00000000 00800048  FLOOR t5, void, void, |t4.xxxx|
0021: 008413cf 00004800 03c802c0 00390058  SELECT.LZ t4.x___, t4.xxxx, -t5, t5
0022: 00841003 00004800 01fe1440 00000002  MUL t4.x___, t4.xxxx, u40.wwww, void
0023: 07881025 00000000 00000000 00000048  FLOOR t8, void, void, t4.xxxx
0024: 0080000a 00000000 00000000 00390088  MOVAR a0.x___, void, void, t8
0025: 07841003 39000800 00000351 00000000  MUL t4, u0[a.x], t6.xxxx, void
0026: 07881025 00000000 00000000 00000038  FLOOR t8, void, void, t3.xxxx
0027: 0080000a 00000000 00000000 00390088  MOVAR a0.x___, void, void, t8
0028: 07831002 39001800 00aa0351 00390048  MAD t3, u1[a.x], t6.yyyy, t4
0029: 07881025 00000000 00000000 00000028  FLOOR t8, void, void, t2.xxxx
0030: 0080000a 00000000 00000000 00390088  MOVAR a0.x___, void, void, t8
0031: 07821002 39002800 01540351 00390038  MAD t2, u2[a.x], t6.zzzz, t3
0032: 07881025 00000000 00000000 00000018  FLOOR t8, void, void, t1.xxxx
0033: 0080000a 00000000 00000000 00390088  MOVAR a0.x___, void, void, t8
0034: 07881025 00000000 00000000 00000018  FLOOR t8, void, void, t1.xxxx
0035: 0080000a 00000000 00000000 00390088  MOVAR a0.x___, void, void, t8
0036: 07811002 39003800 01fe0351 00390028  MAD t1, u3[a.x], t6.wwww, t2
0037: 0080108f 00000800 00aa1440 0000000a  SELECT.LT t0.x___, t0.xxxx, u40.yyyy, t0.xxxx
0038: 0080104f 00000800 01541440 0000000a  SELECT.GT t0.x___, t0.xxxx, u40.zzzz, t0.xxxx
0039: 07851025 00000000 00000000 00800008  FLOOR t5, void, void, |t0.xxxx|
0040: 008013cf 00000800 03c802c0 00390058  SELECT.LZ t0.x___, t0.xxxx, -t5, t5
0041: 07881025 00000000 00000000 00000008  FLOOR t8, void, void, t0.xxxx
0042: 0080000a 00000000 00000000 00390088  MOVAR a0.x___, void, void, t8
0043: 07801009 00000000 00000000 22390208  MOV t0, void, void, u32[a.x]
0044: 01801002 15007800 01fc0040 00150008  MAD t0.xy__, t7.xyyy, t0.zwww, t0.xyyy
num loops: 0
num temps: 9
num const: 160
immediates:
 [40].x = 0.250000 (0x3e800000)
 [40].y = 0.000000 (0x00000000)
 [40].z = 7.000000 (0x40e00000)
 [40].w = 4.000000 (0x40800000)
 [41].x = 0.000000 (0x00000000)
 [41].y = 1.000000 (0x3f800000)
 [41].z = 128.000000 (0x43000000)
 [41].w = 0.000000 (0x00000000)
inputs:
 [6] name=POSITION index=0 comps=4
 [7] name=POSITION index=0 comps=2
 [0] name=POSITION index=0 comps=1
outputs:
 [0] name=GENERIC index=20 comps=4
special:
  vs_pos_out_reg=1
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001