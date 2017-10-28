FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[0], PERSPECTIVE
DCL IN[1], GENERIC[1], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL CONST[0]
DCL TEMP[0..2]
  0: TEX TEMP[0], IN[0], SAMP[0], 2D
  1: TEX TEMP[1].xyz, IN[0], SAMP[1], 2D
  2: LRP TEMP[2].xyz, TEMP[1], CONST[0], TEMP[0]
  3: TEX TEMP[1].w, IN[1], SAMP[2], 2D
  4: MUL OUT[0].xyz, TEMP[2], TEMP[1].wwww
  5: MUL OUT[0].w, CONST[0].wwww, TEMP[0].wwww
  6: END

FRAG
0000: 07841018 39001f20 00000000 00000000  TEXLD t4, tex0, t1, void, void
0001: 0b811018 39001f20 00000000 00000000  TEXLD t1.xyz_, tex1, t1, void, void
0002: 07851002 39001800 01c80240 00790048  MAD t5, t1, t4, -t4
0003: 03831002 39001800 01c80040 0079005a  MAD t3.xyz_, t1, u0, -t5
0004: 14011018 39002f20 00000000 00000000  TEXLD t1.___w, tex2, t2, void, void
0005: 03811003 39003800 01fe00c0 00000000  MUL t1.xyz_, t3, t1.wwww, void
0006: 04011003 3fc00800 01fe0250 00000000  MUL t1.___w, u0.wwww, t4.wwww, void
num loops: 0
num temps: 6
num const: 4
immediates:
inputs:
 [1] name=GENERIC index=0 comps=2
 [2] name=GENERIC index=1 comps=2
outputs:
special:
  ps_color_out_reg=1
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
