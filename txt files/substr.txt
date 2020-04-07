.model small
.stack
.data
s1 db "heloo$"
l1 db ($-s1)
s2 db "loo$"
l2 db ($-s2)
msg1 db "found$"
msg2 db "not found$"

.code
mov ax,@data
mov ds,ax
mov es,ax

lea si,s1
lea di,s2

mov dx,l1
mov bx,l2
sub dx,bx

inc bx

up:mov cx,len2
push si
repe cmpsb
je dn
pop si
inc si
dec bx
jnz up

mov dx,offset msg2
mov ah,09h
int 21h
jmp exit

dn:mov dx,offset msg1
mov ah,09h
int 21h

exit: mov ah,4ch
int 21h
end