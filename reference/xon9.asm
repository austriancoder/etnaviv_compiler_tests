FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL CONST[3..4]
DCL CONST[6..8]
DCL TEMP[0..3], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     0.0000,     0.0000}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[4]
  0: MOV TEMP[0].xy, IN[0].xyyy
  1: TEX TEMP[0], TEMP[0], SAMP[0], 2D
  2: SLT TEMP[1].x, TEMP[0].wwww, IMM[0].xxxx
  3: IF TEMP[1].xxxx :0
  4:   KILL
  5: ENDIF
  6: MUL TEMP[2].x, TEMP[0].wwww, CONST[7].xxxx
  7: MOV TEMP[1].w, TEMP[2].xxxx
  8: MOV TEMP[2].xy, IN[0].xyyy
  9: TEX TEMP[2].xyz, TEMP[2], SAMP[2], 2D
 10: MOV TEMP[3].xy, IN[0].xyyy
 11: TEX TEMP[3].xyz, TEMP[3], SAMP[1], 2D
 12: MUL TEMP[3].xyz, TEMP[3].xyzz, CONST[3].xyzz
 13: MAD TEMP[2].xyz, TEMP[2].xyzz, CONST[4].xyzz, TEMP[3].xyzz
 14: ADD TEMP[1].xyz, TEMP[0].xyzz, TEMP[2].xyzz
 15: MUL TEMP[1].xyz, TEMP[1].xyzz, CONST[6].xyzz
 16: MUL TEMP[1].xyz, TEMP[1].xyzz, CONST[8].xyzz
 17: MOV TEMP[0].y, IMM[0].yyyy
 18: MUL TEMP[4].x, IN[1].xxxx, IN[1].xxxx
 19: MAD TEMP[4].x, IN[1].yyyy, IN[1].yyyy, TEMP[4].xxxx
 20: MAD TEMP[2].x, IN[1].zzzz, IN[1].zzzz, TEMP[4].xxxx
 21: SQRT TEMP[0].x, TEMP[2].xxxx
 22: MOV TEMP[0].xy, TEMP[0].xyyy
 23: TEX TEMP[0].x, TEMP[0], SAMP[3], 2D
 24: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[0].xxxx
 25: MOV OUT[0], TEMP[1]
 26: END


FRAG
0000: 01841009 00000000 00000000 00150018  MOV t4.xy__, void, void, t1.xyyy
0001: 07841018 39004f20 00000000 00000000  TEXLD t4, tex0, t4, void, void
0002: 00861090 3fc04800 000004c0 00000002  SET.LT t6.x___, t4.wwww, u9.xxxx, void
0003: 00000156 00006800 00aa04c0 00000282  BRANCH.EQ void, t6.xxxx, u9.yyyy, label_0005
0004: 00000017 00000000 00000000 00000000  TEXKILL void, tex0.xxxx, void, void, void
0005: 00831003 3fc04800 000003c0 00000002  MUL t3.x___, t4.wwww, u7.xxxx, void
0006: 04061009 00000000 00000000 00000038  MOV t6.___w, void, void, t3.xxxx
0007: 01831009 00000000 00000000 00150018  MOV t3.xy__, void, void, t1.xyyy
0008: 13831018 39003f20 00000000 00000000  TEXLD t3.xyz_, tex2, t3, void, void
0009: 01811009 00000000 00000000 00150018  MOV t1.xy__, void, void, t1.xyyy
0010: 0b811018 39001f20 00000000 00000000  TEXLD t1.xyz_, tex1, t1, void, void
0011: 03811003 29001800 014801c0 00000002  MUL t1.xyz_, t1.xyzz, u3.xyzz, void
0012: 03831002 29003800 01480240 0029001a  MAD t3.xyz_, t3.xyzz, u4.xyzz, t1.xyzz
0013: 03861001 29004800 00000000 00290038  ADD t6.xyz_, t4.xyzz, void, t3.xyzz
0014: 03861003 29006800 01480340 00000002  MUL t6.xyz_, t6.xyzz, u6.xyzz, void
0015: 03861003 29006800 01480440 00000002  MUL t6.xyz_, t6.xyzz, u8.xyzz, void
0016: 01041009 00000000 00000000 20154098  MOV t4._y__, void, void, u9.yyyy
0017: 00851003 00002800 00000140 00000000  MUL t5.x___, t2.xxxx, t2.xxxx, void
0018: 00851002 15402800 00aa0140 00000058  MAD t5.x___, t2.yyyy, t2.yyyy, t5.xxxx
0019: 00831002 2a802800 01540140 00000058  MAD t3.x___, t2.zzzz, t2.zzzz, t5.xxxx
0020: 00841021 00000000 00000000 00000038  SQRT t4.x___, void, void, t3.xxxx
0021: 01841009 00000000 00000000 00150048  MOV t4.xy__, void, void, t4.xyyy
0022: 18841018 39004f20 00000000 00000000  TEXLD t4.x___, tex3, t4, void, void
0023: 03861003 29006800 00000240 00000000  MUL t6.xyz_, t6.xyzz, t4.xxxx, void
num loops: 0
num temps: 7
num const: 36
immediates:
 [9].x = 0.500000 (0x3f000000)
 [9].y = 0.000000 (0x00000000)
 [9].z = 0.000000 (0x00000000)
 [9].w = 0.000000 (0x00000000)
 [10].x = 0.000000 (0x00000000)
 [10].y = 1.000000 (0x3f800000)
 [10].z = 128.000000 (0x43000000)
 [10].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=20 comps=2
 [2] name=GENERIC index=21 comps=3
outputs:
special:
  ps_color_out_reg=6
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
