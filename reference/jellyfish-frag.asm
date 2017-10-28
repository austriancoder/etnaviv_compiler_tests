FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[20], PERSPECTIVE
DCL IN[1], GENERIC[21], PERSPECTIVE
DCL IN[2], GENERIC[22], PERSPECTIVE
DCL IN[3], GENERIC[23], PERSPECTIVE
DCL IN[4], GENERIC[24], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL CONST[0..2]
DCL CONST[6..7]
DCL TEMP[0..11], LOCAL
IMM[0] FLT32 {    0.0833,     0.0208,     0.0105,    -1.0000}
IMM[1] FLT32 {    0.2000,     0.3000,     0.5000,    -0.7000}
IMM[2] FLT32 {   10.0000,    -0.1000,    -2.5000,     1.6000}
IMM[3] FLT32 {    2.0000,     0.0000,     1.0000,     0.3333}
IMM[4] FLT32 {    3.0000,     4.0000,     5.0000,     6.0000}
IMM[5] FLT32 {    7.0000,     8.0000,     0.0000,     0.0000}
IMM[6] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[12]
DCL TEMP[13]
  0: MOV TEMP[0].x, IN[2].wwww
  1: MOV TEMP[0].yz, IN[3].yxyy
  2: MOV TEMP[1].xy, IN[3].zwzz
  3: MOV TEMP[1].z, IN[4].xxxx
  4: MUL TEMP[2].x, IN[0].xxxx, IMM[0].yyyy
  5: MAD TEMP[2].x, CONST[0].xxxx, IMM[0].xxxx, TEMP[2].xxxx
  6: ADD TEMP[3].x, IN[0].zzzz, -IN[0].yyyy
  7: MUL TEMP[3].x, TEMP[3].xxxx, IMM[0].zzzz
  8: MOV TEMP[2].y, TEMP[3].xxxx
  9: MOV TEMP[2].xy, TEMP[2].xyyy
 10: TEX TEMP[2].xyz, TEMP[2], SAMP[1], 2D
 11: MOV TEMP[3].xy, IN[2].xyyy
 12: MOV TEMP[3].w, IMM[0].wwww
 13: TXB TEMP[3], TEMP[3], SAMP[0], 2D
 14: MUL TEMP[4].xyz, CONST[2].xyzz, CONST[2].wwww
 15: MAD TEMP[5].xyz, TEMP[2].xyzz, CONST[1].wwww, TEMP[0].xyzz
 16: ADD TEMP[5].xyz, TEMP[5].xyzz, TEMP[4].xyzz
 17: MAD TEMP[5].xyz, TEMP[5].xyzz, TEMP[3].xyzz, TEMP[1].xyzz
 18: MOV TEMP[6].w, TEMP[3].wwww
 19: MOV TEMP[7].xy, IN[2].xyyy
 20: MOV TEMP[7].w, IMM[0].wwww
 21: TXB TEMP[7], TEMP[7], SAMP[2], 2D
 22: MUL TEMP[8].x, CONST[6].xxxx, IMM[1].xxxx
 23: ADD TEMP[9].x, TEMP[7].wwww, CONST[6].xxxx
 24: MUL TEMP[9].x, TEMP[9].xxxx, IMM[1].yyyy
 25: SIN TEMP[9].x, TEMP[9].xxxx
 26: MUL TEMP[9].x, TEMP[9].xxxx, IMM[1].zzzz
 27: MUL TEMP[9].xyz, TEMP[3].xyzz, TEMP[9].xxxx
 28: ADD TEMP[10].x, -TEMP[7].wwww, IMM[1].wwww
 29: ADD TEMP[10].x, TEMP[10].xxxx, -TEMP[8].xxxx
 30: SIN TEMP[10].x, TEMP[10].xxxx
 31: MUL TEMP[10].x, TEMP[10].xxxx, TEMP[7].yyyy
 32: ADD TEMP[11].x, -TEMP[7].wwww, IMM[2].yyyy
 33: ADD TEMP[11].x, TEMP[11].xxxx, -TEMP[8].xxxx
 34: SIN TEMP[11].x, TEMP[11].xxxx
 35: MUL TEMP[11].x, TEMP[11].xxxx, TEMP[7].xxxx
 36: MUL TEMP[11].x, TEMP[11].xxxx, IMM[2].xxxx
 37: MAD TEMP[10].x, TEMP[10].xxxx, IMM[2].xxxx, TEMP[11].xxxx
 38: ADD TEMP[11].x, -TEMP[7].wwww, IMM[2].zzzz
 39: ADD TEMP[11].x, TEMP[11].xxxx, -TEMP[8].xxxx
 40: SIN TEMP[11].x, TEMP[11].xxxx
 41: MUL TEMP[7].x, TEMP[11].xxxx, TEMP[7].zzzz
 42: ADD TEMP[8].x, IMM[2].wwww, TEMP[8].xxxx
 43: COS TEMP[8].x, TEMP[8].xxxx
 44: MUL TEMP[8].x, IN[4].xxxx, TEMP[8].xxxx
 45: ADD TEMP[11].x, IN[3].zzzz, IN[3].wwww
 46: MAD TEMP[8].x, TEMP[8].xxxx, IMM[3].xxxx, TEMP[11].xxxx
 47: MAD TEMP[7].x, TEMP[7].xxxx, IMM[2].xxxx, TEMP[8].xxxx
 48: ADD TEMP[7].x, TEMP[10].xxxx, TEMP[7].xxxx
 49: MAX TEMP[7].x, TEMP[7].xxxx, IMM[3].yyyy
 50: MUL TEMP[7].xyz, TEMP[9].xyzz, TEMP[7].xxxx
 51: ADD TEMP[8].xyz, TEMP[0].xyzz, TEMP[4].xyzz
 52: MUL TEMP[12], IN[1].wwww, IN[1].xyzz
 53: SUB TEMP[13], IMM[6].yyyy, IN[1].wwww
 54: MUL TEMP[13], TEMP[13], TEMP[5].xyzz
 55: ADD TEMP[5].xyz, TEMP[12], TEMP[13]
 56: ADD TEMP[9].xyz, TEMP[5].xyzz, TEMP[7].xyzz
 57: ADD TEMP[10].x, TEMP[8].xxxx, TEMP[8].yyyy
 58: ADD TEMP[8].x, TEMP[10].xxxx, TEMP[8].zzzz
 59: MUL TEMP[8].x, TEMP[8].xxxx, IMM[3].wwww
 60: ADD TEMP[8].x, IMM[3].zzzz, -TEMP[8].xxxx
 61: LG2 TEMP[12].x, TEMP[8].xxxx
 62: MUL TEMP[12].x, IMM[4].xxxx, TEMP[12].xxxx
 63: EX2 TEMP[8].x, TEMP[12].xxxx
 64: MUL TEMP[12], TEMP[8].xxxx, TEMP[9].xyzz
 65: SUB TEMP[13], IMM[6].yyyy, TEMP[8].xxxx
 66: MUL TEMP[13], TEMP[13], TEMP[5].xyzz
 67: ADD TEMP[6].xyz, TEMP[12], TEMP[13]
 68: SEQ TEMP[5].x, CONST[7].xxxx, IMM[3].zzzz
 69: IF TEMP[5].xxxx :0
 70:   MOV TEMP[5].w, IMM[3].zzzz
 71:   MOV TEMP[5].xyz, TEMP[0].xyzx
 72:   MOV TEMP[6], TEMP[5]
 73: ELSE :0
 74:   SEQ TEMP[0].x, CONST[7].xxxx, IMM[3].xxxx
 75:   IF TEMP[0].xxxx :0
 76:     MOV TEMP[0].w, IMM[3].zzzz
 77:     M
TGSI asm error: Unknown opcode [77 : 7] 
etnaviv_compiler: could not parse `tgsi/jellyfish-frag.tgsi'
