FRAG
PROPERTY FS_COORD_PIXEL_CENTER INTEGER
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], POSITION, LINEAR
DCL OUT[0], COLOR
DCL CONST[0]
DCL TEMP[0]
DCL TEMP[1], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,    -0.5000,     0.0039}
  0: ADD TEMP[0], IN[0], IMM[0].xxyy
  1: MAD TEMP[0].y, TEMP[0], CONST[0].xxxx, CONST[0].yyyy
  2: ADD TEMP[1].x, TEMP[0].xxxx, IMM[0].zzzz
  3: MUL TEMP[1].x, TEMP[1].xxxx, IMM[0].wwww
  4: MOV OUT[0], TEMP[1].xxxx
  5: END


FRAG
0000: 07811001 39000800 00000000 20140018  ADD t1, t0, void, u1.xxyy
0001: 01011002 39001800 00000040 2015400a  MAD t1._y__, t1, u0.xxxx, u0.yyyy
0002: 00821001 00001800 00000000 202a8018  ADD t2.x___, t1.xxxx, void, u1.zzzz
0003: 00821003 00002800 01fe00c0 00000002  MUL t2.x___, t2.xxxx, u1.wwww, void
0004: 07811009 00000000 00000000 00000028  MOV t1, void, void, t2.xxxx
num loops: 0
num temps: 3
num const: 4
immediates:
 [1].x = 0.500000 (0x3f000000)
 [1].y = 0.000000 (0x00000000)
 [1].z = -0.500000 (0xbf000000)
 [1].w = 0.003900 (0x3b7f9724)
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
