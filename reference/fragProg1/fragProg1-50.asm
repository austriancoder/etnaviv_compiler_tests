FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0..1]
IMM[0] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[0]
DCL TEMP[1]
  0: MUL TEMP[0].xyz, CONST[0].yzxx, CONST[1].zxyx
  1: MUL TEMP[1].xyz, CONST[1].yzxx, CONST[0].zxyx
  2: SUB OUT[0].xyz, TEMP[0].xyzx, TEMP[1].xyzx
  3: END


TGSI asm error: Unknown opcode [10 : 7] 
etnaviv_compiler: could not parse `tgsi/fragProg1/fragProg1-50.tgsi'
