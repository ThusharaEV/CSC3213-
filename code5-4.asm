
.model small
.stack 100h

.data
msg1 db "Greater number is: $"
n1 db 5
n2 db 3

.code
main:

mov ax,@data
mov ds,ax


mov al,n1
mov bl,n2


cmp al,bl  
jge FG	

SG:

mov dx,offset msg1 
mov ah,09h
int 21h


mov dl,n2
add dl,48
mov ah,02h
int 21h

FG:

mov dx,offset msg1 
mov ah,09h
int 21h


mov dl,n1
add dl,48
mov ah,02h
int 21h

Exit:
mov ah,4Ch
int 21h

end main
