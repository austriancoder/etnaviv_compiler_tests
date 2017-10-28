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
IMM[0] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[9]
  0: MUL TEMP[0], IN[0].xxxx, CONST[0]
  1: MAD TEMP[0], IN[0].yyyy, CONST[1], TEMP[0]
  2: MAD TEMP[0], IN[0].zzzz, CONST[2], TEMP[0]
  3: MAD OUT[0], IN[0].wwww, CONST[3], TEMP[0]
  4: MUL TEMP[9].x, IN[1].xxxx, CONST[4].xxxx
  5: MAD TEMP[9].x, IN[1].yyyy, CONST[4].yyyy, TEMP[9].xxxx
  6: MAD TEMP[0].x, IN[1].zzzz, CONST[4].zzzz, TEMP[9].xxxx
  7: MUL TEMP[9].x, IN[1].xxxx, CONST[5].xxxx
  8: MAD TEMP[9].x, IN[1].yyyy, CONST[5].yyyy, TEMP[9].xxxx
  9: MAD TEMP[0].y, IN[1].zzzz, CONST[5].zzzz, TEMP[9].xxxx
 10: MUL TEMP[9].x, IN[1].xxxx, CONST[6].xxxx
 11: MAD TEMP[9].x, IN[1].yyyy, CONST[6].yyyy, TEMP[9].xxxx
 12: MAD TEMP[0].z, IN[1].zzzz, CONST[6].zzzz, TEMP[9].xxxx
 13: MOV TEMP[1].w, CONST[7].xxxx
 14: MOV TEMP[2], IN[2]
 15: MAD TEMP[2].xyz, CONST[8], IN[2], CONST[9]
 16: MOV_SAT OUT[1], TEMP[2]
 17: MUL TEMP[3], IN[0].xxxx, CONST[12]
 18: MAD TEMP[3], IN[0].yyyy, CONST[13], TEMP[3]
 19: MAD TEMP[3], IN[0].zzzz, CONST[14], TEMP[3]
 20: MAD TEMP[3], IN[0].wwww, CONST[15], TEMP[3]
 21: MUL TEMP[9].x, TEMP[3].xxxx, TEMP[3].xxxx
 22: MAD TEMP[9].x, TEMP[3].yyyy, TEMP[3].yyyy, TEMP[9].xxxx
 23: MAD TEMP[4].x, TEMP[3].zzzz, TEMP[3].zzzz, TEMP[9].xxxx
 24: RSQ TEMP[4].x, |TEMP[4]|
 25: MUL TEMP[5], TEMP[3], TEMP[4].xxxx
 26: SUB TEMP[4], CONST[10], TEMP[5]
 27: MUL TEMP[9].x, TEMP[4].xxxx, TEMP[4].xxxx
 28: MAD TEMP[9].x, TEMP[4].yyyy, TEMP[4].yyyy, TEMP[9].xxxx
 29: MAD TEMP[6].x, TEMP[4].zzzz, TEMP[4].zzzz, TEMP[9].xxxx
 30: RSQ TEMP[6].x, |TEMP[6]|
 31: MUL TEMP[4], TEMP[4], TEMP[6].xxxx
 32: MUL TEMP[9].x, TEMP[0].xxxx, CONST[10].xxxx
 33: MAD TEMP[9].x, TEMP[0].yyyy, CONST[10].yyyy, TEMP[9].xxxx
 34: MAD TEMP[1].x, TEMP[0].zzzz, CONST[10].zzzz, TEMP[9].xxxx
 35: MUL TEMP[9].x, TEMP[0].xxxx, TEMP[4].xxxx
 36: MAD TEMP[9].x, TEMP[0].yyyy, TEMP[4].yyyy, TEMP[9].xxxx
 37: MAD TEMP[1].y, TEMP[0].zzzz, TEMP[4].zzzz, TEMP[9].xxxx
 38: MUL TEMP[6], CONST[16], IN[2]
 39: MUL TEMP[7], CONST[17], IN[2]
 40: MAX TEMP[9].xy, TEMP[1].xyxx, IMM[0].xxxx
 41: CLAMP TEMP[9].z, TEMP[1].xxwx, -IMM[0].xxzx, IMM[0].xxzx
 42: LG2 TEMP[9].y, TEMP[9].yxxx
 43: MUL TEMP[9].y, TEMP[9].xzxx, TEMP[9].xyxx
 44: EX2 TEMP[9].y, TEMP[9].yxxx
 45: CMP TEMP[9].y, -TEMP[1].xxxx, TEMP[9].xyxx, IMM[0].xxxx
 46: MOV TEMP[8].yz, TEMP[9].xxyx
 47: MOV TEMP[8].xw, IMM[0].yxxy
 48: ADD TEMP[2], TEMP[6], TEMP[2]
 49: MAD TEMP[2], TEMP[8].yyyy, TEMP[7], TEMP[2]
 50: MAD_SAT OUT[1].xyz, TEMP[8].zzzz, CONST[18], TEMP[2]
 51: MOV OUT[2], IN[3]
 52: END



TGSI asm error: Unknown opcode [39 : 7] 
etnaviv_compiler: could not parse `tgsi/test1.tgsi'
