FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], FOG, PERSPECTIVE
DCL IN[2], GENERIC[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL CONST[1..3]
DCL TEMP[0..3], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].xy, IN[2].xyyy
  1: MOV TEMP[0].w, IN[2].wwww
  2: TXP TEMP[0], TEMP[0], SAMP[0], 2D
  3: MUL TEMP[0], TEMP[0], IN[0]
  4: MOV TEMP[1].w, TEMP[0].wwww
  5: MAD_SAT TEMP[2].x, IN[1].xxxx, CONST[1].xxxx, CONST[1].yyyy
  6: ADD TEMP[3].x, IMM[0].xxxx, -TEMP[2].xxxx
  7: MUL TEMP[3].xyz, CONST[2].xyzz, TEMP[3].xxxx
  8: MAD TEMP[1].xyz, TEMP[0].xyzz, TEMP[2].xxxx, TEMP[3].xyzz
  9: MOV OUT[0], TEMP[1]
 10: END

FRAG
0000: 01841009 00000000 00000000 00150038  MOV t4.xy__, void, void, t3.xyyy
0001: 04041009 00000000 00000000 003fc038  MOV t4.___w, void, void, t3.wwww
0002: 0405100c 00000000 00000000 003fc048  RCP t5.___w, void, void, t4.wwww
0003: 03851003 3fc05800 01c80240 00000000  MUL t5.xyz_, t5.wwww, t4, void
0004: 07841018 39005f20 00000000 00000000  TEXLD t4, tex0, t5, void, void
0005: 07841003 39004800 01c800c0 00000000  MUL t4, t4, t1, void
0006: 04031009 00000000 00000000 003fc048  MOV t3.___w, void, void, t4.wwww
0007: 00811802 00002800 000000c0 2015401a  MAD.SAT t1.x___, t2.xxxx, u1.xxxx, u1.yyyy
0008: 00821001 00004800 00000010 00400018  ADD t2.x___, u4.xxxx, void, -t1.xxxx
0009: 03821003 29002800 00000150 00000000  MUL t2.xyz_, u2.xyzz, t2.xxxx, void
0010: 03831002 29004800 000000c0 00290028  MAD t3.xyz_, t4.xyzz, t1.xxxx, t2.xyzz
num loops: 0
num temps: 6
num const: 16
immediates:
 [4].x = 1.000000 (0x3f800000)
 [4].y = 0.000000 (0x00000000)
 [4].z = 0.000000 (0x00000000)
 [4].w = 0.000000 (0x00000000)
inputs:
 [1] name=COLOR index=0 comps=4
 [2] name=FOG index=0 comps=1
 [3] name=GENERIC index=0 comps=4
outputs:
special:
  ps_color_out_reg=3
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
