VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL IN[3]
DCL OUT[0], POSITION
DCL OUT[1], COLOR
DCL OUT[2], GENERIC[0]
DCL CONST[0..18]
DCL TEMP[0..8]
  0: MUL TEMP[0], IN[0].xxxx, CONST[0]
  1: MAD TEMP[0], IN[0].yyyy, CONST[1], TEMP[0]
  2: MAD TEMP[0], IN[0].zzzz, CONST[2], TEMP[0]
  3: MAD OUT[0], IN[0].wwww, CONST[3], TEMP[0]
  4: DP3 TEMP[0].x, IN[1], CONST[4]
  5: DP3 TEMP[0].y, IN[1], CONST[5]
  6: DP3 TEMP[0].z, IN[1], CONST[6]
  7: MOV TEMP[1].w, CONST[7].xxxx
  8: MOV TEMP[2], IN[2]
  9: MAD TEMP[2].xyz, CONST[8], IN[2], CONST[9]
 10: MOV_SAT OUT[1], TEMP[2]
 11: MUL TEMP[3], IN[0].xxxx, CONST[12]
 12: MAD TEMP[3], IN[0].yyyy, CONST[13], TEMP[3]
 13: MAD TEMP[3], IN[0].zzzz, CONST[14], TEMP[3]
 14: MAD TEMP[3], IN[0].wwww, CONST[15], TEMP[3]
 15: DP3 TEMP[4].x, TEMP[3], TEMP[3]
 16: RSQ TEMP[4].x, |TEMP[4]|
 17: MUL TEMP[5], TEMP[3], TEMP[4].xxxx
 18: SUB TEMP[4], CONST[10], TEMP[5]
 19: DP3 TEMP[6].x, TEMP[4], TEMP[4]
 20: RSQ TEMP[6].x, |TEMP[6]|
 21: MUL TEMP[4], TEMP[4], TEMP[6].xxxx
 22: DP3 TEMP[1].x, TEMP[0], CONST[10]
 23: DP3 TEMP[1].y, TEMP[0], TEMP[4]
 24: MUL TEMP[6], CONST[16], IN[2]
 25: MUL TEMP[7], CONST[17], IN[2]
 26: LIT TEMP[8], TEMP[1]
 27: ADD TEMP[2], TEMP[6], TEMP[2]
 28: MAD TEMP[2], TEMP[8].yyyy, TEMP[7], TEMP[2]
 29: MAD_SAT OUT[1].xyz, TEMP[8].zzzz, CONST[18], TEMP[2]
 30: MOV OUT[2], IN[3]
 31: END


TGSI asm error: Unknown opcode [29 : 7] 
etnaviv_compiler: could not parse `tgsi/stk-mines/stk-mines-35.tgsi'
