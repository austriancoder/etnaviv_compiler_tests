FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0]
DCL TEMP[0..2], LOCAL
  0: IF CONST[0].xxxx :0
  1:   MOV TEMP[0], TEMP[1]
  2: ELSE :0
  3:   MOV TEMP[0], TEMP[2]
  4: ENDIF
  5: MOV OUT[0], TEMP[0]
  6: END


FRAG
0000: 07841009 00000000 00000000 20000008  MOV t4, void, void, u0.xxxx
0001: 00000156 39004800 000000c0 00000202  BRANCH.EQ void, t4, u1.xxxx, label_0004
0002: 07811009 00000000 00000000 00390028  MOV t1, void, void, t2
0003: 00000016 00000000 00000000 00000280  BRANCH void, void, void, label_0005
0004: 07811009 00000000 00000000 00390038  MOV t1, void, void, t3
0005: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 5
num const: 4
immediates:
 [1].x = 0.000000 (0x00000000)
inputs:
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
