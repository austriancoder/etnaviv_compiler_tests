
FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL CONST[4..9]
DCL TEMP[0..3], LOCAL
IMM[0] FLT32 {    0.5000,    -0.5000,     0.0000,     0.0000}
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[1], 2D
  2: SLT TEMP[1].x, TEMP[0].wwww, IMM[0].xxxx
  3: IF TEMP[1].xxxx :0
  4:   KILL
  5: ENDIF
  6: MUL TEMP[2].x, TEMP[0].wwww, CONST[8].xxxx
  7: MOV TEMP[1].w, TEMP[2].xxxx
  8: MOV TEMP[2].xy, IN[0].xyyy
  9: TEX TEMP[2].xyz, TEMP[2], SAMP[3], 2D
 10: MOV TEMP[3].xy, IN[0].xyyy
 11: TEX TEMP[3].xyz, TEMP[3], SAMP[2], 2D
 12: MUL TEMP[3].xyz, TEMP[3].xyzz, CONST[4].xyzz
 13: MAD TEMP[2].xyz, TEMP[2].xyzz, CONST[5].xyzz, TEMP[3].xyzz
 14: ADD TEMP[1].xyz, TEMP[0].xyzz, TEMP[2].xyzz
 15: MOV TEMP[0].xy, IN[0].xyyy
 16: TEX TEMP[0].xyz, TEMP[0], SAMP[0], 2D
 17: ADD TEMP[0].xyz, TEMP[0].xyzz, IMM[0].yyyy
 18: DP3 TEMP[2].x, TEMP[0].xyzz, TEMP[0].xyzz
 19: RSQ TEMP[2].x, TEMP[2].xxxx
 20: MUL TEMP[0].xyz, TEMP[0].xyzz, TEMP[2].xxxx
 21: DP3 TEMP[2].x, IN[1].xyzz, IN[1].xyzz
 22: RSQ TEMP[2].x, TEMP[2].xxxx
 23: MUL TEMP[2].xyz, IN[1].xyzz, TEMP[2].xxxx
 24: DP3 TEMP[0].x, TEMP[0].xyzz, TEMP[2].xyzz
 25: MAX TEMP[0].x, TEMP[0].xxxx, IMM[0].zzzz
 26: MUL TEMP[0].xyz, CONST[7].xyzz, TEMP[0].xxxx
 27: MAD TEMP[0].xyz, TEMP[0].xyzz, CONST[9].xyzz, CONST[6].xyzz
 28: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[0].xyzz
 29: MOV OUT[0], TEMP[1]
 30: END

FRAG
0000: 01851009 00000000 00000000 00150018  MOV t5.xy__, void, void, t1.xyyy
0001: 0f851018 39005f20 00000000 00000000  TEXLD t5, tex1, t5, void, void
0002: 00861090 3fc05800 00000540 00000002  SET.LT t6.x___, t5.wwww, u10.xxxx, void
0003: 00000156 00006800 01540540 00000282  BRANCH.EQ void, t6.xxxx, u10.zzzz, label_0005
0004: 00000017 00000000 00000000 00000000  TEXKILL void, tex0.xxxx, void, void, void
0005: 00831003 3fc05800 00000440 00000002  MUL t3.x___, t5.wwww, u8.xxxx, void
0006: 04061009 00000000 00000000 00000038  MOV t6.___w, void, void, t3.xxxx
0007: 01831009 00000000 00000000 00150018  MOV t3.xy__, void, void, t1.xyyy
0008: 1b831018 39003f20 00000000 00000000  TEXLD t3.xyz_, tex3, t3, void, void
0009: 01841009 00000000 00000000 00150018  MOV t4.xy__, void, void, t1.xyyy
0010: 13841018 39004f20 00000000 00000000  TEXLD t4.xyz_, tex2, t4, void, void
0011: 03841003 29004800 01480240 00000002  MUL t4.xyz_, t4.xyzz, u4.xyzz, void
0012: 03831002 29003800 014802c0 0029004a  MAD t3.xyz_, t3.xyzz, u5.xyzz, t4.xyzz
0013: 03861001 29005800 00000000 00290038  ADD t6.xyz_, t5.xyzz, void, t3.xyzz
0014: 01851009 00000000 00000000 00150018  MOV t5.xy__, void, void, t1.xyyy
0015: 03851018 39005f20 00000000 00000000  TEXLD t5.xyz_, tex0, t5, void, void
0016: 03851001 29005800 00000000 201540a8  ADD t5.xyz_, t5.xyzz, void, u10.yyyy
0017: 00831005 29005800 014802c0 00000000  DP3 t3.x___, t5.xyzz, t5.xyzz, void
0018: 0083100d 00000000 00000000 00000038  RSQ t3.x___, void, void, t3.xxxx
0019: 03851003 29005800 000001c0 00000000  MUL t5.xyz_, t5.xyzz, t3.xxxx, void
0020: 00831005 29002800 01480140 00000000  DP3 t3.x___, t2.xyzz, t2.xyzz, void
0021: 0083100d 00000000 00000000 00000038  RSQ t3.x___, void, void, t3.xxxx
0022: 03831003 29002800 000001c0 00000000  MUL t3.xyz_, t2.xyzz, t3.xxxx, void
0023: 00851005 29005800 014801c0 00000000  DP3 t5.x___, t5.xyzz, t3.xyzz, void
0024: 0085108f 00005800 01540540 0000005a  SELECT.LT t5.x___, t5.xxxx, u10.zzzz, t5.xxxx
0025: 03851003 29007800 000002d0 00000000  MUL t5.xyz_, u7.xyzz, t5.xxxx, void
0026: 07871009 00000000 00000000 20290068  MOV t7, void, void, u6.xyzz
0027: 03851002 29005800 014804c0 0039007a  MAD t5.xyz_, t5.xyzz, u9.xyzz, t7
0028: 03861003 29006800 014802c0 00000000  MUL t6.xyz_, t6.xyzz, t5.xyzz, void
num loops: 0
num temps: 8
num const: 40
immediates:
 [10].x = 0.500000 (0x3f000000)
 [10].y = -0.500000 (0xbf000000)
 [10].z = 0.000000 (0x00000000)
 [10].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=2
 [2] name=GENERIC index=21 comps=3
outputs:
special:
  ps_color_out_reg=6
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
