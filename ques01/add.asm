SECTION .data
   n1 dw 0x0001, 0xFFFF
   n2 dw 0x0002, 0x1111

SECTION .text
   global _start
_start:
   CLC
   MOV AX, [n1 + 1*2]
   MOV BX, [n2 + 1*2]
   ADD AX, BX
   MOV R8W, AX

   MOV AX, [n1 + 0*2]
   MOV BX, [n2]
   ADC AX, BX
   MOV R9W, AX

final:
   MOV AX, 1
   int 0x80