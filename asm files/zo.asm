.model small
.stack
.data
num dw 0ffffh
zero dw 0000h
one dw 0000h

.code
mov ax,@data
mov ds,ax

mov ax,num
mov cx, 16
lea si,zero
lea di,one

up1:shr ax,01h
jc dn1
inc zero
jmp dn2
dn1:inc one
dn2:loop up1

mov ah,4ch
int 21h
end

