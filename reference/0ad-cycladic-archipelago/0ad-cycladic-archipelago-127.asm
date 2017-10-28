FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], GENERIC[0], PERSPECTIVE
DCL IN[2], GENERIC[1], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL TEMP[0..2]
  0: TEX TEMP[0], IN[1], SAMP[0], 2D
  1: TEX TEMP[1].xyz, IN[1], SAMP[1], 2D
  2: LRP TEMP[2].xyz, TEMP[1], IN[0], TEMP[0]
  3: TEX TEMP[1].w, IN[2], SAMP[2], 2D
  4: MUL OUT[0].xyz, TEMP[2], TEMP[1].wwww
  5: MUL OUT[0].w, IN[0].wwww, TEMP[0].wwww
  6: END

FRAG
0000: 07851018 39002f20 00000000 00000000  TEXLD t5, tex0, t2, void, void
0001: 0b821018 39002f20 00000000 00000000  TEXLD t2.xyz_, tex1, t2, void, void
0002: 07861002 39002800 01c802c0 00790058  MAD t6, t2, t5, -t5
0003: 03841002 39002800 01c800c0 00790068  MAD t4.xyz_, t2, t1, -t6
0004: 14021018 39003f20 00000000 00000000  TEXLD t2.___w, tex2, t3, void, void
0005: 03821003 39004800 01fe0140 00000000  MUL t2.xyz_, t4, t2.wwww, void
0006: 04021003 3fc01800 01fe02c0 00000000  MUL t2.___w, t1.wwww, t5.wwww, void
num loops: 0
num temps: 7
num const: 0
immediates:
inputs:
 [1] name=COLOR index=0 comps=4
 [2] name=GENERIC index=0 comps=2
 [3] name=GENERIC index=1 comps=2
outputs:
special:
  ps_color_out_reg=2
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
