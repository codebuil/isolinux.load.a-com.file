org 100
head:
mov ax,0
mov ebx,0b8000h
mov ecx,4000
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
loop1:
int 21h
int 20h
ret
ret
checkin:
hello db 27,"c",27,"[44;37m",13,10,"hello world.....",13,10,13,10,"$$$$",0

