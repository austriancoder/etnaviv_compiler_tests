FRAG
PROPERTY FS_COORD_PIXEL_CENTER INTEGER
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], POSITION, LINEAR
DCL IN[1], GENERIC[9], PERSPECTIVE
DCL IN[2], GENERIC[10], PERSPECTIVE
DCL IN[3], GENERIC[11], PERSPECTIVE
DCL IN[4], GENERIC[12], PERSPECTIVE
DCL IN[5], GENERIC[13], PERSPECTIVE
DCL IN[6], GENERIC[14], PERSPECTIVE
DCL IN[7], GENERIC[15], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL SAMP[4]
DCL SAMP[5]
DCL CONST[12..13]
DCL CONST[6..11]
DCL TEMP[0]
DCL TEMP[1..11], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     1.0000,    -0.4679}
IMM[1] FLT32 {    0.0312,     2.0000,    -1.0000,    -0.0005}
IMM[2] FLT32 {   -0.5000,     1.0000,     1.4427,     0.1111}
IMM[3] FLT32 {    0.0300,     0.0000,     0.0000,     0.0000}
  0: ADD TEMP[0], IN[0], IMM[0].xxyy
  1: MAD TEMP[0].y, TEMP[0], CONST[13].xxxx, CONST[13].yyyy
  2: MOV TEMP[1].x, IN[4].wwww
  3: MOV TEMP[1].yz, IN[5].yxyy
  4: MOV TEMP[2].xy, IN[5].zwzz
  5: MOV TEMP[2].z, IN[6].xxxx
  6: MOV TEMP[3].xy, IN[3].xyyy
  7: TEX TEMP[3].w, TEMP[3], SAMP[1], 2D
  8: ADD TEMP[3].x, IMM[0].zzzz, -TEMP[3].wwww
  9: MOV TEMP[3].w, TEMP[3].xxxx
 10: DP3 TEMP[4].x, IN[6].yzww, IN[6].yzww
 11: RSQ TEMP[5].x, TEMP[4].xxxx
 12: MUL TEMP[5].xyz, IN[6].yzww, TEMP[5].xxxx
 13: ABS TEMP[5].xyz, TEMP[5].xyzz
 14: ADD TEMP[5].xyz, TEMP[5].xyzz, IMM[0].wwww
 15: MAX TEMP[5].xyz, TEMP[5].xyzz, IMM[0].yyyy
 16: ADD TEMP[6].x, TEMP[5].xxxx, TEMP[5].yyyy
 17: ADD TEMP[6].x, TEMP[6].xxxx, TEMP[5].zzzz
 18: RCP TEMP[6].xyz, TEMP[6].xxxx
 19: MUL TEMP[5].xyz, TEMP[5].xyzz, TEMP[6].xyzz
 20: MUL TEMP[6].xyz, IN[7].xyzz, IMM[1].xxxx
 21: MOV TEMP[7].xy, TEMP[6].yxxx
 22: TEX TEMP[7], TEMP[7], SAMP[0], 2D
 23: MOV TEMP[8].xy, TEMP[6].zxxx
 24: TEX TEMP[8], TEMP[8], SAMP[0], 2D
 25: MOV TEMP[9].xy, TEMP[6].yzzz
 26: TEX TEMP[9], TEMP[9], SAMP[0], 2D
 27: MUL TEMP[9], TEMP[9], TEMP[5].xxxx
 28: MAD TEMP[8], TEMP[8], TEMP[5].yyyy, TEMP[9]
 29: MAD TEMP[5].xyz, TEMP[7], TEMP[5].zzzz, TEMP[8]
 30: RSQ TEMP[7].x, TEMP[4].xxxx
 31: MUL TEMP[7].xyz, IN[6].yzww, TEMP[7].xxxx
 32: ABS TEMP[7].xyz, TEMP[7].xyzz
 33: ADD TEMP[7].xyz, TEMP[7].xyzz, IMM[0].wwww
 34: MAX TEMP[7].xyz, TEMP[7].xyzz, IMM[0].yyyy
 35: ADD TEMP[8].x, TEMP[7].xxxx, TEMP[7].yyyy
 36: ADD TEMP[8].x, TEMP[8].xxxx, TEMP[7].zzzz
 37: RCP TEMP[8].xyz, TEMP[8].xxxx
 38: MUL TEMP[7].xyz, TEMP[7].xyzz, TEMP[8].xyzz
 39: MOV TEMP[8].xy, TEMP[6].yzzz
 40: TEX TEMP[8], TEMP[8], SAMP[3], 2D
 41: MOV TEMP[9].xzw, TEMP[8].xxzw
 42: ADD TEMP[8].x, IMM[0].zzzz, -TEMP[8].yyyy
 43: MOV TEMP[9].y, TEMP[8].xxxx
 44: MOV TEMP[8].xy, TEMP[6].zxxx
 45: TEX TEMP[8], TEMP[8], SAMP[3], 2D
 46: MOV TEMP[10].xzw, TEMP[8].yyzw
 47: ADD TEMP[8].x, IMM[0].zzzz, -TEMP[8].xxxx
 48: MOV TEMP[10].y, TEMP[8].xxxx
 49: MOV TEMP[8].xy, TEMP[6].yxxx
 50: TEX TEMP[8], TEMP[8], SAMP[3], 2D
 51: MOV TEMP[11].xzw, TEMP[8].yyzw
 52: ADD TEMP[8].x, IMM[0].zzzz, -TEMP[8].xxxx
 53: MOV TEMP[11].y, TEMP[8].xxxx
 54: MUL TEMP[8], TEMP[9], TEMP[7].xxxx
 55: MAD TEMP[8], TEMP[10], TEMP[7].yyyy, TEMP[8]
 56: MAD TEMP[7].xyz, TEMP[11], TEMP[7].zzzz, TEMP[8]
 57: MAD TEMP[7].xyz, TEMP[7].xyzz, IMM[1].yyyy, IMM[1].zzzz
 58: MUL TEMP[8].xyz, IN[4].xyzz, -IN[2].wwww
 59: MUL TEMP[9].xyz, IN[2].xyzz, TEMP[7].xxxx
 60: MAD TEMP[8].xyz, TEMP[8].xyzz, TEMP[7].yyyy, TEMP[9].xyzz
 61: MAD TEMP[7].xyz, IN[6].yzww, TEMP[7].zzzz, TEMP[8].xyzz
 62: DP3 TEMP[8].x, TEMP[7].xyzz, TEMP[7].xyzz
 63: RSQ TEMP[8].x, TEMP[8].xxxx
 64: MUL TEMP[7].xyz, TEMP[7].xyzz, TEMP[8].xxxx
 65: RSQ TEMP[4].x, TEMP[4].xxxx
 66: MUL TEMP[4].xyz, IN[6].yzww, TEMP[4].xxxx
 67: ABS TEMP[4].xyz, TEMP[4].xyzz
 68: ADD TEMP[4].xyz, TEMP[4].xyzz, IMM[0].wwww
 69: MAX TEMP[4].xyz, TEMP[4].xyzz, IMM[0].yyyy
 70: ADD TEMP[8].x, TEMP[4].xxxx, TEMP[4].yyyy
 71: ADD TEMP[8].x, TEMP[8].xxxx, TEMP[4].zzzz
 72: RCP TEMP[8].xyz, TEMP[8].xxxx
 73: MUL TEMP[4].xyz, TEMP[4].xyzz, TEMP[8].xyzz
 74: MOV TEMP[8].xy, TEMP[6].yxxx
 75: TEX TEMP[8], TEMP[8], SAMP[4], 2D
 76: MOV TEMP[9].xy, TEMP[6].zxxx
 77: TEX TEMP[9], TEMP[9], SAMP[4], 2D
 78: MOV TEMP[6].xy, TEMP[6].yzzz
 79: TEX TEMP[6], TEMP[6], SAMP[4]
TGSI asm error: Unknown opcode [40 : 7] 
etnaviv_compiler: could not parse `tgsi/0ad-alpine-valley/0ad-55.tgsi'
