MOV AL,00
MOV BL,00
MOV CL,20

LOOP:
 CMP CL,0
 JNZ LOOP2
 JMP END

LOOP2:
 MOV DL,[AL]
 INC AL
 DEC CL
 MOD DL,2
 JZ LOOP
 JMP ODD

ODD:
 INC BL
 JMP LOOP

END:
 END