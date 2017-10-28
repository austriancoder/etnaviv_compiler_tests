
VERT
DCL OUT[0], POSITION
DCL CONST[0..9]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  1: DP3 TEMP[1].x, CONST[8].xyzz, CONST[8].xyzz
  2: MOV OUT[0], TEMP[1].xxxx
  3: END


VERT
0000: 00811005 29008800 01480450 00000002  DP3 t1.x___, u8.xyzz, u8.xyzz, void
0001: 07811009 00000000 00000000 00000018  MOV t1, void, void, t1.xxxx
num loops: 0
num temps: 2
num const: 40
immediates:
 [10].x = 0.000000 (0x00000000)
 [10].y = 0.000000 (0x00000000)
 [10].z = 0.000000 (0x00000000)
 [10].w = 0.000000 (0x00000000)
inputs:
outputs:
special:
  vs_pos_out_reg=1
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
