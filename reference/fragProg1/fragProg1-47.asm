FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0]
IMM[0] FLT32 {    0.0000,     1.0000,    -1.0000,     0.0000}
  0: MAD OUT[0], CONST[0].xyzx, IMM[0].xzyx, IMM[0].zxxx
  1: END

FRAG
0000: 07821009 00000000 00000000 20060018  MOV t2, void, void, u1.xzyx
0001: 07831009 00000000 00000000 20008018  MOV t3, void, void, u1.zxxx
0002: 07811002 09000800 01c80150 00390038  MAD t1, u0.xyzx, t2, t3
num loops: 0
num temps: 4
num const: 4
immediates:
 [1].x = 0.000000 (0x00000000)
 [1].y = 1.000000 (0x3f800000)
 [1].z = -1.000000 (0xbf800000)
 [1].w = 0.000000 (0x00000000)
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
