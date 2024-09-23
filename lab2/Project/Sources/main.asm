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
            
SHORT_DELAY: DECA
  BNE SHORT_DELAY 
  RTS

Entry:
_Startup:

  LDAA PORTA
  ORAA #%00000001
  STAA PORTA

  ;LDAA #$05
  ;JSR SHORT_DELAY





  ;LDX #$FFFF  
  ;LDY #$FFFF  
  
;OUT_LOOP:
;IN_LOOP:
 ; DEY
 ;BNE IN_LOOP
 ; DEX
 ; BNE OUT_LOOP



            ;LDAA #$FF
        
;LOOP DECA
           ; NOP
           ; BNE LOOP

;**************************************************************
;*                 Interrupt Vectors                          *
;**************************************************************
            ORG   $FFFE
            FDB   Entry           ; Reset Vector
