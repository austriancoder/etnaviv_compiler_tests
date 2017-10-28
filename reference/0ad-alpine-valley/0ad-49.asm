FRAG
PROPERTY FS_COORD_PIXEL_CENTER INTEGER
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], POSITION, LINEAR
DCL IN[1], GENERIC[9], PERSPECTIVE
DCL IN[2], GENERIC[10], PERSPECTIVE
DCL IN[3], GENERIC[11], PERSPECTIVE
DCL IN[4], GENERIC[12], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL CONST[6..7]
DCL CONST[3..5]
DCL TEMP[0]
DCL TEMP[1..8], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,     1.0000,    -0.4679}
IMM[1] FLT32 {    0.0312,    -0.0005,    -0.5000,     2.0000}
IMM[2] FLT32 {    1.0000,    -0.5000,     1.4427,     0.1111}
IMM[3] FLT32 {    0.0300,     0.0000,     0.0000,     0.0000}
  0: ADD TEMP[0], IN[0], IMM[0].xxyy
  1: MAD TEMP[0].y, TEMP[0], CONST[7].xxxx, CONST[7].yyyy
  2: MOV TEMP[1].xy, IN[2].zwzz
  3: MOV TEMP[1].z, IN[3].xxxx
  4: MOV TEMP[2].w, IMM[0].zzzz
  5: DP3 TEMP[3].x, IN[3].yzww, IN[3].yzww
  6: RSQ TEMP[3].x, TEMP[3].xxxx
  7: MUL TEMP[3].xyz, IN[3].yzww, TEMP[3].xxxx
  8: ABS TEMP[3].xyz, TEMP[3].xyzz
  9: ADD TEMP[3].xyz, TEMP[3].xyzz, IMM[0].wwww
 10: MAX TEMP[3].xyz, TEMP[3].xyzz, IMM[0].yyyy
 11: ADD TEMP[4].x, TEMP[3].xxxx, TEMP[3].yyyy
 12: ADD TEMP[4].x, TEMP[4].xxxx, TEMP[3].zzzz
 13: RCP TEMP[4].xyz, TEMP[4].xxxx
 14: MUL TEMP[3].xyz, TEMP[3].xyzz, TEMP[4].xyzz
 15: MUL TEMP[4].xyz, IN[4].xyzz, IMM[1].xxxx
 16: MOV TEMP[5].xy, TEMP[4].yxxx
 17: TEX TEMP[5], TEMP[5], SAMP[0], 2D
 18: MOV TEMP[6].xy, TEMP[4].zxxx
 19: TEX TEMP[6], TEMP[6], SAMP[0], 2D
 20: MOV TEMP[4].xy, TEMP[4].yzzz
 21: TEX TEMP[4], TEMP[4], SAMP[0], 2D
 22: MUL TEMP[4], TEMP[4], TEMP[3].xxxx
 23: MAD TEMP[4], TEMP[6], TEMP[3].yyyy, TEMP[4]
 24: MAD TEMP[3].xyz, TEMP[5], TEMP[3].zzzz, TEMP[4]
 25: ADD TEMP[4].x, IN[1].zzzz, IMM[1].yyyy
 26: ADD TEMP[5].xy, IN[1].xyyy, IMM[1].zzzz
 27: FRC TEMP[5].xy, TEMP[5].xyyy
 28: ADD TEMP[6].xy, TEMP[5].xyyy, IMM[0].zzzz
 29: ADD TEMP[7].xy, IMM[1].wwww, -TEMP[5].xyyy
 30: MOV TEMP[6].zw, TEMP[7].yyxy
 31: MUL TEMP[5].xy, IMM[0].xxxx, TEMP[5].xyyy
 32: ADD TEMP[5].xy, IN[1].xyyy, -TEMP[5].xyyy
 33: ADD TEMP[5], IMM[2].xxyy, TEMP[5].xyxy
 34: MUL TEMP[5], TEMP[5], CONST[3].zwzw
 35: MOV TEMP[7].xy, TEMP[5].zwww
 36: MOV TEMP[7].z, TEMP[4].xxxx
 37: TEX TEMP[7].x, TEMP[7], SAMP[2], SHADOW2D
 38: MOV TEMP[7].x, TEMP[7].xxxx
 39: MOV TEMP[8].xy, TEMP[5].xwww
 40: MOV TEMP[8].z, TEMP[4].xxxx
 41: TEX TEMP[8].x, TEMP[8], SAMP[2], SHADOW2D
 42: MOV TEMP[7].y, TEMP[8].xxxx
 43: MOV TEMP[8].xy, TEMP[5].zyyy
 44: MOV TEMP[8].z, TEMP[4].xxxx
 45: TEX TEMP[8].x, TEMP[8], SAMP[2], SHADOW2D
 46: MOV TEMP[7].z, TEMP[8].xxxx
 47: MOV TEMP[5].xy, TEMP[5].xyyy
 48: MOV TEMP[5].z, TEMP[4].xxxx
 49: TEX TEMP[4].x, TEMP[5], SAMP[2], SHADOW2D
 50: MOV TEMP[7].w, TEMP[4].xxxx
 51: RCP TEMP[4].x, TEMP[0].wwww
 52: MUL TEMP[4].x, TEMP[0].zzzz, TEMP[4].xxxx
 53: MUL TEMP[5].x, -CONST[6].xxxx, CONST[6].xxxx
 54: MUL TEMP[5].x, TEMP[5].xxxx, TEMP[4].xxxx
 55: MUL TEMP[4].x, TEMP[5].xxxx, TEMP[4].xxxx
 56: MUL TEMP[4].x, TEMP[4].xxxx, IMM[2].zzzz
 57: EX2 TEMP[4].x, TEMP[4].xxxx
 58: LRP TEMP[4].x, TEMP[4].xxxx, IMM[0].zzzz, CONST[6].yyyy
 59: MOV_SAT TEMP[4].x, TEMP[4].xxxx
 60: MUL TEMP[1].xyz, TEMP[3].xyzz, TEMP[1].xyzz
 61: MUL TEMP[5], TEMP[6].zxzx, TEMP[6].wwyy
 62: DP4 TEMP[5].x, TEMP[5], TEMP[7]
 63: MUL TEMP[5].x, IMM[2].wwww, TEMP[5].xxxx
 64: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[5].xxxx
 65: MAD TEMP[1].xyz, TEMP[3].xyzz, CONST[4].xyzz, TEMP[1].xyzz
 66: LRP TEMP[1].xyz, TEMP[4].xxxx, TEMP[1].xyzz, CONST[5].xyzz
 67: MOV TEMP[3].xy, IN[2].xyyy
 68: TEX TEMP[3].w, TEMP[3], SAMP[1], 2D
 69: SLT TEMP[4].x, TEMP[3].wwww, IMM[3].xxxx
 70: IF TEMP[4].xxxx :2
 71:   MOV TEMP[4].x, IMM[0].yyyy
 72: ELSE :2
 73:   MOV TEMP[4].x, TEMP[3].wwww
 74: ENDIF
 75: MUL TEMP[1].xyz, TEMP[1].xyzz, TEMP[4].xxxx
 76: MOV TEMP[2].xyz, TEMP[1].xyzx
 77: MOV OUT[0], TEMP[2]
 78: END


TGSI asm error: Unknown opcode [29 : 7] 
etnaviv_compiler: could not parse `tgsi/0ad-alpine-valley/0ad-49.tgsi'
