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
  2: MOV TEMP[2], IN[2]
  3: MOV TEMP[2].z, IN[2].zzzz
  4: MOV TEMP[3].xy, IN[2]
  6: ADD TEMP[4].xy, TEMP[3], IMM[0].zzzz
  7: SUB TEMP[4].zw, IMM[0].wwww, TEMP[3].xyxy
  9: MOV TEMP[3].z, TEMP[2].zzzz
 10: MOV TEMP[5], IN[2]
 12: MOV TEMP[3].xy, TEMP[5].zwww
 13: TEX TEMP[6].x, TEMP[3], SAMP[2], SHADOW2D
 14: MOV TEMP[3].x, TEMP[5].xxxx
 15: TEX TEMP[6].y, TEMP[3], SAMP[2], SHADOW2D
 16: MOV TEMP[3].xy, TEMP[5].zyyy
 17: TEX TEMP[6].z, TEMP[3], SAMP[2], SHADOW2D
 18: MOV TEMP[3].x, TEMP[5].xxxx
 19: TEX TEMP[6].w, TEMP[3], SAMP[2], SHADOW2D
 28: MOV OUT[0], TEMP[6]
 29: END



TGSI asm error: Unknown opcode [20 : 7] 
etnaviv_compiler: could not parse `tgsi/problem/0ad-frag.tgsi'
