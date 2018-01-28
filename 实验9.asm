assume cs:codesg,ds:datasg
datasg segment
	db 'welcome to masm!'
datasg ends

codesg segment
start:	mov ax,datasg
		mov ds,ax
		
		mov ax,0b87ch
		mov es,ax
		mov si,8h
		
		mov bx,0
		mov cx,7h
		mov ah,2h
s1:		mov al,[bx]
		inc bx
		mov es:[si],al
		inc si
		mov es:[si],ah
		inc si
		loop s1
		
		mov al,[bx]
		inc bx
		mov es:[si],al
		inc si
		mov ah,0
		mov es:[si],ah
		inc si
		
		mov cx,2
		mov ah,24h
s2:		mov al,[bx]
		inc bx
		mov es:[si],al
		inc si
		mov es:[si],ah
		inc si
		loop s2
		
		mov al,[bx]
		inc bx
		mov es:[si],al
		inc si
		mov ah,0
		mov es:[si],ah
		inc si
		
		mov cx,5
		mov ah,71h
s3:		mov al,[bx]
		inc bx
		mov es:[si],al
		inc si
		mov es:[si],ah
		inc si
		loop s3

		mov ax,4c00h
		int 21h
codesg ends
end start