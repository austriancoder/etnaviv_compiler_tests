  FRAG
  PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
  DCL IN[0], GENERIC[0], PERSPECTIVE
  DCL OUT[0], COLOR
  DCL SAMP[0]
  DCL TEMP[0], LOCAL
  IMM[0] FLT32 {    0.0000,     1.0000,     0.0000,     0.0000}
    0: TEX TEMP[0], IN[0].xyyy, SAMP[0], 2D
    1: MOV OUT[0], IMM[0].xyxx
    2: END


FRAG
0000: 07811018 15001f20 00000000 00000000  TEXLD t1, tex0, t1.xyyy, void, void
0001: 07811009 00000000 00000000 20010008  MOV t1, void, void, u0.xyxx
num loops: 0
num temps: 2
num const: 0
immediates:
 [0].x = 0.000000 (0x00000000)
 [0].y = 1.000000 (0x3f800000)
 [0].z = 0.000000 (0x00000000)
 [0].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=0 comps=2
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
