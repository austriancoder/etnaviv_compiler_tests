FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], COLOR, COLOR
DCL OUT[0], COLOR
DCL CONST[0]
  0: SUB OUT[0], CONST[0].yxwz, IN[0].yxwz
  1: END


TGSI asm error: Unknown opcode [6 : 7] 
etnaviv_compiler: could not parse `tgsi/fragProg1/fragProg1-45.tgsi'
