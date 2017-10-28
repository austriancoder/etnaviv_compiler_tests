VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL IN[3]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[20]
DCL OUT[2], GENERIC[21]
DCL OUT[3], GENERIC[22]
DCL OUT[4], GENERIC[23]
DCL CONST[0..18]
DCL TEMP[0..7], LOCAL
IMM[0] FLT32 {    0.0667,     0.0000,    -0.8000,     0.1000}
IMM[1] FLT32 {    3.0000,     2.0000,     0.0833,     0.5000}
IMM[2] FLT32 {   15.0000,     1.0000,     0.1250,    30.0000}
IMM[3] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[8]
  0: MUL TEMP[0].x, CONST[18].xxxx, IMM[0].xxxx
  1: ADD TEMP[1].x, -IN[0].yyyy, IMM[0].zzzz
  2: MAX TEMP[1].x, IMM[0].yyyy, TEMP[1].xxxx
  3: MUL_SAT TEMP[1].x, TEMP[1].xxxx, IMM[0].wwww
  4: MUL TEMP[2].x, IMM[1].yyyy, TEMP[1].xxxx
  5: ADD TEMP[2].x, IMM[1].xxxx, -TEMP[2].xxxx
  6: MUL TEMP[2].x, TEMP[1].xxxx, TEMP[2].xxxx
  7: MUL TEMP[1].x, TEMP[1].xxxx, TEMP[2].xxxx
  8: MUL TEMP[2].xyz, IN[2].xyzz, IMM[1].zzzz
  9: MUL TEMP[3].x, TEMP[0].xxxx, IMM[2].xxxx
 10: MAD TEMP[3].x, IN[0].yyyy, IMM[1].wwww, TEMP[3].xxxx
 11: SIN TEMP[3].x, TEMP[3].xxxx
 12: MUL TEMP[2].xyz, TEMP[2].xyzz, TEMP[3].xxxx
 13: ADD TEMP[3].x, IMM[2].yyyy, -TEMP[1].xxxx
 14: MAD TEMP[2].xyz, TEMP[2].xyzz, TEMP[3].xxxx, IN[0].xyzz
 15: MUL TEMP[3].xyz, IN[2].xyzz, IMM[2].zzzz
 16: MUL TEMP[0].x, TEMP[0].xxxx, IMM[2].wwww
 17: MAD TEMP[0].x, IN[0].yyyy, IMM[1].yyyy, TEMP[0].xxxx
 18: SIN TEMP[0].x, TEMP[0].xxxx
 19: MUL TEMP[0].xyz, TEMP[3].xyzz, TEMP[0].xxxx
 20: ADD TEMP[1].x, IMM[2].yyyy, -TEMP[1].xxxx
 21: MAD TEMP[0].xyz, TEMP[0].xyzz, TEMP[1].xxxx, TEMP[2].xyzz
 22: MUL TEMP[1], CONST[4], TEMP[0].xxxx
 23: MAD TEMP[1], CONST[5], TEMP[0].yyyy, TEMP[1]
 24: MAD TEMP[1], CONST[6], TEMP[0].zzzz, TEMP[1]
 25: ADD TEMP[1], TEMP[1], CONST[7]
 26: MUL TEMP[2], CONST[0], TEMP[0].xxxx
 27: MAD TEMP[2], CONST[1], TEMP[0].yyyy, TEMP[2]
 28: MAD TEMP[2], CONST[2], TEMP[0].zzzz, TEMP[2]
 29: ADD TEMP[2], TEMP[2], CONST[3]
 30: MUL TEMP[3], CONST[8], IN[1].xxxx
 31: MAD TEMP[3], CONST[9], IN[1].yyyy, TEMP[3]
 32: MAD TEMP[3], CONST[10], IN[1].zzzz, TEMP[3]
 33: ADD TEMP[3].xyz, TEMP[3], CONST[11]
 34: MUL TEMP[8].x, TEMP[3].xxxx, TEMP[3].xxxx
 35: MAD TEMP[8].x, TEMP[3].yyyy, TEMP[3].yyyy, TEMP[8].xxxx
 36: MAD TEMP[4].x, TEMP[3].zzzz, TEMP[3].zzzz, TEMP[8].xxxx
 37: RSQ TEMP[4].x, TEMP[4].xxxx
 38: MUL TEMP[3].xyz, TEMP[3].xyzz, TEMP[4].xxxx
 39: ADD TEMP[4].xyz, CONST[12].xyzz, -TEMP[2].xyzz
 40: ADD TEMP[5].xyz, CONST[12].xyzz, -TEMP[2].xyzz
 41: MUL TEMP[8].x, TEMP[3].xxxx, TEMP[3].xxxx
 42: MAD TEMP[8].x, TEMP[3].yyyy, TEMP[3].yyyy, TEMP[8].xxxx
 43: MAD TEMP[6].x, TEMP[3].zzzz, TEMP[3].zzzz, TEMP[8].xxxx
 44: RSQ TEMP[6].x, TEMP[6].xxxx
 45: MUL TEMP[6].xyz, TEMP[3].xyzz, TEMP[6].xxxx
 46: MUL TEMP[8].x, TEMP[4].xxxx, TEMP[4].xxxx
 47: MAD TEMP[8].x, TEMP[4].yyyy, TEMP[4].yyyy, TEMP[8].xxxx
 48: MAD TEMP[7].x, TEMP[4].zzzz, TEMP[4].zzzz, TEMP[8].xxxx
 49: RSQ TEMP[7].x, TEMP[7].xxxx
 50: MUL TEMP[4].xyz, TEMP[4].xyzz, TEMP[7].xxxx
 51: MUL TEMP[8].x, TEMP[6].xxxx, TEMP[4].xxxx
 52: MAD TEMP[8].x, TEMP[6].yyyy, TEMP[4].yyyy, TEMP[8].xxxx
 53: MAD TEMP[4].x, TEMP[6].zzzz, TEMP[4].zzzz, TEMP[8].xxxx
 54: MAX TEMP[4].x, TEMP[4].xxxx, IMM[0].yyyy
 55: MUL TEMP[8].x, TEMP[5].xxxx, TEMP[5].xxxx
 56: MAD TEMP[8].x, TEMP[5].yyyy, TEMP[5].yyyy, TEMP[8].xxxx
 57: MAD TEMP[5].x, TEMP[5].zzzz, TEMP[5].zzzz, TEMP[8].xxxx
 58: SQRT TEMP[5].x, TEMP[5].xxxx
 59: RCP TEMP[6].x, CONST[13].xxxx
 60: MUL TEMP[5].x, TEMP[5].xxxx, TEMP[6].xxxx
 61: ADD TEMP[5].x, IMM[2].yyyy, -TEMP[5].xxxx
 62: MAX TEMP[5].x, TEMP[5].xxxx, IMM[0].yyyy
 63: LG2 TEMP[8].x, TEMP[5].xxxx
 64: MUL TEMP[8].x, IMM[1].yyyy, TEMP[8].xxxx
 65: EX2 TEMP[5].x, TEMP[8].xxxx
 66: MUL TEMP[4].x, TEMP[4].xxxx, TEMP[5].xxxx
 67: MUL TEMP[4].x, TEMP[4].xxxx, CONST[14].wwww
 68: MUL TEMP[4].xyz, CONST[14].xyzz, TEMP[4].xxxx
 69: MUL TEMP[5], CONST[0], TEMP[0].xxxx
 70: MAD TEMP[5], CONST[1], TEMP[0].yyyy, TEMP[5]
 71: MAD TEMP[0], CONST[2], TEMP[0].zzzz, TEMP[5]
 72: ADD TEMP[0], TEMP[0], CONST[3]
 73: RCP TEMP[5].x, TEMP[0].wwww
 74: MUL TEMP[0].xyz, TEMP[0].xyzz, TEMP[5].xxxx
 75: MOV TEMP[5].xy, IN[3].xyxx
 76: MOV TEMP[5].zw, TEMP[4].yyxy
 77: MOV TE
TGSI asm error: Unknown opcode [107 : 7] 
etnaviv_compiler: could not parse `tgsi/glmark3.tgsi'
