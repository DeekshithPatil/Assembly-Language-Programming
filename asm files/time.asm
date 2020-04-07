.model small
.stack
.data
.code 
mov ah,2ch
int 21h

mov al,ch
call time
mov dl,':'
mov ah,02h
int 21h
mov al,cl
call time
mov ah,4ch
int 21h

time proc
aam
add ax,3030h
mov dx,ax
xchg dh,dl

mov ah,02h
int 21h

mov dl,dh
mov ah,02h
int 21h
ret
time endp

end