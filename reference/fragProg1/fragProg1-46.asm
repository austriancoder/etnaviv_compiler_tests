FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL OUT[0], COLOR
DCL CONST[0]
DCL TEMP[0]
IMM[0] FLT32 {    0.1000,     0.0000,     0.0000,     0.0000}
  0: SUB_SAT TEMP[0], IN[0], CONST[0]
  1: ADD OUT[0], TEMP[0], IMM[0].xxxx
  2: END


TGSI asm error: Unknown opcode [8 : 7] 
etnaviv_compiler: could not parse `tgsi/fragProg1/fragProg1-46.tgsi'
