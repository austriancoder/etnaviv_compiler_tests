FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[9], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL CONST[2]
DCL TEMP[0..2], LOCAL
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0].w, TEMP[0], SAMP[1], 2D
  2: MOV TEMP[1].xy, IN[0].xyyy
  3: TEX TEMP[1].w, TEMP[1], SAMP[0], 2D
  4: MOV_SAT TEMP[2].x, CONST[2].xxxx
  5: LRP TEMP[0].x, TEMP[2].xxxx, TEMP[1].wwww, TEMP[0].wwww
  6: MOV TEMP[0].w, TEMP[0].xxxx
  7: MOV OUT[0], TEMP[0]
  8: END

FRAG
0000: 01821009 00000000 00000000 00150018  MOV t2.xy__, void, void, t1.xyyy
0001: 0c021018 39002f20 00000000 00000000  TEXLD t2.___w, tex1, t2, void, void
0002: 01811009 00000000 00000000 00150018  MOV t1.xy__, void, void, t1.xyyy
0003: 04011018 39001f20 00000000 00000000  TEXLD t1.___w, tex0, t1, void, void
0004: 00831809 00000000 00000000 20000028  MOV.SAT t3.x___, void, void, u2.xxxx
0005: 07841002 00003800 01fe0140 007fc028  MAD t4, t3.xxxx, t2.wwww, -t2.wwww
0006: 00821002 00003800 01fe00c0 00790048  MAD t2.x___, t3.xxxx, t1.wwww, -t4
0007: 04021009 00000000 00000000 00000028  MOV t2.___w, void, void, t2.xxxx
num loops: 0
num temps: 5
num const: 12
immediates:
inputs:
 [1] name=GENERIC index=9 comps=2
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
