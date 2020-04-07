.model small
.stack
.data
arr db 01h,02h,03h,04h,05h
len db ($-arr)
od db 20 dup(0)
ev db 20 dup(0)

.code
mov ax,@data
mov ds,ax

mov cl,len
lea bx,arr
lea si,od
lea di,ev

up1:mov al,[bx]
ror al,01h
jc dn1
rol al,01h
mov [di],al
inc di
jmp dn2
dn1:rol al,01h
mov [si],al
inc si
dn2:inc bx
loop up1

mov ah,4ch
int 21h
end