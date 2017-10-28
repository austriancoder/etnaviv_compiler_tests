VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL CONST[0..17]
DCL TEMP[0..5], LOCAL
IMM[0] FLT32 {    0.4000,     0.0000,     0.3333,     0.2500}
IMM[1] FLT32 {    0.5000,     2.0000,    -1.0000,     3.0000}
IMM[2] FLT32 {    0.0003,     0.2000,     1.2000,     1.7000}
IMM[3] FLT32 {    0.0167,     0.0000,     0.0000,     0.0000}
  0: MUL TEMP[0], CONST[11], IN[0].xxxx
  1: MAD TEMP[0], CONST[12], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[13], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[14]
  4: FRC TEMP[1], CONST[14]
  5: MOV_SAT TEMP[2], TEMP[1]
  6: MAX TEMP[2].xz, TEMP[2], IMM[0].xxxx
  7: ABS TEMP[3].x, CONST[17].xxxx
  8: ABS TEMP[4].x, CONST[17].yyyy
  9: ADD TEMP[3].x, TEMP[3].xxxx, TEMP[4].xxxx
 10: MOV TEMP[4].w, IMM[0].yyyy
 11: MAD TEMP[4].x, CONST[16].xxxx, TEMP[2].xxxx, TEMP[0].xxxx
 12: MUL TEMP[2].x, CONST[16].xxxx, TEMP[2].zzzz
 13: MAD TEMP[2].x, TEMP[2].xxxx, IMM[0].zzzz, CONST[14].xxxx
 14: MOV TEMP[4].y, TEMP[2].xxxx
 15: MUL TEMP[2].x, CONST[16].xxxx, TEMP[3].xxxx
 16: MAD TEMP[2].x, TEMP[2].xxxx, IMM[0].wwww, TEMP[0].zzzz
 17: MOV TEMP[4].z, TEMP[2].xxxx
 18: ADD TEMP[2], TEMP[4], IMM[1].xxxx
 19: FRC TEMP[2], TEMP[2]
 20: MAD TEMP[2], TEMP[2], IMM[1].yyyy, IMM[1].zzzz
 21: ABS TEMP[2], TEMP[2]
 22: MUL TEMP[4], TEMP[2], TEMP[2]
 23: MUL TEMP[2], IMM[1].yyyy, TEMP[2]
 24: ADD TEMP[2], IMM[1].wwww, -TEMP[2]
 25: MUL TEMP[2].xyz, TEMP[4], TEMP[2]
 26: MUL TEMP[4].x, IN[0].xxxx, IN[0].zzzz
 27: MUL TEMP[5].x, IN[0].yyyy, IMM[2].xxxx
 28: MUL TEMP[4].x, TEMP[4].xxxx, TEMP[5].xxxx
 29: MOV_SAT TEMP[4].x, TEMP[4].xxxx
 30: MIN TEMP[4].x, TEMP[4].xxxx, IMM[2].yyyy
 31: MUL TEMP[5].x, TEMP[2].zzzz, TEMP[4].xxxx
 32: MAX TEMP[3].x, TEMP[3].xxxx, IMM[2].zzzz
 33: MIN TEMP[3].x, TEMP[3].xxxx, IMM[2].wwww
 34: MAD TEMP[1].xyz, TEMP[5].xxxx, TEMP[3].xxxx, TEMP[0].xyzz
 35: MUL TEMP[3].x, IN[0].yyyy, IMM[3].xxxx
 36: MOV_SAT TEMP[3].x, TEMP[3].xxxx
 37: MIN TEMP[3].x, TEMP[3].xxxx, IMM[0].wwww
 38: MUL TEMP[3].x, TEMP[2].yyyy, TEMP[3].xxxx
 39: MUL TEMP[2].x, TEMP[2].xxxx, TEMP[4].xxxx
 40: MAD TEMP[2].xy, TEMP[3].xxxx, CONST[17].xyyy, TEMP[2].xxxx
 41: ADD TEMP[2].xy, TEMP[1].xzzz, TEMP[2].xyyy
 42: MUL TEMP[3], CONST[0], TEMP[2].xxxx
 43: MAD TEMP[3], CONST[1], TEMP[1].yyyy, TEMP[3]
 44: MAD TEMP[3], CONST[2], TEMP[2].yyyy, TEMP[3]
 45: MAD TEMP[3], CONST[3], TEMP[0].wwww, TEMP[3]
 46: MUL TEMP[4].xyz, CONST[11].xyzz, IN[1].xxxx
 47: MAD TEMP[4].xyz, CONST[12].xyzz, IN[1].yyyy, TEMP[4].xyzz
 48: MAD TEMP[4].xyz, CONST[13].xyzz, IN[1].zzzz, TEMP[4].xyzz
 49: DP3 TEMP[4].x, TEMP[4].xyzz, -CONST[4].xyzz
 50: MAX TEMP[4].x, IMM[0].yyyy, TEMP[4].xxxx
 51: MUL TEMP[4].xyz, TEMP[4].xxxx, CONST[5].xyzz
 52: MUL TEMP[5], CONST[7], TEMP[2].xxxx
 53: MAD TEMP[1], CONST[8], TEMP[1].yyyy, TEMP[5]
 54: MAD TEMP[1], CONST[9], TEMP[2].yyyy, TEMP[1]
 55: MAD TEMP[0], CONST[10], TEMP[0].wwww, TEMP[1]
 56: MOV TEMP[1].zw, TEMP[0].wwzw
 57: MUL TEMP[1].xy, TEMP[0].xyyy, CONST[15].xyyy
 58: MAD TEMP[0].xy, TEMP[2].xyyy, CONST[6].xxxx, CONST[6].yyyy
 59: MOV TEMP[0].zw, IN[2].yyxy
 60: MOV OUT[2], TEMP[1]
 61: MOV OUT[1], TEMP[4]
 62: MOV OUT[3], TEMP[0]
 63: MOV OUT[0], TEMP[3]
 64: END


TGSI asm error: Unknown opcode [22 : 7] 
etnaviv_compiler: could not parse `tgsi/0ad-cycladic-archipelago/0ad-cycladic-archipelago-75.tgsi'
