bits 16
org 0x7c00

mov si, 0

section .bss
    num1 resb 16
    num2 resb 16


main:
	mov ah, 0x0e
	mov al, [loadmsg + si]
	int 0x10
	add si, 1
	cmp byte [loadmsg + si], 0 ; check to see if hello contains 0(end)
	jne main

	; print newline
	mov al, 10
	int 0x10
	mov al, 13
	int 0x10



loadmsg:
	db "Initializing Bootloader", 0

errmsg:
    db "Error Loading", 0

inpmsg:
    db " > ", 0

times 510 - ($ - $$) db 0
dw 0xAA55
