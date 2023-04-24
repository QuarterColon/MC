org 0000h;

n equ 11;
mov r2, #n;
mov r0, #30h;

repeat:
	add a, @r0;
	da a;
	jnc next;
	xch a, 50h;
	add a, #01h;
	da a;
	xch a,50h;
next:
	inc r0;
	djnz r2, repeat;
	
	mov 51h, a;

end