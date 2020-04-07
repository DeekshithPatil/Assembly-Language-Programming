.model small
.stack
.data
num dw 4444h,2222h,1111h 
len db ($-num)/2
sum dw 2 dup(0)

.code 
mov ax,@data
mov ds,ax

mov cl,len
lea si,num
mov dx,[si]
inc si
inc si

up:mov bx,[si]
mov al,dl
add al,bl
daa
mov dl,al
mov al,dh
add al,bl
daa
mov dh,al
inc si
inc si
loop up

lea di,sum
mov [di],dx
mov ah,4ch
int 21h
end