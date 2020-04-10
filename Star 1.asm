include 'emu8086.inc'
mov ah,01
int 21h

mov cl,al
sub cl,48

label:
     print '*'
     loop label