.model small
.stack
.data
num db 15h
res db 20 dup(0)

.code
mov ax,@data
mov ds,ax

lea si,res
mov al,00h
mov [si],al
inc si
mov bl,01h
mov [si],bl
mov cl,02h
call fib

fib proc
cmp cl,num
je down
push bx
add bl,al
pop ax
inc cl
mov [si],bl
inc si
call fib
ret
fib endp

down:mov ah,4ch 
int 21h
end