include 'emu8086.inc'

mov ah,01
int 21h
mov bl,al
sub bl,48

mov cl,bl
mov dl,1
printn
first:
     mov bh,cl
     
     cmp cl,bl
     je line1
     cmp cl,1
     je line2
     jmp space
     
     line1:
     print '*'
     jmp jump
     
     line2:
     mov cl,bl
     add cl,1
     star1:
     print '*'
     loop star1
     jmp jump
     
     space:
     mov cl,dl
     print '*'
     space2:
     print ' '
     loop space2
     print '*'
     add dl,1
     jmp jump
     
     jump:
     printn
     mov cl,bh
     loop first
