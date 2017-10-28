FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
IMM[0] FLT32 {   -1.1000,     0.1000,    -2.2000,     2.4000}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[0]
  0: FLR TEMP[0], IMM[0]
  1: SUB OUT[0], IMM[0], TEMP[0]
  2: END


TGSI asm error: Unknown opcode [8 : 7] 
etnaviv_compiler: could not parse `tgsi/fragProg1/fragProg1-23.tgsi'
