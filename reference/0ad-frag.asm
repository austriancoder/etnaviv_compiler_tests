FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL IN[1], GENERIC[0], PERSPECTIVE
DCL IN[2], GENERIC[2], PERSPECTIVE
DCL IN[3], GENERIC[3], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[2]
DCL SAMP[3]
DCL CONST[2]
DCL CONST[4]
DCL TEMP[0..8]
IMM[0] FLT32 {    0.0005,     0.5000,     1.0000,     2.0000}
IMM[1] FLT32 {    1.0000,    -0.5000,     0.1111,     0.0000}
  0: TEX TEMP[0], IN[1], SAMP[0], 2D
  1: MOV TEMP[1].x, IMM[0].xxxx
  2: MOV TEMP[2], IN[2]
  3: SUB TEMP[2].z, IN[2].zzzz, TEMP[1].xxxx
  4: SUB TEMP[3].xy, IN[2], IMM[0].yyyy
  5: FRC TEMP[3].xy, TEMP[3]
  6: ADD TEMP[4].xy, TEMP[3], IMM[0].zzzz
  7: SUB TEMP[4].zw, IMM[0].wwww, TEMP[3].xyxy
  8: MAD TEMP[3].xy, -IMM[0].yyyy, TEMP[3], IN[2]
  9: MOV TEMP[3].z, TEMP[2].zzzz
 10: ADD TEMP[5], IMM[1].xxyy, TEMP[3].xyxy
 11: MUL TEMP[5], TEMP[5], CONST[2].zwzw
 12: MOV TEMP[3].xy, TEMP[5].zwww
 13: TEX TEMP[6].x, TEMP[3], SAMP[2], SHADOW2D
 14: MOV TEMP[3].x, TEMP[5].xxxx
 15: TEX TEMP[6].y, TEMP[3], SAMP[2], SHADOW2D
 16: MOV TEMP[3].xy, TEMP[5].zyyy
 17: TEX TEMP[6].z, TEMP[3], SAMP[2], SHADOW2D
 18: MOV TEMP[3].x, TEMP[5].xxxx
 19: TEX TEMP[6].w, TEMP[3], SAMP[2], SHADOW2D
 20: MUL TEMP[4], TEMP[4].zxzx, TEMP[4].wwyy
 21: DP4 TEMP[6].x, TEMP[6], TEMP[4]
 22: MUL TEMP[6].x, TEMP[6].xxxx, IMM[1].zzzz
 23: MUL TEMP[7].xyz, IN[0], IMM[0].wwww
 24: MAD TEMP[6].xyz, TEMP[7], TEMP[6].xxxx, CONST[4]
 25: MUL TEMP[0].xyz, TEMP[0], TEMP[6]
 26: TEX TEMP[8].w, IN[3], SAMP[3], 2D
 27: MUL TEMP[0].xyz, TEMP[0], TEMP[8].wwww
 28: MOV OUT[0].xyz, TEMP[0]
 29: END



TGSI asm error: Unknown opcode [19 : 7] 
etnaviv_compiler: could not parse `tgsi/0ad-frag.tgsi'