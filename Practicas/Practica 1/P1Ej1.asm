ORG 1000h
Mensaje DB "Primer Programa"
Cantidad DB ?

ORG 2000h
mov AL, 0 ; será el acumulador
mov CL, offset Cantidad - offset Mensaje ; cantidad de caracteres a imprimir
mov BX, offset Mensaje
Loop: cmp byte PTR [BX], 61h ; 61h es el valor hexadecimal de "a" en el código ASCII
jnz NoEsA
inc AL
NoEsA: inc BX ; avanzo en el string
dec CL ; cuando me de 0 termino de recorrer el string
jnz Loop
mov Cantidad, AL ; muevo a la variable la cantidad de "a" acumuladas
hlt
END
