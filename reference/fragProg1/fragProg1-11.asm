FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0]
IMM[0] FLT32 {   -0.2500,    -0.2000,     0.0000,     0.0000}
  0: ADD OUT[0], CONST[0], IMM[0].xyzx
  1: END

FRAG
0000: 07821009 00000000 00000000 20090018  MOV t2, void, void, u1.xyzx
0001: 07811001 39000800 00000010 00390028  ADD t1, u0, void, t2
num loops: 0
num temps: 3
num const: 4
immediates:
 [1].x = -0.250000 (0xbe800000)
 [1].y = -0.200000 (0xbe4ccccd)
 [1].z = 0.000000 (0x00000000)
 [1].w = 0.000000 (0x00000000)
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
