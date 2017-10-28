FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], FOG, PERSPECTIVE
DCL OUT[0], COLOR
DCL CONST[0..2]
DCL TEMP[0..2], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,     0.0000,     0.0000}
  0: MOV TEMP[0].w, IN[0].wwww
  1: MAD_SAT TEMP[1].x, IN[1].xxxx, CONST[0].xxxx, CONST[0].yyyy
  2: ADD TEMP[2].x, IMM[0].xxxx, -TEMP[1].xxxx
  3: MUL TEMP[2].xyz, CONST[1].xyzz, TEMP[2].xxxx
  4: MAD TEMP[0].xyz, IN[0].xyzz, TEMP[1].xxxx, TEMP[2].xyzz
  5: MOV OUT[0], TEMP[0]
  6: END

FRAG
0000: 04041009 00000000 00000000 003fc018  MOV t4.___w, void, void, t1.wwww
0001: 00821802 00002800 00000040 2015400a  MAD.SAT t2.x___, t2.xxxx, u0.xxxx, u0.yyyy
0002: 00831001 00003800 00000010 00400028  ADD t3.x___, u3.xxxx, void, -t2.xxxx
0003: 03831003 29001800 000001d0 00000000  MUL t3.xyz_, u1.xyzz, t3.xxxx, void
0004: 03841002 29001800 00000140 00290038  MAD t4.xyz_, t1.xyzz, t2.xxxx, t3.xyzz
num loops: 0
num temps: 5
num const: 12
immediates:
 [3].x = 1.000000 (0x3f800000)
 [3].y = 0.000000 (0x00000000)
 [3].z = 0.000000 (0x00000000)
 [3].w = 0.000000 (0x00000000)
inputs:
 [1] name=COLOR index=0 comps=4
 [2] name=FOG index=0 comps=1
outputs:
special:
  ps_color_out_reg=4
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
