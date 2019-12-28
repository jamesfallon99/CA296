MOV AL, 41; Move 41 into AL
MOV BL,c0 ;initialise BL to start of VDU memory space
LOOP:
 MOV [BL], AL; Move AL into C0.
 INC AL; Increment AL;
 inc BL ;now BL should have C1
 CMP AL,5B; Compare values
 JNZ LOOP;
 END;