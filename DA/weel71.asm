org 0000h
	setb p1.5
	mov p2,#0ffh
	mov p1,#03h
	setb p1.3
	setb p1.4
	nop
	clr p1.4
	clr p1.3
	wait1:jb p1.3,wait1
	wait:jnb p1.5,wait
	setb p1.6
	mov a,p2
	mov 55h,a
	end