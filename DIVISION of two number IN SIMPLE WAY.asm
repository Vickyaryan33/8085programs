LDA 2001H 
MOV B,A//DIVDEND
LDA 2000H
MOV C,A //DIVISOR
MVI D ,00H //QUOTIENT
MOV A,B
BACK:CMP C //B-C
JC SKIP 
SUB C
INR D
JNZ BACK
SKIP: STA 2002H //REMAINDER
 MOV A,D
STA 2003H 
HLT
#ORG 2000H 
#DB 03H,07H



