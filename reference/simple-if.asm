VERT
DCL IN[0]
DCL IN[1]
DCL OUT[0], POSITION
DCL CONST[0..9]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  1: MUL TEMP[0], CONST[4].xyzz, IN[0].xyzz
  2: IF TEMP[0].xxxx :0
  3:   ADD TEMP[0], TEMP[0], IN[1]
  4: ENDIF
  5: MOV OUT[0], TEMP[0]
  6: END


VERT
0000: 07801003 29004800 01480050 00000000  MUL t0, u4.xyzz, t0.xyzz, void
0001: 00000156 00000800 00000540 00000182  BRANCH.EQ void, t0.xxxx, u10.xxxx, label_0003
0002: 07801001 39000800 00000000 00390028  ADD t0, t0, void, t2
0003: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 3
num const: 40
immediates:
 [10].x = 0.000000 (0x00000000)
 [10].y = 0.000000 (0x00000000)
 [10].z = 0.000000 (0x00000000)
 [10].w = 0.000000 (0x00000000)
inputs:
 [0] name=POSITION index=0 comps=3
 [2] name=POSITION index=0 comps=4
outputs:
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
