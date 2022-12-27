section .data
   arr dw 0x0001, 0x0002, 0x0003, 0x0004, 0x0005
   element dw 0x0003
   
SECTION .text
   global _start
_start:
    mov ebx, arr
    mov cx, 5

label1:
    mov ax, [ebx]
    cmp eax, [element]
    je equal
    add ebx, 2
    sub cx, 1
    cmp cx, 0
    jne label1

not_equal: 
    mov  r8w, 0x0000     

    mov  eax, 1     ;system call number (sys_exit)
    int  0x80       ;call kernel
   
equal:   
    mov  r8w, 0xffff      
	
    mov  eax, 1     ;system call number (sys_exit)
    int  0x80       ;call kernel