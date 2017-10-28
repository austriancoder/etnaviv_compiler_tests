FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], COLOR[1], COLOR
DCL OUT[0], COLOR
DCL TEMP[0], LOCAL
  0: MOV TEMP[0].w, IN[0].wwww
  1: ADD TEMP[0].xyz, IN[0].xyzz, IN[1].xyzz
  2: MOV OUT[0], TEMP[0]
  3: END

FRAG
0000: 04031009 00000000 00000000 003fc018  MOV t3.___w, void, void, t1.wwww
0001: 03831001 29001800 00000000 00290028  ADD t3.xyz_, t1.xyzz, void, t2.xyzz
num loops: 0
num temps: 4
num const: 0
immediates:
inputs:
 [1] name=COLOR index=0 comps=4
 [2] name=COLOR index=1 comps=3
outputs:
special:
  ps_color_out_reg=3
  ps_depth_out_reg=-1
  input_count_unk8=0x0000001f
