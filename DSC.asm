include 'emu8086.inc'

mov ah,01
int 21h
mov cl,al
mov bl,'0'

label:
     mov dl,cl
     mov ah,02
     int 21h
     
     cmp cl,bl
     je jump
     
     dec cl
     jmp label
     
     jump:
     ret


