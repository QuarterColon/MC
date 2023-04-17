org 0000h
start: mov r2,#36
mov dptr,#sine
back: clr a
movc a,@a+dptr
mov p1,a
inc dptr
djnz r2,back
sjmp start

org 1000h
sine: db 128,149,168,191,209,224,240,245,253,255,253,245,240,224,209,191,168,149,128,105,84,64,45,30,17,8,2,0,8,8,17,30,45,64,84,105
	
end