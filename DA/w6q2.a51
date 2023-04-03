org 000h
	start : mov r2,#0eh
mov dptr , #sinetable
repeat:clr a
movc a,@a+dptr
mov p1,a
inc dptr
djnz r2,repeat
sjmp start

ORG 0300H 
	SINETABLE : DB 80H,0BFH,0BH,0FFH,0BFH,80H,40H,11H,0DDH,11H,40H,80H
END