.model small
.stack
.data

.code
mov ax,@data
mov ds,ax

mov ah,o1h
int 21h

mov bl,al
and al,0fh
call asc
mov dl,00h
mov cl,04h
mov al,bl
shr al,cl
call asc

mov ah,4ch
int 21h

asc proc 
cmp al,09h
jbe dn
add al,07h
dn:addd al,30h
mov dl,al
mov ah,02h
int 21h
ret 
asc endp

end