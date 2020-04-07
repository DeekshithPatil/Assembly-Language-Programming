.model small
.stack
.data
num dw 1000h
msg1 db "pallindrome$"
msg2 db "not pallindrome$"

.code
mov ax,@data
mov ds,ax

mov ax,num
mov cl,16

up:ror ax,01h
rcl dx,01h
loop up

cmp dx,ax
je dn

mov dx,offset msg2
mov ah,09h
int 21h
jmp exit

dn:mov dx,0ffset msg1
mov ah,09h
int 21h

exit:mov ah,4ch
int 21h
end