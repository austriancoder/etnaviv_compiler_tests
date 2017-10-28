FRAG
DCL IN[0], GENERIC[0], PERSPECTIVE
DCL IN[1], COLOR, PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL TEMP[0..2]
IMM[0] FLT32 {    0.0000,     1.0000,     0.0000,     0.0000}
  0: SGT TEMP[2], IN[0].xyxy, IMM[0].xxxx
  1: SLT TEMP[1], IN[0].xyxy, IMM[0].yyyy
  2: MIN TEMP[1], TEMP[1], TEMP[2]
  3: MIN TEMP[1], TEMP[1].xxxx, TEMP[1].yyyy
  4: TEX TEMP[2], IN[0], SAMP[0], 2D
  5: MUL TEMP[0], TEMP[2], TEMP[1]
  6: MUL OUT[0], TEMP[0], IN[1].wwww
  7: END


FRAG
0000: 07831050 11001800 00000040 00000002  SET.GT t3, t1.xyxy, u0.xxxx, void
0001: 07841090 11001800 00aa0040 00000002  SET.LT t4, t1.xyxy, u0.yyyy, void
0002: 0784104f 39004800 01c801c0 00390048  SELECT.GT t4, t4, t3, t4
0003: 0784104f 00004800 00aa0240 00000048  SELECT.GT t4, t4.xxxx, t4.yyyy, t4.xxxx
0004: 07831018 39001f20 00000000 00000000  TEXLD t3, tex0, t1, void, void
0005: 07811003 39003800 01c80240 00000000  MUL t1, t3, t4, void
0006: 07841003 39001800 01fe0140 00000000  MUL t4, t1, t2.wwww, void
num loops: 0
num temps: 5
num const: 0
immediates:
 [0].x = 0.000000 (0x00000000)
 [0].y = 1.000000 (0x3f800000)
 [0].z = 0.000000 (0x00000000)
 [0].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=0 comps=2
 [2] name=COLOR index=0 comps=4
outputs:
special:
  ps_color_out_reg=4
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
