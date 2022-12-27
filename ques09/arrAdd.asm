SECTION .text
   global _start
_start:
 
      mov eax, n1
      mov ebx, n2
      mov edx, n3
      mov cx, 3
   
L1:
      mov r11w, [eax]
      add r11w, [ebx]
      mov [edx], r11w
      add eax, 2
      add ebx, 2
      add edx, 2
      sub cx, 1
      cmp cx, 0
      jne L1

      mov r8w, [n3]
      mov r9w, [n3 + 1*2]
      mov r10w, [n3+ 2*2]

final:
      mov eax, 1
      int 0x80
         
SECTION .data
   n1 dw 0x0001, 0x0002, 0x0003
   n2 dw 0x0004, 0x0005, 0x0006

SECTION .bss
   n3: resw 3