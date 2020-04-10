include 'emu8086.inc'

mov ah,01
int 21h

mov bl,al
sub bl,48

mov ah,01
int 21h

mov cl,al
sub cl,48

add bl,cl
cmp bl,9
jg gt

mov dl,bl
add dl,48
mov ah,02
int 21h
ret 

gt:
   mov al,0
   mov ah,0
   mov cl,10
   mov al,bl
   div cl
   
   mov bl,al
   mov cl,ah
   
   mov dl,al
   add dl,48
   mov ah,02
   int 21h
   
   mov dl,cl
   add dl,48
   mov ah,02
   int 21h
   