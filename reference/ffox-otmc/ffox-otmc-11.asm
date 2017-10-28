VERT
DCL IN[0]
DCL IN[1]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[0]
  0: MOV OUT[0], IN[0]
  1: MOV OUT[1], IN[1]
  2: END

VERT
0000: 00000000 00000000 00000000 00000000  NOP void, void, void, void
num loops: 0
num temps: 2
num const: 0
immediates:
inputs:
 [0] name=POSITION index=0 comps=4
 [1] name=POSITION index=0 comps=4
outputs:
 [1] name=GENERIC index=0 comps=4
special:
  vs_pos_out_reg=0
  vs_pointsize_out_reg=-1
  vs_load_balancing=0x0f3f0522
  input_count_unk8=0x00000001
