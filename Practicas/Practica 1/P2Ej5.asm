ORG 1000h
Cumplio DB "Acceso permitido"
NoCumplio DB "Acceso denegado"
Bloqueado DB "Acceso BLOQUEADO"
Clave DB "1234"
Cadena DB ?
	
ORG 2000h
mov BX, offset Cadena
mov AL, 1
mov AH, offset Cadena - offset Clave
LoopIngreso: int 6
inc BX
dec AH 
jnz LoopIngreso
int 0
END
