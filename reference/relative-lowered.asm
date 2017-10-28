VERT
DCL OUT[0], POSITION
DCL CONST[0..4]
DCL ADDR[0]
  1: ARL ADDR[0].x, CONST[4].xxxx
  2: LIT OUT[0], CONST[ADDR[0].x+1]
  9: END


VERT
0000: 07811025 00000000 00000000 20000048  FLOOR t1, void, void, u4.xxxx
0001: 0080000a 00000000 00000000 00390018  MOVAR a0.x___, void, void, t1
0002: 00811012 00000000 00000000 22154018  LOG t1.x___, void, void, u1[a.x].yyyy
0003: 00811003 00001800 09fe00c0 00000002  MUL t1.x___, t1.xxxx, u1[a.x].wwww, void
0004: 0780100e 00001800 080000d1 0000001a  LITP t0, u1[a.x].xxxx, u1[a.x].xxxx, t1.xxxx
num loops: 0
num temps: 2
num const: 20
immediates:
inputs:
outputs:
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
