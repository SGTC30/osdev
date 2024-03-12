;
; A simple boot sector.
;
mov ah, 0x0e ;define loop.

mov al, 'H'
int 0x10
mov al, 'E'
int 0x10
mov al, 'L'
int 0x10
mov al, 'L'
int 0x10
mov al, 'O'
int 0x10


jmp $ ;jump to loop address.

times 510-($-$$) db 0 ;padding to make 512 bytes.

dw 0xaa55 ;magic number.
          ;bios boot sector.
