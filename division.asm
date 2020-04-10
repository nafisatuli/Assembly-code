include 'emu8086.inc'
mov ah,01
int 21h
mov bl,al
sub bl,48

mov ah,01
int 21h
sub al,48

div bl

mov bl,ah
mov cl,al

;reminder
mov dl,bl
add dl,48
mov ah,02
int 21h

;result
mov dl,cl
add dl,48
mov ah,02
int 21h

