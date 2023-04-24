org 000h;
	mov r2, #05h;
	mov r1, #40h;
	mov r0, #4ah;
	mov 08h, #45h;
	clr a;
	repeat:
		mov a, @r1;
		anl a,#0fh;
		mov r3, a;
		mov a,@r1;
		cjne r3, #08h, next;
		setb psw.3;
		mov @r0, a;
		clr psw.3;
		inc 08h;
		inc r1;
		djnz r2, repeat;
		mov a, r2;
		jz last;
		next:
			mov @r0, a;
			inc r0;
			inc r1;
			djnz r2, repeat;
			last : NOP;
end