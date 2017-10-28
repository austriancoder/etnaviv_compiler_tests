VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL CONST[0..9]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    0.0000,     0.0000,     0.0000,     0.0000}
  1: MUL TEMP[0], CONST[4].xyzz, IN[0].xyzz
  2: IF TEMP[0].xxxx :0
  3:   ADD TEMP[0], TEMP[0], IN[1]
  4: ELSE :0
  5:   SUB TEMP[0], TEMP[0], IN[2]
  6: ENDIF
  7: MOV OUT[0], TEMP[0]
  8: END



TGSI asm error: Unknown opcode [13 : 9] 
etnaviv_compiler: could not parse `tgsi/simple-if-else.tgsi'
