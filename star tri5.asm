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
      mov cl,dl
      star:
      print '*'
      loop star
      add dl,1
      printn
      mov cl,bh
      loop first
      
      mov cl,bl
      sub cl,1
      second:
      mov bh,cl
      mov bh,cl
      star2:
      print '*'
      loop star2
      printn
      mov cl,bh
      loop second
      