include 'emu8086.inc'

mov ah,01
int 21h
mov cl,al
sub cl,48
printn
label:
     mov ah,01
     int 21h
     
     cmp al,91
     jl small
     cmp al,96
     jg capital
     
     small:
     print ' '
     add al,32
     mov dl,al
     mov ah,02
     int 21h
     jmp return 
     
     capital:
     print ' '
     sub al,32
     mov dl,al
     mov ah,02
     int 21h
     jmp return 
     
return:
printn

loop label