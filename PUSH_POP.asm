include 'emu8086.inc'

mov ax,1234h
push ax
pop bx

print_bh:
        mov ax,0
        mov al,bh
        cmp al,9
        jg greater
        jmp smaller
        
        greater:
        mov cl,16
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
        
        jmp print_bl
        
        smaller:
        mov dl,al
        add dl,48
        mov ah,02
        int 21h
        
        jmp print_bl
        
print_bl:
        mov ax,0
        mov al,bl
        cmp al,9
        jg greater2
        jmp smaller2
        
        greater2:
        mov cl,16
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
        
        ret
        
        smaller2:
        mov dl,al
        add dl,48
        
        mov ah,02
        int 21h
        ret