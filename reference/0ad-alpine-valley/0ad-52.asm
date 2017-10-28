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
DCL CONST[11..12]
DCL CONST[5..10]
DCL TEMP[0]
DCL TEMP[1..11], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     1.0000,    -0.4679}
IMM[1] FLT32 {    0.0312,     2.0000,    -1.0000,    -0.0005}
IMM[2] FLT32 {   -0.5000,     1.0000,     1.4427,     0.1111}
IMM[3] FLT32 {    0.0300,     0.0000,     0.0000,     0.0000}
  0: ADD TEMP[0], IN[0], IMM[0].xxyy
  1: MAD TEMP[0].y, TEMP[0], CONST[12].xxxx, CONST[12].yyyy
  2: MOV TEMP[1].xy, IN[3].zwzz
  3: MOV TEMP[1].z, IN[4].xxxx
  4: MOV TEMP[2].x, IN[5].wwww
  5: MOV TEMP[2].yz, IN[6].yxyy
  6: MOV TEMP[3].xy, IN[6].zwzz
  7: MOV TEMP[3].z, IN[7].xxxx
  8: MOV TEMP[4].w, IMM[0].zzzz
  9: DP3 TEMP[5].x, TEMP[2].xyzz, TEMP[2].xyzz
 10: RSQ TEMP[6].x, TEMP[5].xxxx
 11: MUL TEMP[6].xyz, TEMP[2].xyzz, TEMP[6].xxxx
 12: ABS TEMP[6].xyz, TEMP[6].xyzz
 13: ADD TEMP[6].xyz, TEMP[6].xyzz, IMM[0].wwww
 14: MAX TEMP[6].xyz, TEMP[6].xyzz, IMM[0].yyyy
 15: ADD TEMP[7].x, TEMP[6].xxxx, TEMP[6].yyyy
 16: ADD TEMP[7].x, TEMP[7].xxxx, TEMP[6].zzzz
 17: RCP TEMP[7].xyz, TEMP[7].xxxx
 18: MUL TEMP[6].xyz, TEMP[6].xyzz, TEMP[7].xyzz
 19: MUL TEMP[3].xyz, TEMP[3].xyzz, IMM[1].xxxx
 20: MOV TEMP[7].xy, TEMP[3].yxxx
 21: TEX TEMP[7], TEMP[7], SAMP[0], 2D
 22: MOV TEMP[8].xy, TEMP[3].zxxx
 23: TEX TEMP[8], TEMP[8], SAMP[0], 2D
 24: MOV TEMP[9].xy, TEMP[3].yzzz
 25: TEX TEMP[9], TEMP[9], SAMP[0], 2D
 26: MUL TEMP[9], TEMP[9], TEMP[6].xxxx
 27: MAD TEMP[8], TEMP[8], TEMP[6].yyyy, TEMP[9]
 28: MAD TEMP[6].xyz, TEMP[7], TEMP[6].zzzz, TEMP[8]
 29: RSQ TEMP[7].x, TEMP[5].xxxx
 30: MUL TEMP[7].xyz, TEMP[2].xyzz, TEMP[7].xxxx
 31: ABS TEMP[7].xyz, TEMP[7].xyzz
 32: ADD TEMP[7].xyz, TEMP[7].xyzz, IMM[0].wwww
 33: MAX TEMP[7].xyz, TEMP[7].xyzz, IMM[0].yyyy
 34: ADD TEMP[8].x, TEMP[7].xxxx, TEMP[7].yyyy
 35: ADD TEMP[8].x, TEMP[8].xxxx, TEMP[7].zzzz
 36: RCP TEMP[8].xyz, TEMP[8].xxxx
 37: MUL TEMP[7].xyz, TEMP[7].xyzz, TEMP[8].xyzz
 38: MOV TEMP[8].xy, TEMP[3].yzzz
 39: TEX TEMP[8], TEMP[8], SAMP[2], 2D
 40: MOV TEMP[9].xzw, TEMP[8].xxzw
 41: ADD TEMP[8].x, IMM[0].zzzz, -TEMP[8].yyyy
 42: MOV TEMP[9].y, TEMP[8].xxxx
 43: MOV TEMP[8].xy, TEMP[3].zxxx
 44: TEX TEMP[8], TEMP[8], SAMP[2], 2D
 45: MOV TEMP[10].xzw, TEMP[8].yyzw
 46: ADD TEMP[8].x, IMM[0].zzzz, -TEMP[8].xxxx
 47: MOV TEMP[10].y, TEMP[8].xxxx
 48: MOV TEMP[8].xy, TEMP[3].yxxx
 49: TEX TEMP[8], TEMP[8], SAMP[2], 2D
 50: MOV TEMP[11].xzw, TEMP[8].yyzw
 51: ADD TEMP[8].x, IMM[0].zzzz, -TEMP[8].xxxx
 52: MOV TEMP[11].y, TEMP[8].xxxx
 53: MUL TEMP[8], TEMP[9], TEMP[7].xxxx
 54: MAD TEMP[8], TEMP[10], TEMP[7].yyyy, TEMP[8]
 55: MAD TEMP[7].xyz, TEMP[11], TEMP[7].zzzz, TEMP[8]
 56: MAD TEMP[7].xyz, TEMP[7].xyzz, IMM[1].yyyy, IMM[1].zzzz
 57: MUL TEMP[1].xyz, TEMP[1].xyzz, -IN[2].wwww
 58: MUL TEMP[8].xyz, IN[2].xyzz, TEMP[7].xxxx
 59: MAD TEMP[1].xyz, TEMP[1].xyzz, TEMP[7].yyyy, TEMP[8].xyzz
 60: MAD TEMP[1].xyz, TEMP[2].xyzz, TEMP[7].zzzz, TEMP[1].xyzz
 61: DP3 TEMP[7].x, TEMP[1].xyzz, TEMP[1].xyzz
 62: RSQ TEMP[7].x, TEMP[7].xxxx
 63: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[7].xxxx
 64: RSQ TEMP[5].x, TEMP[5].xxxx
 65: MUL TEMP[2].xyz, TEMP[2].xyzz, TEMP[5].xxxx
 66: ABS TEMP[2].xyz, TEMP[2].xyzz
 67: ADD TEMP[2].xyz, TEMP[2].xyzz, IMM[0].wwww
 68: MAX TEMP[2].xyz, TEMP[2].xyzz, IMM[0].yyyy
 69: ADD TEMP[5].x, TEMP[2].xxxx, TEMP[2].yyyy
 70: ADD TEMP[5].x, TEMP[5].xxxx, TEMP[2].zzzz
 71: RCP TEMP[5].xyz, TEMP[5].xxxx
 72: MUL TEMP[2].xyz, TEMP[2].xyzz, TEMP[5].xyzz
 73: MOV TEMP[5].xy, TEMP[3].yxxx
 74: TEX TEMP[5], TEMP[5], SAMP[3], 2D
 75: MOV TEMP[7].xy, TEMP[3].zxxx
 76: TEX TEMP[7], TEMP[7], SAMP[3], 2D
 77: MOV TEMP[3].xy, TEMP[3].yzzz
 78: TEX TEMP[3], TEMP[3], SAMP[3], 2D
 79: MUL TEMP[3], TEMP[3], TEMP[2].xxxx
 80: MAD 
TGSI asm error: Unknown opcode [38 : 7] 
etnaviv_compiler: could not parse `tgsi/0ad-alpine-valley/0ad-52.tgsi'
