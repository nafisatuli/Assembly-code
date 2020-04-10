include 'emu8086.inc'
mov ah,01
int 21h
mov bl,al
sub bl,48

printn

mov cl,bl
mov ch,0

loop1:
mov ah,01
int 21h
push ax

loop loop1

exit:
printn
mov cl,bl
mov ch,0
loop2:
pop dx
mov ah,02
int 21h
loop loop2

