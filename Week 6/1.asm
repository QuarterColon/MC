org 0000h
mov a,47h
mov b,46h
mul ab
mov r2,b
da a
mov 49h,a
mov a,r2
addc a,#00h
da a
mov 48h,a
end