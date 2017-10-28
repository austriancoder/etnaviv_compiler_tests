VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL OUT[1], COLOR
DCL OUT[2], FOG
DCL CONST[0..5]
DCL TEMP[0]
IMM[0] FLT32 {    0.0000,     1.0000,     0.0000,     0.0000}
  0: MOV OUT[2].yzw, IMM[0].xxxy
  1: MUL TEMP[0], IN[0].xxxx, CONST[0]
  2: MAD TEMP[0], IN[0].yyyy, CONST[1], TEMP[0]
  3: MAD TEMP[0], IN[0].zzzz, CONST[2], TEMP[0]
  4: MAD OUT[0], IN[0].wwww, CONST[3], TEMP[0]
  5: MOV_SAT OUT[1], CONST[4]
  6: ABS OUT[2].x, CONST[5].xxxx
  7: END


TGSI asm error: Unknown opcode [15 : 7] 
etnaviv_compiler: could not parse `tgsi/fragProg1/fragProg1-55.tgsi'
