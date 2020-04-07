.model small
.stack
.data
num db 05h 
res dw ?

.code
mov ax,@data
mov ds,ax

mov al,num
mov ah,00h

cmp ax,0001h
jbe dn1
call asc
mov res,ax
jmp exit

dn1:mov res,0001h

exit: mov ah,4ch
int 21h

fact proc
push ax
dec ax
cmp ax,0001h
jbe dn2
call fact

dn2:pop bx
mul bx
ret
fact endp

end