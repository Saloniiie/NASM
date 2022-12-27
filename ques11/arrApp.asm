SECTION .text
   global _start
_start:

      mov ebx, n1
      mov edx, n3
      mov cx, 2
     
L1:
      mov ax, [ebx]
      mov [edx], ax
      add ebx, 2
      add edx, 2
      sub cx, 1
      cmp cx, 0
      jne L1


      mov ebx, n2
      mov cx, 2
     
L2:
      mov ax, [ebx]
      mov [edx], ax
      add ebx, 2
      add edx, 2
      sub cx, 1
      cmp cx ,0
      jne L2

     
      mov r8w, [n3]
      mov r9w, [n3+ 1*2]
      mov r10w, [n3+ 2*2]
      mov r11w, [n3+ 3*2]

final:
      mov ax, 1
      int 0x80
      

SECTION .data
   n1 dw 0x0001, 0x0002
   n2 dw 0x0006, 0x0007

SECTION .bss
   n3: resw 4