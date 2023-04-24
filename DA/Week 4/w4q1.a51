org 0000h
	mov a, #00h
	restart:
	mov a, #25h
	back:
	mov p0, a
	acall delay
	inc a
	clr c
	da a
	cjne a, #51h, back
	sjmp restart
	
	org 0500h
		delay:
		mov r3, #40
		l3: mov r4, #50
		l2: mov r5, #0ffh
		l1: djnz r5, l1
		djnz r4, l2
		djnz r3, l3
		ret
		end