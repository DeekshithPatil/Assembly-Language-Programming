.model small
.stack
.data
num dw 0ffffh
res dw 2 dup(0)

.code
mov ax,@data
mov ds,ax

mov ax,num

up:cmp ax,10000
ja dn1
cmp ax,1000
ja dn2
cmp ax,100
ja dn3
cmp ax,000ah
ja dn4
mov res+2,al
jmp exit

dn1:SUB AX,10000
mov res,01h
jmp up
dn2:SUB AX,1000
mov res+1,10h
jmp up
dn3:sub ax,100
mov res+1,01h
jmp up
dn4:sub ax,0ah
mov res+2,10h
jmp up

exit: mov ah,4ch
int 21h
end