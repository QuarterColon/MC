org 0000h
	restart:
	mov r1, #1fh
	mov a, #00h
	loop:
		acall delay
		clr c
		mov p1, r1
		mov p2, a
		add a, #01h
		jnc skip
		inc r1
		skip: cjne r1, #20h, loop
		mov p1, r1
		mov r2, #20h
		loop1: inc p2
		acall delay 
		djnz r2, loop1
		sjmp restart
		
		org 0500h
			delay:
			mov r3, #20
			l3: mov r4, #50
			l2: mov r5, #0ffh
			l1: djnz r5, l1
			djnz r4, l2
			djnz r3, l3
			ret
			end