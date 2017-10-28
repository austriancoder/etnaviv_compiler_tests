FRAG
PROPERTY FS_COORD_PIXEL_CENTER INTEGER
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], POSITION, LINEAR
DCL OUT[0], COLOR
DCL CONST[2..3]
DCL CONST[0..1]
DCL TEMP[0]
DCL TEMP[1..2], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     1.0000,     1.4427}
  0: ADD TEMP[0], IN[0], IMM[0].xxyy
  1: MAD TEMP[0].y, TEMP[0], CONST[3].xxxx, CONST[3].yyyy
  2: RCP TEMP[1].x, TEMP[0].wwww
  3: MUL TEMP[1].x, TEMP[0].zzzz, TEMP[1].xxxx
  4: MUL TEMP[2].x, -CONST[2].xxxx, CONST[2].xxxx
  5: MUL TEMP[2].x, TEMP[2].xxxx, TEMP[1].xxxx
  6: MUL TEMP[1].x, TEMP[2].xxxx, TEMP[1].xxxx
  7: MUL TEMP[1].x, TEMP[1].xxxx, IMM[0].wwww
  8: EX2 TEMP[1].x, TEMP[1].xxxx
  9: LRP TEMP[1].x, TEMP[1].xxxx, IMM[0].zzzz, CONST[2].yyyy
 10: MOV_SAT TEMP[1].x, TEMP[1].xxxx
 11: LRP TEMP[1].xyz, TEMP[1].xxxx, CONST[0].xyzz, CONST[1].xyzz
 12: MOV TEMP[1].w, CONST[0].wwww
 13: MOV OUT[0], TEMP[1]
 14: END

FRAG
0000: 07811001 39000800 00000000 20140048  ADD t1, t0, void, u4.xxyy
0001: 01011002 39001800 000001c0 2015403a  MAD t1._y__, t1, u3.xxxx, u3.yyyy
0002: 0082100c 00000000 00000000 003fc018  RCP t2.x___, void, void, t1.wwww
0003: 00821003 2a801800 00000140 00000000  MUL t2.x___, t1.zzzz, t2.xxxx, void
0004: 00831003 40002800 00000150 00000002  MUL t3.x___, -u2.xxxx, u2.xxxx, void
0005: 00831003 00003800 00000140 00000000  MUL t3.x___, t3.xxxx, t2.xxxx, void
0006: 00821003 00003800 00000140 00000000  MUL t2.x___, t3.xxxx, t2.xxxx, void
0007: 00821003 00002800 01fe0240 00000002  MUL t2.x___, t2.xxxx, u4.wwww, void
0008: 00821011 00000000 00000000 00000028  EXP t2.x___, void, void, t2.xxxx
0009: 07841002 00002800 00aa0140 2055402a  MAD t4, t2.xxxx, u2.yyyy, -u2.yyyy
0010: 00821002 00002800 01540240 0079004a  MAD t2.x___, t2.xxxx, u4.zzzz, -t4
0011: 00821809 00000000 00000000 00000028  MOV.SAT t2.x___, void, void, t2.xxxx
0012: 07841002 00002800 014800c0 2069001a  MAD t4, t2.xxxx, u1.xyzz, -u1.xyzz
0013: 03821002 00002800 01480040 0079004a  MAD t2.xyz_, t2.xxxx, u0.xyzz, -t4
0014: 04021009 00000000 00000000 203fc008  MOV t2.___w, void, void, u0.wwww
num loops: 0
num temps: 5
num const: 16
immediates:
 [4].x = 0.500000 (0x3f000000)
 [4].y = 0.000000 (0x00000000)
 [4].z = 1.000000 (0x3f800000)
 [4].w = 1.442700 (0x3fb8aa65)
inputs:
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
