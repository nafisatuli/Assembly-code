include 'emu8086.inc'

mov bl,0

label:
     mov ah,01
     int 21h
     add bl,1
     cmp bl,10
     jge gt
     mov dl,bl
     add dl,48
     mov ah,02
     int 21h
     jmp jump 
     
     gt:
     mov ah,0
     mov al,0
     mov al,bl
     mov cl,10
     div cl
     mov dl,al
     mov cl,ah
     add dl,48
     mov ah,02
     int 21h
     mov dl,cl
     add dl,48
     mov ah,02
     int 21h

jump:
printn
loop label