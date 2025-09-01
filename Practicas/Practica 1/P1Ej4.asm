ORG 1000h
Mensaje DB "Mi Primer Programa"
Fin DB ?

ORG 2000h
mov BX, offset Mensaje
mov AL, offset Fin - offset Mensaje
Loop: mov AH, [BX]
cmp AH, 41h
js NoEsMayuscula
cmp AH, 5Bh
jns NoEsMayuscula
add AH, 20h
mov [BX], AH
NoEsMayuscula: inc BX
dec AL
jnz Loop
hlt
END
