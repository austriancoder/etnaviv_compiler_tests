FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0]
DCL TEMP[0]
IMM[0] FLT32 {    2.0000,     1.0000,     0.0000,     0.0000}
  0: MOV TEMP[0], CONST[0]
  1: MUL TEMP[0].xyz, TEMP[0], IMM[0].xxxx
  2: ADD TEMP[0].xyz, TEMP[0], -IMM[0].yyyy
  3: MOV OUT[0], TEMP[0]
  4: END

FRAG
0000: 07811009 00000000 00000000 20390008  MOV t1, void, void, u0
0001: 03811003 39001800 000000c0 00000002  MUL t1.xyz_, t1, u1.xxxx, void
0002: 03811001 39001800 00000000 20554018  ADD t1.xyz_, t1, void, -u1.yyyy
num loops: 0
num temps: 2
num const: 4
immediates:
 [1].x = 2.000000 (0x40000000)
 [1].y = 1.000000 (0x3f800000)
 [1].z = 0.000000 (0x00000000)
 [1].w = 0.000000 (0x00000000)
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
