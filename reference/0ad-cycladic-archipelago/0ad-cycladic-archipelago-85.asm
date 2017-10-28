FRAG
PROPERTY FS_COORD_PIXEL_CENTER INTEGER
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], POSITION, LINEAR
DCL IN[1], GENERIC[9], PERSPECTIVE
DCL IN[2], GENERIC[10], PERSPECTIVE
DCL IN[3], GENERIC[11], PERSPECTIVE
DCL IN[4], GENERIC[12], PERSPECTIVE
DCL IN[5], GENERIC[13], PERSPECTIVE
DCL IN[6], GENERIC[14], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL SAMP[4]
DCL SAMP[5]
DCL SAMP[6]
DCL SAMP[7]
DCL SAMP[8]
DCL CONST[27]
DCL CONST[0..6]
DCL CONST[8..16]
DCL CONST[22..23]
DCL TEMP[0]
DCL TEMP[1..15], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     7.5000,     0.1000}
IMM[1] FLT32 {   -0.5000,    -0.0000,     3.0000,     1.0000}
IMM[2] FLT32 {    0.0000,     1.0000, 16384.0000,  4098.0000}
IMM[3] FLT32 {    2.0000,    -1.0000,  4094.0000,     0.0025}
IMM[4] FLT32 {    0.0500,     0.0010,     0.9990,     1.0500}
IMM[5] FLT32 {    1.3000,     0.8000,     5.0000,     0.6931}
IMM[6] FLT32 {  200.0000,     0.2500,     7.0000,  -100.0000}
IMM[7] FLT32 {-1500.0000,   500.0000,  1500.0000,     4.0000}
IMM[8] FLT32 { 2000.0000,     1.5000,     0.0300,     0.0200}
IMM[9] FLT32 {    0.1667,     1.4427,     0.4000,     2.6000}
IMM[10] FLT32 {    0.1818,     0.0000,     0.0000,     0.0000}
  0: ADD TEMP[0], IN[0], IMM[0].xxyy
  1: MAD TEMP[0].y, TEMP[0], CONST[27].xxxx, CONST[27].yyyy
  2: MOV TEMP[1].x, IN[4].wwww
  3: MOV TEMP[1].y, IN[5].yxyy
  4: MOV TEMP[2].xy, IN[5].zwzz
  5: MOV TEMP[2].z, IN[6].xxxx
  6: MOV TEMP[3].xyz, -CONST[0].xyzx
  7: ADD TEMP[2].xyz, CONST[6].xyzz, -TEMP[2].xyzz
  8: DP3 TEMP[4].x, TEMP[2].xyzz, TEMP[2].xyzz
  9: RSQ TEMP[4].x, TEMP[4].xxxx
 10: MUL TEMP[2].xyz, TEMP[2].xyzz, TEMP[4].xxxx
 11: ADD TEMP[4].xyz, TEMP[3].xyzz, TEMP[2].xyzz
 12: MUL TEMP[5].x, IMM[0].zzzz, CONST[15].xxxx
 13: FRC TEMP[5].x, TEMP[5].xxxx
 14: MUL TEMP[6].xy, IN[1].zwww, CONST[23].zzzz
 15: RCP TEMP[7].x, CONST[22].xxxx
 16: MUL TEMP[7].x, CONST[8].xxxx, TEMP[7].xxxx
 17: MUL TEMP[8].xy, TEMP[6].xyyy, CONST[8].xxxx
 18: MAD TEMP[8].xy, TEMP[8].xyyy, IMM[0].wwww, IN[1].xyyy
 19: ADD TEMP[9].x, CONST[22].yyyy, -TEMP[7].xxxx
 20: MUL TEMP[8].xy, TEMP[8].xyyy, TEMP[9].xxxx
 21: MOV TEMP[8].xy, TEMP[8].xyyy
 22: TEX TEMP[8].xyz, TEMP[8], SAMP[2], 2D
 23: MUL TEMP[6].xy, TEMP[6].xyyy, CONST[8].xxxx
 24: MAD TEMP[6].xy, TEMP[6].xyyy, IMM[0].wwww, IN[1].xyyy
 25: ADD TEMP[7].x, CONST[22].yyyy, -TEMP[7].xxxx
 26: MUL TEMP[6].xy, TEMP[6].xyyy, TEMP[7].xxxx
 27: MOV TEMP[6].xy, TEMP[6].xyyy
 28: TEX TEMP[6].xyz, TEMP[6], SAMP[3], 2D
 29: LRP TEMP[6].xyz, TEMP[5].xxxx, TEMP[6].xzyy, TEMP[8].xzyy
 30: ADD TEMP[6].xyz, TEMP[6].xyzz, IMM[1].xyxx
 31: MUL TEMP[7].x, TEMP[6].zzzz, IN[2].yyyy
 32: MAD TEMP[7].x, TEMP[6].xxxx, IN[2].xxxx, -TEMP[7].xxxx
 33: MUL TEMP[8].x, TEMP[6].xxxx, IN[2].yyyy
 34: MAD TEMP[8].x, TEMP[6].zzzz, IN[2].xxxx, TEMP[8].xxxx
 35: MOV TEMP[7].z, TEMP[8].xxxx
 36: MOV TEMP[7].y, TEMP[6].yyyy
 37: MUL TEMP[6].xy, IN[1].zwww, CONST[23].wwww
 38: MUL TEMP[8].xy, TEMP[6].xyyy, CONST[8].xxxx
 39: MAD TEMP[8].xy, TEMP[8].xyyy, IMM[0].wwww, IN[1].xyyy
 40: MUL TEMP[8].xy, TEMP[8].xyyy, CONST[22].yyyy
 41: MUL TEMP[8].xy, TEMP[8].xyyy, IMM[1].zzzz
 42: MOV TEMP[8].xy, TEMP[8].xyyy
 43: TEX TEMP[8].xyz, TEMP[8], SAMP[2], 2D
 44: MUL TEMP[6].xy, TEMP[6].xyyy, CONST[8].xxxx
 45: MAD TEMP[6].xy, TEMP[6].xyyy, IMM[0].wwww, IN[1].xyyy
 46: MUL TEMP[6].xy, TEMP[6].xyyy, CONST[22].yyyy
 47: MUL TEMP[6].xy, TEMP[6].xyyy, IMM[1].zzzz
 48: MOV TEMP[6].xy, TEMP[6].xyyy
 49: TEX TEMP[6].xyz, TEMP[6], SAMP[3], 2D
 50: LRP TEMP[6].xyz, TEMP[5].xxxx, TEMP[6].xzyy, TEMP[8].xzyy
 51: ADD TEMP[6].xyz, TEMP[6].xyzz, IMM[1].xyxx
 52: MUL TEMP[8].x, TEMP[6].zzzz, IN[2].yyyy
 53: MAD TEMP[8].x, TEMP[6].xxxx, IN[2].xxxx, -TEMP[8].xxxx
 54: MUL TEMP[9].x, TEMP[6].xxxx, IN[2].yyyy
 55: MAD TEMP[9].x, TEMP[6].zzzz, IN[2].xxxx, TEMP[9].xxxx
 56: MOV TEMP[8].z, TEMP[9].xxxx
 57: MOV TEMP[8].y, TEMP[6].yyyy
 58: MUL TEMP[6].x, IN[3].zzzz, IMM[0].wwww
 59: MAD TEMP[6].x, TEMP[6].xxxx, CONST[23].xxxx, CONST[23].yyyy
 60: MAD TEMP[7].xyz, TEMP[8].xyzz, TEMP[6].xxxx, TEMP[7].xyzz
 61: LRP TEMP[6].xyz, IN[3].xxxx, TEMP[FRAG
0000: 07941001 39000800 00000000 201401c8  ADD t20, t0, void, u28.xxyy
0001: 01141002 39014800 00000dc0 201541ba  MAD t20._y__, t20, u27.xxxx, u27.yyyy
0002: 00951009 00000000 00000000 003fc048  MOV t21.x___, void, void, t4.wwww
0003: 01151009 00000000 00000000 00144058  MOV t21._y__, void, void, t5.yxyy
0004: 01961009 00000000 00000000 002b8058  MOV t22.xy__, void, void, t5.zwzz
0005: 02161009 00000000 00000000 00000068  MOV t22.__z_, void, void, t6.xxxx
0006: 03931009 00000000 00000000 20490008  MOV t19.xyz_, void, void, -u0.xyzx
0007: 03961001 29006800 00000010 00690168  ADD t22.xyz_, u6.xyzz, void, -t22.xyzz
0008: 00921005 29016800 01480b40 00000000  DP3 t18.x___, t22.xyzz, t22.xyzz, void
0009: 0092100d 00000000 00000000 00000128  RSQ t18.x___, void, void, t18.xxxx
0010: 03961003 29016800 00000940 00000000  MUL t22.xyz_, t22.xyzz, t18.xxxx, void
0011: 03921001 29013800 00000000 00290168  ADD t18.xyz_, t19.xyzz, void, t22.xyzz
0012: 07971009 00000000 00000000 200000f8  MOV t23, void, void, u15.xxxx
0013: 00901003 2a81c800 01c80bd0 00000000  MUL t16.x___, u28.zzzz, t23, void
0014: 00901013 00000000 00000000 00000108  FRC t16.x___, void, void, t16.xxxx
0015: 01871003 3f801800 01540bc0 00000002  MUL t7.xy__, t1.zwww, u23.zzzz, void
0016: 0088100c 00000000 00000000 20000168  RCP t8.x___, void, void, u22.xxxx
0017: 00881003 00008800 00000450 00000000  MUL t8.x___, u8.xxxx, t8.xxxx, void
0018: 01891003 15007800 00000440 00000002  MUL t9.xy__, t7.xyyy, u8.xxxx, void
0019: 01891002 15009800 01fe0e40 0015001a  MAD t9.xy__, t9.xyyy, u28.wwww, t1.xyyy
0020: 008a1001 15416800 00000010 00400088  ADD t10.x___, u22.yyyy, void, -t8.xxxx
0021: 01891003 15009800 00000540 00000000  MUL t9.xy__, t9.xyyy, t10.xxxx, void
0022: 01891009 00000000 00000000 00150098  MOV t9.xy__, void, void, t9.xyyy
0023: 13891018 39009f20 00000000 00000000  TEXLD t9.xyz_, tex2, t9, void, void
0024: 01871003 15007800 00000440 00000002  MUL t7.xy__, t7.xyyy, u8.xxxx, void
0025: 01871002 15007800 01fe0e40 0015001a  MAD t7.xy__, t7.xyyy, u28.wwww, t1.xyyy
0026: 00881001 15416800 00000010 00400088  ADD t8.x___, u22.yyyy, void, -t8.xxxx
0027: 01871003 15007800 00000440 00000000  MUL t7.xy__, t7.xyyy, t8.xxxx, void
0028: 01871009 00000000 00000000 00150078  MOV t7.xy__, void, void, t7.xyyy
0029: 1b871018 39007f20 00000000 00000000  TEXLD t7.xyz_, tex3, t7, void, void
0030: 07971002 00010800 00b004c0 00560098  MAD t23, t16.xxxx, t9.xzyy, -t9.xzyy
0031: 03871002 00010800 00b003c0 00790178  MAD t7.xyz_, t16.xxxx, t7.xzyy, -t23
0032: 03871001 29007800 00000000 200101d8  ADD t7.xyz_, t7.xyzz, void, u29.xyxx
0033: 00881003 2a807800 00aa0140 00000000  MUL t8.x___, t7.zzzz, t2.yyyy, void
0034: 00881002 00007800 00000140 00400088  MAD t8.x___, t7.xxxx, t2.xxxx, -t8.xxxx
0035: 00891003 00007800 00aa0140 00000000  MUL t9.x___, t7.xxxx, t2.yyyy, void
0036: 00891002 2a807800 00000140 00000098  MAD t9.x___, t7.zzzz, t2.xxxx, t9.xxxx
0037: 02081009 00000000 00000000 00000098  MOV t8.__z_, void, void, t9.xxxx
0038: 01081009 00000000 00000000 00154078  MOV t8._y__, void, void, t7.yyyy
0039: 01871003 3f801800 01fe0bc0 00000002  MUL t7.xy__, t1.zwww, u23.wwww, void
0040: 01891003 15007800 00000440 00000002  MUL t9.xy__, t7.xyyy, u8.xxxx, void
0041: 01891002 15009800 01fe0e40 0015001a  MAD t9.xy__, t9.xyyy, u28.wwww, t1.xyyy
0042: 01891003 15009800 00aa0b40 00000002  MUL t9.xy__, t9.xyyy, u22.yyyy, void
0043: 01891003 15009800 01540ec0 00000002  MUL t9.xy__, t9.xyyy, u29.zzzz, void
0044: 01891009 00000000 00000000 00150098  MOV t9.xy__, void, void, t9.xyyy
0045: 13891018 39009f20 00000000 00000000  TEXLD t9.xyz_, tex2, t9, void, void
0046: 01871003 15007800 00000440 00000002  MUL t7.xy__, t7.xyyy, u8.xxxx, void
0047: 01871002 15007800 01fe0e40 0015001a  MAD t7.xy__, t7.xyyy, u28.wwww, t1.xyyy
0048: 01871003 15007800 00aa0b40 00000002  MUL t7.xy__, t7.xyyy, u22.yyyy, void
0049: 01871003 15007800 01540ec0 00000002  MUL t7.xy__, t7.xyyy, u29.zzzz, void
0050: 01871009 00000000 00000000 00150078  MOV t7.xy__, void, void, t7.xyyy
0051: 1b871018 39007f20 00000000 00000000  TEXLD t7.xyz_, tex3, t7, void, void
0052: 07971002 00010800 00b004c0 00560098  MAD t23, t16.xxxx, t9.xzyy, -t9.xzyy
0053: 03871002 00010800 00b003c0 00790178  MAD t7.xyz_, t16.xxxx, t7.xzyy, -t23
0054: 03871001 29007800 00000000 200101d8  ADD t7.xyz_, t7.xyzz, void, u29.xyxx
0055: 00891003 2a807800 00aa0140 00000000  MUL t9.x___, t7.zzzz, t2.yyyy, void
0056: 00891002 00007800 00000140 00400098  MAD t9.x___, t7.xxxx, t2.xxxx, -t9.xxxx
0057: 008a1003 00007800 00aa0140 00000000  MUL t10.x___, t7.xxxx, t2.yyyy, void
0058: 008a1002 2a807800 00000140 000000a8  MAD t10.x___, t7.zzzz, t2.xxxx, t10.xxxx
0059: 02091009 00000000 00000000 000000a8  MOV t9.__z_, void, void, t10.xxxx
0060: 01091009 00000000 00000000 00154078  MOV t9._y__, void, void, t7.yyyy
0061: 00871003 2a803800 01fe0e40 00000002  MUL t7.x___, t3.zzzz, u28.wwww, void
0062: 00871002 00007800 00000bc0 2015417a  MAD t7.x___, t7.xxxx, u23.xxxx, u23.yyyy
0063: 03881002 29009800 000003c0 00290088  MAD t8.xyz_, t9.xyzz, t7.xxxx, t8.xyzz
0064: 07971002 00003800 014804c0 00690098  MAD t23, t3.xxxx, t9.xyzz, -t9.xyzz
0065: 03871002 00003800 01480440 00790178  MAD t7.xyz_, t3.xxxx, t8.xyzz, -t23
0066: 0088100c 00000000 00000000 202a8168  RCP t8.x___, void, void, u22.zzzz
0067: 00881002 2a803800 00000440 203fc168  MAD t8.x___, t3.zzzz, t8.xxxx, u22.wwww
0068: 00881809 00000000 00000000 00000088  MOV.SAT t8.x___, void, void, t8.xxxx
0069: 07971002 00008800 00080f40 204101ea  MAD t23, t8.xxxx, u30.xyxx, -u30.xyxx
0070: 03871002 00008800 014803c0 00790178  MAD t7.xyz_, t8.xxxx, t7.xyzz, -t23
0071: 0088100c 00000000 00000000 200000e8  RCP t8.x___, void, void, u14.xxxx
0072: 0108100c 00000000 00000000 201540e8  RCP t8._y__, void, void, u14.yyyy
0073: 01881003 15014800 00a80440 00000000  MUL t8.xy__, t20.xyyy, t8.xyyy, void
0074: 01891009 00000000 00000000 00150088  MOV t9.xy__, void, void, t8.xyyy
0075: 26891018 39009f20 00000000 00000000  TEXLD t9.x_zw, tex4, t9, void, void
0076: 008a1005 29007800 014803c0 00000000  DP3 t10.x___, t7.xyzz, t7.xyzz, void
0077: 008a100d 00000000 00000000 000000a8  RSQ t10.x___, void, void, t10.xxxx
0078: 03871003 29007800 00000540 00000000  MUL t7.xyz_, t7.xyzz, t10.xxxx, void
0079: 008a1002 00003800 00000e40 200001ca  MAD t10.x___, t3.xxxx, u28.xxxx, u28.xxxx
0080: 07971002 0000a800 00080f40 204101ea  MAD t23, t10.xxxx, u30.xyxx, -u30.xyxx
0081: 03871002 0000a800 014803c0 00790178  MAD t7.xyz_, t10.xxxx, t7.xyzz, -t23
0082: 008a1003 3fc09800 00000e40 00000002  MUL t10.x___, t9.wwww, u28.xxxx, void
0083: 07971002 0000a800 015003c0 006a0078  MAD t23, t10.xxxx, t7.xzzz, -t7.xzzz
0084: 018a1002 0000a800 015004c0 00790178  MAD t10.xy__, t10.xxxx, t9.xzzz, -t23
0085: 008b1009 00000000 00000000 004000a8  MOV t11.x___, void, void, -t10.xxxx
0086: 010b1009 00000000 00000000 00154078  MOV t11._y__, void, void, t7.yyyy
0087: 020b1009 00000000 00000000 005540a8  MOV t11.__z_, void, void, -t10.yyyy
0088: 00871005 29012800 01480940 00000000  DP3 t7.x___, t18.xyzz, t18.xyzz, void
0089: 0087100d 00000000 00000000 00000078  RSQ t7.x___, void, void, t7.xxxx
0090: 03921003 29012800 000003c0 00000000  MUL t18.xyz_, t18.xyzz, t7.xxxx, void
0091: 00921005 2900b800 01480940 00000000  DP3 t18.x___, t11.xyzz, t18.xyzz, void
0092: 00871005 2900b800 01480b40 00000000  DP3 t7.x___, t11.xyzz, t22.xyzz, void
0093: 00871809 00000000 00000000 00000078  MOV.SAT t7.x___, void, void, t7.xxxx
0094: 00931005 2900b800 014809c0 00000000  DP3 t19.x___, t11.xyzz, t19.xyzz, void
0095: 00931001 00013800 00000000 203fc1d8  ADD t19.x___, t19.xxxx, void, u29.wwww
0096: 00931003 00013800 00000e40 00000002  MUL t19.x___, t19.xxxx, u28.xxxx, void
0097: 008a1002 0001f800 01540a50 201541f8  MAD t10.x___, u31.xxxx, t20.zzzz, u31.yyyy
0098: 008a1003 0000a800 01540fc0 00000002  MUL t10.x___, t10.xxxx, u31.zzzz, void
0099: 008a1001 3fc1e800 00000010 004000a8  ADD t10.x___, u30.wwww, void, -t10.xxxx
0100: 008a100c 00000000 00000000 000000a8  RCP t10.x___, void, void, t10.xxxx
0101: 008a1003 2a81e800 00000550 00000000  MUL t10.x___, u30.zzzz, t10.xxxx, void
0102: 018c1009 00000000 00000000 00150088  MOV t12.xy__, void, void, t8.xyyy
0103: 408c1018 3900cf20 00000000 00000000  TEXLD t12.x___, tex8, t12, void, void
0104: 008d1002 0001f800 00000650 201541f8  MAD t13.x___, u31.xxxx, t12.xxxx, u31.yyyy
0105: 008d1003 0000d800 01540fc0 00000002  MUL t13.x___, t13.xxxx, u31.zzzz, void
0106: 008d1001 3fc1e800 00000010 004000d8  ADD t13.x___, u30.wwww, void, -t13.xxxx
0107: 008d100c 00000000 00000000 000000d8  RCP t13.x___, void, void, t13.xxxx
0108: 008d1002 2a81e800 000006d0 004000a8  MAD t13.x___, u30.zzzz, t13.xxxx, -t10.xxxx
0109: 008d1003 0000d800 01fe0fc0 00000002  MUL t13.x___, t13.xxxx, u31.wwww, void
0110: 008d1809 00000000 00000000 000000d8  MOV.SAT t13.x___, void, void, t13.xxxx
0111: 008d104f 0000d800 00001040 000000da  SELECT.GT t13.x___, t13.xxxx, u32.xxxx, t13.xxxx
0112: 018d1003 2a00b800 000006c0 00000000  MUL t13.xy__, t11.xzzz, t13.xxxx, void
0113: 01881001 15008800 00000000 005500d8  ADD t8.xy__, t8.xyyy, void, -t13.xyyy
0114: 0188108f 15008800 00aa1040 0015008a  SELECT.LT t8.xy__, t8.xyyy, u32.yyyy, t8.xyyy
0115: 0188104f 15008800 01541040 0015008a  SELECT.GT t8.xy__, t8.xyyy, u32.zzzz, t8.xyyy
0116: 01881009 00000000 00000000 00150088  MOV t8.xy__, void, void, t8.xyyy
0117: 40881018 39008f20 00000000 00000000  TEXLD t8.x___, tex8, t8, void, void
0118: 008d1009 00000000 00000000 00000088  MOV t13.x___, void, void, t8.xxxx
0119: 00881090 00008800 00000640 00000000  SET.LT t8.x___, t8.xxxx, t12.xxxx, void
0120: 00000156 00008800 00aa0e40 00003d02  BRANCH.EQ void, t8.xxxx, u28.yyyy, label_0122
0121: 008d1009 00000000 00000000 000000c8  MOV t13.x___, void, void, t12.xxxx
0122: 00881002 0001f800 000006d0 201541f8  MAD t8.x___, u31.xxxx, t13.xxxx, u31.yyyy
0123: 00881003 00008800 01540fc0 00000002  MUL t8.x___, t8.xxxx, u31.zzzz, void
0124: 00881001 3fc1e800 00000010 00400088  ADD t8.x___, u30.wwww, void, -t8.xxxx
0125: 0088100c 00000000 00000000 00000088  RCP t8.x___, void, void, t8.xxxx
0126: 00881002 2a81e800 00000450 004000a8  MAD t8.x___, u30.zzzz, t8.xxxx, -t10.xxxx
0127: 0088108f 00008800 01fe04c0 00000088  SELECT.LT t8.x___, t8.xxxx, t9.wwww, t8.xxxx
0128: 00871001 3fc20800 00000010 00400078  ADD t7.x___, u32.wwww, void, -t7.xxxx
0129: 00911012 00000000 00000000 00000078  LOG t17.x___, void, void, t7.xxxx
0130: 00911003 00021800 000008d0 00000000  MUL t17.x___, u33.xxxx, t17.xxxx, void
0131: 00871011 00000000 00000000 00000118  EXP t7.x___, void, void, t17.xxxx
0132: 00871809 00000000 00000000 00000078  MOV.SAT t7.x___, void, void, t7.xxxx
0133: 0087104f 00007800 00aa10c0 0000007a  SELECT.GT t7.x___, t7.xxxx, u33.yyyy, t7.xxxx
0134: 07971009 00000000 00000000 203fc1d8  MOV t23, void, void, u29.wwww
0135: 008a1002 15416800 015410c0 0039017a  MAD t10.x___, t22.yyyy, u33.zzzz, t23
0136: 008a1012 00000000 00000000 000000a8  LOG t10.x___, void, void, t10.xxxx
0137: 008a1003 0000a800 01fe10c0 00000002  MUL t10.x___, t10.xxxx, u33.wwww, void
0138: 008a104f 3fc1d800 00000550 203fc1d8  SELECT.GT t10.x___, u29.wwww, t10.xxxx, u29.wwww
0139: 00871003 00007800 00000540 00000000  MUL t7.x___, t7.xxxx, t10.xxxx, void
0140: 07971009 00000000 00000000 203fc1c8  MOV t23, void, void, u28.wwww
0141: 00871002 00007800 00aa10c0 0039017a  MAD t7.x___, t7.xxxx, u33.yyyy, t23
0142: 008a108f 15416800 01fe0e40 0015416a  SELECT.LT t10.x___, t22.yyyy, u28.wwww, t22.yyyy
0143: 00911012 00000000 00000000 200000b8  LOG t17.x___, void, void, u11.xxxx
0144: 00911003 15422800 000008d0 00000000  MUL t17.x___, u34.yyyy, t17.xxxx, void
0145: 008c1011 00000000 00000000 00000118  EXP t12.x___, void, void, t17.xxxx
0146: 07971002 0000c800 00001140 2040022a  MAD t23, t12.xxxx, u34.xxxx, -u34.xxxx
0147: 008c1002 0000c800 01fe0e40 0079017a  MAD t12.x___, t12.xxxx, u28.wwww, -t23
0148: 008d1003 00008800 00000e40 00000002  MUL t13.x___, t8.xxxx, u28.xxxx, void
0149: 008d108f 0000d800 00aa0e40 000000da  SELECT.LT t13.x___, t13.xxxx, u28.yyyy, t13.xxxx
0150: 008d104f 0000d800 01541140 000000da  SELECT.GT t13.x___, t13.xxxx, u34.zzzz, t13.xxxx
0151: 018d1003 2a00b800 000006c0 00000000  MUL t13.xy__, t11.xzzz, t13.xxxx, void
0152: 018d1003 1500d800 01541140 00000002  MUL t13.xy__, t13.xyyy, u34.zzzz, void
0153: 018d1002 0001c800 00a80ad0 005500d8  MAD t13.xy__, u28.xxxx, t21.xyyy, -t13.xyyy
0154: 008e100c 00000000 00000000 00154058  RCP t14.x___, void, void, t5.yyyy
0155: 018d1002 1500d800 00000740 200001c8  MAD t13.xy__, t13.xyyy, t14.xxxx, u28.xxxx
0156: 018d1809 00000000 00000000 001500d8  MOV.SAT t13.xy__, void, void, t13.xyyy
0157: 018d1009 00000000 00000000 001500d8  MOV t13.xy__, void, void, t13.xyyy
0158: 3b8d1018 3900df20 00000000 00000000  TEXLD t13.xyz_, tex7, t13, void, void
0159: 038e1009 00000000 00000000 000900d8  MOV t14.xyz_, void, void, t13.xyzx
0160: 008f1001 1540d800 00000000 002a80d8  ADD t15.x___, t13.yyyy, void, t13.zzzz
0161: 008f1001 0000f800 00000000 20154228  ADD t15.x___, t15.xxxx, void, u34.yyyy
0162: 008d1090 0000f800 000006c0 00000000  SET.LT t13.x___, t15.xxxx, t13.xxxx, void
0163: 00000156 0000d800 00aa0e40 00005582  BRANCH.EQ void, t13.xxxx, u28.yyyy, label_0171
0164: 01951002 0001c800 00a80ad0 002a00b8  MAD t21.xy__, u28.xxxx, t21.xyyy, t11.xzzz
0165: 008d100c 00000000 00000000 00154058  RCP t13.x___, void, void, t5.yyyy
0166: 01951002 15015800 000006c0 200001c8  MAD t21.xy__, t21.xyyy, t13.xxxx, u28.xxxx
0167: 01951809 00000000 00000000 00150158  MOV.SAT t21.xy__, void, void, t21.xyyy
0168: 01951009 00000000 00000000 00150158  MOV t21.xy__, void, void, t21.xyyy
0169: 3b951018 39015f20 00000000 00000000  TEXLD t21.xyz_, tex7, t21, void, void
0170: 038e1009 00000000 00000000 00090158  MOV t14.xyz_, void, void, t21.xyzx
0171: 03951003 2900e800 01480540 00000002  MUL t21.xyz_, t14.xyzz, u10.xyzz, void
0172: 008d1003 00008800 00000540 00000000  MUL t13.x___, t8.xxxx, t10.xxxx, void
0173: 008f100c 00000000 00000000 000000c8  RCP t15.x___, void, void, t12.xxxx
0174: 008d1003 0000d800 000007c0 00000000  MUL t13.x___, t13.xxxx, t15.xxxx, void
0175: 008d1001 3fc1d800 00000010 004000d8  ADD t13.x___, u29.wwww, void, -t13.xxxx
0176: 008d108f 1541c800 000006d0 201541c8  SELECT.LT t13.x___, u28.yyyy, t13.xxxx, u28.yyyy
0177: 07971002 0000d800 01480ac0 00690158  MAD t23, t13.xxxx, t21.xyzz, -t21.xyzz
0178: 03951002 0000d800 01480740 00790178  MAD t21.xyz_, t13.xxxx, t14.xyzz, -t23
0179: 008a1003 00008800 00000540 00000000  MUL t10.x___, t8.xxxx, t10.xxxx, void
0180: 008c100c 00000000 00000000 000000c8  RCP t12.x___, void, void, t12.xxxx
0181: 008a1003 0000a800 00000640 00000000  MUL t10.x___, t10.xxxx, t12.xxxx, void
0182: 008a1001 3fc1d800 00000010 004000a8  ADD t10.x___, u29.wwww, void, -t10.xxxx
0183: 008a108f 1541c800 00000550 201541c8  SELECT.LT t10.x___, u28.yyyy, t10.xxxx, u28.yyyy
0184: 07971002 0000a800 014804c0 2069009a  MAD t23, t10.xxxx, u9.xyzz, -u9.xyzz
0185: 03951002 0000a800 01480ac0 00790178  MAD t21.xyz_, t10.xxxx, t21.xyzz, -t23
0186: 008a1005 2900b800 01480b40 00000000  DP3 t10.x___, t11.xyzz, t22.xyzz, void
0187: 038a1003 0000a800 014805c0 00000000  MUL t10.xyz_, t10.xxxx, t11.xyzz, void
0188: 038a1003 0001f800 01480550 00000000  MUL t10.xyz_, u31.xxxx, t10.xyzz, void
0189: 038a1001 29016800 00000000 006900a8  ADD t10.xyz_, t22.xyzz, void, -t10.xyzz
0190: 008c1003 2a805800 00aa1140 00000002  MUL t12.x___, t5.zzzz, u34.yyyy, void
0191: 010c1009 00000000 00000000 003fc058  MOV t12._y__, void, void, t5.wwww
0192: 008d1003 00006800 00aa1140 00000002  MUL t13.x___, t6.xxxx, u34.yyyy, void
0193: 020c1009 00000000 00000000 000000d8  MOV t12.__z_, void, void, t13.xxxx
0194: 010d1009 00000000 00000000 203fc228  MOV t13._y__, void, void, u34.wwww
0195: 07971009 00000000 00000000 200001c8  MOV t23, void, void, u28.xxxx
0196: 008e1003 00010800 01c80bd0 00000000  MUL t14.x___, u16.xxxx, t23, void
0197: 008d1001 00023800 00000010 000000e8  ADD t13.x___, u35.xxxx, void, t14.xxxx
0198: 008f1001 00023800 00000010 000000e8  ADD t15.x___, u35.xxxx, void, t14.xxxx
0199: 020d1009 00000000 00000000 000000f8  MOV t13.__z_, void, void, t15.xxxx
0200: 010f1009 00000000 00000000 20154238  MOV t15._y__, void, void, u35.yyyy
0201: 008f1001 2a823800 00000010 000000e8  ADD t15.x___, u35.zzzz, void, t14.xxxx
0202: 008e1001 2a823800 00000010 000000e8  ADD t14.x___, u35.zzzz, void, t14.xxxx
0203: 020f1009 00000000 00000000 000000e8  MOV t15.__z_, void, void, t14.xxxx
0204: 038e1001 2900f800 00000000 006900c8  ADD t14.xyz_, t15.xyzz, void, -t12.xyzz
0205: 008f100c 00000000 00000000 000000a8  RCP t15.x___, void, void, t10.xxxx
0206: 010f100c 00000000 00000000 001540a8  RCP t15._y__, void, void, t10.yyyy
0207: 020f100c 00000000 00000000 002a80a8  RCP t15.__z_, void, void, t10.zzzz
0208: 038e1003 2900e800 014807c0 00000000  MUL t14.xyz_, t14.xyzz, t15.xyzz, void
0209: 038c1001 2900d800 00000000 006900c8  ADD t12.xyz_, t13.xyzz, void, -t12.xyzz
0210: 008d100c 00000000 00000000 000000a8  RCP t13.x___, void, void, t10.xxxx
0211: 010d100c 00000000 00000000 001540a8  RCP t13._y__, void, void, t10.yyyy
0212: 020d100c 00000000 00000000 002a80a8  RCP t13.__z_, void, void, t10.zzzz
0213: 038c1003 2900c800 014806c0 00000000  MUL t12.xyz_, t12.xyzz, t13.xyzz, void
0214: 038c108f 2900e800 01480640 002900e8  SELECT.LT t12.xyz_, t14.xyzz, t12.xyzz, t14.xyzz
0215: 040d1009 00000000 00000000 203fc1d8  MOV t13.___w, void, void, u29.wwww
0216: 008d1003 6a805800 00aa1140 00000002  MUL t13.x___, -t5.zzzz, u34.yyyy, void
0217: 010d1009 00000000 00000000 003fc058  MOV t13._y__, void, void, t5.wwww
0218: 008e1003 40006800 00aa1140 00000002  MUL t14.x___, -t6.xxxx, u34.yyyy, void
0219: 020d1009 00000000 00000000 000000e8  MOV t13.__z_, void, void, t14.xxxx
0220: 040e1009 00000000 00000000 201541c8  MOV t14.___w, void, void, u28.yyyy
0221: 008f104f 1540c800 01540640 001540c8  SELECT.GT t15.x___, t12.yyyy, t12.zzzz, t12.yyyy
0222: 008c104f 0000c800 000007c0 000000c8  SELECT.GT t12.x___, t12.xxxx, t15.xxxx, t12.xxxx
0223: 038e1003 2900a800 00000640 00000000  MUL t14.xyz_, t10.xyzz, t12.xxxx, void
0224: 040a1009 00000000 00000000 201541c8  MOV t10.___w, void, void, u28.yyyy
0225: 008c1009 00000000 00000000 20400108  MOV t12.x___, void, void, -u16.xxxx
0226: 008a1003 0000c800 00000e40 00000002  MUL t10.x___, t12.xxxx, u28.xxxx, void
0227: 010a1009 00000000 00000000 003fc058  MOV t10._y__, void, void, t5.wwww
0228: 008c1003 0000c800 00000e40 00000002  MUL t12.x___, t12.xxxx, u28.xxxx, void
0229: 020a1009 00000000 00000000 000000c8  MOV t10.__z_, void, void, t12.xxxx
0230: 078c1001 3900d800 00000000 003900e8  ADD t12, t13, void, t14
0231: 078a1001 3900c800 00000000 007900a8  ADD t10, t12, void, -t10
0232: 008c1006 3900a800 01c80140 00000002  DP4 t12.x___, t10, u2, void
0233: 008d1006 3900a800 01c801c0 00000002  DP4 t13.x___, t10, u3, void
0234: 008e1006 3900a800 01c80240 00000002  DP4 t14.x___, t10, u4, void
0235: 020c1009 00000000 00000000 000000e8  MOV t12.__z_, void, void, t14.xxxx
0236: 008a1006 3900a800 01c802c0 00000002  DP4 t10.x___, t10, u5, void
0237: 040c1009 00000000 00000000 000000a8  MOV t12.___w, void, void, t10.xxxx
0238: 028a1009 00000000 00000000 003800c8  MOV t10.x_z_, void, void, t12.xxzw
0239: 008c1003 0000d800 01fe11c0 00000002  MUL t12.x___, t13.xxxx, u35.wwww, void
0240: 010a1009 00000000 00000000 000000c8  MOV t10._y__, void, void, t12.xxxx
0241: 07971009 00000000 00000000 203fc1c8  MOV t23, void, void, u28.wwww
0242: 008c1003 00008800 01c80bd0 00000000  MUL t12.x___, u8.xxxx, t23, void
0243: 07971002 0000c800 01fe0ec0 207fc1da  MAD t23, t12.xxxx, u29.wwww, -u29.wwww
0244: 008c1002 0000c800 01fe11c0 0079017a  MAD t12.x___, t12.xxxx, u35.wwww, -t23
0245: 008c1003 00008800 00000650 00000000  MUL t12.x___, u8.xxxx, t12.xxxx, void
0246: 018b1003 0000c800 000405c0 00000000  MUL t11.xy__, t12.xxxx, t11.zxxx, void
0247: 018b1002 0001c800 00a80250 005500b8  MAD t11.xy__, u28.xxxx, t4.xyyy, -t11.xyyy
0248: 008c100c 00000000 00000000 002a8048  RCP t12.x___, void, void, t4.zzzz
0249: 018b1002 1500b800 00000640 200001c8  MAD t11.xy__, t11.xyyy, t12.xxxx, u28.xxxx
0250: 018b1809 00000000 00000000 001500b8  MOV.SAT t11.xy__, void, void, t11.xyyy
0251: 018b1009 00000000 00000000 001500b8  MOV t11.xy__, void, void, t11.xyyy
0252: 378b1018 3900bf20 00000000 00000000  TEXLD t11, tex6, t11, void, void
0253: 038a1009 00000000 00000000 002900a8  MOV t10.xyz_, void, void, t10.xyzz
0254: 0b8a1018 3900af20 00000000 00000000  TEXLD t10.xyz_, tex1, t10, void, void
0255: 008c1001 3fc1d800 00000010 007fc0b8  ADD t12.x___, u29.wwww, void, -t11.wwww
0256: 038b1003 2900b800 01fe05c0 00000000  MUL t11.xyz_, t11.xyzz, t11.wwww, void
0257: 038a1002 2900a800 00000640 002900b8  MAD t10.xyz_, t10.xyzz, t12.xxxx, t11.xyzz
0258: 00961003 15416800 00aa0b40 00000000  MUL t22.x___, t22.yyyy, t22.yyyy, void
0259: 00961003 00016800 00000fc0 00000002  MUL t22.x___, t22.xxxx, u31.xxxx, void
0260: 00961809 00000000 00000000 00000168  MOV.SAT t22.x___, void, void, t22.xxxx
0261: 07971002 00016800 015410c0 206a821a  MAD t23, t22.xxxx, u33.zzzz, -u33.zzzz
0262: 00961002 00016800 00001240 0079017a  MAD t22.x___, t22.xxxx, u36.xxxx, -t23
0263: 00911012 00000000 00000000 00000128  LOG t17.x___, void, void, t18.xxxx
0264: 00911003 00016800 000008c0 00000000  MUL t17.x___, t22.xxxx, t17.xxxx, void
0265: 00961011 00000000 00000000 00000118  EXP t22.x___, void, void, t17.xxxx
0266: 03961003 00016800 014800c0 00000002  MUL t22.xyz_, t22.xxxx, u1.xyzz, void
0267: 03961003 29016800 00aa1240 00000002  MUL t22.xyz_, t22.xyzz, u36.yyyy, void
0268: 01921009 00000000 00000000 003f8028  MOV t18.xy__, void, void, t2.zwww
0269: 04121018 39012f20 00000000 00000000  TEXLD t18.___w, tex0, t18, void, void
0270: 008b1090 3fc12800 01541240 00000002  SET.LT t11.x___, t18.wwww, u36.zzzz, void
0271: 00000156 0000b800 00aa0e40 00008902  BRANCH.EQ void, t11.xxxx, u28.yyyy, label_0274
0272: 008b1009 00000000 00000000 201541c8  MOV t11.x___, void, void, u28.yyyy
0273: 00000016 00000000 00000000 00008980  BRANCH void, void, void, label_0275
0274: 008b1009 00000000 00000000 003fc128  MOV t11.x___, void, void, t18.wwww
0275: 0092100c 00000000 00000000 200000e8  RCP t18.x___, void, void, u14.xxxx
0276: 0112100c 00000000 00000000 201540e8  RCP t18._y__, void, void, u14.yyyy
0277: 01921003 15014800 00a80940 00000000  MUL t18.xy__, t20.xyyy, t18.xyyy, void
0278: 01921009 00000000 00000000 00150128  MOV t18.xy__, void, void, t18.xyyy
0279: 2c921018 39012f20 00000000 00000000  TEXLD t18.x__w, tex5, t18, void, void
0280: 018c1003 3f801800 01540bc0 00000002  MUL t12.xy__, t1.zwww, u23.zzzz, void
0281: 008d100c 00000000 00000000 20000168  RCP t13.x___, void, void, u22.xxxx
0282: 008d1003 00008800 000006d0 00000000  MUL t13.x___, u8.xxxx, t13.xxxx, void
0283: 018e1003 1500c800 00000440 00000002  MUL t14.xy__, t12.xyyy, u8.xxxx, void
0284: 018e1002 1500e800 01fe0e40 0015001a  MAD t14.xy__, t14.xyyy, u28.wwww, t1.xyyy
0285: 008f1001 15416800 00000010 004000d8  ADD t15.x___, u22.yyyy, void, -t13.xxxx
0286: 018e1003 1500e800 000007c0 00000000  MUL t14.xy__, t14.xyyy, t15.xxxx, void
0287: 018e1009 00000000 00000000 001500e8  MOV t14.xy__, void, void, t14.xyyy
0288: 140e1018 3900ef20 00000000 00000000  TEXLD t14.___w, tex2, t14, void, void
0289: 018f1003 3f801800 01fe1240 00000002  MUL t15.xy__, t1.zwww, u36.wwww, void
0290: 01861003 15001800 000012c0 00000002  MUL t6.xy__, t1.xyyy, u37.xxxx, void
0291: 018c1003 1500c800 00000440 00000002  MUL t12.xy__, t12.xyyy, u8.xxxx, void
0292: 018c1002 1500c800 01fe0e40 0015001a  MAD t12.xy__, t12.xyyy, u28.wwww, t1.xyyy
0293: 008d1001 15416800 00000010 004000d8  ADD t13.x___, u22.yyyy, void, -t13.xxxx
0294: 018c1003 1500c800 000006c0 00000000  MUL t12.xy__, t12.xyyy, t13.xxxx, void
0295: 018c1009 00000000 00000000 001500c8  MOV t12.xy__, void, void, t12.xyyy
0296: 1c0c1018 3900cf20 00000000 00000000  TEXLD t12.___w, tex3, t12, void, void
0297: 07971002 00010800 01fe0740 007fc0e8  MAD t23, t16.xxxx, t14.wwww, -t14.wwww
0298: 038c1002 00010800 01fe0640 00790178  MAD t12.xyz_, t16.xxxx, t12.wwww, -t23
0299: 018d1001 15006800 00000000 005500f8  ADD t13.xy__, t6.xyyy, void, -t15.xyyy
0300: 018d1009 00000000 00000000 001500d8  MOV t13.xy__, void, void, t13.xyyy
0301: 140d1018 3900df20 00000000 00000000  TEXLD t13.___w, tex2, t13, void, void
0302: 018e1001 15006800 00000000 005500f8  ADD t14.xy__, t6.xyyy, void, -t15.xyyy
0303: 018e1009 00000000 00000000 001500e8  MOV t14.xy__, void, void, t14.xyyy
0304: 1c0e1018 3900ef20 00000000 00000000  TEXLD t14.___w, tex3, t14, void, void
0305: 07971002 00010800 01fe06c0 007fc0d8  MAD t23, t16.xxxx, t13.wwww, -t13.wwww
0306: 038d1002 00010800 01fe0740 00790178  MAD t13.xyz_, t16.xxxx, t14.wwww, -t23
0307: 028c1003 2900c800 014806c0 00000000  MUL t12.x_z_, t12.xyzz, t13.xyzz, void
0308: 008d1003 2a80c800 00aa0140 00000000  MUL t13.x___, t12.zzzz, t2.yyyy, void
0309: 00901002 0000c800 00000140 004000d8  MAD t16.x___, t12.xxxx, t2.xxxx, -t13.xxxx
0310: 008c100c 00000000 00000000 003fc148  RCP t12.x___, void, void, t20.wwww
0311: 008c1003 2a814800 00000640 00000000  MUL t12.x___, t20.zzzz, t12.xxxx, void
0312: 008d1003 4000d800 000006d0 00000002  MUL t13.x___, -u13.xxxx, u13.xxxx, void
0313: 008d1003 0000d800 00000640 00000000  MUL t13.x___, t13.xxxx, t12.xxxx, void
0314: 008c1003 0000d800 00000640 00000000  MUL t12.x___, t13.xxxx, t12.xxxx, void
0315: 008c1003 0000c800 00aa12c0 00000002  MUL t12.x___, t12.xxxx, u37.yyyy, void
0316: 008c1011 00000000 00000000 000000c8  EXP t12.x___, void, void, t12.xxxx
0317: 07971002 0000c800 00aa06c0 205540da  MAD t23, t12.xxxx, u13.yyyy, -u13.yyyy
0318: 008c1002 0000c800 01fe0ec0 0079017a  MAD t12.x___, t12.xxxx, u29.wwww, -t23
0319: 008c1809 00000000 00000000 000000c8  MOV.SAT t12.x___, void, void, t12.xxxx
0320: 00921003 00012800 01fe0940 00000000  MUL t18.x___, t18.xxxx, t18.wwww, void
0321: 07971009 00000000 00000000 20000088  MOV t23, void, void, u8.xxxx
0322: 008d1001 2a821800 00000010 00390178  ADD t13.x___, u33.zzzz, void, t23
0323: 00901003 00010800 000006c0 00000000  MUL t16.x___, t16.xxxx, t13.xxxx, void
0324: 07971009 00000000 00000000 20000268  MOV t23, void, void, u38.xxxx
0325: 008d1003 00008800 01c80bd0 00000000  MUL t13.x___, u8.xxxx, t23, void
0326: 008d1001 3fc25800 00000010 004000d8  ADD t13.x___, u37.wwww, void, -t13.xxxx
0327: 00911012 00000000 00000000 00000108  LOG t17.x___, void, void, t16.xxxx
0328: 00911003 0000d800 000008c0 00000000  MUL t17.x___, t13.xxxx, t17.xxxx, void
0329: 00901011 00000000 00000000 00000118  EXP t16.x___, void, void, t17.xxxx
0330: 00921002 00012800 015412c0 0000010a  MAD t18.x___, t18.xxxx, u37.zzzz, t16.xxxx
0331: 00931003 00012800 000009c0 00000000  MUL t19.x___, t18.xxxx, t19.xxxx, void
0332: 00921001 3fc1d800 00000010 007fc098  ADD t18.x___, u29.wwww, void, -t9.wwww
0333: 00901809 00000000 00000000 00000088  MOV.SAT t16.x___, void, void, t8.xxxx
0334: 07971002 00010800 00000940 00400128  MAD t23, t16.xxxx, t18.xxxx, -t18.xxxx
0335: 00921002 00010800 01fe0ec0 0079017a  MAD t18.x___, t16.xxxx, u29.wwww, -t23
0336: 00921003 00007800 00000940 00000000  MUL t18.x___, t7.xxxx, t18.xxxx, void
0337: 07971002 00012800 01480ac0 00690158  MAD t23, t18.xxxx, t21.xyzz, -t21.xyzz
0338: 03951002 00012800 01480540 00790178  MAD t21.xyz_, t18.xxxx, t10.xyzz, -t23
0339: 03951001 29015800 00000000 00290168  ADD t21.xyz_, t21.xyzz, void, t22.xyzz
0340: 07971002 0000c800 01480640 206900ca  MAD t23, t12.xxxx, u12.xyzz, -u12.xyzz
0341: 03951002 0000c800 01480ac0 00790178  MAD t21.xyz_, t12.xxxx, t21.xyzz, -t23
0342: 03951003 29015800 000005c0 00000000  MUL t21.xyz_, t21.xyzz, t11.xxxx, void
0343: 03951002 00013800 000005c0 00290158  MAD t21.xyz_, t19.xxxx, t11.xxxx, t21.xyzz
0344: 00961003 00008800 015410c0 00000002  MUL t22.x___, t8.xxxx, u33.zzzz, void
0345: 00961809 00000000 00000000 00000168  MOV.SAT t22.x___, void, void, t22.xxxx
0346: 04151009 00000000 00000000 00000168  MOV t21.___w, void, void, t22.xxxx
0347: 00961090 3fc09800 00001040 00000002  SET.LT t22.x___, t9.wwww, u32.xxxx, void
0348: 00931090 3fc03800 00aa0fc0 00000002  SET.LT t19.x___, t3.wwww, u31.yyyy, void
0349: 00961003 00016800 000009c0 00000000  MUL t22.x___, t22.xxxx, t19.xxxx, void
0350: 00000156 00016800 00aa0e40 0000b002  BRANCH.EQ void, t22.xxxx, u28.yyyy, label_0352
0351: 04151009 00000000 00000000 201541c8  MOV t21.___w, void, void, u28.yyyy
0352: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 24
num const: 112
immediates:
 [28].x = 0.500000 (0x3f000000)
 [28].y = 0.000000 (0x00000000)
 [28].z = 7.500000 (0x40f00000)
 [28].w = 0.100000 (0x3dcccccd)
 [29].x = -0.500000 (0xbf000000)
 [29].y = -0.000000 (0x80000000)
 [29].z = 3.000000 (0x40400000)
 [29].w = 1.000000 (0x3f800000)
 [30].x = 0.000000 (0x00000000)
 [30].y = 1.000000 (0x3f800000)
 [30].z = 16384.000000 (0x46800000)
 [30].w = 4098.000000 (0x45801000)
 [31].x = 2.000000 (0x40000000)
 [31].y = -1.000000 (0xbf800000)
 [31].z = 4094.000000 (0x457fe000)
 [31].w = 0.002500 (0x3b23d70a)
 [32].x = 0.050000 (0x3d4ccccd)
 [32].y = 0.001000 (0x3a83126f)
 [32].z = 0.999000 (0x3f7fbe77)
 [32].w = 1.050000 (0x3f866666)
 [33].x = 1.300000 (0x3fa66666)
 [33].y = 0.800000 (0x3f4ccccd)
 [33].z = 5.000000 (0x40a00000)
 [33].w = 0.693100 (0x3f316f00)
 [34].x = 200.000000 (0x43480000)
 [34].y = 0.250000 (0x3e800000)
 [34].z = 7.000000 (0x40e00000)
 [34].w = -100.000000 (0xc2c80000)
 [35].x = -1500.000000 (0xc4bb8000)
 [35].y = 500.000000 (0x43fa0000)
 [35].z = 1500.000000 (0x44bb8000)
 [35].w = 4.000000 (0x40800000)
 [36].x = 2000.000000 (0x44fa0000)
 [36].y = 1.500000 (0x3fc00000)
 [36].z = 0.030000 (0x3cf5c28f)
 [36].w = 0.020000 (0x3ca3d70a)
 [37].x = 0.166700 (0x3e2ab368)
 [37].y = 1.442700 (0x3fb8aa65)
 [37].z = 0.400000 (0x3ecccccd)
 [37].w = 2.600000 (0x40266666)
 [38].x = 0.181800 (0x3e3a29c7)
 [38].y = 0.000000 (0x00000000)
 [38].z = 0.000000 (0x00000000)
 [38].w = 0.000000 (0x00000000)
 [39].x = 0.000000 (0x00000000)
 [39].y = 1.000000 (0x3f800000)
 [39].z = 128.000000 (0x43000000)
 [39].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=9 comps=4
 [2] name=GENERIC index=10 comps=4
 [3] name=GENERIC index=11 comps=4
 [4] name=GENERIC index=12 comps=4
 [5] name=GENERIC index=13 comps=4
 [6] name=GENERIC index=14 comps=1
outputs:
special:
  ps_color_out_reg=21
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f