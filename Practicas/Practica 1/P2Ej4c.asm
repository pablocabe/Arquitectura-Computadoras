ORG 1000h
Caracter DB 30h
Line DB 0Ah

ORG 2000h
mov BX, offset Caracter
mov AL, 1 ; solo se imprime un carácter
Loop: int 7
inc byte PTR [BX]
cmp byte PTR [BX], 3Ah
jnz Loop
int 0
END
