Assembly Language Programming

ques 01)  32 bit binary addition    
ques 02)  32 bit binary subtraction    
ques 03)  32 bit binary multiplication    
ques 04)  16 bit binary division    
ques 05)  32 bit BCD addition    
ques 06)  32 bit BCD subtraction    
ques 07)  Linear search    
ques 08)  Binary search    
ques 09)  Add two arrays    
ques 10)  Subtract two arrays    
ques 11)  Append two arrays    
ques 12)  Binary to ASCII conversion    
ques 13)  ASCII to Binary conversion    



Ubuntu Commands :    
nasm -f elf64 add.asm && ld add.o && ./a.out    
gdb ./a.out    
break final    
run    
layout regs    

or    

nasm -f elf64 linearSearch.asm && ld linearSearch.o && ./a.out    
gdb ./a.out    
break _start    
run    
layout regs    
stepi    
enter enter enter ...
