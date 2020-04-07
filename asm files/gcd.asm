.model small
.stack
.data
n1 dw 0035h
n2 dw 0015h
res dw 0000h

.code
mov ax,@data
mov ds,ax

mov ax,n1
mov bx,n2

up:mov dx,000h
div bx
cmp dx,000h
je dn
mov ax,bx
mov bx,dx
jmp up

dn:mov res,bx

mov ah,4ch
int 21h
end