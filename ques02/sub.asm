SECTION .data
   n1 dw 0x0000, 0x000F
   n2 dw 0x0000, 0x000A

SECTION .text
   global _start
_start:
   CLC
   MOV AX, [n1 + 1*2]
   MOV BX, [n2 + 1*2]
   SUB AX, BX
   MOV R8W, AX

   MOV AX, [n1]
   MOV BX, [n2]
   SBB AX, BX
   MOV R9W, AX

final:
   MOV AX, 1
   int 0x80