FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], GENERIC[0], PERSPECTIVE
DCL OUT[0], COLOR
DCL SAMP[0]
DCL SAMP[1]
DCL CONST[2..3]
DCL TEMP[0..2], LOCAL
IMM[0] FLT32 {   -0.0000,    -0.0500,     0.0000,     0.0500}
  0: ADD TEMP[0].xz, IN[0].xyzz, IMM[0].xxyy
  1: ADD TEMP[1].xz, IN[0].xyzz, IMM[0].zzww
  2: MOV TEMP[2].x, TEMP[0].xxxx
  3: MOV TEMP[2].z, TEMP[0].zzzz
  4: TXD TEMP[0], TEMP[2], CONST[2].xxxx, CONST[3].xxxx, SAMP[0], SHADOW1D
  5: MOV TEMP[2].x, TEMP[1].xxxx
  6: MOV TEMP[2].z, TEMP[1].zzzz
  7: TXD TEMP[1], TEMP[2], CONST[2].xxxx, CONST[3].xxxx, SAMP[1], SHADOW1D
  8: MUL TEMP[0], TEMP[0], TEMP[1]
  9: MOV OUT[0], TEMP[0]
 10: END


etnaviv_compiler: etnaviv_compiler.c:1861: etna_compile_pass_generate_code: Assertion `0' failed.
