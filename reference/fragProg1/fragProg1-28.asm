FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL OUT[0], COLOR
DCL CONST[1]
IMM[0] FLT32 {    0.2000,     0.5000,     1.0000,     0.0000}
IMM[1] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[0]
DCL TEMP[1]
  0: MUL TEMP[0], IMM[0], IN[0]
  1: SUB TEMP[1], IMM[1].yyyy, IMM[0]
  2: MUL TEMP[1], TEMP[1], CONST[1]
  3: ADD OUT[0], TEMP[0], TEMP[1]
  4: END


TGSI asm error: Unknown opcode [11 : 7] 
etnaviv_compiler: could not parse `tgsi/fragProg1/fragProg1-28.tgsi'
