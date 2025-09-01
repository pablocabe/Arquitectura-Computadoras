ORG 1000h
C DB "A"

ORG 2000h
mov AL, C
add AL, 20h
mov BX, offset C
mov [BX], AL
hlt
END
