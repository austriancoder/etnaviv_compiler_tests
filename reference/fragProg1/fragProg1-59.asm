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
  0: MOV_SAT TEMP[0], IN[0]
  1: MUL TEMP[1].x, CONST[0].wwww, IN[1].xxxx
  2: MUL TEMP[1].x, TEMP[1].xxxx, TEMP[1].xxxx
  3: EX2_SAT TEMP[1].x, -TEMP[1].xxxx
  4: MUL TEMP[2], TEMP[1].xxxx, TEMP[0]
  5: SUB TEMP[3], IMM[0].yyyy, TEMP[1].xxxx
  6: MUL TEMP[3], TEMP[3], CONST[1]
  7: ADD OUT[0].xyz, TEMP[2], TEMP[3]
  8: MOV OUT[0].w, TEMP[0]
  9: END


TGSI asm error: Unknown opcode [16 : 7] 
etnaviv_compiler: could not parse `tgsi/fragProg1/fragProg1-59.tgsi'
