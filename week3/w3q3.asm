org 0000h
n equ 5
mov r2, #5h
dec r2
mov r0, #30h
j: mov 01h, 00h
i: mov a, @r1
inc r1
clr c
subb a, @r1
jnc skip
xch a, @r1
xch a, @r0
xch a, @r1
skip: cjne r1, #35h, i
inc r0
djnz r2, j
nop 
end
