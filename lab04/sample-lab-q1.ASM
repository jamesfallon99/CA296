ORG C0
DB 48
DB 65
DB 4C
DB 6C
DB 4F
DB 77
DB 4F
DB 72
DB 4C
DB 44
ORG 00
MOV AL,C0
MOV CL, A

LOOP:
 MOV BL,[AL]
 CMP BL,5B
 JS TO_LOWER
 JMP TO_UPPER

TO_LOWER:
 MOV DL,[AL]
 ADD DL,20
 MOV [AL],DL
 INC AL
 DEC CL
 JNZ LOOP
 JMP END

TO_UPPER:
 MOV DL,[AL]
 SUB DL,20
 MOV [AL],DL
 INC AL
 DEC CL
 JNZ LOOP
 JMP END

END:
 END

