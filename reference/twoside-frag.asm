FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], COLOR[1], COLOR
DCL IN[2], FACE, CONSTANT
DCL OUT[0], COLOR
DCL CONST[0]
DCL TEMP[0]
DCL TEMP[1], LOCAL
IMM[0] FLT32 {    1.0000,     0.8000,     0.0000,     0.0000}
  0: MOV_SAT TEMP[0], IN[2]
  1: ADD TEMP[1].x, -CONST[0].xxxx, IMM[0].xxxx
  2: ADD_SAT TEMP[1].x, TEMP[1].xxxx, TEMP[0].xxxx
  3: IF TEMP[1].xxxx :1
  4:   MOV TEMP[1], IN[0]
  5: ELSE :1
  6:   MUL TEMP[1], IMM[0].yyyy, IN[1]
  7: ENDIF
  8: MOV OUT[0], TEMP[1]
  9: END


FRAG
0000: 07831809 00000000 00000000 00390038  MOV.SAT t3, void, void, t3
0001: 07851009 00000000 00000000 20000018  MOV t5, void, void, u1.xxxx
0002: 00841001 40000800 00000010 00390058  ADD t4.x___, -u0.xxxx, void, t5
0003: 00841801 00004800 00000000 00000038  ADD.SAT t4.x___, t4.xxxx, void, t3.xxxx
0004: 00000156 00004800 015400c0 00000382  BRANCH.EQ void, t4.xxxx, u1.zzzz, label_0007
0005: 07841009 00000000 00000000 00390018  MOV t4, void, void, t1
0006: 00000016 00000000 00000000 00000400  BRANCH void, void, void, label_0008
0007: 07841003 15401800 01c80150 00000000  MUL t4, u1.yyyy, t2, void
0008: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 6
num const: 4
immediates:
 [1].x = 1.000000 (0x3f800000)
 [1].y = 0.800000 (0x3f4ccccd)
 [1].z = 0.000000 (0x00000000)
 [1].w = 0.000000 (0x00000000)
inputs:
 [1] name=COLOR index=0 comps=4
 [2] name=COLOR index=1 comps=4
 [3] name=FACE index=0 comps=4
outputs:
special:
  ps_color_out_reg=4
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
