MVI C ,00H
LXI H,3000H
MOV A,M
INX H
ADD M
JNC SKIP 
INR C 
SKIP : INX H 
MOV M,A 
INX H
MOV M,C
HLT
#ORG 3000H
#DB A9H ,A8H 