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
      sub cl,1 
      cmp cl,0
      je jump
      space:
      print '   '
      loop space
      jump:
      mov cl,dl
      star:
      print ' * '
      loop star
      printn
      add dl,2
      mov cl,bh
      loop first