FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL OUT[0], COLOR
DCL CONST[0..2]
DCL TEMP[0..16], LOCAL
IMM[0] FLT32 {   -0.5000,    -1.0000,  9999.9004,     0.5000}
IMM[1] FLT32 {    0.0000,    -4.0000,     4.0000,     0.2500}
IMM[2] FLT32 {    0.0000,     0.0000,     3.0000,     2.0000}
IMM[3] FLT32 {   -0.0000,     1.0000,     1.5000,     2.2500}
IMM[4] FLT32 {   -3.0000,     0.0000,    -4.0000,     0.6667}
IMM[5] FLT32 {    3.0000,     0.0000,     4.0000,    -4.0000}
IMM[6] FLT32 {    3.0000,    -0.0000,     1.0000,    -3.0000}
IMM[7] FLT32 {    0.0000,    -3.0000,     4.0000,    -2.0000}
IMM[8] FLT32 {    2.0000,     0.0000,    -4.0000,    -1.0000}
IMM[9] FLT32 {   -2.0000,    -0.0000,     1.0000,     0.0000}
IMM[10] FLT32 {    0.2000,     0.3000,     0.4000,     1.0000}
IMM[11] FLT32 {   -3.0000,     0.0000,    -1.0000,     3.0000}
IMM[12] FLT32 {    0.0000,     8.0000,     1.0000,    16.0000}
  0: MOV TEMP[0].z, IMM[0].xxxx
  1: MOV TEMP[0].xy, IN[0].xyxx
  2: DP3 TEMP[1].x, TEMP[0].xyzz, CONST[0].xyzz
  3: DP3 TEMP[2].x, TEMP[0].xyzz, CONST[1].xyzz
  4: MOV TEMP[1].y, TEMP[2].xxxx
  5: DP3 TEMP[0].x, TEMP[0].xyzz, CONST[2].xyzz
  6: MOV TEMP[1].z, TEMP[0].xxxx
  7: DP3 TEMP[0].x, TEMP[1].xyzz, TEMP[1].xyzz
  8: RSQ TEMP[0].x, TEMP[0].xxxx
  9: MUL TEMP[0].xyz, TEMP[1].xyzz, TEMP[0].xxxx
 10: MOV TEMP[1].x, IMM[0].zzzz
 11: MOV TEMP[2].x, IMM[0].yyyy
 12: MOV TEMP[3].xyz, TEMP[4].xyzx
 13: MOV TEMP[5].xyz, TEMP[6].xyzx
 14: MOV TEMP[7].xyz, -TEMP[0].xyzx
 15: DP3 TEMP[8].x, IMM[1].xxyy, TEMP[7].xyzz
 16: DP3 TEMP[7].x, TEMP[7].xyzz, TEMP[0].xyzz
 17: RCP TEMP[7].x, TEMP[7].xxxx
 18: MUL TEMP[7].x, TEMP[8].xxxx, TEMP[7].xxxx
 19: MAD TEMP[8].xyz, TEMP[0].xyzz, TEMP[7].xxxx, IMM[1].xxzz
 20: DP3 TEMP[8].x, TEMP[8].xyzz, TEMP[8].xyzz
 21: SQRT TEMP[8].x, TEMP[8].xxxx
 22: SGE TEMP[9].x, IMM[0].wwww, TEMP[8].xxxx
 23: IF TEMP[9].xxxx :0
 24:   MUL TEMP[8].x, TEMP[8].xxxx, TEMP[8].xxxx
 25:   ADD TEMP[8].x, IMM[1].wwww, -TEMP[8].xxxx
 26:   SQRT TEMP[8].x, TEMP[8].xxxx
 27:   ADD TEMP[7].x, TEMP[7].xxxx, -TEMP[8].xxxx
 28:   SGE TEMP[8].x, TEMP[7].xxxx, IMM[1].xxxx
 29:   SGE TEMP[9].x, TEMP[7].xxxx, IMM[2].xxxx
 30:   MUL TEMP[8].x, TEMP[8].xxxx, TEMP[9].xxxx
 31:   SGE TEMP[9].x, IMM[0].zzzz, TEMP[7].xxxx
 32:   MUL TEMP[8].x, TEMP[8].xxxx, TEMP[9].xxxx
 33:   IF TEMP[8].xxxx :0
 34:     MOV TEMP[1].x, TEMP[7].xxxx
 35:     MOV TEMP[2].x, IMM[1].xxxx
 36:     MAD TEMP[3].xyz, TEMP[0].xyzz, TEMP[7].xxxx, IMM[2].yyzz
 37:     ADD TEMP[7].xyz, TEMP[3].xyzz, IMM[3].xxyy
 38:     MUL TEMP[5].xyz, TEMP[7].xyzz, IMM[2].wwww
 39:   ENDIF
 40: ENDIF
 41: MOV TEMP[7].x, TEMP[1].xxxx
 42: MOV TEMP[2].x, TEMP[2].xxxx
 43: MOV TEMP[3].xyz, TEMP[3].xyzx
 44: MOV TEMP[5].xyz, TEMP[5].xyzx
 45: MOV TEMP[8].xyz, -TEMP[0].xyzx
 46: DP3 TEMP[9].x, IMM[4].xyzz, TEMP[8].xyzz
 47: DP3 TEMP[8].x, TEMP[8].xyzz, TEMP[0].xyzz
 48: RCP TEMP[8].x, TEMP[8].xxxx
 49: MUL TEMP[8].x, TEMP[9].xxxx, TEMP[8].xxxx
 50: MAD TEMP[9].xyz, TEMP[0].xyzz, TEMP[8].xxxx, IMM[5].xyzz
 51: DP3 TEMP[9].x, TEMP[9].xyzz, TEMP[9].xyzz
 52: SQRT TEMP[9].x, TEMP[9].xxxx
 53: SGE TEMP[10].x, IMM[3].zzzz, TEMP[9].xxxx
 54: IF TEMP[10].xxxx :0
 55:   MUL TEMP[9].x, TEMP[9].xxxx, TEMP[9].xxxx
 56:   ADD TEMP[9].x, IMM[3].wwww, -TEMP[9].xxxx
 57:   SQRT TEMP[9].x, TEMP[9].xxxx
 58:   ADD TEMP[8].x, TEMP[8].xxxx, -TEMP[9].xxxx
 59:   SGE TEMP[9].x, TEMP[8].xxxx, IMM[1].xxxx
 60:   SGE TEMP[10].x, TEMP[8].xxxx, IMM[2].xxxx
 61:   MUL TEMP[9].x, TEMP[9].xxxx, TEMP[10].xxxx
 62:   SGE TEMP[1].x, TEMP[1].xxxx, TEMP[8].xxxx
 63:   MUL TEMP[1].x, TEMP[9].xxxx, TEMP[1].xxxx
 64:   IF TEMP[1].xxxx :0
 65:     MOV TEMP[7].x, TEMP[8].xxxx
 66:     MOV TEMP[2].x, IMM[3].yyyy
 67:     MAD TEMP[3].xyz, TEMP[0].xyzz, TEMP[8].xxxx, IMM[2].yyzz
 68:     ADD TEMP[1].xyz, TEMP[3].xyzz, IMM[6].xyzz
 69:     MUL TEMP[5].xyz, TEMP[1].xyzz, IMM[4].wwww
 70:   ENDIF
 71: ENDIF
 72: MOV TEMP[1].x, TEMP[7].xxxx
 73: MOV TEMP[2].x, TEMP[2].xxxx
 74: MOV TEMP[3].xyz, TEMP[3].xyzx
 75: MOV TEMP[5].xyz, TEMP[5].xyzx
 76: MOV TEMP[8].xyz, -TEMP[0].xyzx
 77: DP3 TEMP[9].xFRAG
0000: 02021009 00000000 00000000 20000038  MOV t2.__z_, void, void, u3.xxxx
0001: 01821009 00000000 00000000 00010018  MOV t2.xy__, void, void, t1.xyxx
0002: 00811005 29002800 01480040 00000002  DP3 t1.x___, t2.xyzz, u0.xyzz, void
0003: 00831005 29002800 014800c0 00000002  DP3 t3.x___, t2.xyzz, u1.xyzz, void
0004: 01011009 00000000 00000000 00000038  MOV t1._y__, void, void, t3.xxxx
0005: 00821005 29002800 01480140 00000002  DP3 t2.x___, t2.xyzz, u2.xyzz, void
0006: 02011009 00000000 00000000 00000028  MOV t1.__z_, void, void, t2.xxxx
0007: 00821005 29001800 014800c0 00000000  DP3 t2.x___, t1.xyzz, t1.xyzz, void
0008: 0082100d 00000000 00000000 00000028  RSQ t2.x___, void, void, t2.xxxx
0009: 03821003 29001800 00000140 00000000  MUL t2.xyz_, t1.xyzz, t2.xxxx, void
0010: 00811009 00000000 00000000 202a8038  MOV t1.x___, void, void, u3.zzzz
0011: 00831009 00000000 00000000 20154038  MOV t3.x___, void, void, u3.yyyy
0012: 03841009 00000000 00000000 00090058  MOV t4.xyz_, void, void, t5.xyzx
0013: 03861009 00000000 00000000 00090078  MOV t6.xyz_, void, void, t7.xyzx
0014: 03881009 00000000 00000000 00490028  MOV t8.xyz_, void, void, -t2.xyzx
0015: 00891005 14004800 01480450 00000000  DP3 t9.x___, u4.xxyy, t8.xyzz, void
0016: 00881005 29008800 01480140 00000000  DP3 t8.x___, t8.xyzz, t2.xyzz, void
0017: 0088100c 00000000 00000000 00000088  RCP t8.x___, void, void, t8.xxxx
0018: 00881003 00009800 00000440 00000000  MUL t8.x___, t9.xxxx, t8.xxxx, void
0019: 03891002 29002800 00000440 20280048  MAD t9.xyz_, t2.xyzz, t8.xxxx, u4.xxzz
0020: 00891005 29009800 014804c0 00000000  DP3 t9.x___, t9.xyzz, t9.xyzz, void
0021: 00891021 00000000 00000000 00000098  SQRT t9.x___, void, void, t9.xxxx
0022: 008a10d0 3fc03800 000004d0 00000000  SET.GE t10.x___, u3.wwww, t9.xxxx, void
0023: 00000156 0000a800 00000240 00001382  BRANCH.EQ void, t10.xxxx, u4.xxxx, label_0039
0024: 00891003 00009800 000004c0 00000000  MUL t9.x___, t9.xxxx, t9.xxxx, void
0025: 00891001 3fc04800 00000010 00400098  ADD t9.x___, u4.wwww, void, -t9.xxxx
0026: 00891021 00000000 00000000 00000098  SQRT t9.x___, void, void, t9.xxxx
0027: 00881001 00008800 00000000 00400098  ADD t8.x___, t8.xxxx, void, -t9.xxxx
0028: 008910d0 00008800 00000240 00000002  SET.GE t9.x___, t8.xxxx, u4.xxxx, void
0029: 008a10d0 00008800 000002c0 00000002  SET.GE t10.x___, t8.xxxx, u5.xxxx, void
0030: 00891003 00009800 00000540 00000000  MUL t9.x___, t9.xxxx, t10.xxxx, void
0031: 008a10d0 2a803800 00000450 00000000  SET.GE t10.x___, u3.zzzz, t8.xxxx, void
0032: 00891003 00009800 00000540 00000000  MUL t9.x___, t9.xxxx, t10.xxxx, void
0033: 00000156 00009800 00000240 00001382  BRANCH.EQ void, t9.xxxx, u4.xxxx, label_0039
0034: 00811009 00000000 00000000 00000088  MOV t1.x___, void, void, t8.xxxx
0035: 00831009 00000000 00000000 20000048  MOV t3.x___, void, void, u4.xxxx
0036: 03841002 29002800 00000440 20294058  MAD t4.xyz_, t2.xyzz, t8.xxxx, u5.yyzz
0037: 03881001 29004800 00000000 20140068  ADD t8.xyz_, t4.xyzz, void, u6.xxyy
0038: 03861003 29008800 01fe02c0 00000002  MUL t6.xyz_, t8.xyzz, u5.wwww, void
0039: 00881009 00000000 00000000 00000018  MOV t8.x___, void, void, t1.xxxx
0040: 00831009 00000000 00000000 00000038  MOV t3.x___, void, void, t3.xxxx
0041: 03841009 00000000 00000000 00090048  MOV t4.xyz_, void, void, t4.xyzx
0042: 03861009 00000000 00000000 00090068  MOV t6.xyz_, void, void, t6.xyzx
0043: 03891009 00000000 00000000 00490028  MOV t9.xyz_, void, void, -t2.xyzx
0044: 008a1005 29007800 014804d0 00000000  DP3 t10.x___, u7.xyzz, t9.xyzz, void
0045: 00891005 29009800 01480140 00000000  DP3 t9.x___, t9.xyzz, t2.xyzz, void
0046: 0089100c 00000000 00000000 00000098  RCP t9.x___, void, void, t9.xxxx
0047: 00891003 0000a800 000004c0 00000000  MUL t9.x___, t10.xxxx, t9.xxxx, void
0048: 038a1002 29002800 000004c0 20290088  MAD t10.xyz_, t2.xyzz, t9.xxxx, u8.xyzz
0049: 008a1005 2900a800 01480540 00000000  DP3 t10.x___, t10.xyzz, t10.xyzz, void
0050: 008a1021 00000000 00000000 000000a8  SQRT t10.x___, void, void, t10.xxxx
0051: 008b10d0 2a806800 00000550 00000000  SET.GE t11.x___, u6.zzzz, t10.xxxx, void
0052: 00000156 0000b800 00000240 00002202  BRANCH.EQ void, t11.xxxx, u4.xxxx, label_0068
0053: 008a1003 0000a800 00000540 00000000  MUL t10.x___, t10.xxxx, t10.xxxx, void
0054: 008a1001 3fc06800 00000010 004000a8  ADD t10.x___, u6.wwww, void, -t10.xxxx
0055: 008a1021 00000000 00000000 000000a8  SQRT t10.x___, void, void, t10.xxxx
0056: 00891001 00009800 00000000 004000a8  ADD t9.x___, t9.xxxx, void, -t10.xxxx
0057: 008a10d0 00009800 00000240 00000002  SET.GE t10.x___, t9.xxxx, u4.xxxx, void
0058: 008b10d0 00009800 000002c0 00000002  SET.GE t11.x___, t9.xxxx, u5.xxxx, void
0059: 008a1003 0000a800 000005c0 00000000  MUL t10.x___, t10.xxxx, t11.xxxx, void
0060: 008110d0 00001800 000004c0 00000000  SET.GE t1.x___, t1.xxxx, t9.xxxx, void
0061: 00811003 0000a800 000000c0 00000000  MUL t1.x___, t10.xxxx, t1.xxxx, void
0062: 00000156 00001800 00000240 00002202  BRANCH.EQ void, t1.xxxx, u4.xxxx, label_0068
0063: 00881009 00000000 00000000 00000098  MOV t8.x___, void, void, t9.xxxx
0064: 00831009 00000000 00000000 20154068  MOV t3.x___, void, void, u6.yyyy
0065: 03841002 29002800 000004c0 20294058  MAD t4.xyz_, t2.xyzz, t9.xxxx, u5.yyzz
0066: 03811001 29004800 00000000 20290098  ADD t1.xyz_, t4.xyzz, void, u9.xyzz
0067: 03861003 29001800 01fe03c0 00000002  MUL t6.xyz_, t1.xyzz, u7.wwww, void
0068: 00811009 00000000 00000000 00000088  MOV t1.x___, void, void, t8.xxxx
0069: 00831009 00000000 00000000 00000038  MOV t3.x___, void, void, t3.xxxx
0070: 03841009 00000000 00000000 00090048  MOV t4.xyz_, void, void, t4.xyzx
0071: 03861009 00000000 00000000 00090068  MOV t6.xyz_, void, void, t6.xyzx
0072: 03891009 00000000 00000000 00490028  MOV t9.xyz_, void, void, -t2.xyzx
0073: 008a1005 3c408800 014804d0 00000000  DP3 t10.x___, u8.yxww, t9.xyzz, void
0074: 00891005 29009800 01480140 00000000  DP3 t9.x___, t9.xyzz, t2.xyzz, void
0075: 0089100c 00000000 00000000 00000098  RCP t9.x___, void, void, t9.xxxx
0076: 00891003 0000a800 000004c0 00000000  MUL t9.x___, t10.xxxx, t9.xxxx, void
0077: 038a1002 29002800 000004c0 202900a8  MAD t10.xyz_, t2.xyzz, t9.xxxx, u10.xyzz
0078: 008a1005 2900a800 01480540 00000000  DP3 t10.x___, t10.xyzz, t10.xyzz, void
0079: 008a1021 00000000 00000000 000000a8  SQRT t10.x___, void, void, t10.xxxx
0080: 008b10d0 3fc03800 00000550 00000000  SET.GE t11.x___, u3.wwww, t10.xxxx, void
0081: 00000156 0000b800 00000240 00003082  BRANCH.EQ void, t11.xxxx, u4.xxxx, label_0097
0082: 008a1003 0000a800 00000540 00000000  MUL t10.x___, t10.xxxx, t10.xxxx, void
0083: 008a1001 3fc04800 00000010 004000a8  ADD t10.x___, u4.wwww, void, -t10.xxxx
0084: 008a1021 00000000 00000000 000000a8  SQRT t10.x___, void, void, t10.xxxx
0085: 00891001 00009800 00000000 004000a8  ADD t9.x___, t9.xxxx, void, -t10.xxxx
0086: 008a10d0 00009800 00000240 00000002  SET.GE t10.x___, t9.xxxx, u4.xxxx, void
0087: 008b10d0 00009800 000002c0 00000002  SET.GE t11.x___, t9.xxxx, u5.xxxx, void
0088: 008a1003 0000a800 000005c0 00000000  MUL t10.x___, t10.xxxx, t11.xxxx, void
0089: 008810d0 00008800 000004c0 00000000  SET.GE t8.x___, t8.xxxx, t9.xxxx, void
0090: 00881003 0000a800 00000440 00000000  MUL t8.x___, t10.xxxx, t8.xxxx, void
0091: 00000156 00008800 00000240 00003082  BRANCH.EQ void, t8.xxxx, u4.xxxx, label_0097
0092: 00811009 00000000 00000000 00000098  MOV t1.x___, void, void, t9.xxxx
0093: 00831009 00000000 00000000 203fc058  MOV t3.x___, void, void, u5.wwww
0094: 03841002 29002800 000004c0 20294058  MAD t4.xyz_, t2.xyzz, t9.xxxx, u5.yyzz
0095: 03881001 29004800 00000000 202b4098  ADD t8.xyz_, t4.xyzz, void, u9.ywzz
0096: 03861003 29008800 01fe02c0 00000002  MUL t6.xyz_, t8.xyzz, u5.wwww, void
0097: 00831009 00000000 00000000 00000038  MOV t3.x___, void, void, t3.xxxx
0098: 03841009 00000000 00000000 00090048  MOV t4.xyz_, void, void, t4.xyzx
0099: 03861009 00000000 00000000 00090068  MOV t6.xyz_, void, void, t6.xyzx
0100: 03881009 00000000 00000000 00490028  MOV t8.xyz_, void, void, -t2.xyzx
0101: 00891005 2900b800 01480450 00000000  DP3 t9.x___, u11.xyzz, t8.xyzz, void
0102: 00881005 29008800 01480140 00000000  DP3 t8.x___, t8.xyzz, t2.xyzz, void
0103: 0088100c 00000000 00000000 00000088  RCP t8.x___, void, void, t8.xxxx
0104: 00881003 00009800 00000440 00000000  MUL t8.x___, t9.xxxx, t8.xxxx, void
0105: 03891002 29002800 00000440 2028c0a8  MAD t9.xyz_, t2.xyzz, t8.xxxx, u10.wxzz
0106: 00891005 29009800 014804c0 00000000  DP3 t9.x___, t9.xyzz, t9.xyzz, void
0107: 00891021 00000000 00000000 00000098  SQRT t9.x___, void, void, t9.xxxx
0108: 008a10d0 15406800 000004d0 00000000  SET.GE t10.x___, u6.yyyy, t9.xxxx, void
0109: 00000156 0000a800 00000240 00003d82  BRANCH.EQ void, t10.xxxx, u4.xxxx, label_0123
0110: 00891003 00009800 000004c0 00000000  MUL t9.x___, t9.xxxx, t9.xxxx, void
0111: 00891001 15406800 00000010 00400098  ADD t9.x___, u6.yyyy, void, -t9.xxxx
0112: 00891021 00000000 00000000 00000098  SQRT t9.x___, void, void, t9.xxxx
0113: 00881001 00008800 00000000 00400098  ADD t8.x___, t8.xxxx, void, -t9.xxxx
0114: 008910d0 00008800 00000240 00000002  SET.GE t9.x___, t8.xxxx, u4.xxxx, void
0115: 008a10d0 00008800 000002c0 00000002  SET.GE t10.x___, t8.xxxx, u5.xxxx, void
0116: 00891003 00009800 00000540 00000000  MUL t9.x___, t9.xxxx, t10.xxxx, void
0117: 008110d0 00001800 00000440 00000000  SET.GE t1.x___, t1.xxxx, t8.xxxx, void
0118: 00811003 00009800 000000c0 00000000  MUL t1.x___, t9.xxxx, t1.xxxx, void
0119: 00000156 00001800 00000240 00003d82  BRANCH.EQ void, t1.xxxx, u4.xxxx, label_0123
0120: 00831009 00000000 00000000 202a8058  MOV t3.x___, void, void, u5.zzzz
0121: 03841002 29002800 00000440 20294058  MAD t4.xyz_, t2.xyzz, t8.xxxx, u5.yyzz
0122: 03861001 29004800 00000000 202900c8  ADD t6.xyz_, t4.xyzz, void, u12.xyzz
0123: 00811150 00003800 00aa01c0 00000002  SET.EQ t1.x___, t3.xxxx, u3.yyyy, void
0124: 00000156 00001800 00000240 00003f82  BRANCH.EQ void, t1.xxxx, u4.xxxx, label_0127
0125: 07811009 00000000 00000000 203900d8  MOV t1, void, void, u13
0126: 00000016 00000000 00000000 0000a280  BRANCH void, void, void, label_0325
0127: 00881005 29006800 01480140 00000000  DP3 t8.x___, t6.xyzz, t2.xyzz, void
0128: 03881003 00008800 01480340 00000000  MUL t8.xyz_, t8.xxxx, t6.xyzz, void
0129: 03881003 3fc05800 01480450 00000000  MUL t8.xyz_, u5.wwww, t8.xyzz, void
0130: 03821001 29002800 00000000 00690088  ADD t2.xyz_, t2.xyzz, void, -t8.xyzz
0131: 00881009 00000000 00000000 202a8038  MOV t8.x___, void, void, u3.zzzz
0132: 00891009 00000000 00000000 20154038  MOV t9.x___, void, void, u3.yyyy
0133: 038a1009 00000000 00000000 000900c8  MOV t10.xyz_, void, void, t12.xyzx
0134: 038b1009 00000000 00000000 000900d8  MOV t11.xyz_, void, void, t13.xyzx
0135: 038e1009 00000000 00000000 00490028  MOV t14.xyz_, void, void, -t2.xyzx
0136: 038f1001 3d40b800 00000010 00690048  ADD t15.xyz_, u11.yyww, void, -t4.xyzz
0137: 008f1005 2900f800 01480740 00000000  DP3 t15.x___, t15.xyzz, t14.xyzz, void
0138: 008e1005 2900e800 01480140 00000000  DP3 t14.x___, t14.xyzz, t2.xyzz, void
0139: 008e100c 00000000 00000000 000000e8  RCP t14.x___, void, void, t14.xxxx
0140: 008e1003 0000f800 00000740 00000000  MUL t14.x___, t15.xxxx, t14.xxxx, void
0141: 038f1002 29002800 00000740 00290048  MAD t15.xyz_, t2.xyzz, t14.xxxx, t4.xyzz
0142: 038f1001 2900f800 00000000 20140068  ADD t15.xyz_, t15.xyzz, void, u6.xxyy
0143: 008f1005 2900f800 014807c0 00000000  DP3 t15.x___, t15.xyzz, t15.xyzz, void
0144: 008f1021 00000000 00000000 000000f8  SQRT t15.x___, void, void, t15.xxxx
0145: 009010d0 3fc03800 000007d0 00000000  SET.GE t16.x___, u3.wwww, t15.xxxx, void
0146: 00000156 00010800 00000240 00005102  BRANCH.EQ void, t16.xxxx, u4.xxxx, label_0162
0147: 008f1003 0000f800 000007c0 00000000  MUL t15.x___, t15.xxxx, t15.xxxx, void
0148: 008f1001 3fc04800 00000010 004000f8  ADD t15.x___, u4.wwww, void, -t15.xxxx
0149: 008f1021 00000000 00000000 000000f8  SQRT t15.x___, void, void, t15.xxxx
0150: 008e1001 0000e800 00000000 004000f8  ADD t14.x___, t14.xxxx, void, -t15.xxxx
0151: 008f10d0 0000e800 00000240 00000002  SET.GE t15.x___, t14.xxxx, u4.xxxx, void
0152: 009010d0 0000e800 000002c0 00000002  SET.GE t16.x___, t14.xxxx, u5.xxxx, void
0153: 008f1003 0000f800 00000840 00000000  MUL t15.x___, t15.xxxx, t16.xxxx, void
0154: 009010d0 2a803800 00000750 00000000  SET.GE t16.x___, u3.zzzz, t14.xxxx, void
0155: 008f1003 0000f800 00000840 00000000  MUL t15.x___, t15.xxxx, t16.xxxx, void
0156: 00000156 0000f800 00000240 00005102  BRANCH.EQ void, t15.xxxx, u4.xxxx, label_0162
0157: 00881009 00000000 00000000 000000e8  MOV t8.x___, void, void, t14.xxxx
0158: 00891009 00000000 00000000 20000048  MOV t9.x___, void, void, u4.xxxx
0159: 038a1002 29002800 00000740 00290048  MAD t10.xyz_, t2.xyzz, t14.xxxx, t4.xyzz
0160: 038e1001 2900a800 00000000 20140068  ADD t14.xyz_, t10.xyzz, void, u6.xxyy
0161: 038b1003 2900e800 01fe02c0 00000002  MUL t11.xyz_, t14.xyzz, u5.wwww, void
0162: 008e1009 00000000 00000000 00000088  MOV t14.x___, void, void, t8.xxxx
0163: 00891009 00000000 00000000 00000098  MOV t9.x___, void, void, t9.xxxx
0164: 038a1009 00000000 00000000 000900a8  MOV t10.xyz_, void, void, t10.xyzx
0165: 038b1009 00000000 00000000 000900b8  MOV t11.xyz_, void, void, t11.xyzx
0166: 038f1009 00000000 00000000 00490028  MOV t15.xyz_, void, void, -t2.xyzx
0167: 03901001 2900e800 00000010 00690048  ADD t16.xyz_, u14.xyzz, void, -t4.xyzz
0168: 00901005 29010800 014807c0 00000000  DP3 t16.x___, t16.xyzz, t15.xyzz, void
0169: 008f1005 2900f800 01480140 00000000  DP3 t15.x___, t15.xyzz, t2.xyzz, void
0170: 008f100c 00000000 00000000 000000f8  RCP t15.x___, void, void, t15.xxxx
0171: 008f1003 00010800 000007c0 00000000  MUL t15.x___, t16.xxxx, t15.xxxx, void
0172: 03901002 29002800 000007c0 00290048  MAD t16.xyz_, t2.xyzz, t15.xxxx, t4.xyzz
0173: 03901001 29010800 00000000 20290098  ADD t16.xyz_, t16.xyzz, void, u9.xyzz
0174: 00901005 29010800 01480840 00000000  DP3 t16.x___, t16.xyzz, t16.xyzz, void
0175: 00901021 00000000 00000000 00000108  SQRT t16.x___, void, void, t16.xxxx
0176: 009110d0 2a806800 00000850 00000000  SET.GE t17.x___, u6.zzzz, t16.xxxx, void
0177: 00000156 00011800 00000240 00006082  BRANCH.EQ void, t17.xxxx, u4.xxxx, label_0193
0178: 00901003 00010800 00000840 00000000  MUL t16.x___, t16.xxxx, t16.xxxx, void
0179: 00901001 3fc06800 00000010 00400108  ADD t16.x___, u6.wwww, void, -t16.xxxx
0180: 00901021 00000000 00000000 00000108  SQRT t16.x___, void, void, t16.xxxx
0181: 008f1001 0000f800 00000000 00400108  ADD t15.x___, t15.xxxx, void, -t16.xxxx
0182: 009010d0 0000f800 00000240 00000002  SET.GE t16.x___, t15.xxxx, u4.xxxx, void
0183: 009110d0 0000f800 000002c0 00000002  SET.GE t17.x___, t15.xxxx, u5.xxxx, void
0184: 00901003 00010800 000008c0 00000000  MUL t16.x___, t16.xxxx, t17.xxxx, void
0185: 008810d0 00008800 000007c0 00000000  SET.GE t8.x___, t8.xxxx, t15.xxxx, void
0186: 00881003 00010800 00000440 00000000  MUL t8.x___, t16.xxxx, t8.xxxx, void
0187: 00000156 00008800 00000240 00006082  BRANCH.EQ void, t8.xxxx, u4.xxxx, label_0193
0188: 008e1009 00000000 00000000 000000f8  MOV t14.x___, void, void, t15.xxxx
0189: 00891009 00000000 00000000 20154068  MOV t9.x___, void, void, u6.yyyy
0190: 038a1002 29002800 000007c0 00290048  MAD t10.xyz_, t2.xyzz, t15.xxxx, t4.xyzz
0191: 03881001 2900a800 00000000 20290098  ADD t8.xyz_, t10.xyzz, void, u9.xyzz
0192: 038b1003 29008800 01fe03c0 00000002  MUL t11.xyz_, t8.xyzz, u7.wwww, void
0193: 00881009 00000000 00000000 000000e8  MOV t8.x___, void, void, t14.xxxx
0194: 00891009 00000000 00000000 00000098  MOV t9.x___, void, void, t9.xxxx
0195: 038a1009 00000000 00000000 000900a8  MOV t10.xyz_, void, void, t10.xyzx
0196: 038b1009 00000000 00000000 000900b8  MOV t11.xyz_, void, void, t11.xyzx
0197: 038f1009 00000000 00000000 00490028  MOV t15.xyz_, void, void, -t2.xyzx
0198: 03901001 2b40e800 00000010 00690048  ADD t16.xyz_, u14.ywzz, void, -t4.xyzz
0199: 00901005 29010800 014807c0 00000000  DP3 t16.x___, t16.xyzz, t15.xyzz, void
0200: 008f1005 2900f800 01480140 00000000  DP3 t15.x___, t15.xyzz, t2.xyzz, void
0201: 008f100c 00000000 00000000 000000f8  RCP t15.x___, void, void, t15.xxxx
0202: 008f1003 00010800 000007c0 00000000  MUL t15.x___, t16.xxxx, t15.xxxx, void
0203: 03901002 29002800 000007c0 00290048  MAD t16.xyz_, t2.xyzz, t15.xxxx, t4.xyzz
0204: 03901001 29010800 00000000 202b4098  ADD t16.xyz_, t16.xyzz, void, u9.ywzz
0205: 00901005 29010800 01480840 00000000  DP3 t16.x___, t16.xyzz, t16.xyzz, void
0206: 00901021 00000000 00000000 00000108  SQRT t16.x___, void, void, t16.xxxx
0207: 009110d0 3fc03800 00000850 00000000  SET.GE t17.x___, u3.wwww, t16.xxxx, void
0208: 00000156 00011800 00000240 00007002  BRANCH.EQ void, t17.xxxx, u4.xxxx, label_0224
0209: 00901003 00010800 00000840 00000000  MUL t16.x___, t16.xxxx, t16.xxxx, void
0210: 00901001 3fc04800 00000010 00400108  ADD t16.x___, u4.wwww, void, -t16.xxxx
0211: 00901021 00000000 00000000 00000108  SQRT t16.x___, void, void, t16.xxxx
0212: 008f1001 0000f800 00000000 00400108  ADD t15.x___, t15.xxxx, void, -t16.xxxx
0213: 009010d0 0000f800 00000240 00000002  SET.GE t16.x___, t15.xxxx, u4.xxxx, void
0214: 009110d0 0000f800 000002c0 00000002  SET.GE t17.x___, t15.xxxx, u5.xxxx, void
0215: 00901003 00010800 000008c0 00000000  MUL t16.x___, t16.xxxx, t17.xxxx, void
0216: 008e10d0 0000e800 000007c0 00000000  SET.GE t14.x___, t14.xxxx, t15.xxxx, void
0217: 008e1003 00010800 00000740 00000000  MUL t14.x___, t16.xxxx, t14.xxxx, void
0218: 00000156 0000e800 00000240 00007002  BRANCH.EQ void, t14.xxxx, u4.xxxx, label_0224
0219: 00881009 00000000 00000000 000000f8  MOV t8.x___, void, void, t15.xxxx
0220: 00891009 00000000 00000000 203fc058  MOV t9.x___, void, void, u5.wwww
0221: 038a1002 29002800 000007c0 00290048  MAD t10.xyz_, t2.xyzz, t15.xxxx, t4.xyzz
0222: 038e1001 2900a800 00000000 202b4098  ADD t14.xyz_, t10.xyzz, void, u9.ywzz
0223: 038b1003 2900e800 01fe02c0 00000002  MUL t11.xyz_, t14.xyzz, u5.wwww, void
0224: 00891009 00000000 00000000 00000098  MOV t9.x___, void, void, t9.xxxx
0225: 038a1009 00000000 00000000 000900a8  MOV t10.xyz_, void, void, t10.xyzx
0226: 038b1009 00000000 00000000 000900b8  MOV t11.xyz_, void, void, t11.xyzx
0227: 038e1009 00000000 00000000 00490028  MOV t14.xyz_, void, void, -t2.xyzx
0228: 038f1001 3d00b800 00000010 00690048  ADD t15.xyz_, u11.xyww, void, -t4.xyzz
0229: 008f1005 2900f800 01480740 00000000  DP3 t15.x___, t15.xyzz, t14.xyzz, void
0230: 008e1005 2900e800 01480140 00000000  DP3 t14.x___, t14.xyzz, t2.xyzz, void
0231: 008e100c 00000000 00000000 000000e8  RCP t14.x___, void, void, t14.xxxx
0232: 008e1003 0000f800 00000740 00000000  MUL t14.x___, t15.xxxx, t14.xxxx, void
0233: 038f1002 29002800 00000740 00290048  MAD t15.xyz_, t2.xyzz, t14.xxxx, t4.xyzz
0234: 038f1001 2900f800 00000000 202900c8  ADD t15.xyz_, t15.xyzz, void, u12.xyzz
0235: 008f1005 2900f800 014807c0 00000000  DP3 t15.x___, t15.xyzz, t15.xyzz, void
0236: 008f1021 00000000 00000000 000000f8  SQRT t15.x___, void, void, t15.xxxx
0237: 009010d0 15406800 000007d0 00000000  SET.GE t16.x___, u6.yyyy, t15.xxxx, void
0238: 00000156 00010800 00000240 00007e02  BRANCH.EQ void, t16.xxxx, u4.xxxx, label_0252
0239: 008f1003 0000f800 000007c0 00000000  MUL t15.x___, t15.xxxx, t15.xxxx, void
0240: 008f1001 15406800 00000010 004000f8  ADD t15.x___, u6.yyyy, void, -t15.xxxx
0241: 008f1021 00000000 00000000 000000f8  SQRT t15.x___, void, void, t15.xxxx
0242: 008e1001 0000e800 00000000 004000f8  ADD t14.x___, t14.xxxx, void, -t15.xxxx
0243: 008f10d0 0000e800 00000240 00000002  SET.GE t15.x___, t14.xxxx, u4.xxxx, void
0244: 009010d0 0000e800 000002c0 00000002  SET.GE t16.x___, t14.xxxx, u5.xxxx, void
0245: 008f1003 0000f800 00000840 00000000  MUL t15.x___, t15.xxxx, t16.xxxx, void
0246: 008810d0 00008800 00000740 00000000  SET.GE t8.x___, t8.xxxx, t14.xxxx, void
0247: 00881003 0000f800 00000440 00000000  MUL t8.x___, t15.xxxx, t8.xxxx, void
0248: 00000156 00008800 00000240 00007e02  BRANCH.EQ void, t8.xxxx, u4.xxxx, label_0252
0249: 00891009 00000000 00000000 202a8058  MOV t9.x___, void, void, u5.zzzz
0250: 038a1002 29002800 00000740 00290048  MAD t10.xyz_, t2.xyzz, t14.xxxx, t4.xyzz
0251: 038b1001 2900a800 00000000 202900c8  ADD t11.xyz_, t10.xyzz, void, u12.xyzz
0252: 00821150 00009800 00aa01c0 00000002  SET.EQ t2.x___, t9.xxxx, u3.yyyy, void
0253: 00000156 00002800 00000240 00008002  BRANCH.EQ void, t2.xxxx, u4.xxxx, label_0256
0254: 07821009 00000000 00000000 203900d8  MOV t2, void, void, u13
0255: 00000016 00000000 00000000 00009100  BRANCH void, void, void, label_0290
0256: 00881150 00009800 00000240 00000002  SET.EQ t8.x___, t9.xxxx, u4.xxxx, void
0257: 00000156 00008800 00000240 00008202  BRANCH.EQ void, t8.xxxx, u4.xxxx, label_0260
0258: 07881009 00000000 00000000 203f80c8  MOV t8, void, void, u12.zwww
0259: 00000016 00000000 00000000 00008780  BRANCH void, void, void, label_0271
0260: 008e1150 00009800 00aa0340 00000002  SET.EQ t14.x___, t9.xxxx, u6.yyyy, void
0261: 00000156 0000e800 00000240 00008402  BRANCH.EQ void, t14.xxxx, u4.xxxx, label_0264
0262: 07881009 00000000 00000000 203ec0c8  MOV t8, void, void, u12.wzww
0263: 00000016 00000000 00000000 00008780  BRANCH void, void, void, label_0271
0264: 008e1150 00009800 01fe02c0 00000002  SET.EQ t14.x___, t9.xxxx, u5.wwww, void
0265: 00000156 0000e800 00000240 00008602  BRANCH.EQ void, t14.xxxx, u4.xxxx, label_0268
0266: 07881009 00000000 00000000 203bc0c8  MOV t8, void, void, u12.wwzw
0267: 00000016 00000000 00000000 00008780  BRANCH void, void, void, label_0271
0268: 00891150 00009800 015402c0 00000002  SET.EQ t9.x___, t9.xxxx, u5.zzzz, void
0269: 00000156 00009800 00000240 00008782  BRANCH.EQ void, t9.xxxx, u4.xxxx, label_0271
0270: 07881009 00000000 00000000 203e80c8  MOV t8, void, void, u12.zzww
0271: 03891001 2900f800 00000010 006900a8  ADD t9.xyz_, u15.xyzz, void, -t10.xyzz
0272: 008e1005 29009800 014804c0 00000000  DP3 t14.x___, t9.xyzz, t9.xyzz, void
0273: 008e100d 00000000 00000000 000000e8  RSQ t14.x___, void, void, t14.xxxx
0274: 03891003 29009800 00000740 00000000  MUL t9.xyz_, t9.xyzz, t14.xxxx, void
0275: 038a1001 29004800 00000000 006900a8  ADD t10.xyz_, t4.xyzz, void, -t10.xyzz
0276: 038e1009 00000000 00000000 00490098  MOV t14.xyz_, void, void, -t9.xyzx
0277: 00891005 2900b800 014804c0 00000000  DP3 t9.x___, t11.xyzz, t9.xyzz, void
0278: 008f1005 2900b800 01480740 00000000  DP3 t15.x___, t11.xyzz, t14.xyzz, void
0279: 038b1003 0000f800 014805c0 00000000  MUL t11.xyz_, t15.xxxx, t11.xyzz, void
0280: 038b1003 3fc05800 014805d0 00000000  MUL t11.xyz_, u5.wwww, t11.xyzz, void
0281: 038b1001 2900e800 00000000 006900b8  ADD t11.xyz_, t14.xyzz, void, -t11.xyzz
0282: 008e1005 2900a800 01480540 00000000  DP3 t14.x___, t10.xyzz, t10.xyzz, void
0283: 008e100d 00000000 00000000 000000e8  RSQ t14.x___, void, void, t14.xxxx
0284: 038a1003 2900a800 00000740 00000000  MUL t10.xyz_, t10.xyzz, t14.xxxx, void
0285: 008a1805 2900b800 01480540 00000000  DP3.SAT t10.x___, t11.xyzz, t10.xyzz, void
0286: 00921012 00000000 00000000 000000a8  LOG t18.x___, void, void, t10.xxxx
0287: 00921003 3fc0f800 00000950 00000000  MUL t18.x___, u15.wwww, t18.xxxx, void
0288: 008a1011 00000000 00000000 00000128  EXP t10.x___, void, void, t18.xxxx
0289: 07821002 00009800 01c80440 000000a8  MAD t2, t9.xxxx, t8, t10.xxxx
0290: 00881150 00003800 00000240 00000002  SET.EQ t8.x___, t3.xxxx, u4.xxxx, void
0291: 00000156 00008800 00000240 00009302  BRANCH.EQ void, t8.xxxx, u4.xxxx, label_0294
0292: 07881009 00000000 00000000 203f80c8  MOV t8, void, void, u12.zwww
0293: 00000016 00000000 00000000 00009880  BRANCH void, void, void, label_0305
0294: 00891150 00003800 00aa0340 00000002  SET.EQ t9.x___, t3.xxxx, u6.yyyy, void
0295: 00000156 00009800 00000240 00009502  BRANCH.EQ void, t9.xxxx, u4.xxxx, label_0298
0296: 07881009 00000000 00000000 203ec0c8  MOV t8, void, void, u12.wzww
0297: 00000016 00000000 00000000 00009880  BRANCH void, void, void, label_0305
0298: 00891150 00003800 01fe02c0 00000002  SET.EQ t9.x___, t3.xxxx, u5.wwww, void
0299: 00000156 00009800 00000240 00009702  BRANCH.EQ void, t9.xxxx, u4.xxxx, label_0302
0300: 07881009 00000000 00000000 203bc0c8  MOV t8, void, void, u12.wwzw
0301: 00000016 00000000 00000000 00009880  BRANCH void, void, void, label_0305
0302: 00831150 00003800 015402c0 00000002  SET.EQ t3.x___, t3.xxxx, u5.zzzz, void
0303: 00000156 00003800 00000240 00009882  BRANCH.EQ void, t3.xxxx, u4.xxxx, label_0305
0304: 07881009 00000000 00000000 203e80c8  MOV t8, void, void, u12.zzww
0305: 03831001 2900f800 00000010 00690048  ADD t3.xyz_, u15.xyzz, void, -t4.xyzz
0306: 00891005 29003800 014801c0 00000000  DP3 t9.x___, t3.xyzz, t3.xyzz, void
0307: 0089100d 00000000 00000000 00000098  RSQ t9.x___, void, void, t9.xxxx
0308: 03831003 29003800 000004c0 00000000  MUL t3.xyz_, t3.xyzz, t9.xxxx, void
0309: 03841001 29405800 00000010 00690048  ADD t4.xyz_, u5.yyzz, void, -t4.xyzz
0310: 03891009 00000000 00000000 00490038  MOV t9.xyz_, void, void, -t3.xyzx
0311: 00831005 29006800 014801c0 00000000  DP3 t3.x___, t6.xyzz, t3.xyzz, void
0312: 07821001 39008800 00000000 00390028  ADD t2, t8, void, t2
0313: 00881005 29006800 014804c0 00000000  DP3 t8.x___, t6.xyzz, t9.xyzz, void
0314: 03861003 00008800 01480340 00000000  MUL t6.xyz_, t8.xxxx, t6.xyzz, void
0315: 03861003 3fc05800 01480350 00000000  MUL t6.xyz_, u5.wwww, t6.xyzz, void
0316: 03861001 29009800 00000000 00690068  ADD t6.xyz_, t9.xyzz, void, -t6.xyzz
0317: 00881005 29004800 01480240 00000000  DP3 t8.x___, t4.xyzz, t4.xyzz, void
0318: 0088100d 00000000 00000000 00000088  RSQ t8.x___, void, void, t8.xxxx
0319: 03841003 29004800 00000440 00000000  MUL t4.xyz_, t4.xyzz, t8.xxxx, void
0320: 00841805 29006800 01480240 00000000  DP3.SAT t4.x___, t6.xyzz, t4.xyzz, void
0321: 00921012 00000000 00000000 00000048  LOG t18.x___, void, void, t4.xxxx
0322: 00921003 3fc0f800 00000950 00000000  MUL t18.x___, u15.wwww, t18.xxxx, void
0323: 00841011 00000000 00000000 00000128  EXP t4.x___, void, void, t18.xxxx
0324: 07811002 00003800 01c80140 00000048  MAD t1, t3.xxxx, t2, t4.xxxx
0325: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 19
num const: 12
immediates:
 [3].x = -0.500000 (0xbf000000)
 [3].y = -1.000000 (0xbf800000)
 [3].z = 9999.900391 (0x461c3f9a)
 [3].w = 0.500000 (0x3f000000)
 [4].x = 0.000000 (0x00000000)
 [4].y = -4.000000 (0xc0800000)
 [4].z = 4.000000 (0x40800000)
 [4].w = 0.250000 (0x3e800000)
 [5].x = 0.000000 (0x00000000)
 [5].y = 0.000000 (0x00000000)
 [5].z = 3.000000 (0x40400000)
 [5].w = 2.000000 (0x40000000)
 [6].x = -0.000000 (0x80000000)
 [6].y = 1.000000 (0x3f800000)
 [6].z = 1.500000 (0x3fc00000)
 [6].w = 2.250000 (0x40100000)
 [7].x = -3.000000 (0xc0400000)
 [7].y = 0.000000 (0x00000000)
 [7].z = -4.000000 (0xc0800000)
 [7].w = 0.666700 (0x3f2aacda)
 [8].x = 3.000000 (0x40400000)
 [8].y = 0.000000 (0x00000000)
 [8].z = 4.000000 (0x40800000)
 [8].w = -4.000000 (0xc0800000)
 [9].x = 3.000000 (0x40400000)
 [9].y = -0.000000 (0x80000000)
 [9].z = 1.000000 (0x3f800000)
 [9].w = -3.000000 (0xc0400000)
 [10].x = 0.000000 (0x00000000)
 [10].y = -3.000000 (0xc0400000)
 [10].z = 4.000000 (0x40800000)
 [10].w = -2.000000 (0xc0000000)
 [11].x = 2.000000 (0x40000000)
 [11].y = 0.000000 (0x00000000)
 [11].z = -4.000000 (0xc0800000)
 [11].w = -1.000000 (0xbf800000)
 [12].x = -2.000000 (0xc0000000)
 [12].y = -0.000000 (0x80000000)
 [12].z = 1.000000 (0x3f800000)
 [12].w = 0.000000 (0x00000000)
 [13].x = 0.200000 (0x3e4ccccd)
 [13].y = 0.300000 (0x3e99999a)
 [13].z = 0.400000 (0x3ecccccd)
 [13].w = 1.000000 (0x3f800000)
 [14].x = -3.000000 (0xc0400000)
 [14].y = 0.000000 (0x00000000)
 [14].z = -1.000000 (0xbf800000)
 [14].w = 3.000000 (0x40400000)
 [15].x = 0.000000 (0x00000000)
 [15].y = 8.000000 (0x41000000)
 [15].z = 1.000000 (0x3f800000)
 [15].w = 16.000000 (0x41800000)
 [16].x = 0.000000 (0x00000000)
 [16].y = 1.000000 (0x3f800000)
 [16].z = 128.000000 (0x43000000)
 [16].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=2
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f