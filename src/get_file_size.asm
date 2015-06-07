global _get_file_size

_get_file_size:
    push bp
    mov bp, sp
    sub sp, 2

    mov [bp-2], bx

    mov ax, word [bp+4]

    call os_get_file_size

    jnc .skip

    xor bx, bx

.skip:
    mov ax, bx

    mov bx, word [bp-2]

    mov sp, bp
    pop bp
    ret
