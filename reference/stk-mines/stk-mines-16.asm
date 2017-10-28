FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], FOG, PERSPECTIVE
DCL IN[2], GENERIC[0], PERSPECTIVE
DCL IN[3], GENERIC[1], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL CONST[2..4]
DCL TEMP[0..3], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].xy, IN[3].xyyy
  1: MOV TEMP[0].w, IN[3].wwww
  2: TXP TEMP[0], TEMP[0], SAMP[0], 2D
  3: MOV TEMP[1].xy, IN[2].xyyy
  4: MOV TEMP[1].w, IN[2].wwww
  5: TXP TEMP[1], TEMP[1], SAMP[1], 2D
  6: MUL TEMP[1], TEMP[1], IN[0]
  7: MUL TEMP[0], TEMP[0], TEMP[1]
  8: MOV TEMP[1].w, TEMP[0].wwww
  9: MAD_SAT TEMP[2].x, IN[1].xxxx, CONST[2].xxxx, CONST[2].yyyy
 10: ADD TEMP[3].x, IMM[0].xxxx, -TEMP[2].xxxx
 11: MUL TEMP[3].xyz, CONST[3].xyzz, TEMP[3].xxxx
 12: MAD TEMP[1].xyz, TEMP[0].xyzz, TEMP[2].xxxx, TEMP[3].xyzz
 13: MOV OUT[0], TEMP[1]
 14: END

FRAG
0000: 01851009 00000000 00000000 00150048  MOV t5.xy__, void, void, t4.xyyy
0001: 04051009 00000000 00000000 003fc048  MOV t5.___w, void, void, t4.wwww
0002: 0406100c 00000000 00000000 003fc058  RCP t6.___w, void, void, t5.wwww
0003: 03861003 3fc06800 01c802c0 00000000  MUL t6.xyz_, t6.wwww, t5, void
0004: 07851018 39006f20 00000000 00000000  TEXLD t5, tex0, t6, void, void
0005: 01841009 00000000 00000000 00150038  MOV t4.xy__, void, void, t3.xyyy
0006: 04041009 00000000 00000000 003fc038  MOV t4.___w, void, void, t3.wwww
0007: 0406100c 00000000 00000000 003fc048  RCP t6.___w, void, void, t4.wwww
0008: 03861003 3fc06800 01c80240 00000000  MUL t6.xyz_, t6.wwww, t4, void
0009: 0f841018 39006f20 00000000 00000000  TEXLD t4, tex1, t6, void, void
0010: 07841003 39004800 01c800c0 00000000  MUL t4, t4, t1, void
0011: 07851003 39005800 01c80240 00000000  MUL t5, t5, t4, void
0012: 04041009 00000000 00000000 003fc058  MOV t4.___w, void, void, t5.wwww
0013: 00831802 00002800 00000140 2015402a  MAD.SAT t3.x___, t2.xxxx, u2.xxxx, u2.yyyy
0014: 00811001 00005800 00000010 00400038  ADD t1.x___, u5.xxxx, void, -t3.xxxx
0015: 03811003 29003800 000000d0 00000000  MUL t1.xyz_, u3.xyzz, t1.xxxx, void
0016: 03841002 29005800 000001c0 00290018  MAD t4.xyz_, t5.xyzz, t3.xxxx, t1.xyzz
num loops: 0
num temps: 7
num const: 20
immediates:
 [5].x = 1.000000 (0x3f800000)
 [5].y = 0.000000 (0x00000000)
 [5].z = 0.000000 (0x00000000)
 [5].w = 0.000000 (0x00000000)
inputs:
 [1] name=COLOR index=0 comps=4
 [2] name=FOG index=0 comps=1
 [3] name=GENERIC index=0 comps=4
 [4] name=GENERIC index=1 comps=4
outputs:
special:
  ps_color_out_reg=4
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
