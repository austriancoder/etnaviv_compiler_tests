FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
IMM[0] FLT32 {    0.6500,     0.0000,     0.0000,     0.0000}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[0]
  0: MAX TEMP[0].xy, IMM[0].xyxx, IMM[1].xxxx
  1: CLAMP TEMP[0].z, IMM[0].xxyx, -IMM[1].xxzx, IMM[1].xxzx
  2: LG2 TEMP[0].y, TEMP[0].yxxx
  3: MUL TEMP[0].y, TEMP[0].xzxx, TEMP[0].xyxx
  4: EX2 TEMP[0].y, TEMP[0].yxxx
  5: CMP TEMP[0].y, -IMM[0].xxxx, TEMP[0].xyxx, IMM[1].xxxx
  6: MOV OUT[0].yz, TEMP[0].xxyx
  7: MOV OUT[0].xw, IMM[1].yxxy
  8: END


TGSI asm error: Unknown opcode [8 : 7] 
etnaviv_compiler: could not parse `tgsi/fragProg1/fragProg1-26.tgsi'
