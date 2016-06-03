    LIST        p=16F84A
    __CONFIG    03FF1H
	
;====================================================================
; VARIABLES
;====================================================================
	Reg_A	EQU 10H
	Reg_B	EQU 11H
	
;====================================================================
; CODE SEGMENT
;====================================================================		
org 0

	Start
      ; Write your code here
    
Loop  
      ;??????? ???????? 0F ? ??????? ????? ???????????
      movlw	b'00001111'	; 0F -> W
      movwf	Reg_A		; W -> Reg_A
      movlw	b'11110000'	; F0 -> W
      IORWF	Reg_A,1	    ; (W or Reg_A)-> Reg_A
      
      movlw	.64
      ANDWF	Reg_A, 1    ; (W and Reg_A)-> Reg_A
      
      addwf	Reg_A,0	    ; (W + Reg_A) -> W
      addwf	Reg_A,1	    ; (W + Reg_A) -> Reg_A
      
      
      movlw	.123
      movwf	Reg_B
      movfw	Reg_A
      subwf	Reg_B,0
      movwf	Reg_A
      
      nop
      
      
      
      
      goto  Loop
    end


