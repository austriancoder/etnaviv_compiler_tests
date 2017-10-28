VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL OUT[1], COLOR
DCL CONST[0..4]
DCL ADDR[0]
  0: MOV OUT[0], IN[0]
  1: ARL ADDR[0].x, CONST[4].xxxx
  2: MOV OUT[1].x, CONST[ADDR[0].x+1]
  3: ARL ADDR[0].x, CONST[4].yyyy
  4: MOV OUT[1].y, CONST[ADDR[0].x+1]
  5: ARL ADDR[0].x, CONST[4].zzzz
  6: MOV OUT[1].z, CONST[ADDR[0].x+1]
  7: ARL ADDR[0].x, CONST[4].wwww
  8: MOV OUT[1].w, CONST[ADDR[0].x+1]
  9: END


VERT
0000: 07821025 00000000 00000000 20000048  FLOOR t2, void, void, u4.xxxx
0001: 0080000a 00000000 00000000 00390028  MOVAR a0.x___, void, void, t2
0002: 00811009 00000000 00000000 22390018  MOV t1.x___, void, void, u1[a.x]
0003: 07821025 00000000 00000000 20154048  FLOOR t2, void, void, u4.yyyy
0004: 0080000a 00000000 00000000 00390028  MOVAR a0.x___, void, void, t2
0005: 01011009 00000000 00000000 22390018  MOV t1._y__, void, void, u1[a.x]
0006: 07821025 00000000 00000000 202a8048  FLOOR t2, void, void, u4.zzzz
0007: 0080000a 00000000 00000000 00390028  MOVAR a0.x___, void, void, t2
0008: 02011009 00000000 00000000 22390018  MOV t1.__z_, void, void, u1[a.x]
0009: 07821025 00000000 00000000 203fc048  FLOOR t2, void, void, u4.wwww
0010: 0080000a 00000000 00000000 00390028  MOVAR a0.x___, void, void, t2
0011: 04011009 00000000 00000000 22390018  MOV t1.___w, void, void, u1[a.x]
num loops: 0
num temps: 3
num const: 20
immediates:
inputs:
 [0] name=POSITION index=0 comps=4
outputs:
 [1] name=COLOR index=0 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
