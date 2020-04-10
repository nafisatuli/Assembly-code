include 'emu8086.inc'

mov ah,01
int 21h

mov bl,al
sub bl,48

mov cl,bl
printn
label:
     mov bh,cl
     
     mov cl,bl
     star:
     print '*'
     loop star
     printn
     sub bl,1
     
     mov cl,bh
     loop label