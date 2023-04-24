org 000h
	start : mov r2,#24
mov dptr , #sinetable
repeat:clr a
movc a,@a+dptr
mov p1,a
inc dptr
djnz r2,repeat
sjmp start

ORG 0050H 
	SINETABLE : DB 127,160, 191, 217, 237, 250, 255, 250, 237, 217, 191, 160, 127, 94, 63, 37, 17, 4, 0, 4, 17, 37, 63, 94, 127
		
END