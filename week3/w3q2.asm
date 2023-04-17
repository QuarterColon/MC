org 0000h

mov r0, #55h
	mov r1, #65h
	mov r2, #05h
	mov sp, #74h 
	
loop: mov a, #99h
clr c
subb a, @r0
inc a
da a 
add a , @r1
da a 
jnc neg
push 0e0h
sjmp next

neg:mov 7fh, a
mov a , #99h
clr c
subb a, 7fh
inc a
da a
push 0e0h 

next:
inc r0
inc r1
djnz r2, loop
end
