include 'emu8086.inc'

mov ah,01
int 21h
mov bl,al
sub bl,48

mov cl,bl
mov dl,1
printn
label:
     mov bh,cl
     sub cl,1
     cmp cl,0
     je endd
     space:
     print ' '
     loop space
     endd:
     mov cl,dl
     star:
     print '*'
     loop star
     printn
     add dl,1
     mov cl,bh


loop label