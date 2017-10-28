FRAG
DCL IN[0], GENERIC[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0]
IMM[0] FLT32 {    0.0000,     1.0000,     0.0000,     0.0000}
  0: TEX TEMP[0], IN[0], SAMP[0], 2D
  1: MOV OUT[0], TEMP[0].zyxw
  2: MOV OUT[0].w, IMM[0].yyyy
  3: END


FRAG
0000: 07811018 39001f20 00000000 00000000  TEXLD t1, tex0, t1, void, void
0001: 07811009 00000000 00000000 00318018  MOV t1, void, void, t1.zyxw
0002: 04011009 00000000 00000000 20154008  MOV t1.___w, void, void, u0.yyyy
num loops: 0
num temps: 2
num const: 0
immediates:
 [0].x = 0.000000 (0x00000000)
 [0].y = 1.000000 (0x3f800000)
 [0].z = 0.000000 (0x00000000)
 [0].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=0 comps=2
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
