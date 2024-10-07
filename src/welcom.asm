[org 0x100]

jmp start

welcome: db 'Welcome To Suduko'
lengthh: dw 17
option1: db 'Press Any Key to Enter Game'
option2: db 'Press esc to Exit'
lengthh1: dw 27
lengthh2: dw 17

clrscr:
    push es
    push ax
    push di

    mov ax, 0xb800
    mov es, ax
    mov di, 0

        nextBytes:
            mov word [es:di], 0x4f20
            add di, 2
            cmp di, 4000
            jnz  nextBytes
    
    pop di
    pop ax
    pop es
    ret

coutLoop:
        mov al, [si]
        mov word [es:di], ax
        add di, 2
        inc si
        loop coutLoop
        ret


coutWelcome:
    push bp
    mov bp, sp
    push es
    push ax
    push di
    push si
    push cx

    mov ax, 0xb800
    mov es, ax
    mov di, (7*80 + 32)* 2

    mov ah, 0x4f
    mov si, [bp + 14]
    mov cx, [bp + 12]
    call coutLoop

    
    mov si, [bp + 10]
    mov cx, [bp + 8]
    mov di, (15*80 + 2)*2
    call coutLoop 

    mov si, [bp + 6]
    mov cx, [bp + 4]
    mov di, (15*80 + 58)*2
    call coutLoop

    pop cx
    pop si
    pop di
    pop ax
    pop es
    pop bp
    ret 4
    

playSound:
    push ax
    push bx
    push cx


    mov al, 10110110b           ;programable interval timer using channel 2 and mode 3
    out 0x43, al               ;sent output command to port 0x43   
    
    mov bx, 1193180 / 440   ; A4 (440 Hz)
    call beep

    mov bx, 1193180 / 523   ; C5 (523 Hz)
    call beep

    mov bx, 1193180 / 349   ; F4 (349 Hz)
    call beep

    mov bx, 1193180 / 659   ; E5 (659 Hz)
    call beep

    mov bx, 1193180 / 392   ; G4 (392 Hz)
    call beep

    mov bx, 1193180 / 784   ; G5 (784 Hz)
    call beep

    mov bx, 1193180 / 261   ; C4 (261 Hz)
    call beep

    mov bx, 1193180 / 330   ; E4 (330 Hz)
    call beep

    mov bx, 1193180 / 988   ; B5 (988 Hz)
    call beep

    mov bx, 1193180 / 220   ; A3 (220 Hz)
    call beep


    pop cx
    pop bx
    pop ax
    ret 

beep:
    push ax
    push bx

    mov al, bl
    out 0x42, al
    mov al, bh
    out 0x42, al

    in al, 0x61
    or al, 00000011b            ;turn on speaker by sending signal to port 0x61
    out 0x61, al                ;last 2 bits of keyboard controller port control speaker, so we make them 1

    mov cx, 65535               ;delay to make sound audible
    delayLoop:
        loop delayLoop
    
    in al, 0x61
    and al, 11111100b          ;turn off the speaker by turning bits of port 0x61 0
    out 0x61, al

    pop bx
    pop ax
    ret
    

playBeep:
    push ax
    push bx
    push cx


    mov al, 10110110b           ;programable interval timer using channel 2 and mode 3
    out 0x43, al               ;sent output command to port 0x43

    mov bx, 1193180 / 440 ;A            ;1193180 is base frequency, 440 is the frequency of note A, the result tells pit how fast to toggle to crerate tone
    call beep

    mov bx, 1193180 / 660 ;e5
    call beep             

    mov bx, 1193180 / 550 ;c5
    call beep    

    mov bx, 1193180 / 1175 ;d6
    call beep  

    mov bx, 1193180 / 2794 ;f7
    call beep  

    mov bx, 1193180 / 31 ;b0
    call beep 

    pop cx
    pop bx
    pop ax
    ret 

checkKeyPressed:
                            ; zf = 1 means no key pressed
    mov ah, 0x00
    int 0x16
    cmp al, 27                      ;ascii of esc key is 27
    je end

    ;otherwise jump to statr of game

    ret

playBGMusic:
    push cx
    mov cx, 20
    play:
        call playSound
    loop play

    pop cx
    ret




start:
    call clrscr
    mov ax, welcome
    push ax
    push word [lengthh]
    mov ax, option1
    push ax
    push word [lengthh1]
    mov ax, option2
    push ax
    push word [lengthh2]

    call playBGMusic
    call coutWelcome

    call checkKeyPressed





end:
    mov ax, 0x4c00
    int 21h