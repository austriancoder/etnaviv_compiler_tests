VERT
DCL IN[0]
DCL IN[1]
DCL IN[2]
DCL IN[3]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[9]
DCL OUT[2], GENERIC[10]
DCL OUT[3], GENERIC[11]
DCL OUT[4], GENERIC[12]
DCL OUT[5], GENERIC[13]
DCL OUT[6], GENERIC[14]
DCL OUT[7], GENERIC[15]
DCL CONST[0..18]
DCL TEMP[0..11], LOCAL
IMM[0] FLT32 {    0.4000,     0.0000,     0.3333,     0.2500}
IMM[1] FLT32 {    0.5000,     2.0000,    -1.0000,     3.0000}
IMM[2] FLT32 {    0.0003,     0.2000,     1.2000,     1.7000}
IMM[3] FLT32 {    0.0167,     0.0000,     0.0000,     0.0000}
  0: MUL TEMP[0], CONST[12], IN[0].xxxx
  1: MAD TEMP[0], CONST[13], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[14], IN[0].zzzz, TEMP[0]
  3: ADD TEMP[0], TEMP[0], CONST[15]
  4: MUL TEMP[1].xyz, CONST[12].xyzz, IN[1].xxxx
  5: MAD TEMP[2].xyz, CONST[13].xyzz, IN[1].yyyy, TEMP[1].xyzz
  6: MAD TEMP[2].xyz, CONST[14].xyzz, IN[1].zzzz, TEMP[2].xyzz
  7: FRC TEMP[3], CONST[15]
  8: MOV_SAT TEMP[3], TEMP[3]
  9: MAX TEMP[3].xz, TEMP[3], IMM[0].xxxx
 10: ABS TEMP[4].x, CONST[18].xxxx
 11: ABS TEMP[5].x, CONST[18].yyyy
 12: ADD TEMP[4].x, TEMP[4].xxxx, TEMP[5].xxxx
 13: MOV TEMP[5].w, IMM[0].yyyy
 14: MAD TEMP[5].x, CONST[17].xxxx, TEMP[3].xxxx, TEMP[0].xxxx
 15: MUL TEMP[3].x, CONST[17].xxxx, TEMP[3].zzzz
 16: MAD TEMP[3].x, TEMP[3].xxxx, IMM[0].zzzz, CONST[15].xxxx
 17: MOV TEMP[5].y, TEMP[3].xxxx
 18: MUL TEMP[3].x, CONST[17].xxxx, TEMP[4].xxxx
 19: MAD TEMP[3].x, TEMP[3].xxxx, IMM[0].wwww, TEMP[0].zzzz
 20: MOV TEMP[5].z, TEMP[3].xxxx
 21: ADD TEMP[3], TEMP[5], IMM[1].xxxx
 22: FRC TEMP[3], TEMP[3]
 23: MAD TEMP[3], TEMP[3], IMM[1].yyyy, IMM[1].zzzz
 24: ABS TEMP[3], TEMP[3]
 25: MUL TEMP[5], TEMP[3], TEMP[3]
 26: MUL TEMP[3], IMM[1].yyyy, TEMP[3]
 27: ADD TEMP[3], IMM[1].wwww, -TEMP[3]
 28: MUL TEMP[3].xyz, TEMP[5], TEMP[3]
 29: MUL TEMP[5].x, IN[0].xxxx, IN[0].zzzz
 30: MUL TEMP[6].x, IN[0].yyyy, IMM[2].xxxx
 31: MUL TEMP[5].x, TEMP[5].xxxx, TEMP[6].xxxx
 32: MOV_SAT TEMP[5].x, TEMP[5].xxxx
 33: MIN TEMP[5].x, TEMP[5].xxxx, IMM[2].yyyy
 34: MUL TEMP[6].x, TEMP[3].zzzz, TEMP[5].xxxx
 35: MAX TEMP[4].x, TEMP[4].xxxx, IMM[2].zzzz
 36: MIN TEMP[4].x, TEMP[4].xxxx, IMM[2].wwww
 37: MAD TEMP[1].xyz, TEMP[6].xxxx, TEMP[4].xxxx, TEMP[0].xyzz
 38: MUL TEMP[4].x, IN[0].yyyy, IMM[3].xxxx
 39: MOV_SAT TEMP[4].x, TEMP[4].xxxx
 40: MIN TEMP[4].x, TEMP[4].xxxx, IMM[0].wwww
 41: MUL TEMP[4].x, TEMP[3].yyyy, TEMP[4].xxxx
 42: MUL TEMP[3].x, TEMP[3].xxxx, TEMP[5].xxxx
 43: MAD TEMP[3].xy, TEMP[4].xxxx, CONST[18].xyyy, TEMP[3].xxxx
 44: ADD TEMP[3].xy, TEMP[1].xzzz, TEMP[3].xyyy
 45: MOV TEMP[1].xz, TEMP[3].xxyx
 46: MUL TEMP[4], CONST[0], TEMP[3].xxxx
 47: MAD TEMP[4], CONST[1], TEMP[1].yyyy, TEMP[4]
 48: MAD TEMP[4], CONST[2], TEMP[3].yyyy, TEMP[4]
 49: MAD TEMP[4], CONST[3], TEMP[0].wwww, TEMP[4]
 50: MOV TEMP[5].xyz, TEMP[2].xyzx
 51: MUL TEMP[6].xyz, CONST[12].xyzz, IN[2].xxxx
 52: MAD TEMP[6].xyz, CONST[13].xyzz, IN[2].yyyy, TEMP[6].xyzz
 53: MAD TEMP[6].xyz, CONST[14].xyzz, IN[2].zzzz, TEMP[6].xyzz
 54: MOV TEMP[7].xyz, TEMP[6].xyzx
 55: MUL TEMP[8].xyz, TEMP[2].zxyy, TEMP[6].yzxx
 56: MAD TEMP[6].xyz, TEMP[2].yzxx, TEMP[6].zxyy, -TEMP[8].xyzz
 57: MUL TEMP[6].xyz, TEMP[6].xyzz, IN[2].wwww
 58: MOV TEMP[5].w, TEMP[6].xxxx
 59: MOV TEMP[7].w, TEMP[6].yyyy
 60: MOV TEMP[6].w, TEMP[6].zzzz
 61: ADD TEMP[8].xyz, CONST[4].xyzz, -TEMP[1].xyzz
 62: MOV TEMP[9].xyz, -CONST[5].xyzx
 63: DP3 TEMP[10].x, TEMP[8].xyzz, TEMP[8].xyzz
 64: RSQ TEMP[10].x, TEMP[10].xxxx
 65: MAD TEMP[10].xyz, TEMP[8].xyzz, TEMP[10].xxxx, TEMP[9].xyzz
 66: DP3 TEMP[11].x, TEMP[10].xyzz, TEMP[10].xyzz
 67: RSQ TEMP[11].x, TEMP[11].xxxx
 68: MUL TEMP[10].xyz, TEMP[10].xyzz, TEMP[11].xxxx
 69: DP3 TEMP[2].x, TEMP[2].xyzz, TEMP[9].xyzz
 70: MAX TEMP[2].x, IMM[0].yyyy, TEMP[2].xxxx
 71: MUL TEMP[6].xyz, TEMP[2].xxxx, CONST[6].xyzz
 72: MUL TEMP[2], CONST[8], TEMP[3].xxxx
 73: MAD TEMP[1], CONST[9], TEMP[1].yyyy, TEMP[2]
 74: MAD TEMP[1], CONST[10], TEMP[3].yyyy, TEMP[1]
 75: MAD TEMP[0], CONST[11], TEMP[0].wwww, TEMP[1]
 76: MOV TEMP[1].zw, TEMP[0].wwzw
 77: MUL TEMP[1].xy, TEMP[0].xyyy, CONST[16].xyyy
 78: MOV TEMP[0].xyz, TEMP[8].xyzx
 79: MOV TEMP[0].w, T
TGSI asm error: Unknown opcode [30 : 7] 
etnaviv_compiler: could not parse `tgsi/0ad-cycladic-archipelago/0ad-cycladic-archipelago-65.tgsi'
