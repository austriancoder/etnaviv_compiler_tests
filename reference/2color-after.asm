FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL OUT[0], COLOR
IMM[0] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL IN[1], BCOLOR
DCL IN[2], FACE
DCL TEMP[0]
  0: CMP TEMP[0], IN[2].xxxx, IN[0], IN[1]
  1: MOV OUT[0], TEMP[0]
  2: END


FRAG
0000: 078113cf 00003800 01c800c0 00390028  SELECT.LZ t1, t3.xxxx, t1, t2
num loops: 0
num temps: 4
num const: 0
immediates:
 [0].x = 0.000000 (0x00000000)
 [0].y = 1.000000 (0x3f800000)
 [0].z = 128.000000 (0x43000000)
 [0].w = 0.000000 (0x00000000)
inputs:
 [1] name=COLOR index=0 comps=4
 [2] name=BCOLOR index=0 comps=4
 [3] name=FACE index=0 comps=1
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
