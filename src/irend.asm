[org 0x0100]

jmp start

filename db 'image.raw', 0
filename2 db 'image1.raw', 0

buffer_size equ 64000
buffer times buffer_size db 0

renderImage:
    push bp
    mov bp, sp
    push ax
    push bx
    push cx
    push dx
    push si
    push di
    push es

    mov ah, 0x3D
    mov al, 0
    mov dx, [bp + 4]
    int 0x21
    jc error2

    mov bx, ax

    mov ax, 0xA000
    mov es, ax

    mov ah, 0x3F
    mov cx, buffer_size
    mov dx, buffer
    int 0x21
    jc error2

    mov si, buffer
    mov di, 0
    mov cx, buffer_size
    rep movsb

    mov ah, 0x3E
    int 0x21

    pop es
    pop di
    pop si
    pop dx
    pop cx
    pop bx
    pop ax
    pop bp
    ret 2
    error2:
            mov ah, 0x4C
            mov al, 1
            int 0x21


start:
    mov ax, 0x0013
    int 0x10

    mov ax, filename
    push ax
    call renderImage

    mov ah, 0x00
    int 0x16

    mov ax, filename2
    push ax
    call renderImage

    

    mov ah, 0x00
    int 0x16

    mov ax, 0x4C
    int 0x21

