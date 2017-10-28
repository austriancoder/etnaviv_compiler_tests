FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL CONST[0]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].w, IMM[0].xxxx
  1: MOV TEMP[1].xy, IN[0].xyyy
  2: TEX TEMP[1].xyz, TEMP[1], SAMP[0], 2D
  3: MOV TEMP[0].xyz, TEMP[1].xyzx
  4: MUL TEMP[0], TEMP[0], CONST[0].xxxx
  5: MOV OUT[0], TEMP[0]
  6: END

FRAG
0000: 04021009 00000000 00000000 20000018  MOV t2.___w, void, void, u1.xxxx
0001: 01811009 00000000 00000000 00150018  MOV t1.xy__, void, void, t1.xyyy
0002: 03811018 39001f20 00000000 00000000  TEXLD t1.xyz_, tex0, t1, void, void
0003: 03821009 00000000 00000000 00090018  MOV t2.xyz_, void, void, t1.xyzx
0004: 07821003 39002800 00000040 00000002  MUL t2, t2, u0.xxxx, void
num loops: 0
num temps: 3
num const: 4
immediates:
 [1].x = 1.000000 (0x3f800000)
 [1].y = 0.000000 (0x00000000)
 [1].z = 0.000000 (0x00000000)
 [1].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=2
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
