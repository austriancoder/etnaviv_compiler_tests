FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL OUT[0], COLOR
DCL CONST[0..1]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    1.0000,     0.0000,     0.0000,     0.0000}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[2]
DCL TEMP[3]
  0: MOV TEMP[0].w, IMM[0].xxxx
  1: MUL TEMP[1].x, IN[0].xxxx, IN[0].yyyy
  2: MUL TEMP[2], TEMP[1].xxxx, CONST[1].xyzz
  3: SUB TEMP[3], IMM[1].yyyy, TEMP[1].xxxx
  4: MUL TEMP[3], TEMP[3], CONST[0].xyzz
  5: ADD TEMP[0].xyz, TEMP[2], TEMP[3]
  6: MOV OUT[0], TEMP[0]
  7: END


TGSI asm error: Unknown opcode [14 : 7] 
etnaviv_compiler: could not parse `tgsi/glmark1.tgsi'
