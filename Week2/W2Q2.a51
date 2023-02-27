org 0000h;
	mov r1, #30h;
	mov r0, #25h;
	mov 08h, #35h;
	LOOP:
		mov a, @r0;
		subb a, @r1;
		setb psw.3;
		mov @r0, a;
		clr psw.3;
		djnz r2, LOOP;
		
	end