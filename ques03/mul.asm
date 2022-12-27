SECTION .data
   n1 dw 0x0000, 0x000A
   n2 dw 0x0000, 0x0008

SECTION .text
   global _start

_start:
   CLC
   MOV AX, [n2+ 1*2]
   MOV CX, [n1+ 1*2]
   MUL CX
   MOV R8W, AX
   MOV R9W, DX

   MOV AX, [n1]
   MOV CX, [n2+ 1*2]
   MUL CX
   ADD R9W, AX
   MOV R10W, DX

   MOV AX, [n2]
   MOV CX, [n1+ 1*2]
   MUL CX
   ADC R9W, AX
   ADC R10W, DX

   MOV AX, [n2]
   MOV CX, [n1]
   MUL CX
   ADC R10W, AX
   ADC R11W, DX

final:
   MOV AX, 1
   int 0x80