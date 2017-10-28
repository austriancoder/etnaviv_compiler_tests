FRAG
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL OUT[0], COLOR
DCL CONST[0..1]
DCL TEMP[0..6], LOCAL
IMM[0] FLT32 {    0.0000,     1.0000,     1.5708,    -0.0310}
IMM[1] FLT32 {    0.0866,    -0.2146,     0.0000,     3.1416}
IMM[2] FLT32 {   -3.1416,     1.5708,     0.1592,     0.5000}
  0: ABS TEMP[0].x, CONST[1].xxxx
  1: ABS TEMP[1].x, CONST[0].xxxx
  2: MUL TEMP[1].x, IMM[0].xxxx, TEMP[1].xxxx
  3: SLT TEMP[0].x, TEMP[1].xxxx, TEMP[0].xxxx
  4: IF TEMP[0].xxxx :0
  5:   RCP TEMP[0].x, CONST[1].xxxx
  6:   MUL TEMP[0].x, CONST[0].xxxx, TEMP[0].xxxx
  7:   MAD TEMP[1].x, TEMP[0].xxxx, TEMP[0].xxxx, IMM[0].yyyy
  8:   RSQ TEMP[1].x, TEMP[1].xxxx
  9:   MUL TEMP[0].x, TEMP[0].xxxx, TEMP[1].xxxx
 10:   SSG TEMP[1].x, TEMP[0].xxxx
 11:   ABS TEMP[2].x, TEMP[0].xxxx
 12:   ADD TEMP[2].x, IMM[0].yyyy, -TEMP[2].xxxx
 13:   SQRT TEMP[2].x, TEMP[2].xxxx
 14:   ABS TEMP[3].x, TEMP[0].xxxx
 15:   ABS TEMP[4].x, TEMP[0].xxxx
 16:   ABS TEMP[5].x, TEMP[0].xxxx
 17:   MAD TEMP[5].x, TEMP[5].xxxx, IMM[0].wwww, IMM[1].xxxx
 18:   MAD TEMP[4].x, TEMP[4].xxxx, TEMP[5].xxxx, IMM[1].yyyy
 19:   MAD TEMP[3].x, TEMP[3].xxxx, TEMP[4].xxxx, IMM[0].zzzz
 20:   MUL TEMP[2].x, TEMP[2].xxxx, TEMP[3].xxxx
 21:   ADD TEMP[2].x, IMM[0].zzzz, -TEMP[2].xxxx
 22:   MUL TEMP[0].x, TEMP[1].xxxx, TEMP[2].xxxx
 23:   SLT TEMP[1].x, CONST[1].xxxx, IMM[1].zzzz
 24:   IF TEMP[1].xxxx :0
 25:     SGE TEMP[1].x, CONST[0].xxxx, IMM[1].zzzz
 26:     IF TEMP[1].xxxx :0
 27:       ADD TEMP[0].x, TEMP[0].xxxx, IMM[1].wwww
 28:     ELSE :0
 29:       ADD TEMP[0].x, TEMP[0].xxxx, IMM[2].xxxx
 30:     ENDIF
 31:   ENDIF
 32: ELSE :0
 33:   SSG TEMP[1].x, CONST[0].xxxx
 34:   MUL TEMP[0].x, TEMP[1].xxxx, IMM[2].yyyy
 35: ENDIF
 36: MOV TEMP[1].x, TEMP[0].xxxx
 37: ABS TEMP[2].x, CONST[1].yyyy
 38: ABS TEMP[3].x, CONST[0].yyyy
 39: MUL TEMP[3].x, IMM[0].xxxx, TEMP[3].xxxx
 40: SLT TEMP[2].x, TEMP[3].xxxx, TEMP[2].xxxx
 41: IF TEMP[2].xxxx :0
 42:   RCP TEMP[2].x, CONST[1].yyyy
 43:   MUL TEMP[2].x, CONST[0].yyyy, TEMP[2].xxxx
 44:   MAD TEMP[3].x, TEMP[2].xxxx, TEMP[2].xxxx, IMM[0].yyyy
 45:   RSQ TEMP[3].x, TEMP[3].xxxx
 46:   MUL TEMP[0].x, TEMP[2].xxxx, TEMP[3].xxxx
 47:   SSG TEMP[2].x, TEMP[0].xxxx
 48:   ABS TEMP[3].x, TEMP[0].xxxx
 49:   ADD TEMP[3].x, IMM[0].yyyy, -TEMP[3].xxxx
 50:   SQRT TEMP[3].x, TEMP[3].xxxx
 51:   ABS TEMP[4].x, TEMP[0].xxxx
 52:   ABS TEMP[5].x, TEMP[0].xxxx
 53:   ABS TEMP[6].x, TEMP[0].xxxx
 54:   MAD TEMP[6].x, TEMP[6].xxxx, IMM[0].wwww, IMM[1].xxxx
 55:   MAD TEMP[5].x, TEMP[5].xxxx, TEMP[6].xxxx, IMM[1].yyyy
 56:   MAD TEMP[4].x, TEMP[4].xxxx, TEMP[5].xxxx, IMM[0].zzzz
 57:   MUL TEMP[3].x, TEMP[3].xxxx, TEMP[4].xxxx
 58:   ADD TEMP[3].x, IMM[0].zzzz, -TEMP[3].xxxx
 59:   MUL TEMP[0].x, TEMP[2].xxxx, TEMP[3].xxxx
 60:   SLT TEMP[2].x, CONST[1].yyyy, IMM[1].zzzz
 61:   IF TEMP[2].xxxx :0
 62:     SGE TEMP[2].x, CONST[0].yyyy, IMM[1].zzzz
 63:     IF TEMP[2].xxxx :0
 64:       ADD TEMP[0].x, TEMP[0].xxxx, IMM[1].wwww
 65:     ELSE :0
 66:       ADD TEMP[0].x, TEMP[0].xxxx, IMM[2].xxxx
 67:     ENDIF
 68:   ENDIF
 69: ELSE :0
 70:   SSG TEMP[2].x, CONST[0].yyyy
 71:   MUL TEMP[0].x, TEMP[2].xxxx, IMM[2].yyyy
 72: ENDIF
 73: MOV TEMP[1].y, TEMP[0].xxxx
 74: ABS TEMP[2].x, CONST[1].zzzz
 75: ABS TEMP[3].x, CONST[0].zzzz
 76: MUL TEMP[3].x, IMM[0].xxxx, TEMP[3].xxxx
 77: SLT TEMP[2].x, TEMP[3].xxxx, TEMP[2].xxxx
 78: IF TEMP[2].xxxx :0
 79:   RCP TEMP[2].x, CONST[1].zzzz
 80:   MUL TEMP[2].x, CONST[0].zzzz, TEMP[2].xxxx
 81:   MAD TEMP[3].x, TEMP[2].xxxx, TEMP[2].xxxx, IMM[0].yyyy
 82:   RSQ TEMP[3].x, TEMP[3].xxxx
 83:   MUL TEMP[0].x, TEMP[2].xxxx, TEMP[3].xxxx
 84:   SSG TEMP[2].x, TEMP[0].xxxx
 85:   ABS TEMP[3].x, TEMP[0].xxxx
 86:   ADD TEMP[3].x, IMM[0].yyyy, -TEMP[3].xxxx
 87:   SQRT TEMP[3].x, TEMP[3].xxxx
 88:   ABS TEMP[4].x, TEMP[0].xxxx
 89:   ABS TEMP[5].x, TEMP[0].xxxx
 90:   ABS TEMP[6].x, TEMP[0].xxxx
 91:   MAD TEMP[6].x, TEMP[6].xxxx, IMM[0].wwww, IMM[1].xxxx
 92:   MAD TEMP[5].x, TEMP[5].xxxx, TEMP[6].xxxx, IMM[1].yyyy
 93:   MAD TEMP[4].x, TEMP[4].xxxx, TEMP[5].xxxx, IMM[0].zzzz
 94:   MUL TEMP[3].x, TEMP[3].xxxx, TEMP[4
TGSI asm error: Unknown opcode [9 : 7] 
etnaviv_compiler: could not parse `tgsi/segfault.tgsi'
