include 'emu8086.inc'

label:

printn
print 'Enter 1/2/3/4'
printn
mov ah,01
int 21h
mov dl,al
sub dl,48

;for add
cmp dl,1
je ad
 
;for subs
cmp dl,2
je sb
 
;for mul
cmp dl,3
je ml

;for div
cmp dl,4
je dv
jmp jump

;for add
ad:
printn
mov ah,01
int 21h
mov bl,al
sub bl,48

mov ah,01
int 21h
mov cl,al
sub cl,48
printn
print 'Result:'
add bl,cl

cmp bl,10
jge gt

mov dl,bl
add dl,48
mov ah,02
int 21h
jmp jump 


gt:
   mov al,0
   mov ah,0
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
   jmp jump
;for subs
sb:
printn
mov ah,01
int 21h
mov bl,al
sub bl,48

mov ah,01
int 21h
mov cl,al
sub cl,48

cmp cl,bl
jg negative
printn
print 'Result:'
sub bl,cl
mov dl,bl
add dl,48
mov ah,02
int 21h
jmp jump
negative:
        printn
        print 'Result:'
        print '-'
        sub cl,bl
        mov dl,cl
        add dl,48
        mov ah,02
        int 21h 
jmp jump 


;for mul
ml:
printn
mov ah,01
int 21h
mov bl,al
sub bl,48

mov ah,01
int 21h
mov cl,al
sub cl,48
printn
print 'Result:'
mov al,bl
mul cl
mov dl,al
add dl,48
mov ah,02
int 21h
jmp jump 

;for div
dv:
printn
mov ah,01
int 21h
mov bl,al
sub bl,48

mov ah,01
int 21h
mov cl,al
sub cl,48

;al for result,ah for reminder
mov ah,0
mov al,0
mov al,bl
div cl
mov bl,al
mov cl,ah
printn
print 'Result:' 


;result
mov dl,bl
add dl,48
mov ah,02
int 21h
 
;reminder
mov dl,cl
add dl,48
mov ah,02
int 21h
jmp jump 

jump:
jmp label