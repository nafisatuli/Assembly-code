include 'emu8086.inc'

mov ah,01
int 21h
mov bl,al
sub bl,48

mov cl,bl
printn
first:
     mov bh,cl
     
     cmp cl,bl
     je star
     cmp cl,1
     je star
     jmp space
     
     star:
     mov cl,bl
     star2:
     print '*'
     loop star2
     jmp jump
     
     space:
     mov cl,bl
     sub cl,2
     print '*'
     space2:
     print ' '
     loop space2
     print '*'
     jmp jump
     
     jump:
     printn
     mov cl,bh
     loop first