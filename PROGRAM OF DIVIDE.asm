	   LDA 2001	// DIVISOR
	   ADI 00
	   JZ EXIT
	   MOV C,A
	   MVI E,00	// QOUIENT
	   LDA 2000	// DIVIDEND

BACK:	   CMP C
	   JC NEXT
	   SUB C
	   INR E
	   JMP BACK

NEXT:	   STA 2003	// REMAINDER STORED
	   MOV A,E
	   STA 2002

EXIT:	   HLT
# ORG 2000H
# DB 07H ,03H
