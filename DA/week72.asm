org 0000h
	exit:mov p2,#0fh
	repeat:mov p1,#00h
	notreleased:mov a,p2
	anl a,#0fh
	cjne a,#0fh,notreleased
	acall delay
	again:mov a,p2
	anl  a,#0fh
	cjne a,#0fh,pressed
	sjmp again
	pressed:acall delay
	mov a,p2
	anl a,#0fh
	cjne a,#0fh,keypressed
	sjmp again
	keypressed:mov p1,#11111110
	mov a,p2
	anl a,#0fh
	cjne a,#0fh ,row1
	mov p1,#11111110
	mov a,p2
	anl a,#0fh
	cjne a,#0fh,row1
	mov p1,#11111110
	mov a,p2
	anl a,#0fh
	cjne a,#11110111
	mov a,p2
	anl a,#0fh
	cjne a,#0fh,row3
	sjmp again
	row0code:mov dptr,#row0code,sjmp find 
	row2:mov dptr,#row2code,sjmp find
	row1:mov dptr,#row1code,sjmp find
	row3:mov dptr,#row3code,sjmp find
		find:rrc a
		jnc read
		inc dptr
		sjmp find
		read:clr a
		movc,a,@a+dptr
		jz exit
		acall cmd
		inc dptr
		sjmp read
	 	row0code:db '0','1','2','3'
		row1code:db '4','5','6','7'
		row2code:db '8','9','10','11'
		row3code:db '12','13','14','15'
			mov dptr,a
			loop:clr a
			movc a,@a+dptr
			jz done
			acall data
				inc dptr
				sjmp loop
				done:sjmp done
				cmd:acall busy
				clr p2.0
				clr p2.1
				mov p1,a
				setb p2.2
				nop 
				clr p2.2
				ret
				data:acall busy
					setb p2.0
					clr p2.1
					mov p1,a
					nop
					clr p2.2
					ret
				busy:setb p1.7
				clr p2.0
				setb p2.1
				clr p2.2
				jb p1.7
				clr p2.1
				ret
			end
	
	
		