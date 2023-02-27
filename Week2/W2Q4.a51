org 0000h;
mov r2,#0dh;
mov r1, #51h;
mov r0, #4Ch;
BACK:mov a,@r0;
	mov @r1,a;
	dec r0;
	dec r1;
	djnz r2, BACK; 
end