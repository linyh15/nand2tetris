(LOOP)

@KBD
D=M
@BLACK
D;JNE
@WHITE
D;JEQ


@LOOP
0;JMP

(WHITE)
@0
M=0

@3
D=M
@RESETWHITE
D;JNE


@FILL
0;JMP

(BLACK)
@0
M=-1
@3
D=M
@RESETBLACK
D;JEQ

@FILL
0;JMP


(FILL)
@0
D=M
@1
A=M
M=D

//inc

@1
D=M+1
@1
M=D

@LOOP
0;JMP





(RESETBLACK)
@3
M=1

@16384
D=A
@1
M=D

@FILL
0;JMP

(RESETWHITE)
@3
M=0
@16384
D=A
@1
M=D

@FILL
0;JMP