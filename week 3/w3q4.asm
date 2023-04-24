org 0000h
mov dptr, #9050h
movx a, @dptr
mov r2, #08h
mov r3, #00h
mov c, psw.0
jnc skip
clr psw.5
swap a
mov dptr,#9052h
movx @dptr,a
loop:
rlc a
jnc here
inc r3
here:
djnz r2,loop
mov a,r3
mov dptr, #9051h
movx @dptr, a
skip:
end