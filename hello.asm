org 100h
head:
mov ax,13h
int 10h
mov ax,0
mov ebx,0a0000h
mov ecx,60000
mov ax,0
mov es,ax
mov al,1
loop2:
es
mov [ebx],al
inc ebx
dec ecx
cmp ecx,0
jnz loop2
mov ax,0
int 16h
mov ax,3h
int 10h
mov ax,0
int 21h
int 20h
ret
ret
checkin:
hello db 27,"c",27,"[44;37m",13,10,"hello world.....",13,10,13,10,"$$$$",0

