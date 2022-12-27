SECTION .data
   n1 db 0x00, 0x00, 0x00, 0xAA
   n2 db 0x00, 0x00, 0x00, 0xFF

SECTION .bss
   n3: resb 4   

SECTION .text
   global _start
_start:
   CLC
   MOV AL, [n1+3]
   MOV BL, [n2+3]
   ADD AL, BL
   DAA
   MOV [n3+3], AL

   MOV AL, [n1+2]
   MOV BL, [n2+2]
   ADC AL, BL
   DAA
   MOV [n3+2], AL

   MOV AL, [n1+1]
   MOV BL, [n2+1]
   ADC AL, BL
   DAA
   MOV [n3+1], AL

   MOV AL, [n1]
   MOV BL, [n2]
   ADC AL, BL
   DAA
   MOV [n3], AL

   MOV rdx, [n3]

final:
   MOV AX, 1
   int 0x80