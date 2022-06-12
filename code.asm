[org 0x0100]

mov cx, 10
jmp start
array_1: dw -100, 40, 9, 0, 10, -50, 100, 60, 80, 10
array_2: dw 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
array_3: dw 0,0,0,0,0,0,0,0,0,0
var: dw 10

start:
mov ax, array_1
mov bx, array_2
mov dx, array_3
cmp ax, var
jge copy2

copy1:
mov bx,ax
add bx,2
add ax,2
sub cx,1
jnz start

copy2:
js copy1
mov dx,ax
add dx,2
add ax,2
sub cx,1
jnz start

mov ax,0x4c00
int 21h
