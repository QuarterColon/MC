org 0000h
	start:
		clr a
		back: mov p1,a
		inc a
		cjne a,#0b3h,back
		sjmp start
		end
			
			