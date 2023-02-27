org 0000h
mov r2,#05h
mov r0,#4ah
mov sp,#44h
back:
pop 60h
mov a,60h
anl a,#0fh
jnz here
mov a,60h
swap a
anl a,#01h
cjne a,#01h,here
mov@r0,60h
inc r0
sjmp loop
here:mov@r1,60h
inc r1
loop:djnz r2,back
end

