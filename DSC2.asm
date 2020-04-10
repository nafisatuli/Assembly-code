include 'emu8086.inc'

mov ah,01
int 21h
mov bl,al
sub bl,48
mov cl,0

label:
     mov dl,cl
     add dl,48
     mov ah,02
     int 21h
     
     cmp cl,bl
     je jump
     
     add cl,1
     jmp label
     
     jump:
     ret