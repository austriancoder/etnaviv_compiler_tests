
FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL IN[2], GENERIC[22], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL CONST[4..10]
DCL TEMP[0..7], LOCAL
IMM[0] FLT32 {   -0.5000,     2.0000,     0.0000,     1.0000}
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[1], 2D
  2: MUL TEMP[1].x, TEMP[0].wwww, CONST[9].xxxx
  3: MOV TEMP[1].w, TEMP[1].xxxx
  4: MOV TEMP[2].xy, IN[0].xyyy
  5: TEX TEMP[2].xyz, TEMP[2], SAMP[0], 2D
  6: ADD TEMP[2].xyz, TEMP[2].xyzz, IMM[0].xxxx
  7: DP3 TEMP[3].x, TEMP[2].xyzz, TEMP[2].xyzz
  8: RSQ TEMP[3].x, TEMP[3].xxxx
  9: MUL TEMP[2].xyz, TEMP[2].xyzz, TEMP[3].xxxx
 10: MOV TEMP[3].xy, IN[0].xyyy
 11: TEX TEMP[3], TEMP[3], SAMP[2], 2D
 12: DP3 TEMP[4].x, IN[2].xyzz, IN[2].xyzz
 13: RSQ TEMP[4].x, TEMP[4].xxxx
 14: MUL TEMP[4].xyz, IN[2].xyzz, TEMP[4].xxxx
 15: MUL TEMP[5].xyz, TEMP[3].xyzz, CONST[6].xyzz
 16: DP3 TEMP[6].x, TEMP[2].xyzz, TEMP[4].xyzz
 17: MUL TEMP[6].xyz, TEMP[6].xxxx, TEMP[2].xyzz
 18: MUL TEMP[6].xyz, IMM[0].yyyy, TEMP[6].xyzz
 19: ADD TEMP[6].xyz, TEMP[4].xyzz, -TEMP[6].xyzz
 20: DP3 TEMP[7].x, IN[1].xyzz, IN[1].xyzz
 21: RSQ TEMP[7].x, TEMP[7].xxxx
 22: MUL TEMP[7].xyz, IN[1].xyzz, TEMP[7].xxxx
 23: DP3 TEMP[6].x, TEMP[6].xyzz, TEMP[7].xyzz
 24: MAX TEMP[6].x, -TEMP[6].xxxx, IMM[0].zzzz
 25: MAD TEMP[3].x, CONST[7].xxxx, TEMP[3].wwww, IMM[0].wwww
 26: POW TEMP[3].x, TEMP[6].xxxx, TEMP[3].xxxx
 27: MUL TEMP[6].xyz, TEMP[0].xyzz, CONST[5].xyzz
 28: DP3 TEMP[2].x, TEMP[2].xyzz, TEMP[4].xyzz
 29: MAX TEMP[2].x, TEMP[2].xxxx, IMM[0].zzzz
 30: MUL TEMP[2].xyz, TEMP[6].xyzz, TEMP[2].xxxx
 31: MAD TEMP[2].xyz, TEMP[5].xyzz, TEMP[3].xxxx, TEMP[2].xyzz
 32: MUL TEMP[0].xyz, TEMP[0].xyzz, CONST[4].xyzz
 33: MAD TEMP[1].xyz, TEMP[2].xyzz, CONST[10].xyzz, TEMP[0].xyzz
 34: MOV TEMP[0].xy, IN[0].xyyy
 35: TEX TEMP[0].xyz, TEMP[0], SAMP[3], 2D
 36: MAD TEMP[1].xyz, TEMP[0].xyzz, CONST[8].xyzz, TEMP[1].xyzz
 37: MOV OUT[0], TEMP[1]
 38: END

FRAG
0000: 018a1009 00000000 00000000 00150018  MOV t10.xy__, void, void, t1.xyyy
0001: 0f8a1018 3900af20 00000000 00000000  TEXLD t10, tex1, t10, void, void
0002: 00891003 3fc0a800 000004c0 00000002  MUL t9.x___, t10.wwww, u9.xxxx, void
0003: 04091009 00000000 00000000 00000098  MOV t9.___w, void, void, t9.xxxx
0004: 01861009 00000000 00000000 00150018  MOV t6.xy__, void, void, t1.xyyy
0005: 03861018 39006f20 00000000 00000000  TEXLD t6.xyz_, tex0, t6, void, void
0006: 03861001 29006800 00000000 200000b8  ADD t6.xyz_, t6.xyzz, void, u11.xxxx
0007: 00841005 29006800 01480340 00000000  DP3 t4.x___, t6.xyzz, t6.xyzz, void
0008: 0084100d 00000000 00000000 00000048  RSQ t4.x___, void, void, t4.xxxx
0009: 03861003 29006800 00000240 00000000  MUL t6.xyz_, t6.xyzz, t4.xxxx, void
0010: 01841009 00000000 00000000 00150018  MOV t4.xy__, void, void, t1.xyyy
0011: 17841018 39004f20 00000000 00000000  TEXLD t4, tex2, t4, void, void
0012: 00851005 29003800 014801c0 00000000  DP3 t5.x___, t3.xyzz, t3.xyzz, void
0013: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0014: 03851003 29003800 000002c0 00000000  MUL t5.xyz_, t3.xyzz, t5.xxxx, void
0015: 03831003 29004800 01480340 00000002  MUL t3.xyz_, t4.xyzz, u6.xyzz, void
0016: 00871005 29006800 014802c0 00000000  DP3 t7.x___, t6.xyzz, t5.xyzz, void
0017: 03871003 00007800 01480340 00000000  MUL t7.xyz_, t7.xxxx, t6.xyzz, void
0018: 03871003 1540b800 014803d0 00000000  MUL t7.xyz_, u11.yyyy, t7.xyzz, void
0019: 03871001 29005800 00000000 00690078  ADD t7.xyz_, t5.xyzz, void, -t7.xyzz
0020: 00881005 29002800 01480140 00000000  DP3 t8.x___, t2.xyzz, t2.xyzz, void
0021: 0088100d 00000000 00000000 00000088  RSQ t8.x___, void, void, t8.xxxx
0022: 03881003 29002800 00000440 00000000  MUL t8.xyz_, t2.xyzz, t8.xxxx, void
0023: 00871005 29007800 01480440 00000000  DP3 t7.x___, t7.xyzz, t8.xyzz, void
0024: 0087108f 40007800 015405c0 0040007a  SELECT.LT t7.x___, -t7.xxxx, u11.zzzz, -t7.xxxx
0025: 078b1009 00000000 00000000 203fc0b8  MOV t11, void, void, u11.wwww
0026: 00841002 00007800 01fe0250 003900b8  MAD t4.x___, u7.xxxx, t4.wwww, t11
0027: 00821012 00000000 00000000 00000078  LOG t2.x___, void, void, t7.xxxx
0028: 00821003 00004800 00000140 00000000  MUL t2.x___, t4.xxxx, t2.xxxx, void
0029: 00841011 00000000 00000000 00000028  EXP t4.x___, void, void, t2.xxxx
0030: 03871003 2900a800 014802c0 00000002  MUL t7.xyz_, t10.xyzz, u5.xyzz, void
0031: 00861005 29006800 014802c0 00000000  DP3 t6.x___, t6.xyzz, t5.xyzz, void
0032: 0086108f 00006800 015405c0 0000006a  SELECT.LT t6.x___, t6.xxxx, u11.zzzz, t6.xxxx
0033: 03861003 29007800 00000340 00000000  MUL t6.xyz_, t7.xyzz, t6.xxxx, void
0034: 03861002 29003800 00000240 00290068  MAD t6.xyz_, t3.xyzz, t4.xxxx, t6.xyzz
0035: 038a1003 2900a800 01480240 00000002  MUL t10.xyz_, t10.xyzz, u4.xyzz, void
0036: 03891002 29006800 01480540 002900aa  MAD t9.xyz_, t6.xyzz, u10.xyzz, t10.xyzz
0037: 018a1009 00000000 00000000 00150018  MOV t10.xy__, void, void, t1.xyyy
0038: 1b8a1018 3900af20 00000000 00000000  TEXLD t10.xyz_, tex3, t10, void, void
0039: 03891002 2900a800 01480440 0029009a  MAD t9.xyz_, t10.xyzz, u8.xyzz, t9.xyzz
num loops: 0
num temps: 12
num const: 44
immediates:
 [11].x = -0.500000 (0xbf000000)
 [11].y = 2.000000 (0x40000000)
 [11].z = 0.000000 (0x00000000)
 [11].w = 1.000000 (0x3f800000)
 [12].x = 0.000000 (0x00000000)
 [12].y = 1.000000 (0x3f800000)
 [12].z = 128.000000 (0x43000000)
 [12].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=2
 [2] name=GENERIC index=21 comps=3
 [3] name=GENERIC index=22 comps=3
outputs:
special:
  ps_color_out_reg=9
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
