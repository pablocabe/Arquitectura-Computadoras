ORG 1000h
Caracter DB 41h

ORG 2000h
mov BX, offset Caracter
mov AL, 1 ; solo se imprime un carácter
Loop: int 7
inc byte PTR [BX]
cmp byte PTR [BX], 5Bh
jnz Loop
int 0
END
