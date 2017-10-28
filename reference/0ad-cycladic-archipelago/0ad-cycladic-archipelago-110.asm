VERT
DCL OUT[0], POSITION
DCL CONST[0..4]
DCL TEMP[0]
  0: MUL TEMP[0], CONST[0].xxxx, CONST[1]
  1: MAD TEMP[0], CONST[0].yyyy, CONST[2], TEMP[0]
  2: MAD TEMP[0], CONST[0].zzzz, CONST[3], TEMP[0]
  3: MAD OUT[0], CONST[0].wwww, CONST[4], TEMP[0]
  4: END

VERT
0000: 07811009 00000000 00000000 20390018  MOV t1, void, void, u1
0001: 07801003 00000800 01c800d0 00000000  MUL t0, u0.xxxx, t1, void
0002: 07811009 00000000 00000000 20390028  MOV t1, void, void, u2
0003: 07801002 15400800 01c800d0 00390008  MAD t0, u0.yyyy, t1, t0
0004: 07811009 00000000 00000000 20390038  MOV t1, void, void, u3
0005: 07801002 2a800800 01c800d0 00390008  MAD t0, u0.zzzz, t1, t0
0006: 07811009 00000000 00000000 20390048  MOV t1, void, void, u4
0007: 07801002 3fc00800 01c800d0 00390008  MAD t0, u0.wwww, t1, t0
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
