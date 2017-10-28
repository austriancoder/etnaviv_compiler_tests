VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL IN[3]
DCL OUT[0], POSITION
DCL OUT[1], COLOR
DCL OUT[2], FOG
DCL OUT[3], GENERIC[0]
DCL CONST[0..18]
DCL TEMP[0..8]
IMM[0] FLT32 {    0.0000,     1.0000,     0.0000,     0.0000}
  0: MOV OUT[2].yzw, IMM[0].xxxy
  1: MUL TEMP[0], IN[0].xxxx, CONST[0]
  2: MAD TEMP[0], IN[0].yyyy, CONST[1], TEMP[0]
  3: MAD TEMP[0], IN[0].zzzz, CONST[2], TEMP[0]
  4: MAD OUT[0], IN[0].wwww, CONST[3], TEMP[0]
  5: DP3 TEMP[0].x, IN[1], CONST[4]
  6: DP3 TEMP[0].y, IN[1], CONST[5]
  7: DP3 TEMP[0].z, IN[1], CONST[6]
  8: MOV TEMP[1].w, CONST[7].xxxx
  9: MOV TEMP[2], IN[2]
 10: MAD TEMP[2].xyz, CONST[8], IN[2], CONST[9]
 11: MOV_SAT OUT[1], TEMP[2]
 12: MUL TEMP[3], IN[0].xxxx, CONST[12]
 13: MAD TEMP[3], IN[0].yyyy, CONST[13], TEMP[3]
 14: MAD TEMP[3], IN[0].zzzz, CONST[14], TEMP[3]
 15: MAD TEMP[3], IN[0].wwww, CONST[15], TEMP[3]
 16: DP3 TEMP[4].x, TEMP[3], TEMP[3]
 17: RSQ TEMP[4].x, |TEMP[4]|
 18: MUL TEMP[5], TEMP[3], TEMP[4].xxxx
 19: SUB TEMP[4], CONST[10], TEMP[5]
 20: DP3 TEMP[6].x, TEMP[4], TEMP[4]
 21: RSQ TEMP[6].x, |TEMP[6]|
 22: MUL TEMP[4], TEMP[4], TEMP[6].xxxx
 23: DP3 TEMP[1].x, TEMP[0], CONST[10]
 24: DP3 TEMP[1].y, TEMP[0], TEMP[4]
 25: MUL TEMP[6], CONST[16], IN[2]
 26: MUL TEMP[7], CONST[17], IN[2]
 27: LIT TEMP[8], TEMP[1]
 28: ADD TEMP[2], TEMP[6], TEMP[2]
 29: MAD TEMP[2], TEMP[8].yyyy, TEMP[7], TEMP[2]
 30: MAD_SAT OUT[1].xyz, TEMP[8].zzzz, CONST[18], TEMP[2]
 31: ABS OUT[2].x, TEMP[3].zzzz
 32: MOV OUT[3], IN[3]
 33: END


TGSI asm error: Unknown opcode [32 : 7] 
etnaviv_compiler: could not parse `tgsi/stk-mines/stk-mines-15.tgsi'
