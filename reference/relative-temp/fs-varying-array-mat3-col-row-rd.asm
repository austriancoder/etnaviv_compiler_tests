FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[11], PERSPECTIVE
DCL IN[1], GENERIC[12], PERSPECTIVE
DCL IN[2], GENERIC[13], PERSPECTIVE
DCL OUT[0], COLOR
DCL CONST[0..2]
DCL TEMP[0..2], ARRAY(1), LOCAL
DCL TEMP[3..5], LOCAL
DCL ADDR[0]
IMM[0] FLT32 {    0.0000,     1.0000,     2.0000,     0.0000}
  0: MOV TEMP[0].xyz, IN[0].yzwy
  1: MOV TEMP[1].xyz, IN[1].xyzx
  2: MOV TEMP[2].x, IN[1].wwww
  3: MOV TEMP[2].yz, IN[2].yxyy
  4: ARL ADDR[0].x, CONST[0].xxxx
  5: MOV TEMP[3].xyz, TEMP[ADDR[0].x](1).xyzx
  6: SEQ TEMP[4].yz, CONST[1].xxxx, IMM[0].xyzz
  7: CMP TEMP[5].x, -TEMP[4].yyyy, TEMP[3].yyyy, TEMP[3].xxxx
  8: CMP TEMP[5].x, -TEMP[4].zzzz, TEMP[3].zzzz, TEMP[5].xxxx
  9: SEQ TEMP[3].x, TEMP[5].xxxx, CONST[2].xxxx
 10: IF TEMP[3].xxxx :0
 11:   MOV TEMP[3], IMM[0].xyxy
 12: ELSE :0
 13:   MOV TEMP[3], IMM[0].yxxy
 14: ENDIF
 15: MOV OUT[0], TEMP[3]
 16: END


FRAG
0000: 03811009 00000000 00000000 001e4018  MOV t1.xyz_, void, void, t1.yzwy
0001: 03841009 00000000 00000000 00090028  MOV t4.xyz_, void, void, t2.xyzx
0002: 00821009 00000000 00000000 003fc028  MOV t2.x___, void, void, t2.wwww
0003: 03021009 00000000 00000000 00144038  MOV t2._yz_, void, void, t3.yxyy
0004: 07871025 00000000 00000000 20000008  FLOOR t7, void, void, u0.xxxx
0005: 0080000a 00000000 00000000 00390078  MOVAR a0.x___, void, void, t7
0006: 03831009 00000000 00000000 02090018  MOV t3.xyz_, void, void, t1[a.x].xyzx
0007: 07871009 00000000 00000000 20290038  MOV t7, void, void, u3.xyzz
0008: 03051150 00001800 01c803d0 00000000  SET.EQ t5._yz_, u1.xxxx, t7, void
0009: 008613cf 55405800 00aa01c0 00000038  SELECT.LZ t6.x___, -t5.yyyy, t3.yyyy, t3.xxxx
0010: 008613cf 6a805800 015401c0 00000068  SELECT.LZ t6.x___, -t5.zzzz, t3.zzzz, t6.xxxx
0011: 00831150 00006800 00000140 00000002  SET.EQ t3.x___, t6.xxxx, u2.xxxx, void
0012: 00000156 00003800 000001c0 00000782  BRANCH.EQ void, t3.xxxx, u3.xxxx, label_0015
0013: 07831009 00000000 00000000 20110038  MOV t3, void, void, u3.xyxy
0014: 00000016 00000000 00000000 00000800  BRANCH void, void, void, label_0016
0015: 07831009 00000000 00000000 20104038  MOV t3, void, void, u3.yxxy
0016: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 8
num const: 12
immediates:
 [3].x = 0.000000 (0x00000000)
 [3].y = 1.000000 (0x3f800000)
 [3].z = 2.000000 (0x40000000)
 [3].w = 0.000000 (0x00000000)
inputs:
 [1] name=GENERIC index=11 comps=4
 [2] name=GENERIC index=12 comps=4
 [3] name=GENERIC index=13 comps=2
outputs:
special:
  ps_color_out_reg=3
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
