.model small
.stack
.data
arr db "hello$"
len db ($-arr)
res db 00h

.code
mov ax,@data
mov ds,ax
mov es,ax

mov cx,len
lea si,arr

mov dl,[si]
cmp dl,'l'
jne dn
inc res
dn:inc si
loop up 

mov ah,4ch
int 21h