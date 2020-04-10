include 'emu8086.inc'

mov ah,01
int 21h
mov ch,al
sub ch,48

label:
     mov ah,01
     int 21h
     mov bl,al
     sub bl,48
     
     mov ah,01
     int 21h
     mov dl,al
     sub dl,48
     
     add bl,dl
     
     cmp bl,9
     jg gt
     
     mov al,bl
     mov bl,2
     div bl
     
     mov bl,ah
     cmp bl,0
     je even
     
     jmp odd
     
     even:
     print 'Even'
     jmp return
     
     odd:
     print 'Odd'
     jmp return
     
     gt:
     mov al,bl
     mov cl,10
     div cl
     
     mov bl,ah
     mov al,0
     mov ah,0
     
     mov al,bl
     mov cl,0
     mov cl,2
     div cl
     
     mov bl,ah
     cmp bl,0 
     
     je even2
     jmp odd2 
     
     even2:
     print 'Even'
     jmp return
     
     odd2:
     print 'Odd'
     jmp return 
     
return: 
printn
loop label