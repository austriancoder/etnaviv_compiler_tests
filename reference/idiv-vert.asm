VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[20]
DCL CONST[0..2]
DCL TEMP[0..1], LOCAL
IMM[0] FLT32 {    0.0000,     1.0000,     0.0000,     0.0000}
  0: IDIV TEMP[0].xy, CONST[0].xyyy, CONST[1].xyyy
  1: USEQ TEMP[1].xy, TEMP[0].xyyy, CONST[2].xyyy
  2: AND TEMP[0].x, TEMP[1].xxxx, TEMP[1].yyyy
  3: UIF TEMP[0].xxxx :0
  4:   MOV TEMP[0], IMM[0].xyxy
  5: ELSE :0
  6:   MOV TEMP[0], IMM[0].yxxy
  7: ENDIF
  8: MOV OUT[1], TEMP[0]
  9: MOV OUT[0], IN[0]
 10: END


etnaviv_compiler: etnaviv_compiler.c:1861: etna_compile_pass_generate_code: Assertion `0' failed.
