VERT
DCL IN[0]
DCL OUT[0], POSITION
DCL OUT[1], GENERIC[20]
DCL CONST[0..5]
DCL TEMP[0..2], LOCAL
IMM[0] INT32 {0, 1, 2, 0}
IMM[1] FLT32 {    4.0000,     5.0000,     6.0000,     1.0000}
IMM[2] FLT32 {    0.0000,     1.0000,     0.0000,     0.0000}
  0: MUL TEMP[0], CONST[2], IN[0].xxxx
  1: MAD TEMP[0], CONST[3], IN[0].yyyy, TEMP[0]
  2: MAD TEMP[0], CONST[4], IN[0].zzzz, TEMP[0]
  3: MAD TEMP[0], CONST[5], IN[0].wwww, TEMP[0]
  4: USEQ TEMP[1].yz, CONST[0].xxxx, IMM[0].xyzz
  5: I2F TEMP[2].y, TEMP[1].yyyy
  6: CMP TEMP[2].x, TEMP[2].yyyy, IMM[1].yyyy, IMM[1].xxxx
  7: I2F TEMP[1].z, TEMP[1].zzzz
  8: CMP TEMP[2].x, TEMP[1].zzzz, IMM[1].zzzz, TEMP[2].xxxx
  9: FSEQ TEMP[1].x, TEMP[2].xxxx, CONST[1].xxxx
 10: UIF TEMP[1].xxxx :0
 11:   MOV TEMP[1], IMM[2].xyxy
 12: ELSE :0
 13:   MOV TEMP[1], IMM[2].yxxy
 14: ENDIF
 15: MOV OUT[1], TEMP[1]
 16: MOV OUT[0], TEMP[0]
 17: END


etnaviv_compiler: etnaviv_compiler.c:1861: etna_compile_pass_generate_code: Assertion `0' failed.
