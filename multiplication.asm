include 'emu8086.inc'

mov ah,01
int 21h
mov bl,al
sub bl,48

mov ah,01
int 21h
sub al,48

mul bl

mov dl,al
add dl,48
mov ah,02
int 21h