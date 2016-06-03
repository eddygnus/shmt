; TODO INSERT CONFIG CODE HERE USING CONFIG BITS GENERATOR

    LIST	p=16F84A
    __CONFIG	03FF1H
   
    org	    0

    CLRF    06h
    bsf	    03h,5
    CLRF    06h
    bcf	    03h,5
    
    START
	
	bsf 06h,0
	call delay
	bcf 06h,0
	bsf 06h,1
	call delay
	bcf 06h,1
	bsf 06h,2
	call delay
	bcf 06h,2
	GOTO	    START
   
    delay
    ; Задержка 3 000 000 машинных циклов
    ; Длительность задержки 3 секунд
    ; Частота задающего генератора 4 МГц

            movlw       .0
            movwf       1CH
            movlw       .51
            movwf       1DH
            movlw       .16
            movwf       1EH
            decfsz      1CH,F
            goto        $-1
            clrwdt
            decfsz      1DH,F
            goto        $-4
            decfsz      1EH,F
            goto        $-6
            nop
            nop
    return
	
	
	
    END





