FRAG
PROPERTY FS_COORD_PIXEL_CENTER INTEGER
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], POSITION, LINEAR
DCL IN[1], GENERIC[9], PERSPECTIVE
DCL IN[2], GENERIC[10], PERSPECTIVE
DCL IN[3], GENERIC[11], PERSPECTIVE
DCL IN[4], GENERIC[12], PERSPECTIVE
DCL IN[5], GENERIC[13], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL CONST[7..8]
DCL CONST[4..6]
DCL TEMP[0]
DCL TEMP[1..7], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     1.0000,    -0.4679}
IMM[1] FLT32 {    0.0312,    -0.0005,    -0.5000,     2.0000}
IMM[2] FLT32 {    1.0000,    -0.5000,     1.4427,     0.1111}
IMM[3] FLT32 {    0.0300,     0.0000,     0.0000,     0.0000}
  0: ADD TEMP[0], IN[0], IMM[0].xxyy
  1: MAD TEMP[0].y, TEMP[0], CONST[8].xxxx, CONST[8].yyyy
  2: MOV TEMP[1].x, IN[3].wwww
  3: MOV TEMP[1].yz, IN[4].yxyy
  4: MOV TEMP[2].xy, IN[4].zwzz
  5: MOV TEMP[2].z, IN[5].xxxx
  6: MOV TEMP[3].xy, IN[2].xyyy
  7: TEX TEMP[3].w, TEMP[3], SAMP[1], 2D
  8: ADD TEMP[3].x, IMM[0].zzzz, -TEMP[3].wwww
  9: MOV TEMP[3].w, TEMP[3].xxxx
 10: DP3 TEMP[4].x, TEMP[1].xyzz, TEMP[1].xyzz
 11: RSQ TEMP[4].x, TEMP[4].xxxx
 12: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[4].xxxx
 13: ABS TEMP[1].xyz, TEMP[1].xyzz
 14: ADD TEMP[1].xyz, TEMP[1].xyzz, IMM[0].wwww
 15: MAX TEMP[1].xyz, TEMP[1].xyzz, IMM[0].yyyy
 16: ADD TEMP[4].x, TEMP[1].xxxx, TEMP[1].yyyy
 17: ADD TEMP[4].x, TEMP[4].xxxx, TEMP[1].zzzz
 18: RCP TEMP[4].xyz, TEMP[4].xxxx
 19: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[4].xyzz
 20: MUL TEMP[2].xyz, TEMP[2].xyzz, IMM[1].xxxx
 21: MOV TEMP[4].xy, TEMP[2].yxxx
 22: TEX TEMP[4], TEMP[4], SAMP[0], 2D
 23: MOV TEMP[5].xy, TEMP[2].zxxx
 24: TEX TEMP[5], TEMP[5], SAMP[0], 2D
 25: MOV TEMP[2].xy, TEMP[2].yzzz
 26: TEX TEMP[2], TEMP[2], SAMP[0], 2D
 27: MUL TEMP[2], TEMP[2], TEMP[1].xxxx
 28: MAD TEMP[2], TEMP[5], TEMP[1].yyyy, TEMP[2]
 29: MAD TEMP[1].xyz, TEMP[4], TEMP[1].zzzz, TEMP[2]
 30: ADD TEMP[2].x, IN[1].zzzz, IMM[1].yyyy
 31: ADD TEMP[4].xy, IN[1].xyyy, IMM[1].zzzz
 32: FRC TEMP[4].xy, TEMP[4].xyyy
 33: ADD TEMP[5].xy, TEMP[4].xyyy, IMM[0].zzzz
 34: ADD TEMP[6].xy, IMM[1].wwww, -TEMP[4].xyyy
 35: MOV TEMP[5].zw, TEMP[6].yyxy
 36: MUL TEMP[4].xy, IMM[0].xxxx, TEMP[4].xyyy
 37: ADD TEMP[4].xy, IN[1].xyyy, -TEMP[4].xyyy
 38: ADD TEMP[4], IMM[2].xxyy, TEMP[4].xyxy
 39: MUL TEMP[4], TEMP[4], CONST[4].zwzw
 40: MOV TEMP[6].xy, TEMP[4].zwww
 41: MOV TEMP[6].z, TEMP[2].xxxx
 42: TEX TEMP[6].x, TEMP[6], SAMP[3], SHADOW2D
 43: MOV TEMP[6].x, TEMP[6].xxxx
 44: MOV TEMP[7].xy, TEMP[4].xwww
 45: MOV TEMP[7].z, TEMP[2].xxxx
 46: TEX TEMP[7].x, TEMP[7], SAMP[3], SHADOW2D
 47: MOV TEMP[6].y, TEMP[7].xxxx
 48: MOV TEMP[7].xy, TEMP[4].zyyy
 49: MOV TEMP[7].z, TEMP[2].xxxx
 50: TEX TEMP[7].x, TEMP[7], SAMP[3], SHADOW2D
 51: MOV TEMP[6].z, TEMP[7].xxxx
 52: MOV TEMP[4].xy, TEMP[4].xyyy
 53: MOV TEMP[4].z, TEMP[2].xxxx
 54: TEX TEMP[2].x, TEMP[4], SAMP[3], SHADOW2D
 55: MOV TEMP[6].w, TEMP[2].xxxx
 56: RCP TEMP[2].x, TEMP[0].wwww
 57: MUL TEMP[2].x, TEMP[0].zzzz, TEMP[2].xxxx
 58: MUL TEMP[4].x, -CONST[7].xxxx, CONST[7].xxxx
 59: MUL TEMP[4].x, TEMP[4].xxxx, TEMP[2].xxxx
 60: MUL TEMP[2].x, TEMP[4].xxxx, TEMP[2].xxxx
 61: MUL TEMP[2].x, TEMP[2].xxxx, IMM[2].zzzz
 62: EX2 TEMP[2].x, TEMP[2].xxxx
 63: LRP TEMP[2].x, TEMP[2].xxxx, IMM[0].zzzz, CONST[7].yyyy
 64: MOV_SAT TEMP[2].x, TEMP[2].xxxx
 65: MUL TEMP[4].xyz, TEMP[1].xyzz, IN[3].xyzz
 66: MUL TEMP[5], TEMP[5].zxzx, TEMP[5].wwyy
 67: DP4 TEMP[5].x, TEMP[5], TEMP[6]
 68: MUL TEMP[5].x, IMM[2].wwww, TEMP[5].xxxx
 69: MUL TEMP[4].xyz, TEMP[4].xyzz, TEMP[5].xxxx
 70: MAD TEMP[1].xyz, TEMP[1].xyzz, CONST[5].xyzz, TEMP[4].xyzz
 71: LRP TEMP[1].xyz, TEMP[2].xxxx, TEMP[1].xyzz, CONST[6].xyzz
 72: MOV TEMP[2].xy, IN[2].zwww
 73: TEX TEMP[2].w, TEMP[2], SAMP[2], 2D
 74: SLT TEMP[4].x, TEMP[2].wwww, IMM[3].xxxx
 75: IF TEMP[4].xxxx :2
 76:   MOV TEMP[4].x, IMM[0].yyyy
 77: ELSE :2
 78:   MOV TEMP[4].x, TEMP[2].wwww
 79: ENDIF
 80: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[4].xxxx
 81: MOV TEMP[3].xyz, TEMP[1].xyzx
 82: MOV OUT[0], TEMP[3]
 83: END


TGSI asm error: Unknown opcode [36 : 7] 
etnaviv_compiler: could not parse `tgsi/0ad-alpine-valley/0ad-58.tgsi'
