	#include<p18F4550.inc>

			org	0x00
			goto start
			org	0x08
			retfie
			org	0x18
			retfie
			

			
start		CALL	CLEAR
			CALL	Toggel
			INCF	PORTD, 1, A

CLEAR	    CLRF	PORTD, A

Toggel		MOVLW	B'00101010'
			XORWF	PORTD, F,A
			
			END

		
		
		