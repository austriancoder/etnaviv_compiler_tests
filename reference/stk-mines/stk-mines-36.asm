FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[0], PERSPECTIVE
DCL IN[1], GENERIC[20], PERSPECTIVE
DCL IN[2], GENERIC[21], PERSPECTIVE
DCL IN[3], GENERIC[22], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL CONST[3..7]
DCL TEMP[0..4], LOCAL
IMM[0] FLT32 {    2.0000,    -1.0000,     4.0000,     0.5000}
IMM[1] FLT32 {    0.0000,     0.7000,     0.3000,     0.0500}
IMM[2] FLT32 {    1.0000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].x, IN[2].wwww
  1: MOV TEMP[0].yz, IN[3].yxyy
  2: ADD TEMP[1].xy, IN[0].xyyy, CONST[3].xyyy
  3: MOV TEMP[1].xy, TEMP[1].xyyy
  4: TEX TEMP[1].xyz, TEMP[1], SAMP[0], 2D
  5: MAD TEMP[1].xyz, IMM[0].xxxx, TEMP[1].xyzz, IMM[0].yyyy
  6: ADD TEMP[2].xy, IN[0].xyyy, CONST[4].xyyy
  7: MOV TEMP[2].xy, TEMP[2].xyyy
  8: TEX TEMP[2].xyz, TEMP[2], SAMP[1], 2D
  9: MAD TEMP[2].xyz, IMM[0].xxxx, TEMP[2].xyzz, IMM[0].yyyy
 10: MOV TEMP[3].xz, TEMP[2].xxzx
 11: MUL TEMP[4].x, IMM[0].zzzz, TEMP[1].yyyy
 12: MOV TEMP[1].y, TEMP[4].xxxx
 13: MUL TEMP[2].x, IMM[0].zzzz, TEMP[2].yyyy
 14: MOV TEMP[3].y, TEMP[2].xxxx
 15: DP3 TEMP[2].x, TEMP[3].xyzz, TEMP[3].xyzz
 16: RSQ TEMP[2].x, TEMP[2].xxxx
 17: DP3 TEMP[4].x, TEMP[1].xyzz, TEMP[1].xyzz
 18: RSQ TEMP[4].x, TEMP[4].xxxx
 19: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[4].xxxx
 20: MAD TEMP[1].xyz, TEMP[3].xyzz, TEMP[2].xxxx, TEMP[1].xyzz
 21: MUL TEMP[1].xyz, TEMP[1].xyzz, IMM[0].wwww
 22: MOV TEMP[2].y, IMM[1].xxxx
 23: MOV TEMP[2].x, CONST[3].xxxx
 24: ADD TEMP[2].xy, IN[0].xyyy, TEMP[2].xyyy
 25: MOV TEMP[2].xy, TEMP[2].xyyy
 26: TEX TEMP[2], TEMP[2], SAMP[2], 2D
 27: DP3 TEMP[3].x, IN[2].xyzz, TEMP[1].xyzz
 28: MAX TEMP[3].x, TEMP[3].xxxx, IMM[1].xxxx
 29: MAD TEMP[3].x, TEMP[3].xxxx, IMM[1].yyyy, IMM[1].zzzz
 30: MUL TEMP[2], TEMP[2], TEMP[3].xxxx
 31: DP3 TEMP[3].x, TEMP[1].xyzz, IN[2].xyzz
 32: MUL TEMP[1].xyz, TEMP[3].xxxx, TEMP[1].xyzz
 33: MUL TEMP[1].xyz, IMM[0].xxxx, TEMP[1].xyzz
 34: ADD TEMP[1].xyz, IN[2].xyzz, -TEMP[1].xyzz
 35: DP3 TEMP[3].x, TEMP[1].xyzz, TEMP[1].xyzz
 36: RSQ TEMP[3].x, TEMP[3].xxxx
 37: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[3].xxxx
 38: DP3 TEMP[0].x, TEMP[1].xyzz, TEMP[0].xyzz
 39: MAX TEMP[0].x, TEMP[0].xxxx, IMM[1].xxxx
 40: SLT TEMP[1].x, IMM[1].xxxx, TEMP[0].xxxx
 41: IF TEMP[1].xxxx :0
 42:   MUL TEMP[0].x, TEMP[0].xxxx, TEMP[0].xxxx
 43:   MUL TEMP[0].x, TEMP[0].xxxx, TEMP[0].xxxx
 44:   MUL TEMP[1].x, TEMP[0].xxxx, IMM[1].wwww
 45:   MOV TEMP[3].w, IMM[1].xxxx
 46:   MOV TEMP[3].x, TEMP[1].xxxx
 47:   MOV TEMP[3].y, TEMP[1].xxxx
 48:   MOV TEMP[3].z, TEMP[1].xxxx
 49:   MUL TEMP[0].x, TEMP[0].xxxx, TEMP[0].xxxx
 50:   MUL TEMP[0].x, TEMP[0].xxxx, IMM[1].zzzz
 51:   MOV TEMP[1].w, IMM[1].xxxx
 52:   MOV TEMP[1].x, TEMP[0].xxxx
 53:   MOV TEMP[1].y, TEMP[0].xxxx
 54:   MOV TEMP[1].z, TEMP[0].xxxx
 55:   ADD TEMP[0], TEMP[2], TEMP[3]
 56:   ADD TEMP[2], TEMP[0], TEMP[1]
 57: ENDIF
 58: SLT TEMP[0].x, CONST[7].xxxx, IN[1].zzzz
 59: IF TEMP[0].xxxx :0
 60:   MOV TEMP[2], CONST[5]
 61: ELSE :0
 62:   SLT TEMP[0].x, CONST[6].xxxx, IN[1].zzzz
 63:   IF TEMP[0].xxxx :0
 64:     MOV TEMP[0].x, -CONST[6].xxxx
 65:     ADD TEMP[1].x, IN[1].zzzz, TEMP[0].xxxx
 66:     ADD TEMP[0].x, CONST[7].xxxx, TEMP[0].xxxx
 67:     RCP TEMP[0].x, TEMP[0].xxxx
 68:     MUL TEMP[0].x, TEMP[1].xxxx, TEMP[0].xxxx
 69:     ADD TEMP[1].x, IMM[2].xxxx, -TEMP[0].xxxx
 70:     MUL TEMP[0], TEMP[0].xxxx, CONST[5]
 71:     MAD TEMP[2], TEMP[1].xxxx, TEMP[2], TEMP[0]
 72:   ENDIF
 73: ENDIF
 74: MOV OUT[0], TEMP[2]
 75: END

FRAG
0000: 00861009 00000000 00000000 003fc038  MOV t6.x___, void, void, t3.wwww
0001: 03061009 00000000 00000000 00144048  MOV t6._yz_, void, void, t4.yxyy
0002: 01841001 15001800 00000000 20150038  ADD t4.xy__, t1.xyyy, void, u3.xyyy
0003: 01841009 00000000 00000000 00150048  MOV t4.xy__, void, void, t4.xyyy
0004: 03841018 39004f20 00000000 00000000  TEXLD t4.xyz_, tex0, t4, void, void
0005: 03841002 00008800 01480250 20154088  MAD t4.xyz_, u8.xxxx, t4.xyzz, u8.yyyy
0006: 01871001 15001800 00000000 20150048  ADD t7.xy__, t1.xyyy, void, u4.xyyy
0007: 01871009 00000000 00000000 00150078  MOV t7.xy__, void, void, t7.xyyy
0008: 0b871018 39007f20 00000000 00000000  TEXLD t7.xyz_, tex1, t7, void, void
0009: 03871002 00008800 014803d0 20154088  MAD t7.xyz_, u8.xxxx, t7.xyzz, u8.yyyy
0010: 02881009 00000000 00000000 00080078  MOV t8.x_z_, void, void, t7.xxzx
0011: 00851003 2a808800 00aa0250 00000000  MUL t5.x___, u8.zzzz, t4.yyyy, void
0012: 01041009 00000000 00000000 00000058  MOV t4._y__, void, void, t5.xxxx
0013: 00871003 2a808800 00aa03d0 00000000  MUL t7.x___, u8.zzzz, t7.yyyy, void
0014: 01081009 00000000 00000000 00000078  MOV t8._y__, void, void, t7.xxxx
0015: 00871005 29008800 01480440 00000000  DP3 t7.x___, t8.xyzz, t8.xyzz, void
0016: 0087100d 00000000 00000000 00000078  RSQ t7.x___, void, void, t7.xxxx
0017: 00851005 29004800 01480240 00000000  DP3 t5.x___, t4.xyzz, t4.xyzz, void
0018: 0085100d 00000000 00000000 00000058  RSQ t5.x___, void, void, t5.xxxx
0019: 03841003 29004800 000002c0 00000000  MUL t4.xyz_, t4.xyzz, t5.xxxx, void
0020: 03841002 29008800 000003c0 00290048  MAD t4.xyz_, t8.xyzz, t7.xxxx, t4.xyzz
0021: 03841003 29004800 01fe0440 00000002  MUL t4.xyz_, t4.xyzz, u8.wwww, void
0022: 01071009 00000000 00000000 20000098  MOV t7._y__, void, void, u9.xxxx
0023: 00871009 00000000 00000000 20000038  MOV t7.x___, void, void, u3.xxxx
0024: 01871001 15001800 00000000 00150078  ADD t7.xy__, t1.xyyy, void, t7.xyyy
0025: 01871009 00000000 00000000 00150078  MOV t7.xy__, void, void, t7.xyyy
0026: 17871018 39007f20 00000000 00000000  TEXLD t7, tex2, t7, void, void
0027: 00881005 29003800 01480240 00000000  DP3 t8.x___, t3.xyzz, t4.xyzz, void
0028: 0088108f 00008800 000004c0 0000008a  SELECT.LT t8.x___, t8.xxxx, u9.xxxx, t8.xxxx
0029: 00881002 00008800 00aa04c0 202a809a  MAD t8.x___, t8.xxxx, u9.yyyy, u9.zzzz
0030: 07871003 39007800 00000440 00000000  MUL t7, t7, t8.xxxx, void
0031: 00881005 29004800 014801c0 00000000  DP3 t8.x___, t4.xyzz, t3.xyzz, void
0032: 03841003 00008800 01480240 00000000  MUL t4.xyz_, t8.xxxx, t4.xyzz, void
0033: 03841003 00008800 01480250 00000000  MUL t4.xyz_, u8.xxxx, t4.xyzz, void
0034: 03841001 29003800 00000000 00690048  ADD t4.xyz_, t3.xyzz, void, -t4.xyzz
0035: 00881005 29004800 01480240 00000000  DP3 t8.x___, t4.xyzz, t4.xyzz, void
0036: 0088100d 00000000 00000000 00000088  RSQ t8.x___, void, void, t8.xxxx
0037: 03841003 29004800 00000440 00000000  MUL t4.xyz_, t4.xyzz, t8.xxxx, void
0038: 00861005 29004800 01480340 00000000  DP3 t6.x___, t4.xyzz, t6.xyzz, void
0039: 0086108f 00006800 000004c0 0000006a  SELECT.LT t6.x___, t6.xxxx, u9.xxxx, t6.xxxx
0040: 00841090 00009800 00000350 00000000  SET.LT t4.x___, u9.xxxx, t6.xxxx, void
0041: 00000156 00004800 000004c0 00001c82  BRANCH.EQ void, t4.xxxx, u9.xxxx, label_0057
0042: 00861003 00006800 00000340 00000000  MUL t6.x___, t6.xxxx, t6.xxxx, void
0043: 00861003 00006800 00000340 00000000  MUL t6.x___, t6.xxxx, t6.xxxx, void
0044: 00841003 00006800 01fe04c0 00000002  MUL t4.x___, t6.xxxx, u9.wwww, void
0045: 04081009 00000000 00000000 20000098  MOV t8.___w, void, void, u9.xxxx
0046: 00881009 00000000 00000000 00000048  MOV t8.x___, void, void, t4.xxxx
0047: 01081009 00000000 00000000 00000048  MOV t8._y__, void, void, t4.xxxx
0048: 02081009 00000000 00000000 00000048  MOV t8.__z_, void, void, t4.xxxx
0049: 00861003 00006800 00000340 00000000  MUL t6.x___, t6.xxxx, t6.xxxx, void
0050: 00861003 00006800 015404c0 00000002  MUL t6.x___, t6.xxxx, u9.zzzz, void
0051: 04041009 00000000 00000000 20000098  MOV t4.___w, void, void, u9.xxxx
0052: 00841009 00000000 00000000 00000068  MOV t4.x___, void, void, t6.xxxx
0053: 01041009 00000000 00000000 00000068  MOV t4._y__, void, void, t6.xxxx
0054: 02041009 00000000 00000000 00000068  MOV t4.__z_, void, void, t6.xxxx
0055: 07861001 39007800 00000000 00390088  ADD t6, t7, void, t8
0056: 07871001 39006800 00000000 00390048  ADD t7, t6, void, t4
0057: 00861090 00007800 01540150 00000000  SET.LT t6.x___, u7.xxxx, t2.zzzz, void
0058: 00000156 00006800 000004c0 00001e82  BRANCH.EQ void, t6.xxxx, u9.xxxx, label_0061
0059: 07871009 00000000 00000000 20390058  MOV t7, void, void, u5
0060: 00000016 00000000 00000000 00002380  BRANCH void, void, void, label_0071
0061: 00861090 00006800 01540150 00000000  SET.LT t6.x___, u6.xxxx, t2.zzzz, void
0062: 00000156 00006800 000004c0 00002382  BRANCH.EQ void, t6.xxxx, u9.xxxx, label_0071
0063: 00861009 00000000 00000000 20400068  MOV t6.x___, void, void, -u6.xxxx
0064: 00841001 2a802800 00000000 00000068  ADD t4.x___, t2.zzzz, void, t6.xxxx
0065: 00861001 00007800 00000010 00000068  ADD t6.x___, u7.xxxx, void, t6.xxxx
0066: 0086100c 00000000 00000000 00000068  RCP t6.x___, void, void, t6.xxxx
0067: 00861003 00004800 00000340 00000000  MUL t6.x___, t4.xxxx, t6.xxxx, void
0068: 00841001 0000a800 00000010 00400068  ADD t4.x___, u10.xxxx, void, -t6.xxxx
0069: 07861003 00006800 01c802c0 00000002  MUL t6, t6.xxxx, u5, void
0070: 07871002 00004800 01c803c0 00390068  MAD t7, t4.xxxx, t7, t6
0071: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 9
num const: 32
immediates:
 [8].x = 2.000000 (0x40000000)
 [8].y = -1.000000 (0xbf800000)
 [8].z = 4.000000 (0x40800000)
 [8].w = 0.500000 (0x3f000000)
 [9].x = 0.000000 (0x00000000)
 [9].y = 0.700000 (0x3f333333)
 [9].z = 0.300000 (0x3e99999a)
 [9].w = 0.050000 (0x3d4ccccd)
 [10].x = 1.000000 (0x3f800000)
 [10].y = 0.000000 (0x00000000)
 [10].z = 0.000000 (0x00000000)
 [10].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=0 comps=2
 [2] name=GENERIC index=20 comps=3
 [3] name=GENERIC index=21 comps=4
 [4] name=GENERIC index=22 comps=2
outputs:
special:
  ps_color_out_reg=7
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
