VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[20]
DCL CONST[0..1]
DCL TEMP[0], LOCAL
IMM[0] FLT32 {    0.0000,     1.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].x, -CONST[0].xxxx
  1: SEQ TEMP[0].x, TEMP[0].xxxx, CONST[1].xxxx
  2: IF TEMP[0].xxxx :0
  3:   MOV TEMP[0], IMM[0].xyxy
  4: ELSE :0
  5:   MOV TEMP[0], IMM[0].yxxy
  6: ENDIF
  7: MOV OUT[1], TEMP[0]
  8: MOV OUT[0], IN[0]
  9: END


VERT
0000: 00801009 00000000 00000000 20400008  MOV t0.x___, void, void, -u0.xxxx
0001: 00801150 00000800 000000c0 00000002  SET.EQ t0.x___, t0.xxxx, u1.xxxx, void
0002: 00000156 00000800 00000140 00000282  BRANCH.EQ void, t0.xxxx, u2.xxxx, label_0005
0003: 07801009 00000000 00000000 20110028  MOV t0, void, void, u2.xyxy
0004: 00000016 00000000 00000000 00000300  BRANCH void, void, void, label_0006
0005: 07801009 00000000 00000000 20104028  MOV t0, void, void, u2.yxxy
0006: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 2
num const: 8
immediates:
 [2].x = 0.000000 (0x00000000)
 [2].y = 1.000000 (0x3f800000)
 [2].z = 0.000000 (0x00000000)
 [2].w = 0.000000 (0x00000000)
inputs:
 [1] name=POSITION index=0 comps=4
outputs:
 [0] name=GENERIC index=20 comps=4
special:
  vs_pos_out_reg=1
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
