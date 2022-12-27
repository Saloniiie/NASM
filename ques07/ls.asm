section .data
   a dw 0x0123, 0x0234, 0x0345
   element dw 0x0234
   
SECTION .text
   global _start
_start:
    mov r8w,0

    mov ax, [a]
    cmp ax, [element]
    je equal

    mov ax, [a+ 1*2]
    cmp ax, [element]
    je equal

    mov ax, [a+ 2*2]
    cmp ax, [element]
    je equal
    

not_equal: 
    mov r8w,0x0000 
    mov ax, 1
    int 0x80

equal:  
    mov r8w,0xffff 
    mov ax, 1
    int 0x80