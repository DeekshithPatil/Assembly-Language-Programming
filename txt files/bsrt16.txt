.model small
.stack
.data
arr dw 1122h,5566h,2345h
len dw ($-arr)/2

.code
mov ax,@data
mov ds,ax

mov cx,len
dec cx

up2:lea si,arr
mov bx,cx

up1:mov ax,[si]
inc si
inc si
mov dx,[si]
cmp ax,dx
jbe dn
mov [si-2],dx
mov [si],ax
dn: dec bx
jnz up1
loop up2

mov ah,4ch
int 21h
end