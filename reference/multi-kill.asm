FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL TEMP[0], LOCAL
  1: MOV TEMP[0], IN[0]
  2: IF IN[0].xxxx :0
  3:   ADD TEMP[0], TEMP[0], TEMP[0]
  4:   KILL
  5: ENDIF
  6: IF IN[0].yyyy :0
  7:   MUL TEMP[0], TEMP[0], TEMP[0]
  8:   KILL
  9: ENDIF
 11: MOV OUT[0], TEMP[0]
 12: END

FRAG
0000: 07821009 00000000 00000000 00390018  MOV t2, void, void, t1
0001: 00000156 00001800 00000040 00000202  BRANCH.EQ void, t1.xxxx, u0.xxxx, label_0004
0002: 07821001 39002800 00000000 00390028  ADD t2, t2, void, t2
0003: 00000017 00000000 00000000 00000000  TEXKILL void, tex0.xxxx, void, void, void
0004: 00000156 15401800 00000040 00000382  BRANCH.EQ void, t1.yyyy, u0.xxxx, label_0007
0005: 07821003 39002800 01c80140 00000000  MUL t2, t2, t2, void
0006: 00000017 00000000 00000000 00000000  TEXKILL void, tex0.xxxx, void, void, void
0007: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 3
num const: 0
immediates:
 [0].x = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=0 comps=4
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f