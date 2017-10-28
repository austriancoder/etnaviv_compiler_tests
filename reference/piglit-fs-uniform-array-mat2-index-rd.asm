FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0..7]
DCL TEMP[0..1], LOCAL
DCL ADDR[0]
IMM[0] INT32 {2, 0, 0, 0}
IMM[1] FLT32 {    0.0000,     1.0000,     0.0000,     0.0000}
  0: UMUL TEMP[0].x, CONST[0].xxxx, IMM[0].xxxx
  1: UARL ADDR[0].x, TEMP[0].xxxx
  2: FSEQ TEMP[1].xy, CONST[ADDR[0].x+3].xyyy, CONST[1].xyyy
  3: AND TEMP[0].x, TEMP[1].xxxx, TEMP[1].yyyy
  4: UIF TEMP[0].xxxx :0
  5:   MOV TEMP[0], IMM[1].xyxy
  6: ELSE :0
  7:   MOV TEMP[0], IMM[1].yxxy
  8: ENDIF
  9: MOV OUT[0], TEMP[0]
 10: END


etnaviv_compiler: etnaviv_compiler.c:1858: etna_compile_pass_generate_code: Assertion `0' failed.
etna_compile_pass_generate_code:1857: Unhandled instruction UMUL
