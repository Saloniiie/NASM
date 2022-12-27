SECTION .data
   arr dd 0x00000001, 0x00000002, 0x00000003, 0x00000004, 0x00000005
   element dd 0x00000001

SECTION .text
   global _start

_start:
   CLC

   MOV EDX, 4     ; right index
   MOV EBX, 0     ; left index
   MOV ECX, [element] ; key

L1:     ; BX=l   AX=m   DX=r
   CMP EBX,EDX ; exit when lIndex > rIndex
   JG not_found
   MOV EAX,EBX
   ADD EAX,EDX ; AX=BX+DX
   SHR EAX,1 ; AX = midIndex ; m=(l+r)/2

   MOV EDI, arr
   ADD EDI, EAX
   ADC EDI, EAX
   ADC EDI, EAX
   ADC EDI, EAX
   CMP ECX, [EDI]
   JE found
   JG rarr
   JMP larr

rarr:
    INC EAX 
    MOV EBX,EAX ; l=m+1
    JMP L1

larr:
    DEC EAX
    MOV EDX,EAX ; r=m-1
    JMP L1


not_found:
    mov r8w, 0x0000
    MOV EAX, 1
    int 0x80

found: 
    mov r8w, 0xffff
    mov eax, 1
    int 0x80