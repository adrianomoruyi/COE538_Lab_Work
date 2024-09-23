;*****************************************************************
;*Assembly program ot multiply two 8-bit numbers together
;*****************************************************************

; export symbols
            XDEF Entry, _Startup            ; export 'Entry' symbol
            ABSENTRY Entry        ; for absolute assembly: mark this as application entry point



; Include derivative-specific definitions 
		INCLUDE 'derivative.inc' 


;********************************************************************
;* Code section *
;********************************************************************
            ORG $3000
MULTIPLICAND FCB 05 ; First Number
MULTIPLIER FCB 00 ; Second Number
PRODUCT RMB 16 ; Result of multiplication
;********************************************************************
;* The actual program starts here *
;********************************************************************
            ORG $4000

Entry:
_Startup:
            LDAA MULTIPLICAND ; Store the first number
            LDAB MULTIPLIER ;  Store the second number
            MUL ; Multiply them together
            STAB PRODUCT ; and store the sum
            SWI ; break to the monitor

;**************************************************************
;*                 Interrupt Vectors                          *
;**************************************************************
            ORG   $FFFE
            FDB   Entry           ; Reset Vector