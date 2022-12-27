SECTION .data
   n1 db 0x0F, 0x0F, 0x0F, 0x0F
   n2 db 0x0A, 0x0A, 0x0A, 0x0A

SECTION .bss
   n3: resb 4   

SECTION .text
   global _start
_start:
   CLC
   MOV AL, [n1+3]
   MOV BL, [n2+3]
   SUB AL, BL
   DAS
   MOV [n3+3], AL

   MOV AL, [n1+2]
   MOV BL, [n2+2]
   SBB AL, BL
   DAS
   MOV [n3+2], AL

   MOV AL, [n1+1]
   MOV BL, [n2+1]
   SBB AL, BL
   DAS
   MOV [n3+1], AL

   MOV AL, [n1]
   MOV BL, [n2]
   SBB AL, BL
   DAS
   MOV [n3], AL

   MOV rdx, [n3]

final:
   MOV AX, 1
   int 0x80