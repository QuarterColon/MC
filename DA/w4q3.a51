org 0000h
mov a, 70h
repeat:
mov b, #0ah
div ab
push b
jnz repeat
mov r2, #03h
l:acall delay
push p0
djnz r2,l
ajmp skip

org 0500h
	delay:
	mov r3, #01
	l3: mov r4, #01
	l2: mov r5, #01h
	l1: djnz r5, l1
	djnz r4, l2
	djnz r3, l3
	ret
	skip:
	end