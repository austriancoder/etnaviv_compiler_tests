FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], FACE, CONSTANT
DCL OUT[0], COLOR
DCL TEMP[0]
DCL TEMP[1], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     0.0000,     0.0000}
  0: MOV_SAT TEMP[0], IN[0]
  1: MUL TEMP[1].x, IMM[0].xxxx, TEMP[0].xxxx
  2: MOV OUT[0], TEMP[1].xxxx
  3: END


FRAG
0000: 07811809 00000000 00000000 00390018  MOV.SAT t1, void, void, t1
0001: 00821003 00000800 000000d0 00000000  MUL t2.x___, u0.xxxx, t1.xxxx, void
0002: 07811009 00000000 00000000 00000028  MOV t1, void, void, t2.xxxx
num loops: 0
num temps: 3
num const: 0
immediates:
 [0].x = 0.500000 (0x3f000000)
 [0].y = 0.000000 (0x00000000)
 [0].z = 0.000000 (0x00000000)
 [0].w = 0.000000 (0x00000000)
inputs:
 [1] name=FACE index=0 comps=4
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
