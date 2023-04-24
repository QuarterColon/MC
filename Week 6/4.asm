org 0000h
sjmp start

org 0030h
start:mov a,#38h
acall command
mov a,#01h
acall command
mov a,#06h
acall command 
mov a,#81h
acall command
mov dptr,#text1
again:clr a
movc a,@a+dptr
jz next
acall data1
inc dptr
sjmp again
next: mov a,#0c6h
acall command
mov dptr,#text2
repeat:clr a
movc a,@a+dptr
inc dptr
sjmp repeat
skip: sjmp skip

command:acall busy
clr p3.7
clr p3.6
mov p1,a
setb p3.5
nop
clr p3.5
ret

data1: acall busy
setb p3.7
clr p3.6
mov p2,a
setb p3.5
nop
clr p3.5
ret

busy:setb p2.7
clr p3.7
back:clr p2.5
nop
setb p2.5
jb p2.7,back
clr p1.7
ret

org 1000h
text1: db "MICROCONTROLLER",0
text2: db 8,0,5,1
	
end