org 0000h
	ljmp main
	org 0003h
		ljmp wave0
		org 0013h
			ljmp wave0
			main:
			mov ie, #10000101b
			clr tcon.0
			clr tcon.2
			mov tmod, #01h
			standby: sjmp standby
			
			wave0:
			mov r2, #07h
			setb p1.3
			acall delay 
			mov r2, #07h
			clr p1.3
			acall delay 
			sjmp wave0
			
			delay:
			mov th0, #0ffh
			mov tl0, #0e1h
			setb tr0
			wait: jnb tf0, wait
			clr tr0
			clr tf0
			djnz r2, delay
			ret
			
			

end
	
			