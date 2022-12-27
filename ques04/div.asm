SECTION .data
   num     dw      0x0000, 0x000B
   dvsr    dw      0x0002
   
SECTION .text
   global _start

_start:
      MOV AX, [num+ 1*2]
      MOV BX, [dvsr]
      MOV DX, [num]
      DIV BX
      MOV r8w,AX   ;quotient
      MOV r9w,DX   ;remainder   

final:
      MOV AX, 1
      int 0x80