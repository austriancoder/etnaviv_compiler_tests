VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL OUT[1], COLOR
DCL TEMP[0..4], LOCAL
IMM[0] FLT32 {    0.0000,    10.0000,    14.0000,     1.0000}
IMM[1] FLT32 {   46.0000,    13.0000,     9.0000,    -1.0000}
  0: MOV TEMP[0], IN[0]
  1: MOV TEMP[1].x, IMM[0].xxxx
  2: MOV TEMP[2].x, IMM[0].xxxx
  3: MOV TEMP[3].x, IMM[0].yyyy
  4: BGNLOOP :0
  5:   SEQ TEMP[4].x, TEMP[3].xxxx, IMM[0].zzzz
  6:   IF TEMP[4].xxxx :0
  7:     BRK
  8:   ENDIF
  9:   ADD TEMP[2].x, TEMP[2].xxxx, TEMP[3].xxxx
 10:   ADD TEMP[3].x, TEMP[3].xxxx, IMM[0].wwww
 11: ENDLOOP :0
 12: SNE TEMP[4].x, TEMP[2].xxxx, IMM[1].xxxx
 13: IF TEMP[4].xxxx :0
 14:   MOV TEMP[1].x, IMM[0].wwww
 15: ENDIF
 16: MOV TEMP[2].x, IMM[0].xxxx
 17: MOV TEMP[3].x, IMM[0].yyyy
 18: BGNLOOP :0
 19:   SEQ TEMP[4].x, IMM[0].zzzz, TEMP[3].xxxx
 20:   IF TEMP[4].xxxx :0
 21:     BRK
 22:   ENDIF
 23:   ADD TEMP[2].x, TEMP[2].xxxx, TEMP[3].xxxx
 24:   ADD TEMP[3].x, TEMP[3].xxxx, IMM[0].wwww
 25: ENDLOOP :0
 26: SNE TEMP[4].x, TEMP[2].xxxx, IMM[1].xxxx
 27: IF TEMP[4].xxxx :0
 28:   MOV TEMP[1].x, IMM[0].wwww
 29: ENDIF
 30: MOV TEMP[2].x, IMM[0].xxxx
 31: MOV TEMP[3].x, IMM[0].yyyy
 32: BGNLOOP :0
 33:   SNE TEMP[4].x, TEMP[3].xxxx, IMM[0].yyyy
 34:   IF TEMP[4].xxxx :0
 35:     BRK
 36:   ENDIF
 37:   ADD TEMP[2].x, TEMP[2].xxxx, TEMP[3].xxxx
 38:   ADD TEMP[3].x, TEMP[3].xxxx, IMM[0].wwww
 39: ENDLOOP :0
 40: SNE TEMP[4].x, TEMP[2].xxxx, IMM[0].yyyy
 41: IF TEMP[4].xxxx :0
 42:   MOV TEMP[1].x, IMM[0].wwww
 43: ENDIF
 44: MOV TEMP[2].x, IMM[0].xxxx
 45: MOV TEMP[3].x, IMM[0].yyyy
 46: BGNLOOP :0
 47:   SNE TEMP[4].x, IMM[0].yyyy, TEMP[3].xxxx
 48:   IF TEMP[4].xxxx :0
 49:     BRK
 50:   ENDIF
 51:   ADD TEMP[2].x, TEMP[2].xxxx, TEMP[3].xxxx
 52:   ADD TEMP[3].x, TEMP[3].xxxx, IMM[0].wwww
 53: ENDLOOP :0
 54: SNE TEMP[4].x, TEMP[2].xxxx, IMM[0].yyyy
 55: IF TEMP[4].xxxx :0
 56:   MOV TEMP[1].x, IMM[0].wwww
 57: ENDIF
 58: MOV TEMP[2].x, IMM[0].xxxx
 59: MOV TEMP[3].x, IMM[1].yyyy
 60: BGNLOOP :0
 61:   SEQ TEMP[4].x, TEMP[3].xxxx, IMM[1].zzzz
 62:   IF TEMP[4].xxxx :0
 63:     BRK
 64:   ENDIF
 65:   ADD TEMP[2].x, TEMP[2].xxxx, TEMP[3].xxxx
 66:   ADD TEMP[3].x, TEMP[3].xxxx, IMM[1].wwww
 67: ENDLOOP :0
 68: SNE TEMP[4].x, TEMP[2].xxxx, IMM[1].xxxx
 69: IF TEMP[4].xxxx :0
 70:   MOV TEMP[1].x, IMM[0].wwww
 71: ENDIF
 72: MOV TEMP[2].x, IMM[0].xxxx
 73: MOV TEMP[3].x, IMM[1].yyyy
 74: BGNLOOP :0
 75:   SEQ TEMP[4].x, IMM[1].zzzz, TEMP[3].xxxx
 76:   IF TEMP[4].xxxx :0
 77:     BRK
 78:   ENDIF
 79:   ADD TEMP[2].x, TEMP[2].xxxx, TEMP[3].xxxx
 80:   ADD TEMP[3].x, TEMP[3].xxxx, IMM[1].wwww
 81: ENDLOOP :0
 82: SNE TEMP[4].x, TEMP[2].xxxx, IMM[1].xxxx
 83: IF TEMP[4].xxxx :0
 84:   MOV TEMP[1].x, IMM[0].wwww
 85: ENDIF
 86: MOV TEMP[2].x, IMM[0].xxxx
 87: MOV TEMP[3].x, IMM[1].yyyy
 88: BGNLOOP :0
 89:   SNE TEMP[4].x, TEMP[3].xxxx, IMM[1].yyyy
 90:   IF TEMP[4].xxxx :0
 91:     BRK
 92:   ENDIF
 93:   ADD TEMP[2].x, TEMP[2].xxxx, TEMP[3].xxxx
 94:   ADD TEMP[3].x, TEMP[3].xxxx, IMM[1].wwww
 95: ENDLOOP :0
 96: SNE TEMP[4].x, TEMP[2].xxxx, IMM[1].yyyy
 97: IF TEMP[4].xxxx :0
 98:   MOV TEMP[1].x, IMM[0].wwww
 99: ENDIF
100: MOV TEMP[2].x, IMM[0].xxxx
101: MOV TEMP[3].x, IMM[1].yyyy
102: BGNLOOP :0
103:   SNE TEMP[4].x, IMM[1].yyyy, TEMP[3].xxxx
104:   IF TEMP[4].xxxx :0
105:     BRK
106:   ENDIF
107:   ADD TEMP[2].x, TEMP[2].xxxx, TEMP[3].xxxx
108:   ADD TEMP[3].x, TEMP[3].xxxx, IMM[1].wwww
109: ENDLOOP :0
110: SNE TEMP[2].x, TEMP[2].xxxx, IMM[1].yyyy
111: IF TEMP[2].xxxx :0
112:   MOV TEMP[1].x, IMM[0].wwww
113: ENDIF
114: IF TEMP[1].xxxx :0
115:   MOV TEMP[1], IMM[0].wxxw
116: ELSE :0
117:   MOV TEMP[1], IMM[0].xwxw
118: ENDIF
119: MOV OUT[0], TEMP[0]
120: MOV_SAT OUT[1], TEMP[1]
121: END

VERT
0000: 07801009 00000000 00000000 00390008  MOV t0, void, void, t0
0001: 00811009 00000000 00000000 20000008  MOV t1.x___, void, void, u0.xxxx
0002: 00821009 00000000 00000000 20000008  MOV t2.x___, void, void, u0.xxxx
0003: 00831009 00000000 00000000 20154008  MOV t3.x___, void, void, u0.yyyy
0004: 00841150 00003800 01540040 00000002  SET.EQ t4.x___, t3.xxxx, u0.zzzz, void
0005: 00000156 00004800 00000040 00000382  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0007
0006: 00000016 00000000 00000000 00000500  BRANCH void, void, void, label_0010
0007: 00821001 00002800 00000000 00000038  ADD t2.x___, t2.xxxx, void, t3.xxxx
0008: 00831001 00003800 00000000 203fc008  ADD t3.x___, t3.xxxx, void, u0.wwww
0009: 00000016 00000000 00000000 00000200  BRANCH void, void, void, label_0004
0010: 00841190 00002800 000000c0 00000002  SET.NE t4.x___, t2.xxxx, u1.xxxx, void
0011: 00000156 00004800 00000040 00000682  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0013
0012: 00811009 00000000 00000000 203fc008  MOV t1.x___, void, void, u0.wwww
0013: 00821009 00000000 00000000 20000008  MOV t2.x___, void, void, u0.xxxx
0014: 00831009 00000000 00000000 20154008  MOV t3.x___, void, void, u0.yyyy
0015: 00841150 2a800800 000001d0 00000000  SET.EQ t4.x___, u0.zzzz, t3.xxxx, void
0016: 00000156 00004800 00000040 00000902  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0018
0017: 00000016 00000000 00000000 00000a80  BRANCH void, void, void, label_0021
0018: 00821001 00002800 00000000 00000038  ADD t2.x___, t2.xxxx, void, t3.xxxx
0019: 00831001 00003800 00000000 203fc008  ADD t3.x___, t3.xxxx, void, u0.wwww
0020: 00000016 00000000 00000000 00000780  BRANCH void, void, void, label_0015
0021: 00841190 00002800 000000c0 00000002  SET.NE t4.x___, t2.xxxx, u1.xxxx, void
0022: 00000156 00004800 00000040 00000c02  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0024
0023: 00811009 00000000 00000000 203fc008  MOV t1.x___, void, void, u0.wwww
0024: 00821009 00000000 00000000 20000008  MOV t2.x___, void, void, u0.xxxx
0025: 00831009 00000000 00000000 20154008  MOV t3.x___, void, void, u0.yyyy
0026: 00841190 00003800 00aa0040 00000002  SET.NE t4.x___, t3.xxxx, u0.yyyy, void
0027: 00000156 00004800 00000040 00000e82  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0029
0028: 00000016 00000000 00000000 00001000  BRANCH void, void, void, label_0032
0029: 00821001 00002800 00000000 00000038  ADD t2.x___, t2.xxxx, void, t3.xxxx
0030: 00831001 00003800 00000000 203fc008  ADD t3.x___, t3.xxxx, void, u0.wwww
0031: 00000016 00000000 00000000 00000d00  BRANCH void, void, void, label_0026
0032: 00841190 00002800 00aa0040 00000002  SET.NE t4.x___, t2.xxxx, u0.yyyy, void
0033: 00000156 00004800 00000040 00001182  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0035
0034: 00811009 00000000 00000000 203fc008  MOV t1.x___, void, void, u0.wwww
0035: 00821009 00000000 00000000 20000008  MOV t2.x___, void, void, u0.xxxx
0036: 00831009 00000000 00000000 20154008  MOV t3.x___, void, void, u0.yyyy
0037: 00841190 15400800 000001d0 00000000  SET.NE t4.x___, u0.yyyy, t3.xxxx, void
0038: 00000156 00004800 00000040 00001402  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0040
0039: 00000016 00000000 00000000 00001580  BRANCH void, void, void, label_0043
0040: 00821001 00002800 00000000 00000038  ADD t2.x___, t2.xxxx, void, t3.xxxx
0041: 00831001 00003800 00000000 203fc008  ADD t3.x___, t3.xxxx, void, u0.wwww
0042: 00000016 00000000 00000000 00001280  BRANCH void, void, void, label_0037
0043: 00841190 00002800 00aa0040 00000002  SET.NE t4.x___, t2.xxxx, u0.yyyy, void
0044: 00000156 00004800 00000040 00001702  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0046
0045: 00811009 00000000 00000000 203fc008  MOV t1.x___, void, void, u0.wwww
0046: 00821009 00000000 00000000 20000008  MOV t2.x___, void, void, u0.xxxx
0047: 00831009 00000000 00000000 20154018  MOV t3.x___, void, void, u1.yyyy
0048: 00841150 00003800 015400c0 00000002  SET.EQ t4.x___, t3.xxxx, u1.zzzz, void
0049: 00000156 00004800 00000040 00001982  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0051
0050: 00000016 00000000 00000000 00001b00  BRANCH void, void, void, label_0054
0051: 00821001 00002800 00000000 00000038  ADD t2.x___, t2.xxxx, void, t3.xxxx
0052: 00831001 00003800 00000000 203fc018  ADD t3.x___, t3.xxxx, void, u1.wwww
0053: 00000016 00000000 00000000 00001800  BRANCH void, void, void, label_0048
0054: 00841190 00002800 000000c0 00000002  SET.NE t4.x___, t2.xxxx, u1.xxxx, void
0055: 00000156 00004800 00000040 00001c82  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0057
0056: 00811009 00000000 00000000 203fc008  MOV t1.x___, void, void, u0.wwww
0057: 00821009 00000000 00000000 20000008  MOV t2.x___, void, void, u0.xxxx
0058: 00831009 00000000 00000000 20154018  MOV t3.x___, void, void, u1.yyyy
0059: 00841150 2a801800 000001d0 00000000  SET.EQ t4.x___, u1.zzzz, t3.xxxx, void
0060: 00000156 00004800 00000040 00001f02  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0062
0061: 00000016 00000000 00000000 00002080  BRANCH void, void, void, label_0065
0062: 00821001 00002800 00000000 00000038  ADD t2.x___, t2.xxxx, void, t3.xxxx
0063: 00831001 00003800 00000000 203fc018  ADD t3.x___, t3.xxxx, void, u1.wwww
0064: 00000016 00000000 00000000 00001d80  BRANCH void, void, void, label_0059
0065: 00841190 00002800 000000c0 00000002  SET.NE t4.x___, t2.xxxx, u1.xxxx, void
0066: 00000156 00004800 00000040 00002202  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0068
0067: 00811009 00000000 00000000 203fc008  MOV t1.x___, void, void, u0.wwww
0068: 00821009 00000000 00000000 20000008  MOV t2.x___, void, void, u0.xxxx
0069: 00831009 00000000 00000000 20154018  MOV t3.x___, void, void, u1.yyyy
0070: 00841190 00003800 00aa00c0 00000002  SET.NE t4.x___, t3.xxxx, u1.yyyy, void
0071: 00000156 00004800 00000040 00002482  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0073
0072: 00000016 00000000 00000000 00002600  BRANCH void, void, void, label_0076
0073: 00821001 00002800 00000000 00000038  ADD t2.x___, t2.xxxx, void, t3.xxxx
0074: 00831001 00003800 00000000 203fc018  ADD t3.x___, t3.xxxx, void, u1.wwww
0075: 00000016 00000000 00000000 00002300  BRANCH void, void, void, label_0070
0076: 00841190 00002800 00aa00c0 00000002  SET.NE t4.x___, t2.xxxx, u1.yyyy, void
0077: 00000156 00004800 00000040 00002782  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0079
0078: 00811009 00000000 00000000 203fc008  MOV t1.x___, void, void, u0.wwww
0079: 00821009 00000000 00000000 20000008  MOV t2.x___, void, void, u0.xxxx
0080: 00831009 00000000 00000000 20154018  MOV t3.x___, void, void, u1.yyyy
0081: 00841190 15401800 000001d0 00000000  SET.NE t4.x___, u1.yyyy, t3.xxxx, void
0082: 00000156 00004800 00000040 00002a02  BRANCH.EQ void, t4.xxxx, u0.xxxx, label_0084
0083: 00000016 00000000 00000000 00002b80  BRANCH void, void, void, label_0087
0084: 00821001 00002800 00000000 00000038  ADD t2.x___, t2.xxxx, void, t3.xxxx
0085: 00831001 00003800 00000000 203fc018  ADD t3.x___, t3.xxxx, void, u1.wwww
0086: 00000016 00000000 00000000 00002880  BRANCH void, void, void, label_0081
0087: 00821190 00002800 00aa00c0 00000002  SET.NE t2.x___, t2.xxxx, u1.yyyy, void
0088: 00000156 00002800 00000040 00002d02  BRANCH.EQ void, t2.xxxx, u0.xxxx, label_0090
0089: 00811009 00000000 00000000 203fc008  MOV t1.x___, void, void, u0.wwww
0090: 00000156 00001800 00000040 00002e82  BRANCH.EQ void, t1.xxxx, u0.xxxx, label_0093
0091: 07811009 00000000 00000000 2030c008  MOV t1, void, void, u0.wxxw
0092: 00000016 00000000 00000000 00002f00  BRANCH void, void, void, label_0094
0093: 07811009 00000000 00000000 20330008  MOV t1, void, void, u0.xwxw
0094: 07841809 00000000 00000000 00390018  MOV.SAT t4, void, void, t1
num loops: 8
num temps: 5
num const: 0
immediates:
 [0].x = 0.000000 (0x00000000)
 [0].y = 10.000000 (0x41200000)
 [0].z = 14.000000 (0x41600000)
 [0].w = 1.000000 (0x3f800000)
 [1].x = 46.000000 (0x42380000)
 [1].y = 13.000000 (0x41500000)
 [1].z = 9.000000 (0x41100000)
 [1].w = -1.000000 (0xbf800000)
inputs:
 [0] name=POSITION index=0 comps=4
outputs:
 [4] name=COLOR index=0 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
