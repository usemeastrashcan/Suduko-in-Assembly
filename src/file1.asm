[org 0x0100]

JMP START

filename db 'image.raw', 0
filename2 db 'image1.raw', 0
buffer_size equ 64000
digit1: db 0
digit2: db 0

big0:
	db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b

big1:
	db 00000000b, 00000000b,11111111b, 00000000b
    db 00000000b, 11111111b,11111111b, 00000000b
    db 00000000b, 11111111b,11111111b, 00000000b
    db 00000000b, 00000000b,11111111b, 00000000b
    db 00000000b, 00000000b,11111111b, 00000000b
    db 00000000b, 00000000b,11111111b, 00000000b
    db 00000000b, 00000000b,11111111b, 00000000b
    db 00000000b, 00000000b,11111111b, 00000000b
    db 00000000b, 00000000b,11111111b, 00000000b
    db 00000000b, 00000000b,11111111b, 00000000b
    db 00000000b, 00000000b,11111111b, 00000000b
    db 00000000b, 00000000b,11111111b, 00000000b
    db 00000000b, 00000000b,11111111b, 00000000b
    db 00000000b, 00000000b,11111111b, 00000000b
    db 00000000b, 11111111b,11111111b, 11111111b
    db 00000000b, 11111111b,11111111b, 11111111b
big2: 
	db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 00000000b,00000000b, 00000000b
    db 11111111b, 00000000b,00000000b, 00000000b
    db 11111111b, 00000000b,00000000b, 00000000b
    db 11111111b, 00000000b,00000000b, 00000000b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b

big3:
	db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b

big4:
	db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b

big5:
	db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 00000000b,00000000b, 00000000b
    db 11111111b, 00000000b,00000000b, 00000000b
    db 11111111b, 00000000b,00000000b, 00000000b
    db 11111111b, 00000000b,00000000b, 00000000b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b

big6:
	db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 00000000b,00000000b, 00000000b
    db 11111111b, 00000000b,00000000b, 00000000b
    db 11111111b, 00000000b,00000000b, 00000000b
    db 11111111b, 00000000b,00000000b, 00000000b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b

big7:
	db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b

big8:
	db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b

big9:
	db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 00000000b,00000000b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 11111111b, 11111111b,11111111b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
    db 00000000b, 00000000b,00000000b, 11111111b
;arrays to store the bitmapping of the caracters of notes
num0: db 00000000b , 00000000b , 00000000b , 00000000b , 00000000b , 00000000b , 00000000b , 00000000b
num1: db 00001000b , 00011000b , 00101000b , 00001000b , 00001000b , 00001000b , 00001000b , 00111110b
num2: db 00111100b , 01000100b , 10000100b , 00001000b , 00010000b , 00100000b , 01000000b , 11111110b
num3: db 00111100b , 01000010b , 01000010b , 00001110b , 00001110b , 01000010b , 01000010b , 00111100b
num4: db 00001000b , 00011000b , 00101000b , 01001000b , 01111110b , 00001000b , 00001000b , 00001000b
num5: db 01111100b , 01000000b , 01000000b , 01111000b , 00000100b , 00000100b , 01000100b , 00111000b 
num6: db 01111110b , 01000000b , 01000000b , 01000000b , 01111110b , 01000010b , 01000010b , 01111110b
num7: db 01111100b , 00000100b , 00000100b , 00011110b , 00000100b , 00000100b , 00000100b , 00000100b
num8: db 01111110b , 01000010b , 01000010b , 01111110b , 01111110b , 01000010b , 01000010b , 01111110b
num9: db 01111100b , 01000100b , 01000100b , 01111100b , 00000100b , 00000100b , 00000100b , 00000100b 

userArr: db 0,9,0,0,0,8,0,7,0 ,  2,3,4,4,5,6,0,8,9 , 0,0,0,0,0,0,0,0,0 , 0,0,0,0,0,0,0,0,0 , 0,0,0,0,0,0,0,0,0 , 0,0,0,0,0,0,0,0,0 , 0,0,0,0,0,0,0,0,0 , 0,0,0,0,0,0,0,0,0 , 0,0,0,0,0,0,0,0,9

;arrays for the notes

arr1: db 1,2,3,0,0,0,0,0,0
arr2: db 1,2,3,0,0,0,0,0,0
arr3: db 1,0,0,4,0,6,0,0,0
arr4: db 0,0,0,0,0,0,0,0,0
arr5: db 0,2,0,0,0,0,0,0,0
arr6: db 0,0,0,0,0,0,0,0,9
arr7: db 0,0,0,0,0,0,0,0,0
arr8: db 0,0,0,0,0,0,0,0,0
arr9: db 1,2,3,0,0,0,0,0,0
arr10: db 1,0,0,0,0,0,0,0,0
arr11: db 1,0,0,0,0,0,0,0,0
arr12: db 1,0,0,0,0,0,0,0,0
arr13: db 1,0,0,0,0,0,0,0,0
arr14: db 1,0,0,0,0,0,0,0,0
arr15: db 1,0,0,0,0,0,0,0,0
arr16: db 1,0,0,0,0,0,0,0,0
arr17: db 0,2,0,0,0,0,0,0,0
arr18: db 0,2,0,0,0,0,0,0,0
arr19: db 0,2,0,0,0,0,0,0,0
arr20: db 0,2,0,0,0,0,0,0,0
arr21: db 0,2,0,0,0,0,0,0,0
arr22: db 0,2,0,0,0,0,0,0,0
arr23: db 0,2,0,0,0,0,4,3,0
arr24: db 0,2,0,0,0,0,0,0,0
arr25: db 0,0,0,0,0,0,0,0,0
arr26: db 0,0,0,0,0,0,0,0,0
arr27: db 0,0,0,0,0,0,0,0,0
arr28: db 0,0,0,0,0,0,0,0,0
arr29: db 0,0,0,0,0,0,0,0,0
arr30: db 0,0,0,0,0,0,0,0,0
arr31: db 0,0,0,0,0,0,0,0,0
arr32: db 0,0,0,0,0,0,0,0,0
arr33: db 0,0,0,0,0,0,0,0,0
arr34: db 0,0,0,0,0,0,0,0,0
arr35: db 0,0,0,0,0,0,0,0,0
arr36: db 0,0,0,0,0,0,0,0,0
arr37: db 0,0,0,0,0,0,0,0,0
arr38: db 0,0,0,0,0,0,0,0,0
arr39: db 0,0,0,0,0,0,0,0,0
arr40: db 0,0,0,4,0,0,0,0,0
arr41: db 0,0,0,0,5,0,0,0,0
arr42: db 0,0,0,0,5,0,0,0,0
arr43: db 0,0,0,0,5,0,0,0,0
arr44: db 0,0,0,0,5,0,0,0,0
arr45: db 0,0,0,0,5,0,0,0,0
arr46: db 0,0,0,0,5,0,0,0,0
arr47: db 0,0,0,0,5,0,0,0,0
arr48: db 0,0,0,0,5,0,0,0,0
arr49: db 0,0,0,0,0,0,0,0,0
arr50: db 0,0,0,0,0,0,0,0,0
arr51: db 0,0,0,0,0,0,0,0,0
arr52: db 0,0,0,0,0,0,0,0,0
arr53: db 1,2,3,4,5,6,7,8,9
arr54: db 1,2,3,4,5,6,7,8,9
arr55: db 0,0,0,0,0,0,0,0,0
arr56: db 0,0,0,0,0,0,0,0,0
arr57: db 0,0,0,0,0,0,0,0,0
arr58: db 0,0,0,0,0,0,0,0,0
arr59: db 0,0,0,0,0,0,0,0,0
arr60: db 0,0,0,0,0,0,0,0,0
arr61: db 0,0,0,0,5,0,0,0,0
arr62: db 0,0,0,0,0,0,0,0,0
arr63: db 0,0,0,0,0,0,0,0,0
arr64: db 0,0,0,0,0,0,0,0,0
arr65: db 0,0,0,0,0,0,0,0,0
arr66: db 0,0,0,0,0,0,0,0,0
arr67: db 0,0,0,0,0,0,0,0,9
arr68: db 0,0,0,0,0,0,0,0,0
arr69: db 0,0,0,0,0,0,0,0,0
arr70: db 0,0,0,0,0,0,0,0,0
arr71: db 0,0,0,0,0,0,0,0,0
arr72: db 0,0,0,0,0,0,0,0,0
arr73: db 0,0,0,0,0,0,0,0,0
arr74: db 1,2,3,4,5,0,7,8,9
arr75: db 0,0,0,0,0,0,0,0,0
arr76: db 0,0,0,0,0,0,0,0,0
arr77: db 0,0,0,0,0,0,0,0,0
arr78: db 0,0,0,0,0,0,0,0,0
arr79: db 0,0,0,0,0,0,0,0,0
arr80: db 1,0,0,0,5,6,7,8,9
arr81: db 1,0,3,4,5,6,7,8,9

AvailableNumbers: db 1,0,3,4,5,6,7,8,9
Avail_Num_Freq: db 1,2,3,7,7,7,9,7,3


Undo: db 'UNDO'
LengthOfUndo: dw LengthOfUndo - Undo

Hint: db 'HINT'
LengthOfHint: dw LengthOfHint - Hint

Pencil: db 'PENCIL'
LengthOfPencil: dw LengthOfPencil - Pencil

Erase: db 'ERASE'
LengthOfErase: dw LengthOfErase - Erase


mistakes: db 'Mistakes: 0/3'
lengthOfMistakes: dw lengthOfMistakes-mistakes

Score: db 'Score: 70'
LengthOfScore: dw LengthOfScore - Score

Time: db 'Time:   :'
lengthOfTime: dw lengthOfTime-Time

set_video_mode:
    mov ax, 0xa000   ; 640x480, 16-color mode
    mov es, ax
    int 0x10          ; Call BIOS interrupt to set video mode
    ret

;Write graphics pixel	AH=0Ch	AL = Color, BH = Page Number, CX = x, DX = y
setPixel: 
	PUSH BP
	MOV BP, SP
	PUSHA
	MOV AH, 0x0C
	MOV AL, 0x03	; ATTRIBUTE  OF THE pixel
	MOV BH, 0
	MOV CX, [BP+4] ; VALUE OF X
	MOV DX, [BP+6] ; VALUE OF Y
	INT 10H
	POPA
	POP BP
	RET	4
	
setPixelBlue: 
	PUSH BP
	MOV BP, SP
	PUSHA
	MOV AH, 0x0C
	MOV AL, 0x0b	; ATTRIBUTE  OF THE pixel
	MOV BH, 0
	MOV CX, [BP+4] ; VALUE OF X
	MOV DX, [BP+6] ; VALUE OF Y
	INT 10H
	POPA
	POP BP
	RET	4

; push length
;push x
;push y
drawHorizontal:
PUSH bp
MOV BP, SP
pusha
mov ah, 0X0C
mov al, 0x0f
mov bh, 0
MOV DI, 10

mov DX, [bp+4] ;Y
OUTERLOOP:


	mov CX, [bp+6] ;X
	MOV SI, [BP+8] ;length
	ADD SI, CX

LP:
int 10h
INC CX
CMP CX, SI
JNE LP

ADD DX, 40 ; INCREMENTING Y FOR ANOTHER LINE
DEC di
JNZ OUTERLOOP

popa
POP BP
ret 6

DRAWVERTICAL:

PUSH bp
MOV BP, SP
pusha
mov ah, 0X0C
mov al, 0x0f
mov bh, 0
mov CX, [bp+6] ;X
MOV DI, 10

OUTERLOOP2:

mov DX, [bp+4] ;Y
MOV SI, [BP+8] ;length
ADD SI, DX

LPE:
int 10h
INC DX
CMP DX, SI
JNE LPE

ADD CX, 40
DEC di
JNZ OUTERLOOP2

popa
POP BP
RET 6



;[BP+4] WILL HAVE THE number to be printed
; [BP+6] WILL HAVE THE STARTTING VAL OF X
; [BP+8] WILL HAVE THE STARTTING VAL OF Y
PRINT32X16:
	PUSH BP
	MOV BP, SP
	PUSHA
	
	;calculating the address of the bitmap of the number to be printed
	mov ax, [bp+4]
	dec ax
	mov dx, 64
	mul DX
	mov di, ax
	ADD DI, big1
	
	
	
	MOV CX,511 ;OUTER COUNT FOR THE TRAVERSAL OF ARRAY
	MOV DX, 0 ;DL IS USED TO INCREMENT THE VALYE OF Y AND DH IS USED TO FETCH THE NEXT BYTE FOR PRINTINTG
	mov ax, [bp+6] ;value of pixel x of printitng
	mov bx, [bp+8] ; value of the pixel y
	add bx, 8;for the adjustment of printing in the centre of the box
	MOV SI, [DI]
	shl si, 8 ;WTF IS THIS FOR
prntLP:

	INC DL
	CMP DL, 32; 
JNZ Not_Inc_Row ;INCREMENTING THE VALUE OF Y HERE AND PLACE THE X BACK TO ZERO AND ADDING DI SO THAT IT  POINTS TO THE NEXT ROW
	MOV DL, 0
	INC BX
	SUB AX, 32
	; ADD DI, 1
	; Mov si, [di]
	; shl si, 8
Not_Inc_Row:
	INC DH
	CMP DH, 8
	jne NOT_RESET
	xor dh, DH
	inc DI
	mov si, [di]
	shl si, 8

NOT_RESET:
	

	INC ax
	shl si, 1
	jnc Not_SetPixel
	;BEOFRE THE NEXT 3 LINES, WE WILL CHECK WHETHER THE VALUE OF THE ARRAY IS 1
	PUSH bx ;X
	PUSH ax ;Y
	CALL setPixel

Not_SetPixel:
	
	loop prntLP

POPA
POP BP
RET 6



;[BP+4] WILL HAVE THE STARTING INDEX OF THE ARRAY OF THE BITMAP OF THE NUMBER
; [BP+6] WILL HAVE THE STARTTING VAL OF X
; [BP+8] WILL HAVE THE STARTTING VAL OF Y
PRINT8X8:
	PUSH BP
	MOV BP, SP
	PUSHA
	MOV DI, [BP+4]
	MOV CX, 63 ;OUTER COUNT FOR THE TRAVERSAL OF ARRAY
	MOV DX, 0 ;
	mov ax, [bp+6] ;value of pixel x of printitng
	mov bx, [bp+8] ; value of the pixel y
	MOV SI, [DI]
	shl si, 9
printLP:

	INC DX
	CMP DX, 8 ; 
JNZ NOTRESET ;INCREMENTING THE VALUE OF Y HERE AND PLACE THE X BACK TO ZERO AND ADDING DI SO THAT IT  POINTS TO THE NEXT ROW
	MOV DX, 0
	INC BX
	SUB AX, 8
	ADD DI, 1
	Mov si, [di]
	shl si, 8


NOTRESET:

	INC ax
	shl si, 1
	jnc NotSetPixel
	;BEOFRE THE NEXT 3 LINES, WE WILL CHECK WHETHER THE VALUE OF THE ARRAY IS 1
	PUSH bx
	PUSH ax
	CALL setPixelBlue

NotSetPixel:
	
	loop printLP

POPA
POP BP
RET 6

;we have the array number parameter
; x of the printing [bp+6]
;Y of the pixel from where we need to start printing [BP+4]
;THE NUMBER OF THE ARRAY TO ACCESS: [BP+8]
PrintNotes:
	PUSH BP
	MOV BP, SP
	PUSHA
	MOV BX, [BP+8] ;USED TO CALCUALTE THE OFFSET FROM THE ARR1 INDEX
	SHL BX, 3
	add bx, [bp+8]
	ADD BX, arr1 ; now bx has the address of the notes we have to print
	mov cx, 9
	MOV SI, [BP+4] ;Y
	MOV DI, [BP+6] ; X
	xor dx, dx
	xor ax, ax
mylp:
xor ax, ax
	MOV Al, [BX]
	DEC ax
	SHL AX, 3
	ADD AX, num1 ;WE SHOULD HAVE THE STARTING INDEX OF THE BITMAP ARRAY OF NUMBER TO BE PRINTED

	push SI
	push di
	push ax
	CALL PRINT8X8
	
	INC DX
	
	CMP Dx, 3
	jne NotIncNoteRow
		xor dx, dx
		ADD SI, 10
		mov di, [bp+6]	
		sub di, 10 ;because the next line adds a 10, this line is to ensure erfect printing

		
	
NotIncNoteRow:
	ADD DI, 10
	INC BX


loop mylp


	popa
	POP BP
	RET 6
;takes the char as parameters	
printchar:
push BP
		MOV BP, SP
		PUSHA
MOV Ah, 09H
MOV AL,[bp+4]
MOV BL, 0X12
MOV CX, 1
INT 10H
POPA
	POP BP
RET

;This function wil print the values if the value is not ZERO
;In case the value is zero, the notes array of the corresponding cell will be printed
;PARAMETERS:
; x of the printing [bp+6]
;Y of the pixel from where we need to start printing [BP+4]
PrintValues:
	PUSH BP
	MOV BP, SP
	PUSHA
	MOV BX, 0 ; WILL ITERATE TILL BX= 81 BECAUSE WE HAVE 9*9 VALUES
	mov si, [BP+6] ;VALUE OF PIXEL X
	MOV DI, [BP+4] ; VALUE OF PIXEL Y
	ADD SI, 5
	ADD DI, 5
	MOV DX, 0 ;THIS REGISTER WILL BE USED TO KEEP A TRACK OF THE POINT AT WHICH WE WILL HAVE TO INCREMENT THE Y VALUE OF THE PIXEL PRINTING
	
OutLP:
	MOV Ax, [userArr+BX]
	xor ah, ah
	CMP AX, 0
	JNE ValIsSet
	PUSH BX
	PUSH SI
	PUSH DI
	call PrintNotes
	JMP HERE

ValIsSet:
		
	PUSH DI ;Y
	PUSH SI ;X
	PUSH AX ;VALUE OF THE CELL
	CALL PRINT32X16
	; ADD AX, 0X30
	; PUSH ax
	; CALL printchar
;this means that the cell has a value and we do not have to print the notes of the cell
;IT IS MISSING FOR NOW
HERE:
INC DX
CMP DX, 9
JNE NotIncRow
	MOV SI, [BP+6]
	ADD SI, 5
	ADD DI, 40
	MOV DX, 0 ;RESETTING THE COUNTER
	sub si, 40;to make sure the following line doesnt mess up the code
	

NotIncRow:
	ADD SI, 40

INC BX
CMP BX, 81
JNE OutLP
	
	
	POPA
	POP BP
	RET 4
	
	
printTime:
	push bp
	mov bp, sp
	pusha

	mov ah, 02h   ;setting cursor position
	mov bh, 0
	mov dl, 18
	mov dh, 3
	int 10h

	mov si, 0
	mov bh, 0
	mov bl, 0x0f
	mov ah, 0eh

	PrintTimeLoop:
		mov al, [Time + si]
		int 10h
		inc si
		cmp si, [lengthOfTime]
		jne PrintTimeLoop
	
	popa
	pop bp
	ret
	
PrintScore:
	push bp
	mov bp, sp
	pusha

	mov ah, 02h   ;setting cursor position
	mov bh, 0
	mov dl, 36
	mov dh, 3
	int 10h

	mov si, 0
	mov bh, 0
	mov bl, 0x0f
	mov ah, 0eh

	PrintScoreLoop:
		mov al, [Score + si]
		int 10h
		inc si
		cmp si, [LengthOfScore]
		jne PrintScoreLoop
	
	popa
	pop bp
	ret
	
printMistakes:
	push bp
	mov bp, sp
	push si
	push bx
	push ax
	push dx

	mov ah, 02h   ;setting cursor position
	mov bh, 0
	mov dl, 50
	mov dh, 3
	int 10h

	mov si, 0
	mov bh, 0
	mov bl, 0x0f
	mov ah, 0eh

	loopStartsHere:
		mov al, [mistakes + si]
		int 10h
		inc si
		cmp si, [lengthOfMistakes]
		jne loopStartsHere
	
	pop dx
	pop ax
	pop bx
	pop si
	pop bp
	ret

timerFunction:
	push ax
	push cX

	mov cx, 0
	mov si, 0
	timerLoop:
		call default_cursor_position
		call display_minute
		come:          ;come here after iteration of each minute till si= 60
		call minute_cursor_position
		;call clear_previous

		call display_number

		call delay

		inc cx
		cmp cx, 60
		jle come

		inc si
		call default_cursor_position
		call display_minute
		cmp si, 60
		jle come

	pop cx
	pop ax
	ret
clear_previous:
	push ax
	push bx
	push cx

	mov ah, 0x0e
	mov al, 20
	mov bh, 0
	mov bl, 12

	int 10h
	mov al, 20
	int 10h
	mov al, 20
	int 10h

	pop cx
	pop bx
	pop ax

	ret

display_number:
	push ax
	push bx
	push cx

	mov ax, cx
	call convert_to_ascii

	mov ah, 0x0e
	mov al, [digit1]
	mov bh, 0
	mov bl, 0x0f
	int 10h


	mov al, [digit2]
	int 10h

	pop cx
	pop bx
	pop ax

	ret

display_minute:
	push ax
	push bx
	push si

	mov ax, si
	call convert_to_ascii

	mov ah, 0x0e
	mov al, [digit1]
	mov bh, 0
	mov bl, 0x0f
	int 10h


	mov al, [digit2]
	int 10h

	pop cx
	pop bx
	pop ax

	ret


delay:
	push ax
	push cx
	push dx

	mov cx, 0fh
	mov ah, 86h
	mov dx, 4240h
	int 15h

	pop dx
	pop cx
	pop ax
	ret

convert_to_ascii:
	push ax
	push dx
	push bx

	mov bx, 10
	xor dx, dx

	div bx
	add dl, 0x30
	mov [digit2], dl

	add al, 0x30
	mov [digit1], al

	pop bx
	pop dx
	pop ax
	ret

default_cursor_position:
	push ax
	push bx
	push dx

	mov ah, 02h
	mov bh, 0
	mov dl, 24
	mov dh, 3
	int 10h

	pop dx
	pop bx
	pop ax
	ret

minute_cursor_position:
	push ax
	push bx
	push dx

	mov ah, 02h
	mov bh, 0
	mov dl, 27
	mov dh, 3
	int 10h

	pop dx
	pop bx
	pop ax
	ret
	
;ptints all of the available numbers, takes x and y coordiantes as parameters	
PrintAvailableNumbers:

	push BP
	mov bp, SP
	pusha
	
	mov si, [bp+6]; x
	mov di, [bp+4] ;y
	add di, 5
	
	mov cx, 9
	mov bx, AvailableNumbers
	
	PrintAvailableNumbersLoop:
	
		mov ax, [bx]
		xor ah, ah
		cmp ax, 0
		je NotPrintNum
		
		push DI
		push SI
		push ax
		call PRINT32X16
		
		add di, 30 ;adjusting the location
		add si, 16

		mov ax,[bx+ 9]; ax has the val now
		xor ah, ah
		dec ax
		shl ax, 3
		add ax, num1
		
		
		
		push DI
		push SI
		push ax
		call PRINT8X8
		sub di, 30
		sub si, 16
		;sub ax, 9
		
	
		
	NotPrintNum:
	add si, 40
	inc bx
	
	loop PrintAvailableNumbersLoop
	
	popa
	pop bp
	ret 4

;Write graphics pixel	AH=0Ch	AL = Color, BH = Page Number, CX = x, DX = y
setPixelGrey: 
	PUSH BP
	MOV BP, SP
	PUSHA
	MOV AH, 0x0C
	MOV AL, 0X08 ; ATTRIBUTE  OF THE pixel
	MOV BH, 0
	MOV CX, [BP+4] ; VALUE OF X
	MOV DX, [BP+6] ; VALUE OF Y
	INT 10H
	POPA
	POP BP
	RET	4
	


RectangleBorder:
push BP
mov bp, SP
pusha
	mov si, [bp+4] ;y
	mov di, [bp+6] ;x
	mov dx, [bp+8] ; height
	mov ax, [bp+10] ;width
	
	mov cx, dx ;drawing vertical lines
	
	BorderLoopVertical:
	push si
	push di
	call setPixelGrey
	
	add di, aX
	push si
	push di
	call setPixelGrey
	
	sub di, ax
	inc si
	
	loop BorderLoopVertical
	
	mov cx, ax
	mov si, [bp+4]
	mov di, [bp+6]
	BorderLoopHorizontal:
	push si
	push di
	call setPixelGrey
	
	add si, DX
	
	push si
	push di
	call setPixelGrey
	
	sub si, dx
	
	inc di
	
	loop BorderLoopHorizontal
	
	

popa
pop bp
ret 8

PrintUndo:
	push bp
	mov bp, sp
	pusha

	mov ah, 02h   ;setting cursor position
	mov bh, 0
	mov dl, 67
	mov dh, 9
	int 10h

	mov si, 0
	mov bh, 0
	mov bl, 0x0f
	mov ah, 0eh

	PrintUndoLoop:
		mov al, [Undo + si]
		int 10h
		inc si
		cmp si, [LengthOfUndo]
		jne PrintUndoLoop
	
	popa
	pop bp
	ret
	
PrintHint:
	push bp
	mov bp, sp
	pusha

	mov ah, 02h   ;setting cursor position
	mov bh, 0
	mov dl, 67
	mov dh, 13
	int 10h

	mov si, 0
	mov bh, 0
	mov bl, 0x0f
	mov ah, 0eh

	PrintHintLoop:
		mov al, [Hint + si]
		int 10h
		inc si
		cmp si, [LengthOfHint]
		jne PrintHintLoop
	
	popa
	pop bp
	ret

PrintPencil:
	push bp
	mov bp, sp
	pusha

	mov ah, 02h   ;setting cursor position
	mov bh, 0
	mov dl, 66
	mov dh, 17
	int 10h

	mov si, 0
	mov bh, 0
	mov bl, 0x0f
	mov ah, 0eh

	PrintPencilLoop:
		mov al, [Pencil + si]
		int 10h
		inc si
		cmp si, [LengthOfPencil]
		jne PrintPencilLoop
	
	popa
	pop bp
	ret
	
PrintErase:
	push bp
	mov bp, sp
	pusha

	mov ah, 02h   ;setting cursor position
	mov bh, 0
	mov dl, 66
	mov dh, 21
	int 10h

	mov si, 0
	mov bh, 0
	mov bl, 0x0f
	mov ah, 0eh

	PrintEraseLoop:
		mov al, [Erase + si]
		int 10h
		inc si
		cmp si, [LengthOfErase]
		jne PrintEraseLoop
	
	popa
	pop bp
	ret

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

	push ds
    push word 0xA000
	pop ds

    mov ah, 0x3F
    mov cx, buffer_size
    mov dx, 0
    int 0x21
    jc error2

    mov ah, 0x3E
    int 0x21

	pop ds
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

; checkKeyPressed:
;                             ; zf = 1 means no key pressed
;     mov ah, 0x00
;     int 0x16
;     cmp al, 27                      ;ascii of esc key is 27
;     je transition

;     ;otherwise jump to statr of game

;     ret

playBGMusic:
    push cx
    mov cx, 20
    play:
        call playSound
    loop play

    pop cx
    ret

START:
	mov ax, 0x13
	int 10h
mov ax, filename
push ax
call renderImage
call playBGMusic
mov ax, 0x00 
int 16h

    mov ax, 0x12
    int 0x10

call set_video_mode

PUSH 360
PUSH 140 ; x
PUSH 70 ; y
CALL drawHorizontal

PUSH 360
PUSH 140
PUSH 70
CALL DRAWVERTICAL

push 140
push 70
call PrintValues


call printMistakes

call printTime

call PrintScore

push 140
push 435
call PrintAvailableNumbers


push 60 ;width
push 20 ;height
push 520; x
push 140 ;y
call RectangleBorder

call PrintUndo


push 60 ;width
push 20 ;height
push 520; x
push 204 ;y
call RectangleBorder

call PrintHint

push 60 ;width
push 20 ;height
push 520; x
push 268 ;y
call RectangleBorder

call PrintPencil

push 60 ;width
push 20 ;height
push 520; x
push 332 ;y
call RectangleBorder

call PrintErase

call timerFunction

mov ax, filename2
push ax
call renderImage

mov ax, 0x00 
int 16h



MOV AX, 0X4C00
INT 21H

