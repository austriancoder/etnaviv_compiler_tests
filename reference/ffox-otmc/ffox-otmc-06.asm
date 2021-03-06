VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL CONST[0..12]
DCL TEMP[0..2], LOCAL
DCL ADDR[0]
IMM[0] FLT32 {    0.0000,     1.0000,     0.0000,     0.0000}
  0: TRUNC TEMP[0].x, IN[0].wwww
  1: ARL ADDR[0].x, TEMP[0].xxxx
  2: MOV TEMP[0], CONST[ADDR[0].x+4]
  3: MAD TEMP[0].xy, IN[0].xyyy, TEMP[0].zwww, TEMP[0].xyyy
  4: MUL TEMP[1], CONST[8], TEMP[0].xxxx
  5: MAD TEMP[0], CONST[9], TEMP[0].yyyy, TEMP[1]
  6: ADD TEMP[0], TEMP[0], CONST[11]
  7: MOV TEMP[1].w, TEMP[0].wwww
  8: RCP TEMP[2].x, TEMP[0].wwww
  9: MUL TEMP[1].xyz, TEMP[0].xyzz, TEMP[2].xxxx
 10: ADD TEMP[1], TEMP[1], -CONST[12]
 11: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[1].wwww
 12: MUL TEMP[0], CONST[0], TEMP[1].xxxx
 13: MAD TEMP[0], CONST[1], TEMP[1].yyyy, TEMP[0]
 14: MAD TEMP[0], CONST[2], TEMP[1].zzzz, TEMP[0]
 15: MAD TEMP[0], CONST[3], TEMP[1].wwww, TEMP[0]
 16: MOV OUT[0], TEMP[0]
 17: END

VERT
0000: 07831025 00000000 00000000 00bfc018  FLOOR t3, void, void, |t1.wwww|
0001: 008013cf 3fc01800 03c801c0 00390038  SELECT.LZ t0.x___, t1.wwww, -t3, t3
0002: 07841025 00000000 00000000 00000008  FLOOR t4, void, void, t0.xxxx
0003: 0080000a 00000000 00000000 00390048  MOVAR a0.x___, void, void, t4
0004: 07801009 00000000 00000000 22390048  MOV t0, void, void, u4[a.x]
0005: 01801002 15001800 01fc0040 00150008  MAD t0.xy__, t1.xyyy, t0.zwww, t0.xyyy
0006: 07811003 39008800 00000050 00000000  MUL t1, u8, t0.xxxx, void
0007: 07801002 39009800 00aa0050 00390018  MAD t0, u9, t0.yyyy, t1
0008: 07801001 39000800 00000000 203900b8  ADD t0, t0, void, u11
0009: 04011009 00000000 00000000 003fc008  MOV t1.___w, void, void, t0.wwww
0010: 0082100c 00000000 00000000 003fc008  RCP t2.x___, void, void, t0.wwww
0011: 03811003 29000800 00000140 00000000  MUL t1.xyz_, t0.xyzz, t2.xxxx, void
0012: 07811001 39001800 00000000 207900c8  ADD t1, t1, void, -u12
0013: 03811003 29001800 01fe00c0 00000000  MUL t1.xyz_, t1.xyzz, t1.wwww, void
0014: 07801003 39000800 000000d0 00000000  MUL t0, u0, t1.xxxx, void
0015: 07801002 39001800 00aa00d0 00390008  MAD t0, u1, t1.yyyy, t0
0016: 07801002 39002800 015400d0 00390008  MAD t0, u2, t1.zzzz, t0
0017: 07801002 39003800 01fe00d0 00390008  MAD t0, u3, t1.wwww, t0
num loops: 0
num temps: 5
num const: 52
immediates:
 [13].x = 0.000000 (0x00000000)
 [13].y = 1.000000 (0x3f800000)
 [13].z = 0.000000 (0x00000000)
 [13].w = 0.000000 (0x00000000)
 [14].x = 0.000000 (0x00000000)
 [14].y = 1.000000 (0x3f800000)
 [14].z = 128.000000 (0x43000000)
 [14].w = 0.000000 (0x00000000)
inputs:
 [1] name=POSITION index=0 comps=4
outputs:
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
