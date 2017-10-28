FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL IN[2], GENERIC[22], PERSPECTIVE
DCL IN[3], GENERIC[23], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL CONST[2]
DCL TEMP[0..2], LOCAL
IMM[0] FLT32 {    0.0500,     0.0417,     0.0250,     0.0208}
IMM[1] FLT32 {    2.0000,    -0.3000,     0.0000,     0.0000}
IMM[2] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[3]
  0: MOV TEMP[0].xy, IN[1].zwzz
  1: MOV TEMP[0].z, IN[2].xxxx
  2: MUL TEMP[1].x, IN[0].xxxx, IMM[0].yyyy
  3: MAD TEMP[1].x, CONST[2].xxxx, IMM[0].xxxx, TEMP[1].xxxx
  4: ADD TEMP[2].x, IN[0].zzzz, -IN[0].yyyy
  5: MUL TEMP[2].x, TEMP[2].xxxx, IMM[0].wwww
  6: MAD TEMP[2].x, CONST[2].xxxx, IMM[0].zzzz, TEMP[2].xxxx
  7: MOV TEMP[1].y, TEMP[2].xxxx
  8: MOV TEMP[2].xy, IN[1].xyyy
  9: TEX TEMP[2], TEMP[2], SAMP[0], 2D
 10: ADD TEMP[0].xyz, IN[2].yzww, TEMP[0].xyzz
 11: MOV TEMP[1].xy, TEMP[1].xyyy
 12: TEX TEMP[1].xyz, TEMP[1], SAMP[1], 2D
 13: ADD TEMP[0].xyz, TEMP[0].xyzz, TEMP[1].xyzz
 14: MUL TEMP[0].xyz, TEMP[0].xyzz, TEMP[2].xyzz
 15: LG2 TEMP[3].x, IN[3].xxxx
 16: MUL TEMP[3].x, IMM[1].xxxx, TEMP[3].xxxx
 17: EX2 TEMP[1].x, TEMP[3].xxxx
 18: ADD TEMP[1].x, TEMP[2].wwww, TEMP[1].xxxx
 19: ADD TEMP[1].x, TEMP[1].xxxx, IMM[1].yyyy
 20: MOV TEMP[0].w, TEMP[1].xxxx
 21: MOV OUT[0], TEMP[0]
 22: END

FRAG
0000: 01851009 00000000 00000000 002b8028  MOV t5.xy__, void, void, t2.zwzz
0001: 02051009 00000000 00000000 00000038  MOV t5.__z_, void, void, t3.xxxx
0002: 00861003 00001800 00aa01c0 00000002  MUL t6.x___, t1.xxxx, u3.yyyy, void
0003: 07871009 00000000 00000000 20000038  MOV t7, void, void, u3.xxxx
0004: 00861002 00002800 01c803d0 00000068  MAD t6.x___, u2.xxxx, t7, t6.xxxx
0005: 00811001 2a801800 00000000 00554018  ADD t1.x___, t1.zzzz, void, -t1.yyyy
0006: 00811003 00001800 01fe01c0 00000002  MUL t1.x___, t1.xxxx, u3.wwww, void
0007: 07871009 00000000 00000000 202a8038  MOV t7, void, void, u3.zzzz
0008: 00811002 00002800 01c803d0 00000018  MAD t1.x___, u2.xxxx, t7, t1.xxxx
0009: 01061009 00000000 00000000 00000018  MOV t6._y__, void, void, t1.xxxx
0010: 01811009 00000000 00000000 00150028  MOV t1.xy__, void, void, t2.xyyy
0011: 07811018 39001f20 00000000 00000000  TEXLD t1, tex0, t1, void, void
0012: 03851001 3e403800 00000000 00290058  ADD t5.xyz_, t3.yzww, void, t5.xyzz
0013: 01861009 00000000 00000000 00150068  MOV t6.xy__, void, void, t6.xyyy
0014: 0b861018 39006f20 00000000 00000000  TEXLD t6.xyz_, tex1, t6, void, void
0015: 03851001 29005800 00000000 00290068  ADD t5.xyz_, t5.xyzz, void, t6.xyzz
0016: 03851003 29005800 014800c0 00000000  MUL t5.xyz_, t5.xyzz, t1.xyzz, void
0017: 00821012 00000000 00000000 00000048  LOG t2.x___, void, void, t4.xxxx
0018: 00821003 00004800 00000150 00000000  MUL t2.x___, u4.xxxx, t2.xxxx, void
0019: 00861011 00000000 00000000 00000028  EXP t6.x___, void, void, t2.xxxx
0020: 00861001 3fc01800 00000000 00000068  ADD t6.x___, t1.wwww, void, t6.xxxx
0021: 00861001 00006800 00000000 20154048  ADD t6.x___, t6.xxxx, void, u4.yyyy
0022: 04051009 00000000 00000000 00000068  MOV t5.___w, void, void, t6.xxxx
num loops: 0
num temps: 8
num const: 12
immediates:
 [3].x = 0.050000 (0x3d4ccccd)
 [3].y = 0.041700 (0x3d2acd9f)
 [3].z = 0.025000 (0x3ccccccd)
 [3].w = 0.020800 (0x3caa64c3)
 [4].x = 2.000000 (0x40000000)
 [4].y = -0.300000 (0xbe99999a)
 [4].z = 0.000000 (0x00000000)
 [4].w = 0.000000 (0x00000000)
 [5].x = 0.000000 (0x00000000)
 [5].y = 1.000000 (0x3f800000)
 [5].z = 128.000000 (0x43000000)
 [5].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=3
 [2] name=GENERIC index=21 comps=4
 [3] name=GENERIC index=22 comps=4
 [4] name=GENERIC index=23 comps=1
outputs:
special:
  ps_color_out_reg=5
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
