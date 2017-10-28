FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], FOG, PERSPECTIVE
DCL OUT[0], COLOR
DCL CONST[0..1]
DCL TEMP[0..1]
IMM[0] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[2]
DCL TEMP[3]
  0: MUL TEMP[0].x, CONST[0].xxxx, IN[1].xxxx
  1: MUL TEMP[0].x, TEMP[0].xxxx, TEMP[0].xxxx
  2: EX2_SAT TEMP[1], -TEMP[0].xxxx
  3: MUL TEMP[2], TEMP[1], IN[0]
  4: SUB TEMP[3], IMM[0].yyyy, TEMP[1]
  5: MUL TEMP[3], TEMP[3], CONST[1]
  6: ADD OUT[0].xyz, TEMP[2], TEMP[3]
  7: MOV OUT[0].w, IN[0].wwww
  8: END


TGSI asm error: Unknown opcode [15 : 7] 
etnaviv_compiler: could not parse `tgsi/fragProg1/fragProg1-60.tgsi'
