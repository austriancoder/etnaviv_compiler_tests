FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[9], PERSPECTIVE
DCL IN[1], GENERIC[10], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL SAMP[2]
DCL TEMP[0..6], LOCAL
IMM[0] FLT32 {    2.0000,     1.1000,     1.0000,     0.3000}
  0: MOV TEMP[0].xy, IN[0].zwzz
  1: MOV TEMP[0].z, IN[1].xxxx
  2: MOV TEMP[1].xy, IN[0].xyyy
  3: TEX TEMP[1].x, TEMP[1], SAMP[1], 2D
  4: DP3 TEMP[2].x, TEMP[0].xyzz, TEMP[0].xyzz
  5: RSQ TEMP[2].x, TEMP[2].xxxx
  6: MUL TEMP[0].xyz, TEMP[0].xyzz, TEMP[2].xxxx
  7: DP3 TEMP[2].x, IN[1].yzww, IN[1].yzww
  8: RSQ TEMP[2].x, TEMP[2].xxxx
  9: MUL TEMP[2].xyz, IN[1].yzww, TEMP[2].xxxx
 10: DP3 TEMP[3].x, TEMP[0].xyzz, TEMP[2].xyzz
 11: MUL TEMP[3].xyz, TEMP[3].xxxx, TEMP[0].xyzz
 12: MUL TEMP[3].xyz, IMM[0].xxxx, TEMP[3].xyzz
 13: ADD TEMP[3].xyz, TEMP[2].xyzz, -TEMP[3].xyzz
 14: MOV TEMP[3].xyz, -TEMP[3].xyzz
 15: TEX TEMP[3], TEMP[3], SAMP[2], CUBE
 16: MUL TEMP[4].xyz, TEMP[3].xyzz, IMM[0].yyyy
 17: MOV TEMP[5].xyz, TEMP[3].xyzx
 18: MUL TEMP[6].x, TEMP[4].xxxx, TEMP[4].yyyy
 19: MUL TEMP[4].x, TEMP[6].xxxx, TEMP[4].zzzz
 20: MIN TEMP[4].x, IMM[0].zzzz, TEMP[4].xxxx
 21: MOV TEMP[5].w, TEMP[4].xxxx
 22: DP3 TEMP[0].x, TEMP[2].xyzz, TEMP[0].xyzz
 23: ABS TEMP[0].x, TEMP[0].xxxx
 24: MOV TEMP[2].xy, IN[0].xyyy
 25: TEX TEMP[2], TEMP[2], SAMP[0], 2D
 26: ADD TEMP[4].x, IMM[0].zzzz, -TEMP[1].xxxx
 27: LRP TEMP[2], TEMP[4].xxxx, TEMP[2], TEMP[5]
 28: ADD TEMP[4].x, TEMP[0].xxxx, IMM[0].wwww
 29: MUL TEMP[1].x, TEMP[4].xxxx, TEMP[1].xxxx
 30: LRP TEMP[1].xyz, TEMP[1].xxxx, TEMP[2], TEMP[3]
 31: MOV TEMP[1].xyz, TEMP[1].xyzx
 32: ADD TEMP[0].x, IMM[0].zzzz, -TEMP[0].xxxx
 33: MOV TEMP[1].w, TEMP[0].xxxx
 34: MOV OUT[0], TEMP[1]
 35: END


TGSI asm error: Unknown opcode [34 : 7] 
etnaviv_compiler: could not parse `tgsi/ffox-otmc/ffox-otmc-54.tgsi'
