include 'emu8086.inc'

mov ah,01
int 21h
mov bl,al
sub bl,48

mov ah,01
int 21h
mov cl,al
sub cl,48

cmp cl,bl
jg gt

sub bl,cl
mov dl,bl
add dl,48
mov ah,02
int 21h
ret
gt:
  print '-'
  sub cl,bl
  mov dl,cl
  add dl,48
  mov ah,02
  int 21h