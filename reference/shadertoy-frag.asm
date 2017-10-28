FRAG
PROPERTY FS_COORD_PIXEL_CENTER INTEGER
PROPERTY FS_COLOR0_WRITES_ALL_CBUFS 1
DCL IN[0], POSITION, LINEAR
DCL OUT[0], COLOR
DCL CONST[1..2]
DCL CONST[0]
DCL TEMP[0]
DCL TEMP[1..140], LOCAL
IMM[0] FLT32 {    0.5000,     0.0000,    -0.5000,   500.0000}
IMM[1] FLT32 {    0.0020,     0.7000,    -0.1000,     2.0000}
IMM[2] FLT32 {    0.2500,     3.0000,     0.1000,     1.0000}
IMM[3] FLT32 {    0.0200,     1.5700,    50.0000,     5.0000}
IMM[4] FLT32 {   -1.0000,     1.5708,     0.7800,     0.0400}
IMM[5] FLT32 {   -0.4500,    10.0000,     6.2800,     0.7500}
IMM[6] FLT32 {    0.0595,     0.0111,     0.0081,     6.0000}
IMM[7] FLT32 {    0.2000,   100.0000,   700.0000,     0.0080}
IMM[8] FLT32 {    1.8000,     0.8000,     0.6000,    -0.6000}
IMM[9] FLT32 {    0.1250,     0.0010,    -0.4000,    22.0000}
IMM[10] FLT32 {   54.0000,    20.0000,     0.6931,     0.0500}
IMM[11] FLT32 {   -8.0000,    30.0000,     0.9000,     0.8800}
IMM[12] FLT32 {  300.0000,     2.5000,     7.9000,     0.5773}
IMM[13] FLT32 {   -6.0000,     0.6600,     1.4000,     0.0100}
IMM[14] FLT32 {    0.0100,    -0.0100,    10.0000,     0.0333}
IMM[15] FLT32 {   -0.9526,     0.2722,     0.1361,     0.5500}
IMM[16] FLT32 {    0.0000,     0.3700,     0.3000,     0.4000}
IMM[17] FLT32 {    0.2000,     0.1700,     0.1500,     0.9970}
IMM[18] FLT32 {    2.3800,     2.7200,     3.2640,     0.0015}
IMM[19] FLT32 {    0.7000,     1.0000,    -0.7000,  1999.9065}
IMM[20] FLT32 {10000.0000,     1.0000,     0.0000,     0.9990}
IMM[21] FLT32 { 2699.1501,  2721.3499,    21.5351,    14.3137}
IMM[22] FLT32 {   95.4337,    97.5970,     0.0300,    -0.9998}
IMM[23] FLT32 {10004.3027,     0.0000,     0.1000,    -0.9900}
IMM[24] FLT32 {  100.0001,    -0.3000,     1.2900,     1.1000}
IMM[25] FLT32 {   -0.0121,     0.0537,    -0.1174,     0.1939}
IMM[26] FLT32 {   -0.3327,     1.0000,    -2.0000,     1.5708}
IMM[27] FLT32 {    0.0000,     3.1416,    -3.1416,    -0.0270}
IMM[28] FLT32 {  111.1111,     1.5900,     3.5000,    15.8730}
IMM[29] FLT32 {    2.7000,     6.5000,    -1.1000,    -0.0600}
IMM[30] FLT32 {    7.1429,    -1.4500,    -0.6700,     1.0500}
IMM[31] FLT32 {   80.0000,     1.9000,    15.0000,     5.0000}
IMM[32] FLT32 {   -0.0020,   142.8572,    -1.4700,    -1.4000}
IMM[33] FLT32 {   -0.0250,   125.0000,     1.7500,    -0.8000}
IMM[34] FLT32 {    7.0000,     1.5000,     8.0000,    -0.0300}
IMM[35] FLT32 {    5.3983,     5.4427,    20.0000,    -0.5900}
IMM[36] FLT32 {   99.9995,     0.5900,   200.0000,    -0.6600}
IMM[37] FLT32 {   12.0000,     0.0833,    -1.3200,     0.9400}
IMM[38] FLT32 {    4.0000,    -0.0230,     0.8300,     0.0739}
IMM[39] FLT32 {    0.9859,     1.3000,   410.0000,     0.6500}
IMM[40] FLT32 {    0.0000,     1.0000,   128.0000,     0.0000}
DCL TEMP[141]
DCL TEMP[142]
  0: ADD TEMP[0], IN[0], IMM[0].xxyy
  1: MAD TEMP[0].y, TEMP[0], CONST[2].xxxx, CONST[2].yyyy
  2: RCP TEMP[1].x, CONST[0].xxxx
  3: RCP TEMP[1].y, CONST[0].yyyy
  4: MAD TEMP[1].xy, TEMP[0].xyyy, TEMP[1].xyyy, IMM[0].zzzz
  5: MOV TEMP[2].y, TEMP[1].yyyy
  6: RCP TEMP[3].x, CONST[0].yyyy
  7: MUL TEMP[3].x, CONST[0].xxxx, TEMP[3].xxxx
  8: MUL TEMP[2].x, TEMP[1].xxxx, TEMP[3].xxxx
  9: MUL TEMP[3].x, CONST[1].xxxx, IMM[1].xxxx
 10: FLR TEMP[141], TEMP[3].xxxx
 11: SUB TEMP[3].x, TEMP[3].xxxx, TEMP[141]
 12: MUL TEMP[3].x, IMM[0].wwww, TEMP[3].xxxx
 13: MAD TEMP[4].x, TEMP[3].xxxx, IMM[1].yyyy, IMM[1].zzzz
 14: SIN TEMP[4].x, TEMP[4].xxxx
 15: ADD TEMP[4].x, TEMP[4].xxxx, IMM[1].wwww
 16: MUL TEMP[4].x, TEMP[4].xxxx, IMM[2].xxxx
 17: MOV_SAT TEMP[4].x, TEMP[4].xxxx
 18: MUL TEMP[5].x, IMM[1].wwww, TEMP[4].xxxx
 19: ADD TEMP[5].x, IMM[2].yyyy, -TEMP[5].xxxx
 20: MUL TEMP[5].x, TEMP[4].xxxx, TEMP[5].xxxx
 21: MAD TEMP[4].x, TEMP[4].xxxx, TEMP[5].xxxx, IMM[0].zzzz
 22: MAD TEMP[4].x, TEMP[4].xxxx, IMM[2].zzzz, IMM[0].xxxx
 23: ADD TEMP[5].x, TEMP[3].xxxx, IMM[2].wwww
 24: SIN TEMP[5].x, TEMP[5].xxxx
 25: MUL TEMP[5].x, TEMP[5].xxxx, IMM[3].xxxx
 26: MOV TEMP[4].y, TEMP[5].xxxx
 27: MAD TEMP[6].x, TEMP[3].xxxx, IMM[1].yyyy, IMM[3].yyyy
 28: SIN TEMP[6].x, TEMP[6].xxxx
 29: ADD TEMP[6
TGSI asm error: Unknown opcode [64 : 7] 
etnaviv_compiler: could not parse `tgsi/shadertoy-frag.tgsi'
