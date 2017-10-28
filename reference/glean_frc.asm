VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL OUT[1], COLOR
DCL TEMP[0]
IMM[0] FLT32 {    4.8000,     0.3000,    -0.2000,     1.2000}
IMM[1] FLT32 {    0.1000,     0.0000,     0.0000,     0.0000}
  0: MOV OUT[0], IN[0]
  1: FLR TEMP[0], IMM[0]
  2: MUL_SAT OUT[1], TEMP[0], IMM[1].xxxx
  3: END


VERT
0000: 07801025 00000000 00000000 20390008  FLOOR t0, void, void, u0
0001: 07801803 39000800 000000c0 00000002  MUL.SAT t0, t0, u1.xxxx, void
num loops: 0
num temps: 2
num const: 0
immediates:
 [0].x = 4.800000 (0x4099999a)
 [0].y = 0.300000 (0x3e99999a)
 [0].z = -0.200000 (0xbe4ccccd)
 [0].w = 1.200000 (0x3f99999a)
 [1].x = 0.100000 (0x3dcccccd)
 [1].y = 0.000000 (0x00000000)
 [1].z = 0.000000 (0x00000000)
 [1].w = 0.000000 (0x00000000)
inputs:
 [1] name=POSITION index=0 comps=4
outputs:
 [0] name=COLOR index=0 comps=4
special:
  vs_pos_out_reg=1
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
