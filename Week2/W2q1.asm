org 0000h
	
	mov r3, #20h;
	mov r2, #5;
	
	LOOP:
		mov a, @r3;
		add a, #0;
		addc a,r0;
		inc r3;
		djnz r2, LOOP;
		
		mov r1,a;
		mov a,r0;
		mov r0,#0;
		mov r3, r1;
		inc r3;
		mov r3, a;