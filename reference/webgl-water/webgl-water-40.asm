FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL SAMP[3]
DCL CONST[0..2]
DCL CONST[6]
DCL TEMP[0..11], LOCAL
IMM[0] FLT32 {    0.5000,     0.0050,     1.0000,     2.0000}
IMM[1] FLT32 {    0.5628,     0.0000,     0.7502,     0.2500}
IMM[2] FLT32 {    3.0000,     4.0000, 1000000.0000,     0.9000}
IMM[3] FLT32 {    0.0000,     1.0000,     0.3750,    -1.0000}
IMM[4] FLT32 {    0.9990,  -288.5390,    -0.1667,    10.0000}
IMM[5] FLT32 {    0.1667,  5000.0000,     0.2500,     1.0000}
IMM[6] FLT32 {   10.0000,     8.0000,     6.0000,     0.2500}
IMM[7] FLT32 {    0.2500,     1.0000,     1.2500,     0.0000}
IMM[8] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[12]
DCL TEMP[13]
  0: MAD TEMP[0].xy, IN[0].xzzz, IMM[0].xxxx, IMM[0].xxxx
  1: MOV TEMP[1].xy, TEMP[0].xyyy
  2: TEX TEMP[1].zw, TEMP[1], SAMP[2], 2D
  3: MAD TEMP[0].xy, TEMP[1].zwww, IMM[0].yyyy, TEMP[0].xyyy
  4: MOV TEMP[1].xy, TEMP[0].xyyy
  5: TEX TEMP[1].zw, TEMP[1], SAMP[2], 2D
  6: MAD TEMP[0].xy, TEMP[1].zwww, IMM[0].yyyy, TEMP[0].xyyy
  7: MOV TEMP[1].xy, TEMP[0].xyyy
  8: TEX TEMP[1].zw, TEMP[1], SAMP[2], 2D
  9: MAD TEMP[0].xy, TEMP[1].zwww, IMM[0].yyyy, TEMP[0].xyyy
 10: MOV TEMP[1].xy, TEMP[0].xyyy
 11: TEX TEMP[1].zw, TEMP[1], SAMP[2], 2D
 12: MAD TEMP[0].xy, TEMP[1].zwww, IMM[0].yyyy, TEMP[0].xyyy
 13: MOV TEMP[1].xy, TEMP[0].xyyy
 14: TEX TEMP[1].zw, TEMP[1], SAMP[2], 2D
 15: MAD TEMP[0].xy, TEMP[1].zwww, IMM[0].yyyy, TEMP[0].xyyy
 16: MOV TEMP[0].xy, TEMP[0].xyyy
 17: TEX TEMP[0].zw, TEMP[0], SAMP[2], 2D
 18: MOV TEMP[1].x, TEMP[0].zzzz
 19: MUL TEMP[12].x, TEMP[0].zzzz, TEMP[0].zzzz
 20: MAD TEMP[2].x, TEMP[0].wwww, TEMP[0].wwww, TEMP[12].xxxx
 21: ADD TEMP[2].x, IMM[0].zzzz, -TEMP[2].xxxx
 22: SQRT TEMP[2].x, TEMP[2].xxxx
 23: MOV TEMP[1].y, TEMP[2].xxxx
 24: MOV TEMP[1].z, TEMP[0].wwww
 25: ADD TEMP[0].xyz, IN[0].xyzz, -CONST[6].xyzz
 26: MUL TEMP[12].x, TEMP[0].xxxx, TEMP[0].xxxx
 27: MAD TEMP[12].x, TEMP[0].yyyy, TEMP[0].yyyy, TEMP[12].xxxx
 28: MAD TEMP[2].x, TEMP[0].zzzz, TEMP[0].zzzz, TEMP[12].xxxx
 29: RSQ TEMP[2].x, TEMP[2].xxxx
 30: MUL TEMP[0].xyz, TEMP[0].xyzz, TEMP[2].xxxx
 31: MUL TEMP[12].x, TEMP[1].xxxx, TEMP[0].xxxx
 32: MAD TEMP[12].x, TEMP[1].yyyy, TEMP[0].yyyy, TEMP[12].xxxx
 33: MAD TEMP[2].x, TEMP[1].zzzz, TEMP[0].zzzz, TEMP[12].xxxx
 34: MUL TEMP[2].xyz, TEMP[2].xxxx, TEMP[1].xyzz
 35: MUL TEMP[2].xyz, IMM[0].wwww, TEMP[2].xyzz
 36: ADD TEMP[2].xyz, TEMP[0].xyzz, -TEMP[2].xyzz
 37: MUL TEMP[12].x, TEMP[1].xxxx, TEMP[0].xxxx
 38: MAD TEMP[12].x, TEMP[1].yyyy, TEMP[0].yyyy, TEMP[12].xxxx
 39: MAD TEMP[3].x, TEMP[1].zzzz, TEMP[0].zzzz, TEMP[12].xxxx
 40: MUL TEMP[4].x, TEMP[3].xxxx, TEMP[3].xxxx
 41: ADD TEMP[4].x, IMM[0].zzzz, -TEMP[4].xxxx
 42: MUL TEMP[4].x, TEMP[4].xxxx, IMM[1].xxxx
 43: ADD TEMP[4].x, IMM[0].zzzz, -TEMP[4].xxxx
 44: SLT TEMP[5].x, TEMP[4].xxxx, IMM[1].yyyy
 45: IF TEMP[5].xxxx :0
 46:   MOV TEMP[5].xyz, IMM[1].yyyy
 47: ELSE :0
 48:   SQRT TEMP[4].x, TEMP[4].xxxx
 49:   MAD TEMP[3].x, IMM[1].zzzz, TEMP[3].xxxx, TEMP[4].xxxx
 50:   MUL TEMP[3].xyz, TEMP[3].xxxx, TEMP[1].xyzz
 51:   MAD TEMP[5].xyz, IMM[1].zzzz, TEMP[0].xyzz, -TEMP[3].xyzz
 52: ENDIF
 53: MUL TEMP[12].x, TEMP[1].xxxx, -TEMP[0].xxxx
 54: MAD TEMP[12].x, TEMP[1].yyyy, -TEMP[0].yyyy, TEMP[12].xxxx
 55: MAD TEMP[0].x, TEMP[1].zzzz, -TEMP[0].zzzz, TEMP[12].xxxx
 56: ADD TEMP[0].x, IMM[0].zzzz, -TEMP[0].xxxx
 57: LG2 TEMP[12].x, TEMP[0].xxxx
 58: MUL TEMP[12].x, IMM[2].xxxx, TEMP[12].xxxx
 59: EX2 TEMP[0].x, TEMP[12].xxxx
 60: MUL TEMP[12], TEMP[0].xxxx, IMM[0].zzzz
 61: SUB TEMP[13], IMM[8].yyyy, TEMP[0].xxxx
 62: MUL TEMP[13], TEMP[13], IMM[1].wwww
 63: ADD TEMP[0].x, TEMP[12], TEMP[13]
 64: MOV TEMP[1].x, IMM[0].zzzz
 65: ADD TEMP[3].xyz, IN[0].xyzz, -CONST[1].xyzz
 66: MUL TEMP[12].x, TEMP[2].xxxx, TEMP[2].xxxx
 67: MAD TEMP[12].x, TEMP[2].yyyy, TEMP[2].yyyy, TEMP[12].xxxx
 68: MAD TEMP[4].x, TEMP[2].zzzz, TEMP[2].zzzz, TEMP[12].xxxx
 69: MUL TEMP[12].x, TEMP[3].xxxx, TEMP[2].xxxx
 70: MAD TEMP[12].x, TEMP[3].yyyy, TEMP[2].yyyy, TEMP[12].xxxx
 
TGSI asm error: Unknown opcode [84 : 7] 
etnaviv_compiler: could not parse `tgsi/webgl-water/webgl-water-40.tgsi'
