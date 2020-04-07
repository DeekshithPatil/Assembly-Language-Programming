.model small
.stack
.data
n1 dw 0001h,5555h
n2 dw 0000h,3333h
res dw 4 dup(0)

.code
mov ax,@data
mov ds,ax

lea si,res
mov ax,n1+2
mov bx,n2+2
mul bx

mov res,ax
mov res+2,dx
mov ax,n1
mul bx

add res+2,ax
adc res+4,dx
mov ax,n1+2
mov bx,n2
mul bx

add res+2,ax
adc res+4,dx

mov ax,n1
mul bx
add res+4,ax
adc res+6,dx

mov ah,4ch
int 21h
end