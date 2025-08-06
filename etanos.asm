[org 0x7c00]
[bits 16]

start:
    mov [MAIN_DISK], dl        ; Guardamos el disco primario

    mov bp, 0x9000
    mov sp, bp                 ; Creamos stack

    mov si, mensaje            ; Apuntamos al mensaje
    call print_string          ; Imprimimos mensaje

read_key:
    mov ah, 0x00               ; Esperar tecla
    int 0x16                   ; Leer tecla (función BIOS)

    mov ah, 0x0E               ; Mostrar tecla
    int 0x10

    jmp read_key               ; Repetir lectura de tecla

; ----------------------------------------
print_string:
    lodsb                      ; Carga el siguiente byte (carácter) en AL
    or al, al                  ; ¿Es fin de cadena? (0)
    jz .done

    mov ah, 0x0E               ; Función teletipo
    mov bh, 0x00               ; Página 0
    int 0x10                   ; Llama a BIOS para mostrar el carácter

    jmp print_string
.done:
    ret

mensaje db 'Bienvenido a Etanos', 0
MAIN_DISK: db 0

times 510 - ($ - $$) db 0
dw 0xAA55

