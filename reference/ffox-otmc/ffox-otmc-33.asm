FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[9], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL CONST[2]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0].xyz, TEMP[0], SAMP[0], 2D
  2: MOV TEMP[1].xy, IN[0].xyyy
  3: TEX TEMP[1].xyz, TEMP[1], SAMP[1], 2D
  4: ADD TEMP[1].xyz, IMM[0].xxxx, -TEMP[1].xyzz
  5: ADD TEMP[1].xyz, TEMP[1].xyzz, TEMP[0].xyzz
  6: IF CONST[2].xxxx :0
  7:   MOV TEMP[0].xyz, TEMP[0].xyzx
  8:   MOV TEMP[0].w, TEMP[1].yyyy
  9:   MOV TEMP[0], TEMP[0]
 10: ELSE :0
 11:   MOV TEMP[0], TEMP[1].xyzy
 12: ENDIF
 13: MOV OUT[0], TEMP[0]
 14: END

FRAG
0000: 01821009 00000000 00000000 00150018  MOV t2.xy__, void, void, t1.xyyy
0001: 03821018 39002f20 00000000 00000000  TEXLD t2.xyz_, tex0, t2, void, void
0002: 01811009 00000000 00000000 00150018  MOV t1.xy__, void, void, t1.xyyy
0003: 0b811018 39001f20 00000000 00000000  TEXLD t1.xyz_, tex1, t1, void, void
0004: 03811001 00003800 00000010 00690018  ADD t1.xyz_, u3.xxxx, void, -t1.xyzz
0005: 03811001 29001800 00000000 00290028  ADD t1.xyz_, t1.xyzz, void, t2.xyzz
0006: 07831009 00000000 00000000 20000028  MOV t3, void, void, u2.xxxx
0007: 00000156 39003800 00aa01c0 00000602  BRANCH.EQ void, t3, u3.yyyy, label_0012
0008: 03821009 00000000 00000000 00090028  MOV t2.xyz_, void, void, t2.xyzx
0009: 04021009 00000000 00000000 00154018  MOV t2.___w, void, void, t1.yyyy
0010: 07821009 00000000 00000000 00390028  MOV t2, void, void, t2
0011: 00000016 00000000 00000000 00000680  BRANCH void, void, void, label_0013
0012: 07821009 00000000 00000000 00190018  MOV t2, void, void, t1.xyzy
0013: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 4
num const: 12
immediates:
 [3].x = 1.000000 (0x3f800000)
 [3].y = 0.000000 (0x00000000)
 [3].z = 0.000000 (0x00000000)
 [3].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=9 comps=2
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
