	   LXI H,2000
	   MVI C,05
	   MVI A,FF

BACK:	   CMP M
	   JC SKIP
	   MOV A,M

SKIP:	   INX H
	   DCR C
	   JNZ BACK
	   STA 6000
	   HLT
# ORG 2000H
# DB 0BH,02H,05H,0AH,06H
