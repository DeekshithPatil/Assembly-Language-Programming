.model small
.stack
.data
arr db 05h,02h,04h,01h,03h
len db ($-arr)

.code
mov ax,@data
mov ds,ax

mov cl,len
dec cl 

up1:lea si,arr
mov bl,cl
up2:mov al,[si]
inc si
mov bh,[si]
cmp al,bh
jbe dn1
mov [si-1],bh
mov [si],al
dn1:dec bl
jnz up2
loop up1

mov ah,4ch
int 21h
end