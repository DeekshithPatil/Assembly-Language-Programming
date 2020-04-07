.model small
.stack
.data
s1 db "madam$"
l1 db ($-arr)
s2 db 50 dup(0)
msg1 db "pallindrome$"
msg2 db "not pallindrome$"

.code
mov ax,@data
mov ds,ax
mov es,ax

mov cl,l1
lea si,s1
lea di,s2

add di,cx
dec di

up1:mov al,[si]
mov [di],al
inc si
inc di
loop up1

mov cl,l1
lea si,s1
lea di,s2

up2:mov al,[si]
cmp al,[si]
jne dn1
inc si
inc di
loop up2

mov dx,offset msg1
mov ah,09h
int 21h
jmp exit

dn1:mov dx,offset msg2
mov ah,09h
int 21h

exit: mov ah,4ch
int 21h
end
