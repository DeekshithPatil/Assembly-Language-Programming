.model small
.stack
.data
arr dw 1111h,2222h,3333h,4444h,5555h
len dw ($-arr)/2
key dw 3333h
msg1 db "element found at podition: &"
msg2 db "element not found$"
pos db ?

.code
mov ax,@data
mov ds,ax

mov bx,0001h; set lower bound
mov dx,len ; det upper bound
mov cx,key ; move key to cx

again: cmp bx,dx ; compare first and last element
ja fail
mov ax,bx ; to calculate mid
add ax,dx ; (low+high)
shr ax,1 ; divide by 2
mov si,ax
dec si
add si,si ; 2(ax-1) gives actual index of mid
cmp cx,arr[si]; compare cx with mid element
jae bigger
dec ax 
mov dx,ax
jmp again

bigger: je success
inc ax
mov bx,ax
jmp again

fail:lea dx,msg2
mov ah,09h
int 21h
jmp exit

success: add al,0
mov pos,al
lea dx,msg1
mov ah,09h
int 21h
mov dl,pos
mov ah,02h
int 21h

exit: mov ah,4ch 
int 21h
end