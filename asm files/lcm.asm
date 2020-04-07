.model small
.stack
.data
num1 dw 0035h
num2 dw 0015
lcm dw 20 dup(0)

.data
mov ax,@data
mov ds,ax

mov ax,num1
mov bx,num2
mov dx,0000h

up1:push ax
push dx
div bx
cmp dx,0000h
je exit
pop dx
pop ax
add ax,num1
adc dx,0000h
jmp up1

exit: pop dx
pop ax
lea si,lcm
mov [si],ax
mov [si+2},dx

mov ah,4ch
int 21h
end