SECTION .data
   num db 0x5E, 0x41

SECTION .bss
   n: resb 4

SECTION .text
   global _start

_start:
   CLC
   MOV AL, [num]       ;5E
   MOV BL,AL           ;5E
   MOV CL, 4           ;4
   ROL AL, CL          ;E5
   CALL L1
   MOV [n], AL
   MOV AL, BL
   CALL L1
   MOV [n+1], AL

   CLC
   MOV AL, [num+1]      ;41
   MOV BL,AL            ;41
   MOV CL, 4            ;4
   ROL AL, CL           ;14 
   CALL L1
   MOV [n+2], AL
   MOV AL, BL
   CALL L1
   MOV [n+3], AL

   MOV R8B, [n]         ; 5 => 35
   MOV R9B, [n+1]       ; E => 45
   MOV R10B, [n+2]      ; 4 => 34
   MOV R11B, [n+3]      ; 1 => 31

final:
   MOV AX, 1
   int 0x80

L1:
   AND AL, 0x0F   
   CMP AL, 0x0A
   JC L2
   ADD AL, 0x07

L2: 
   ADD AL, 0x30
   ret