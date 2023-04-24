org 0000h
mov tmod,#01h
mov th0, #0feh
mov tl0, #33h
again: mov p1,#00h
acall delay
mov p1, #66h
acall delay
mov p1, #0b3h
acall delay
acall delay
mov p1, #0ffh
acall delay
sjmp again
delay: setb tr0
back: jnb tf0, back
clr tf1
clr tr1
mov th0, #0feh
mov tl0, #033h
ret
end