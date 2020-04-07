.model small
.stack
.data
arr dw 1200h,0031h,1022h,6252h,9200h
len dw ($-arr)/2

.code
mov ax,@data
mov ds,ax

mov cx,0002h

up1:mov bx,cx
dec bx
mov si,cx
dec si
add si,si

up1:mov dx,arr[si]
mov ax,arr[si-2]

cmp ax,dx
jbe dn
mov arr[si],ax
dec si
dec si
dec bx
jnz up1
mov arr[si],dx
inc cl
cmp cl,len
jbe up1

mov ah,4ch
int 21h
end