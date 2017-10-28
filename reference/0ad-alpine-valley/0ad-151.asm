FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[9], PERSPECTIVE
DCL OUT[0], COLOR
DCL TEMP[0], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].w, IMM[0].xxxx
  1: MOV TEMP[0].xyz, IN[0].xyzx
  2: MOV OUT[0], TEMP[0]
  3: END

FRAG
0000: 04021009 00000000 00000000 20000008  MOV t2.___w, void, void, u0.xxxx
0001: 03821009 00000000 00000000 00090018  MOV t2.xyz_, void, void, t1.xyzx
num loops: 0
num temps: 3
num const: 0
immediates:
 [0].x = 1.000000 (0x3f800000)
 [0].y = 0.000000 (0x00000000)
 [0].z = 0.000000 (0x00000000)
 [0].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=9 comps=3
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
