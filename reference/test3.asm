VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL IN[3]
DCL OUT[0], POSITION
DCL CONST[0..18]
DCL CONST[21..24]
DCL TEMP[0..8]
IMM[0] FLT32 {    0.5000,     0.0000,     1.0000,     0.0000}
  0: MUL TEMP[0], IN[0].xxxx, CONST[0]
  6: DP3 TEMP[0].z, IN[1], CONST[6]
  8: MOV TEMP[2], IN[2]
 11: MUL TEMP[3], IN[0].xxxx, CONST[12]
 15: MUL TEMP[4].x, TEMP[3], TEMP[3]
 16: RSQ TEMP[4].x, |TEMP[4]|
 17: MUL TEMP[5], TEMP[3], TEMP[4].xxxx
 18: SUB TEMP[4], CONST[10], TEMP[5]
 20: RSQ TEMP[6].x, |TEMP[4]|
 21: MUL TEMP[4], TEMP[4], TEMP[6].xxxx
 22: DP3 TEMP[1].x, TEMP[0], CONST[10]
 23: DP3 TEMP[1].y, TEMP[0], TEMP[4]
 24: MUL TEMP[6], CONST[16], IN[2]
 25: MUL TEMP[7], CONST[17], IN[2]
 26: MOV TEMP[8], TEMP[1]
 27: ADD TEMP[2], TEMP[6], TEMP[2]
 32: MAD TEMP[2], -TEMP[1], TEMP[0], TEMP[5]
 33: ADD TEMP[1], TEMP[2], IMM[0].yyzy
 36: MUL TEMP[4], TEMP[1], IMM[0].xxxx
 37: MAD TEMP[8].xy, TEMP[2], TEMP[4], IMM[0].xxxx
 38: MOV TEMP[8].zw, IN[1]
 39: MUL TEMP[1], TEMP[8].xxxx, CONST[21]
 42: MAD OUT[0], TEMP[8].wwww, CONST[24], TEMP[1]
 42: MOV OUT[0].xyz, IMM[0].xxxx
 43: END



TGSI asm error: Unknown opcode [18 : 7] 
etnaviv_compiler: could not parse `tgsi/test3.tgsi'
