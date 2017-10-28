FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[9], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0..2], LOCAL
IMM[0] FLT32 {    0.2500,     4.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].xyz, IN[0].xyzz
  1: TEX TEMP[0], TEMP[0], SAMP[0], CUBE
  2: ADD TEMP[1].x, IMM[0].xxxx, -IN[0].yyyy
  3: MUL TEMP[1].x, TEMP[1].xxxx, IMM[0].yyyy
  4: SLT TEMP[2].x, IMM[0].zzzz, IN[0].yyyy
  5: IF TEMP[2].xxxx :0
  6:   MUL TEMP[1], TEMP[0], TEMP[1].xxxx
  7: ELSE :0
  8:   MOV TEMP[1], TEMP[0]
  9: ENDIF
 10: MOV OUT[0], TEMP[1]
 11: END

FRAG
0000: 03831009 00000000 00000000 00290018  MOV t3.xyz_, void, void, t1.xyzz
0001: 07831018 39003f20 00000000 00000000  TEXLD t3, tex0, t3, void, void
0002: 00821001 00000800 00000010 00554018  ADD t2.x___, u0.xxxx, void, -t1.yyyy
0003: 00821003 00002800 00aa0040 00000002  MUL t2.x___, t2.xxxx, u0.yyyy, void
0004: 00811090 2a800800 00aa00d0 00000000  SET.LT t1.x___, u0.zzzz, t1.yyyy, void
0005: 00000156 00001800 01540040 00000402  BRANCH.EQ void, t1.xxxx, u0.zzzz, label_0008
0006: 07821003 39003800 00000140 00000000  MUL t2, t3, t2.xxxx, void
0007: 00000016 00000000 00000000 00000480  BRANCH void, void, void, label_0009
0008: 07821009 00000000 00000000 00390038  MOV t2, void, void, t3
0009: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 4
num const: 0
immediates:
 [0].x = 0.250000 (0x3e800000)
 [0].y = 4.000000 (0x40800000)
 [0].z = 0.000000 (0x00000000)
 [0].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=9 comps=3
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
