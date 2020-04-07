.model small
.stack
.data
arr db "hello"
len db ($-arr)

.code
mov ax,@data
mov ds,ax

mov cl,len
lea si,arr

up1:mov al,[si]
sub al,20h
mov dl,al
mov ah,02h
int 21h
inc si
loop up1

mov ah,4ch
int 21h
end
