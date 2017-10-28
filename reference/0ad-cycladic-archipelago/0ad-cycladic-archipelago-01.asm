VERT
DCL IN[0]
DCL IN[1]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].w, IMM[0].xxxx
  1: MOV TEMP[0].xyz, IN[0].xyzx
  2: MOV TEMP[1].xy, IN[1].xyxx
  3: MOV OUT[0], TEMP[0]
  4: MOV OUT[1], TEMP[1]
  5: END

VERT
0000: 04001009 00000000 00000000 20000008  MOV t0.___w, void, void, u0.xxxx
0001: 03801009 00000000 00000000 00090018  MOV t0.xyz_, void, void, t1.xyzx
0002: 01811009 00000000 00000000 00010028  MOV t1.xy__, void, void, t2.xyxx
num loops: 0
num temps: 3
num const: 0
immediates:
 [0].x = 1.000000 (0x3f800000)
 [0].y = 0.000000 (0x00000000)
 [0].z = 0.000000 (0x00000000)
 [0].w = 0.000000 (0x00000000)
inputs:
 [1] name=POSITION index=0 comps=3
 [2] name=POSITION index=0 comps=2
outputs:
 [1] name=GENERIC index=9 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
