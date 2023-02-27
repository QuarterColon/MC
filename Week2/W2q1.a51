org 0000h;
	
	mov r1, #20h;
	mov r2, #5h;
	clr a;
	BACK:
		
		add a, @r1;
		inc r1;
		jnc down;
	DOWN:
		djnz r2,back;
		mov 26h, a;
		mov 25h, r1;
END