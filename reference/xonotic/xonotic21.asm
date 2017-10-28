FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], GENERIC[0], PERSPECTIVE
DCL IN[2], GENERIC[1], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    4.0000,     1.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].xy, IN[1].xyyy
  1: MOV TEMP[0].w, IN[1].wwww
  2: TXP TEMP[0], TEMP[0], SAMP[1], 2D
  3: MUL TEMP[0].xyz, TEMP[0], IN[0]
  4: MOV TEMP[0].xyz, TEMP[0].xyzx
  5: MOV TEMP[0].w, IN[0].wwww
  6: MOV TEMP[1].xy, IN[2].xyyy
  7: MOV TEMP[1].w, IN[2].wwww
  8: TXP TEMP[1], TEMP[1], SAMP[0], 2D
  9: MUL TEMP[0], TEMP[1], TEMP[0]
 10: MUL_SAT TEMP[0], TEMP[0], IMM[0].xxxy
 11: MOV OUT[0], TEMP[0]
 12: END

FRAG
0000: 01841009 00000000 00000000 00150028  MOV t4.xy__, void, void, t2.xyyy
0001: 04041009 00000000 00000000 003fc028  MOV t4.___w, void, void, t2.wwww
0002: 0405100c 00000000 00000000 003fc048  RCP t5.___w, void, void, t4.wwww
0003: 03851003 3fc05800 01c80240 00000000  MUL t5.xyz_, t5.wwww, t4, void
0004: 0f841018 39005f20 00000000 00000000  TEXLD t4, tex1, t5, void, void
0005: 03841003 39004800 01c800c0 00000000  MUL t4.xyz_, t4, t1, void
0006: 03841009 00000000 00000000 00090048  MOV t4.xyz_, void, void, t4.xyzx
0007: 04041009 00000000 00000000 003fc018  MOV t4.___w, void, void, t1.wwww
0008: 01821009 00000000 00000000 00150038  MOV t2.xy__, void, void, t3.xyyy
0009: 04021009 00000000 00000000 003fc038  MOV t2.___w, void, void, t3.wwww
0010: 0405100c 00000000 00000000 003fc028  RCP t5.___w, void, void, t2.wwww
0011: 03851003 3fc05800 01c80140 00000000  MUL t5.xyz_, t5.wwww, t2, void
0012: 07821018 39005f20 00000000 00000000  TEXLD t2, tex0, t5, void, void
0013: 07841003 39002800 01c80240 00000000  MUL t4, t2, t4, void
0014: 07841803 39004800 00800040 00000002  MUL.SAT t4, t4, u0.xxxy, void
num loops: 0
num temps: 6
num const: 0
immediates:
 [0].x = 4.000000 (0x40800000)
 [0].y = 1.000000 (0x3f800000)
 [0].z = 0.000000 (0x00000000)
 [0].w = 0.000000 (0x00000000)
inputs:
 [1] name=COLOR index=0 comps=4
 [2] name=GENERIC index=0 comps=4
 [3] name=GENERIC index=1 comps=4
outputs:
special:
  ps_color_out_reg=4
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
