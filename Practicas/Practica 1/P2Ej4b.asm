; para mostrar los dígitos del 0 al 9
ORG 1000h
Caracter DB 30h

ORG 2000h
mov BX, offset Caracter
mov AL, 1 ; solo se imprime un carácter
Loop: int 7
inc byte PTR [BX]
cmp byte PTR [BX], 3Ah
jnz Loop
int 0
END

; para mostrar todos los caracteres disponibles en el Código ASCII
ORG 1000h
Caracter DB 01h

ORG 2000h
mov BX, offset Caracter
mov AL, 1 ; solo se imprime un carácter
Loop: int 7
inc byte PTR [BX]
cmp byte PTR [BX], 80h
jnz Loop
int 0
END
