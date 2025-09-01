ORG 1000h
C DB "a"
Res DB ?

ORG 2000h
mov AL, C
cmp AL, 61h
js Salto
cmp AL, 7Bh
jns Salto
mov Res, 00h
jmp Fin
Salto: mov Res, 0FFh
Fin: hlt
END
