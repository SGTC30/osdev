;
; A simple boot sector.
;
loop: ;define loop.

jmp loop ;jump to loop address.

times 510-($-$$) db 0 ;padding to make 512 bytes.

dw 0xaa55 ;magic number.
          ;bios boot sector.
