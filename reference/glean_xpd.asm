VERT
PROPERTY NEXT_SHADER FRAG
DCL IN[0]
DCL OUT[0], POSITION
DCL OUT[1], COLOR
DCL CONST[0..1]
  0: MOV OUT[0], IN[0]
  1: XPD_SAT OUT[1].xyz, CONST[0], CONST[1]
  2: END


VERT
0000: 07821009 00000000 00000000 20048008  MOV t2, void, void, u0.zxyx
0001: 03801003 02401800 01c80150 00000000  MUL t0.xyz_, u1.yzxx, t2, void
0002: 07821009 00000000 00000000 20048018  MOV t2, void, void, u1.zxyx
0003: 03801002 02400800 01c80150 00490008  MAD t0.xyz_, u0.yzxx, t2, -t0.xyzx
num loops: 0
num temps: 3
num const: 8
immediates:
 [2].x = 0.000000 (0x00000000)
 [2].y = 1.000000 (0x3f800000)
 [2].z = 128.000000 (0x43000000)
 [2].w = 0.000000 (0x00000000)
inputs:
 [1] name=POSITION index=0 comps=4
outputs:
 [0] name=COLOR index=0 comps=4
special:
  vs_pos_out_reg=1
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
