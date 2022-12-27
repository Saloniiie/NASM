SECTION .data
   num db 0x35, 0x45

SECTION .bss
   n: resb 2

SECTION .text
   global _start

_start:
   CLC
   MOV AL, [num]
   CALL L1
   MOV [n], AL

   CLC
   MOV AL, [num+1]
   CALL L1
   MOV [n+1], AL   

   MOV R8B, [n]           ;35 => 5
   MOV R9B, [n+1]         ;45 => E

final:
   MOV AX, 1
   int 0x80

L2: 
   SUB AL, 0x07
   ret

L1: 
   SUB AL, 0x30
   CMP AL, 0x0A
   JNC L2
   ret