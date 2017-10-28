FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL OUT[0], COLOR
DCL CONST[0]
DCL TEMP[0..3], LOCAL
IMM[0] FLT32 {    0.0000,     0.5000,     1.0000,     2.0000}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[4]
  0: DDX TEMP[0].xy, IN[1].xyyy
  1: MUL TEMP[1], CONST[0].xxxx, IN[1].xyyy
  2: DDY TEMP[1].xy, TEMP[1]
  3: SLT TEMP[2].x, IMM[0].xxxx, IN[1].zzzz
  4: SLT TEMP[3].x, IMM[0].xxxx, IN[1].wwww
  5: MUL TEMP[2].x, TEMP[2].xxxx, TEMP[3].xxxx
  6: IF TEMP[2].xxxx :0
  7:   MIN TEMP[2].x, IN[1].zzzz, IN[1].wwww
  8:   ADD TEMP[2].x, TEMP[2].xxxx, IMM[0].yyyy
  9:   MIN TEMP[2].x, TEMP[2].xxxx, IMM[0].zzzz
 10: ELSE :0
 11:   MUL TEMP[3].x, IMM[0].wwww, IN[1].xxxx
 12:   MAD TEMP[0].x, TEMP[3].xxxx, TEMP[0].xxxx, -TEMP[0].yyyy
 13:   MAD TEMP[1].x, TEMP[3].xxxx, TEMP[1].xxxx, -TEMP[1].yyyy
 14:   MOV TEMP[0].y, TEMP[1].xxxx
 15:   MAD TEMP[2].x, IN[1].xxxx, IN[1].xxxx, -IN[1].yyyy
 16:   MUL TEMP[4].x, TEMP[0].xxxx, TEMP[0].xxxx
 17:   MAD TEMP[0].x, TEMP[0].yyyy, TEMP[0].yyyy, TEMP[4].xxxx
 18:   RSQ TEMP[0].x, TEMP[0].xxxx
 19:   MUL TEMP[0].x, TEMP[2].xxxx, TEMP[0].xxxx
 20:   ADD_SAT TEMP[0].x, IMM[0].yyyy, -TEMP[0].xxxx
 21:   MOV TEMP[2].x, TEMP[0].xxxx
 22: ENDIF
 23: MUL TEMP[0], IN[0], TEMP[2].xxxx
 24: MOV OUT[0], TEMP[0]
 25: END


FRAG
0000: 01861007 15002800 00000000 00150028  DSX t6.xy__, t2.xyyy, void, t2.xyyy
0001: 07851003 00000800 00a80150 00000000  MUL t5, u0.xxxx, t2.xyyy, void
0002: 01851008 39005800 00000000 00390058  DSY t5.xy__, t5, void, t5
0003: 00831090 00001800 01540150 00000000  SET.LT t3.x___, u1.xxxx, t2.zzzz, void
0004: 00841090 00001800 01fe0150 00000000  SET.LT t4.x___, u1.xxxx, t2.wwww, void
0005: 00831003 00003800 00000240 00000000  MUL t3.x___, t3.xxxx, t4.xxxx, void
0006: 00000156 00003800 000000c0 00000582  BRANCH.EQ void, t3.xxxx, u1.xxxx, label_0011
0007: 0083104f 2a802800 01fe0140 002a8028  SELECT.GT t3.x___, t2.zzzz, t2.wwww, t2.zzzz
0008: 00831001 00003800 00000000 20154018  ADD t3.x___, t3.xxxx, void, u1.yyyy
0009: 0083104f 00003800 015400c0 0000003a  SELECT.GT t3.x___, t3.xxxx, u1.zzzz, t3.xxxx
0010: 00000016 00000000 00000000 00000b00  BRANCH void, void, void, label_0022
0011: 00841003 3fc01800 00000150 00000000  MUL t4.x___, u1.wwww, t2.xxxx, void
0012: 00861002 00004800 00000340 00554068  MAD t6.x___, t4.xxxx, t6.xxxx, -t6.yyyy
0013: 00851002 00004800 000002c0 00554058  MAD t5.x___, t4.xxxx, t5.xxxx, -t5.yyyy
0014: 01061009 00000000 00000000 00000058  MOV t6._y__, void, void, t5.xxxx
0015: 00831002 00002800 00000140 00554028  MAD t3.x___, t2.xxxx, t2.xxxx, -t2.yyyy
0016: 00821003 00006800 00000340 00000000  MUL t2.x___, t6.xxxx, t6.xxxx, void
0017: 00861002 15406800 00aa0340 00000028  MAD t6.x___, t6.yyyy, t6.yyyy, t2.xxxx
0018: 0086100d 00000000 00000000 00000068  RSQ t6.x___, void, void, t6.xxxx
0019: 00861003 00003800 00000340 00000000  MUL t6.x___, t3.xxxx, t6.xxxx, void
0020: 00861801 15401800 00000010 00400068  ADD.SAT t6.x___, u1.yyyy, void, -t6.xxxx
0021: 00831009 00000000 00000000 00000068  MOV t3.x___, void, void, t6.xxxx
0022: 07861003 39001800 000001c0 00000000  MUL t6, t1, t3.xxxx, void
num loops: 0
num temps: 7
num const: 4
immediates:
 [1].x = 0.000000 (0x00000000)
 [1].y = 0.500000 (0x3f000000)
 [1].z = 1.000000 (0x3f800000)
 [1].w = 2.000000 (0x40000000)
 [2].x = 0.000000 (0x00000000)
 [2].y = 1.000000 (0x3f800000)
 [2].z = 128.000000 (0x43000000)
 [2].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=4
 [2] name=GENERIC index=21 comps=4
outputs:
special:
  ps_color_out_reg=6
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
