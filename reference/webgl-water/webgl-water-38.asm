FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL CONST[0..2]
DCL TEMP[0..6], LOCAL
IMM[0] FLT32 {    0.5000,     0.9990,     1.0000,     0.0000}
IMM[1] FLT32 {    0.9000,     4.0000,     0.5628,     0.7502}
IMM[2] FLT32 {    0.3750,     2.0000,    -1.0000,     1.0000}
IMM[3] FLT32 { -288.5390,    -0.1667,    10.0000,     0.4800}
IMM[4] FLT32 {    0.4800,     1.0800,     1.2000,     0.0000}
IMM[5] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[7]
  0: ABS TEMP[0].x, IN[0].xxxx
  1: SLT TEMP[1].x, IMM[0].yyyy, TEMP[0].xxxx
  2: IF TEMP[1].xxxx :0
  3:   MAD TEMP[1].xy, IN[0].yzzz, IMM[0].xxxx, IMM[0].zxxx
  4:   MOV TEMP[1].xy, TEMP[1].xyyy
  5:   TEX TEMP[1].xyz, TEMP[1], SAMP[0], 2D
  6:   MOV TEMP[1].xyz, TEMP[1].xyzx
  7:   MOV TEMP[2].yz, IMM[0].wwww
  8:   MOV TEMP[2].x, -IN[0].xxxx
  9:   MOV TEMP[2].xyz, TEMP[2].xyzx
 10: ELSE :0
 11:   ABS TEMP[3].x, IN[0].zzzz
 12:   SLT TEMP[3].x, IMM[0].yyyy, TEMP[3].xxxx
 13:   IF TEMP[3].xxxx :0
 14:     MAD TEMP[3].xy, IN[0].yxxx, IMM[0].xxxx, IMM[0].zxxx
 15:     MOV TEMP[3].xy, TEMP[3].xyyy
 16:     TEX TEMP[3].xyz, TEMP[3], SAMP[0], 2D
 17:     MOV TEMP[1].xyz, TEMP[3].xyzx
 18:     MOV TEMP[3].xy, IMM[0].wwww
 19:     MOV TEMP[3].z, -IN[0].zzzz
 20:     MOV TEMP[2].xyz, TEMP[3].xyzx
 21:   ELSE :0
 22:     MAD TEMP[3].xy, IN[0].xzzz, IMM[0].xxxx, IMM[0].xxxx
 23:     MOV TEMP[3].xy, TEMP[3].xyyy
 24:     TEX TEMP[3].xyz, TEMP[3], SAMP[0], 2D
 25:     MOV TEMP[1].xyz, TEMP[3].xyzx
 26:     MOV TEMP[2].xyz, IMM[0].wzww
 27:   ENDIF
 28: ENDIF
 29: MUL TEMP[7].x, IN[0].xxxx, IN[0].xxxx
 30: MAD TEMP[7].x, IN[0].yyyy, IN[0].yyyy, TEMP[7].xxxx
 31: MAD TEMP[3].x, IN[0].zzzz, IN[0].zzzz, TEMP[7].xxxx
 32: RSQ TEMP[3].x, TEMP[3].xxxx
 33: MUL TEMP[0].x, IMM[0].xxxx, TEMP[3].xxxx
 34: ADD TEMP[3].xyz, IN[0].xyzz, -CONST[1].xyzz
 35: MUL TEMP[7].x, TEMP[3].xxxx, TEMP[3].xxxx
 36: MAD TEMP[7].x, TEMP[3].yyyy, TEMP[3].yyyy, TEMP[7].xxxx
 37: MAD TEMP[3].x, TEMP[3].zzzz, TEMP[3].zzzz, TEMP[7].xxxx
 38: SQRT TEMP[3].x, TEMP[3].xxxx
 39: RCP TEMP[4].x, CONST[2].xxxx
 40: MUL TEMP[3].x, TEMP[3].xxxx, TEMP[4].xxxx
 41: LG2 TEMP[7].x, TEMP[3].xxxx
 42: MUL TEMP[7].x, IMM[1].yyyy, TEMP[7].xxxx
 43: EX2 TEMP[3].x, TEMP[7].xxxx
 44: RCP TEMP[3].x, TEMP[3].xxxx
 45: MUL TEMP[3].x, IMM[1].xxxx, TEMP[3].xxxx
 46: ADD TEMP[3].x, IMM[0].zzzz, -TEMP[3].xxxx
 47: MUL TEMP[0].x, TEMP[0].xxxx, TEMP[3].xxxx
 48: MOV TEMP[3].xyz, -CONST[0].xyzx
 49: MUL TEMP[4].x, TEMP[3].yyyy, TEMP[3].yyyy
 50: ADD TEMP[4].x, IMM[0].zzzz, -TEMP[4].xxxx
 51: MUL TEMP[4].x, TEMP[4].xxxx, IMM[1].zzzz
 52: ADD TEMP[4].x, IMM[0].zzzz, -TEMP[4].xxxx
 53: SLT TEMP[5].x, TEMP[4].xxxx, IMM[0].wwww
 54: IF TEMP[5].xxxx :0
 55:   MOV TEMP[5].xyz, IMM[0].wwww
 56: ELSE :0
 57:   SQRT TEMP[4].x, TEMP[4].xxxx
 58:   MAD TEMP[4].x, IMM[1].wwww, TEMP[3].yyyy, TEMP[4].xxxx
 59:   MUL TEMP[4].xyz, TEMP[4].xxxx, IMM[0].wzww
 60:   MAD TEMP[5].xyz, IMM[1].wwww, TEMP[3].xyzz, -TEMP[4].xyzz
 61: ENDIF
 62: MOV TEMP[3].xyz, -TEMP[5].xyzx
 63: MUL TEMP[7].x, TEMP[3].xxxx, TEMP[2].xxxx
 64: MAD TEMP[7].x, TEMP[3].yyyy, TEMP[2].yyyy, TEMP[7].xxxx
 65: MAD TEMP[2].x, TEMP[3].zzzz, TEMP[2].zzzz, TEMP[7].xxxx
 66: MAX TEMP[2].x, IMM[0].wwww, TEMP[2].xxxx
 67: MAD TEMP[4].xy, IN[0].xzzz, IMM[0].xxxx, IMM[0].xxxx
 68: MOV TEMP[4].xy, TEMP[4].xyyy
 69: TEX TEMP[4].x, TEMP[4], SAMP[2], 2D
 70: SLT TEMP[4].x, IN[0].yyyy, TEMP[4].xxxx
 71: IF TEMP[4].xxxx :0
 72:   MUL TEMP[4].xy, IN[0].yyyy, TEMP[3].xzzz
 73:   RCP TEMP[5].x, TEMP[3].yyyy
 74:   MUL TEMP[4].xy, TEMP[4].xyyy, TEMP[5].xxxx
 75:   ADD TEMP[4].xy, IN[0].xzzz, -TEMP[4].xyyy
 76:   MAD TEMP[4].xy, IMM[2].xxxx, TEMP[4].xyyy, IMM[0].xxxx
 77:   MOV TEMP[4].xy, TEMP[4].xyyy
 78:   TEX TEMP[4].xy, TEMP[4], SAMP[1], 2D
 79:   MUL TEMP[5].x, TEMP[2].xxxx, TEMP[4].xxxx
 80:   MUL TEMP[5].x, TEMP[5].xxxx, IMM[2].yyyy
 81:   MAD TEMP[0].x, TEMP[5].xxxx, TEMP[4].yyyy, TEMP[0].xxxx
 82: ELSE :0
 83:   MOV TEMP[4].xyz, -IN[0].xyzx
 84:   ADD TEMP[5].xyz, IMM[2].zzzz, TEMP[4].xyzz
 85:   RCP TEMP[6
TGSI asm error: Unknown opcode [17 : 7] 
etnaviv_compiler: could not parse `tgsi/webgl-water/webgl-water-38.tgsi'
