        include "p16f887.inc"

		;__CONFIG _DEBUG_ON  & _LVP_OFF & _FCMEN_OFF & _IESO_OFF & _BOR_OFF & _CPD_OFF & _CP_OFF & _MCLRE_OFF & _PWRTE_ON & _WDT_OFF & _WRT_OFF & _BOR21V
		;__CONFIG _INTRC_OSC_OCLKOUT
		__config _CONFIG1, _INTRC_OSC_NOCLKOUT & _WDT_OFF & _MCLRE_ON & _LVP_OFF & _CP_OFF

        list P=PIC16f887A

		vardelay1		EQU		H'20'
		vardelay2		EQU		H'21'
		vardelay3		EQU		H'22'
		vardelay4		EQU		H'23'
		#define			LED1			PORTA, 0	
		#define			LED2			PORTA, 1	
		#define			LED3			PORTA, 2	
		#define			LED4			PORTA, 3	
		#define			LED5			PORTA, 4	
		#define			LED6			PORTA, 5	
		#define			LED7			PORTE, 0	
		#define			LED8			PORTE, 1	
		#define			LED9			PORTC, 0	
		#define			LED10			PORTC, 1	
		#define			LED11			PORTC, 2	
		#define			LED12			PORTC, 3	
		#define			LED13			PORTD, 0	
		#define			LED14			PORTD, 1	
		#define			LED15			PORTD, 2	
		#define			LED16			PORTD, 3	
		#define			LED17			PORTC, 4	
		#define			LED18			PORTC, 5	
		#define			LED19			PORTC, 6	
		#define			LED20			PORTC, 7	
		#define			LED21			PORTD, 4	
		#define			LED22			PORTD, 5	
		#define			LED23			PORTD, 6	
		#define			LED24			PORTD, 7
		#define			LED25			PORTB, 0	
		#define			LED26			PORTB, 1	
		#define			LED27			PORTB, 2	
		#define			LED28			PORTB, 3	
		#define			LED29			PORTB, 4	
		#define			LED30			PORTB, 5	
		#define			LED31			PORTB, 6	
		#define			LED32			PORTB, 7	

		#define			ACENDER_LED1	bsf	LED1
		#define			ACENDER_LED2	bsf	LED2
		#define			ACENDER_LED3	bsf	LED3
		#define			ACENDER_LED4	bsf	LED4
		#define			ACENDER_LED5	bsf	LED5
		#define			ACENDER_LED6	bsf	LED6
		#define			ACENDER_LED7	bsf	LED7
		#define			ACENDER_LED8	bsf	LED8
		#define			ACENDER_LED9	bsf	LED9
		#define			ACENDER_LED10	bsf	LED10
		#define			ACENDER_LED11	bsf	LED11
		#define			ACENDER_LED12	bsf	LED12
		#define			ACENDER_LED13	bsf	LED13
		#define			ACENDER_LED14	bsf	LED14
		#define			ACENDER_LED15	bsf	LED15
		#define			ACENDER_LED16	bsf	LED16
		#define			ACENDER_LED17	bsf	LED17
		#define			ACENDER_LED18	bsf	LED18
		#define			ACENDER_LED19	bsf	LED19
		#define			ACENDER_LED20	bsf	LED20
		#define			ACENDER_LED21	bsf	LED21
		#define			ACENDER_LED22	bsf	LED22
		#define			ACENDER_LED23	bsf	LED23
		#define			ACENDER_LED24	bsf	LED24
		#define			ACENDER_LED25	bsf	LED25
		#define			ACENDER_LED26	bsf	LED26
		#define			ACENDER_LED27	bsf	LED27
		#define			ACENDER_LED28	bsf	LED28
		#define			ACENDER_LED29	bsf	LED29
		#define			ACENDER_LED30	bsf	LED30
		#define			ACENDER_LED31	bsf	LED31
		#define			ACENDER_LED32	bsf	LED32

        ; Start at the reset vector
        org     0x000
	        goto    Start
        org     0x004
Interrupt
        retfie

Start
        bsf     STATUS,RP0      ;bank 1
        bcf     STATUS,RP1

		BANKSEL ANSEL
		CLRF 	ANSEL
		BANKSEL ANSELH
		CLRF 	ANSELH

		BANKSEL TRISA

        movlw   H'00'
        movwf   TRISA          
        movwf   TRISB          
        movwf   TRISC           
        movwf   TRISD           
        movwf   TRISE

		BANKSEL PORTA
        movwf   PORTA          
        movwf   PORTB          
        movwf   PORTC           
        movwf   PORTD           
        movwf   PORTE

Main
		call 	Horario_1Grupo
		call 	Horario_1Grupo
		call 	Horario_1Grupo
		
		call 	AntiHorario_1Grupo
		call 	AntiHorario_1Grupo
		call 	AntiHorario_1Grupo
		
		call 	Horario_1Grupo
		call 	AntiHorario_1Grupo
		call 	Horario_1Grupo
		call 	AntiHorario_1Grupo
		call 	Horario_1Grupo
		call 	AntiHorario_1Grupo

		call 	AntiHorario_1Grupo
		call 	Horario_1Grupo
		call 	AntiHorario_1Grupo
		call 	Horario_1Grupo
		call 	AntiHorario_1Grupo
		call 	Horario_1Grupo

		call 	Horario_2Grupos
		call 	Horario_2Grupos
		call 	Horario_2Grupos
		call 	Horario_2Grupos
		call 	Horario_2Grupos
		call 	Horario_2Grupos

		call 	AntiHorario_2Grupos
		call 	AntiHorario_2Grupos
		call 	AntiHorario_2Grupos
		call 	AntiHorario_2Grupos
		call 	AntiHorario_2Grupos
		call 	AntiHorario_2Grupos

		call 	Horario_2Grupos
		call 	AntiHorario_2Grupos
		call 	Horario_2Grupos
		call 	AntiHorario_2Grupos
		call 	Horario_2Grupos
		call 	AntiHorario_2Grupos
		call 	Horario_2Grupos
		call 	AntiHorario_2Grupos
		call 	Horario_2Grupos
		call 	AntiHorario_2Grupos
		call 	Horario_2Grupos
		call 	AntiHorario_2Grupos

		call 	AntiHorario_2Grupos
		call 	Horario_2Grupos
		call 	AntiHorario_2Grupos
		call 	Horario_2Grupos
		call 	AntiHorario_2Grupos
		call 	Horario_2Grupos
		call 	AntiHorario_2Grupos
		call 	Horario_2Grupos
		call 	AntiHorario_2Grupos
		call 	Horario_2Grupos
		call 	AntiHorario_2Grupos
		call 	Horario_2Grupos


		call 	Horario_4Grupos
		call 	Horario_4Grupos
		call 	Horario_4Grupos
		call 	Horario_4Grupos
		call 	Horario_4Grupos
		call 	Horario_4Grupos
		call 	Horario_4Grupos
		call 	Horario_4Grupos
		call 	Horario_4Grupos
		call 	Horario_4Grupos
		call 	Horario_4Grupos
		call 	Horario_4Grupos

		call 	AntiHorario_4Grupos
		call 	AntiHorario_4Grupos
		call 	AntiHorario_4Grupos
		call 	AntiHorario_4Grupos
		call 	AntiHorario_4Grupos
		call 	AntiHorario_4Grupos
		call 	AntiHorario_4Grupos
		call 	AntiHorario_4Grupos
		call 	AntiHorario_4Grupos
		call 	AntiHorario_4Grupos
		call 	AntiHorario_4Grupos
		call 	AntiHorario_4Grupos

		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos

		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos
		call 	AntiHorario_4Grupos
		call 	Horario_4Grupos

		goto	Main

Delay
	movlw	H'5C'
	movwf	vardelay1
	movwf	vardelay2
	;movwf	vardelay3
	;movwf	vardelay4

	dec




























































































































































































































































































































































































































































































































































































































































































































































































































































































fsz	vardelay1,F
	goto	$-1
	decfsz	vardelay2,F
	goto	$-3
	;decfsz	vardelay3,F
	;goto	$-5
	
	return


ZerarPortas
	movlw 	H'00'
	movwf	PORTA
	movwf	PORTB
	movwf	PORTC
	movwf	PORTD
	movwf	PORTE
	return



Horario_1Grupo
	call ZerarPortas
	ACENDER_LED1
	ACENDER_LED2
	ACENDER_LED3
	ACENDER_LED4
	call	Delay

	call ZerarPortas
	ACENDER_LED2
	ACENDER_LED3
	ACENDER_LED4
	ACENDER_LED5
	call	Delay

	call ZerarPortas
	ACENDER_LED3
	ACENDER_LED4
	ACENDER_LED5
	ACENDER_LED6
	call	Delay

	call ZerarPortas
	ACENDER_LED4
	ACENDER_LED5
	ACENDER_LED6
	ACENDER_LED7
	call	Delay

	call ZerarPortas
	ACENDER_LED5
	ACENDER_LED6
	ACENDER_LED7
	ACENDER_LED8
	call	Delay

	call ZerarPortas
	ACENDER_LED6
	ACENDER_LED7
	ACENDER_LED8
	ACENDER_LED9
	call	Delay

	call ZerarPortas
	ACENDER_LED7
	ACENDER_LED8
	ACENDER_LED9
	ACENDER_LED10
	call	Delay
	
	call ZerarPortas
	ACENDER_LED8
	ACENDER_LED9
	ACENDER_LED10
	ACENDER_LED11
	call	Delay

	call ZerarPortas
	ACENDER_LED9
	ACENDER_LED10
	ACENDER_LED11
	ACENDER_LED12
	call	Delay

	call ZerarPortas
	ACENDER_LED10
	ACENDER_LED11
	ACENDER_LED12
	ACENDER_LED13
	call	Delay

	call ZerarPortas
	ACENDER_LED11
	ACENDER_LED12
	ACENDER_LED13
	ACENDER_LED14
	call	Delay

	call ZerarPortas
	ACENDER_LED12
	ACENDER_LED13
	ACENDER_LED14
	ACENDER_LED15
	call	Delay

	call ZerarPortas
	ACENDER_LED13
	ACENDER_LED14
	ACENDER_LED15
	ACENDER_LED16
	call	Delay

	call ZerarPortas
	ACENDER_LED14
	ACENDER_LED15
	ACENDER_LED16
	ACENDER_LED17
	call	Delay

	call ZerarPortas
	ACENDER_LED15
	ACENDER_LED16
	ACENDER_LED17
	ACENDER_LED18
	call	Delay

	call ZerarPortas
	ACENDER_LED16
	ACENDER_LED17
	ACENDER_LED18
	ACENDER_LED19
	call	Delay

	call ZerarPortas
	ACENDER_LED17
	ACENDER_LED18
	ACENDER_LED19
	ACENDER_LED20
	call	Delay

	call ZerarPortas
	ACENDER_LED18
	ACENDER_LED19
	ACENDER_LED20
	ACENDER_LED21
	call	Delay

	call ZerarPortas
	ACENDER_LED19
	ACENDER_LED20
	ACENDER_LED21
	ACENDER_LED22
	call	Delay

	call ZerarPortas
	ACENDER_LED20
	ACENDER_LED21
	ACENDER_LED22
	ACENDER_LED23
	call	Delay

	call ZerarPortas
	ACENDER_LED21
	ACENDER_LED22
	ACENDER_LED23
	ACENDER_LED24
	call	Delay

	call ZerarPortas
	ACENDER_LED22
	ACENDER_LED23
	ACENDER_LED24
	ACENDER_LED25
	call	Delay

	call ZerarPortas
	ACENDER_LED23
	ACENDER_LED24
	ACENDER_LED25
	ACENDER_LED26
	call	Delay

	call ZerarPortas
	ACENDER_LED24
	ACENDER_LED25
	ACENDER_LED26
	ACENDER_LED27
	call	Delay

	call ZerarPortas
	ACENDER_LED25
	ACENDER_LED26
	ACENDER_LED27
	ACENDER_LED28
	call	Delay

	call ZerarPortas
	ACENDER_LED26
	ACENDER_LED27
	ACENDER_LED28
	ACENDER_LED29
	call	Delay

	call ZerarPortas
	ACENDER_LED27
	ACENDER_LED28
	ACENDER_LED29
	ACENDER_LED30
	call	Delay

	call ZerarPortas
	ACENDER_LED28
	ACENDER_LED29
	ACENDER_LED30
	ACENDER_LED31
	call	Delay

	call ZerarPortas
	ACENDER_LED29
	ACENDER_LED30
	ACENDER_LED31
	ACENDER_LED32
	call	Delay

	call ZerarPortas
	ACENDER_LED30
	ACENDER_LED31
	ACENDER_LED32
	ACENDER_LED1
	call	Delay

	call ZerarPortas
	ACENDER_LED31
	ACENDER_LED32
	ACENDER_LED1
	ACENDER_LED2
	call	Delay

	call ZerarPortas
	ACENDER_LED32
	ACENDER_LED1
	ACENDER_LED2
	ACENDER_LED3
	call	Delay

	return



AntiHorario_1Grupo
	call ZerarPortas
	ACENDER_LED4
	ACENDER_LED3
	ACENDER_LED2
	ACENDER_LED1
	call	Delay

	call ZerarPortas
	ACENDER_LED3
	ACENDER_LED2
	ACENDER_LED1
	ACENDER_LED32
	call	Delay

	call ZerarPortas
	ACENDER_LED2
	ACENDER_LED1
	ACENDER_LED32
	ACENDER_LED31
	call	Delay

	call ZerarPortas
	ACENDER_LED1
	ACENDER_LED32
	ACENDER_LED31
	ACENDER_LED30
	call	Delay

	call ZerarPortas
	ACENDER_LED32
	ACENDER_LED31
	ACENDER_LED30
	ACENDER_LED29
	call	Delay

	call ZerarPortas
	ACENDER_LED31
	ACENDER_LED30
	ACENDER_LED29
	ACENDER_LED28
	call	Delay

	call ZerarPortas
	ACENDER_LED30
	ACENDER_LED29
	ACENDER_LED28
	ACENDER_LED27
	call	Delay
	
	call ZerarPortas
	ACENDER_LED29
	ACENDER_LED28
	ACENDER_LED27
	ACENDER_LED26
	call	Delay

	call ZerarPortas
	ACENDER_LED28
	ACENDER_LED27
	ACENDER_LED26
	ACENDER_LED25
	call	Delay

	call ZerarPortas
	ACENDER_LED27
	ACENDER_LED26
	ACENDER_LED25
	ACENDER_LED24
	call	Delay

	call ZerarPortas
	ACENDER_LED26
	ACENDER_LED25
	ACENDER_LED24
	ACENDER_LED23
	call	Delay

	call ZerarPortas
	ACENDER_LED25
	ACENDER_LED24
	ACENDER_LED23
	ACENDER_LED22
	call	Delay

	call ZerarPortas
	ACENDER_LED24
	ACENDER_LED23
	ACENDER_LED22
	ACENDER_LED21
	call	Delay

	call ZerarPortas
	ACENDER_LED23
	ACENDER_LED22
	ACENDER_LED21
	ACENDER_LED20
	call	Delay

	call ZerarPortas
	ACENDER_LED22
	ACENDER_LED21
	ACENDER_LED20
	ACENDER_LED19
	call	Delay

	call ZerarPortas
	ACENDER_LED21
	ACENDER_LED20
	ACENDER_LED19
	ACENDER_LED18
	call	Delay

	call ZerarPortas
	ACENDER_LED20
	ACENDER_LED19
	ACENDER_LED18
	ACENDER_LED17
	call	Delay

	call ZerarPortas
	ACENDER_LED19
	ACENDER_LED18
	ACENDER_LED17
	ACENDER_LED16
	call	Delay

	call ZerarPortas
	ACENDER_LED18
	ACENDER_LED17
	ACENDER_LED16
	ACENDER_LED15
	call	Delay

	call ZerarPortas
	ACENDER_LED17
	ACENDER_LED16
	ACENDER_LED15
	ACENDER_LED14
	call	Delay

	call ZerarPortas
	ACENDER_LED16
	ACENDER_LED15
	ACENDER_LED14
	ACENDER_LED13
	call	Delay

	call ZerarPortas
	ACENDER_LED15
	ACENDER_LED14
	ACENDER_LED13
	ACENDER_LED12
	call	Delay

	call ZerarPortas
	ACENDER_LED14
	ACENDER_LED13
	ACENDER_LED12
	ACENDER_LED11
	call	Delay

	call ZerarPortas
	ACENDER_LED13
	ACENDER_LED12
	ACENDER_LED11
	ACENDER_LED10
	call	Delay

	call ZerarPortas
	ACENDER_LED12
	ACENDER_LED11
	ACENDER_LED10
	ACENDER_LED9
	call	Delay

	call ZerarPortas
	ACENDER_LED11
	ACENDER_LED10
	ACENDER_LED9
	ACENDER_LED8
	call	Delay

	call ZerarPortas
	ACENDER_LED10
	ACENDER_LED9
	ACENDER_LED8
	ACENDER_LED7
	call	Delay

	call ZerarPortas
	ACENDER_LED9
	ACENDER_LED8
	ACENDER_LED7
	ACENDER_LED6
	call	Delay

	call ZerarPortas
	ACENDER_LED8
	ACENDER_LED7
	ACENDER_LED6
	ACENDER_LED5
	call	Delay

	call ZerarPortas
	ACENDER_LED7
	ACENDER_LED6
	ACENDER_LED5
	ACENDER_LED4
	call	Delay

	call ZerarPortas
	ACENDER_LED6
	ACENDER_LED5
	ACENDER_LED4
	ACENDER_LED3
	call	Delay

	call ZerarPortas
	ACENDER_LED5
	ACENDER_LED4
	ACENDER_LED3
	ACENDER_LED2
	call	Delay
	return


Horario_2Grupos
	call ZerarPortas
	ACENDER_LED2
	ACENDER_LED3
	ACENDER_LED4
	ACENDER_LED18
	ACENDER_LED19
	ACENDER_LED20
	call	Delay

	call ZerarPortas
	ACENDER_LED3
	ACENDER_LED4
	ACENDER_LED5
	ACENDER_LED19
	ACENDER_LED20
	ACENDER_LED21
	call	Delay

	call ZerarPortas
	ACENDER_LED4
	ACENDER_LED5
	ACENDER_LED6
	ACENDER_LED20
	ACENDER_LED21
	ACENDER_LED22
	call	Delay

	call ZerarPortas
	ACENDER_LED5
	ACENDER_LED6
	ACENDER_LED7
	ACENDER_LED21
	ACENDER_LED22
	ACENDER_LED23
	call	Delay

	call ZerarPortas
	ACENDER_LED6
	ACENDER_LED7
	ACENDER_LED8
	ACENDER_LED22
	ACENDER_LED23
	ACENDER_LED24
	call	Delay

	call ZerarPortas
	ACENDER_LED7
	ACENDER_LED8
	ACENDER_LED9
	ACENDER_LED23
	ACENDER_LED24
	ACENDER_LED25
	call	Delay

	call ZerarPortas
	ACENDER_LED8
	ACENDER_LED9
	ACENDER_LED10
	ACENDER_LED24
	ACENDER_LED25
	ACENDER_LED26
	call	Delay
	
	call ZerarPortas
	ACENDER_LED9
	ACENDER_LED10
	ACENDER_LED11
	ACENDER_LED25
	ACENDER_LED26
	ACENDER_LED27
	call	Delay

	call ZerarPortas
	ACENDER_LED10
	ACENDER_LED11
	ACENDER_LED12
	ACENDER_LED26
	ACENDER_LED27
	ACENDER_LED28
	call	Delay

	call ZerarPortas
	ACENDER_LED11
	ACENDER_LED12
	ACENDER_LED13
	ACENDER_LED27
	ACENDER_LED28
	ACENDER_LED29
	call	Delay

	call ZerarPortas
	ACENDER_LED12
	ACENDER_LED13
	ACENDER_LED14
	ACENDER_LED28
	ACENDER_LED29
	ACENDER_LED30
	call	Delay

	call ZerarPortas
	ACENDER_LED13
	ACENDER_LED14
	ACENDER_LED15
	ACENDER_LED29
	ACENDER_LED30
	ACENDER_LED31
	call	Delay

	call ZerarPortas
	ACENDER_LED14
	ACENDER_LED15
	ACENDER_LED16
	ACENDER_LED30
	ACENDER_LED31
	ACENDER_LED32
	call	Delay

	call ZerarPortas
	ACENDER_LED15
	ACENDER_LED16
	ACENDER_LED17
	ACENDER_LED31
	ACENDER_LED32
	ACENDER_LED1
	call	Delay

	call ZerarPortas
	ACENDER_LED16
	ACENDER_LED17
	ACENDER_LED18
	ACENDER_LED32
	ACENDER_LED1
	ACENDER_LED2
	call	Delay

	call ZerarPortas
	ACENDER_LED17
	ACENDER_LED18
	ACENDER_LED19
	ACENDER_LED1
	ACENDER_LED2
	ACENDER_LED3
	call	Delay

	return



AntiHorario_2Grupos
	call ZerarPortas
	ACENDER_LED4
	ACENDER_LED3
	ACENDER_LED2
	ACENDER_LED20
	ACENDER_LED19
	ACENDER_LED18
	call	Delay

	call ZerarPortas
	ACENDER_LED3
	ACENDER_LED2
	ACENDER_LED1
	ACENDER_LED19
	ACENDER_LED18
	ACENDER_LED17
	call	Delay

	call ZerarPortas
	ACENDER_LED2
	ACENDER_LED1
	ACENDER_LED32
	ACENDER_LED18
	ACENDER_LED17
	ACENDER_LED16
	call	Delay

	call ZerarPortas
	ACENDER_LED1
	ACENDER_LED32
	ACENDER_LED31
	ACENDER_LED17
	ACENDER_LED16
	ACENDER_LED15
	call	Delay

	call ZerarPortas
	ACENDER_LED32
	ACENDER_LED31
	ACENDER_LED30
	ACENDER_LED16
	ACENDER_LED15
	ACENDER_LED14
	call	Delay

	call ZerarPortas
	ACENDER_LED31
	ACENDER_LED30
	ACENDER_LED29
	ACENDER_LED15
	ACENDER_LED14
	ACENDER_LED13
	call	Delay

	call ZerarPortas
	ACENDER_LED30
	ACENDER_LED29
	ACENDER_LED28
	ACENDER_LED14
	ACENDER_LED13
	ACENDER_LED12
	call	Delay
	
	call ZerarPortas
	ACENDER_LED29
	ACENDER_LED28
	ACENDER_LED27
	ACENDER_LED13
	ACENDER_LED12
	ACENDER_LED11
	call	Delay

	call ZerarPortas
	ACENDER_LED28
	ACENDER_LED27
	ACENDER_LED26
	ACENDER_LED12
	ACENDER_LED11
	ACENDER_LED10
	call	Delay

	call ZerarPortas
	ACENDER_LED27
	ACENDER_LED26
	ACENDER_LED25
	ACENDER_LED11
	ACENDER_LED10
	ACENDER_LED9
	call	Delay

	call ZerarPortas
	ACENDER_LED26
	ACENDER_LED25
	ACENDER_LED24
	ACENDER_LED10
	ACENDER_LED9
	ACENDER_LED8
	call	Delay

	call ZerarPortas
	ACENDER_LED25
	ACENDER_LED24
	ACENDER_LED23
	ACENDER_LED9
	ACENDER_LED8
	ACENDER_LED7
	call	Delay

	call ZerarPortas
	ACENDER_LED24
	ACENDER_LED23
	ACENDER_LED22
	ACENDER_LED8
	ACENDER_LED7
	ACENDER_LED6
	call	Delay

	call ZerarPortas
	ACENDER_LED23
	ACENDER_LED22
	ACENDER_LED21
	ACENDER_LED7
	ACENDER_LED6
	ACENDER_LED5
	call	Delay

	call ZerarPortas
	ACENDER_LED22
	ACENDER_LED21
	ACENDER_LED20
	ACENDER_LED6
	ACENDER_LED5
	ACENDER_LED4
	call	Delay

	call ZerarPortas
	ACENDER_LED21
	ACENDER_LED20
	ACENDER_LED19
	ACENDER_LED5
	ACENDER_LED4
	ACENDER_LED3
	call	Delay

	return


Horario_4Grupos
	call ZerarPortas
	ACENDER_LED3
	ACENDER_LED4
	ACENDER_LED11
	ACENDER_LED12
	ACENDER_LED19
	ACENDER_LED20
	ACENDER_LED27
	ACENDER_LED28
	call	Delay

	call ZerarPortas
	ACENDER_LED4
	ACENDER_LED5
	ACENDER_LED12
	ACENDER_LED13
	ACENDER_LED20
	ACENDER_LED21
	ACENDER_LED28
	ACENDER_LED29
	call	Delay

	call ZerarPortas
	ACENDER_LED5
	ACENDER_LED6
	ACENDER_LED13
	ACENDER_LED14
	ACENDER_LED21
	ACENDER_LED22
	ACENDER_LED29
	ACENDER_LED30
	call	Delay

	call ZerarPortas
	ACENDER_LED6
	ACENDER_LED7
	ACENDER_LED14
	ACENDER_LED15
	ACENDER_LED22
	ACENDER_LED23
	ACENDER_LED30
	ACENDER_LED31
	call	Delay

	call ZerarPortas
	ACENDER_LED7
	ACENDER_LED8
	ACENDER_LED15
	ACENDER_LED16
	ACENDER_LED23
	ACENDER_LED24
	ACENDER_LED31
	ACENDER_LED32
	call	Delay

	call ZerarPortas
	ACENDER_LED8
	ACENDER_LED9
	ACENDER_LED16
	ACENDER_LED17
	ACENDER_LED24
	ACENDER_LED25
	ACENDER_LED32
	ACENDER_LED1
	call	Delay

	call ZerarPortas
	ACENDER_LED9
	ACENDER_LED10
	ACENDER_LED17
	ACENDER_LED18
	ACENDER_LED25
	ACENDER_LED26
	ACENDER_LED1
	ACENDER_LED2
	call	Delay
	
	call ZerarPortas
	ACENDER_LED10
	ACENDER_LED11
	ACENDER_LED18
	ACENDER_LED19
	ACENDER_LED26
	ACENDER_LED27
	ACENDER_LED2
	ACENDER_LED3
	call	Delay
	return


AntiHorario_4Grupos
	call ZerarPortas
	ACENDER_LED4
	ACENDER_LED3
	ACENDER_LED28
	ACENDER_LED27
	ACENDER_LED20
	ACENDER_LED19
	ACENDER_LED12
	ACENDER_LED11
	call	Delay

	call ZerarPortas
	ACENDER_LED3
	ACENDER_LED2
	ACENDER_LED27
	ACENDER_LED26
	ACENDER_LED19
	ACENDER_LED18
	ACENDER_LED11
	ACENDER_LED10
	call	Delay

	call ZerarPortas
	ACENDER_LED2
	ACENDER_LED1
	ACENDER_LED26
	ACENDER_LED25
	ACENDER_LED18
	ACENDER_LED17
	ACENDER_LED10
	ACENDER_LED9
	call	Delay

	call ZerarPortas
	ACENDER_LED1
	ACENDER_LED32
	ACENDER_LED25
	ACENDER_LED24
	ACENDER_LED17
	ACENDER_LED16
	ACENDER_LED9
	ACENDER_LED8
	call	Delay

	call ZerarPortas
	ACENDER_LED32
	ACENDER_LED31
	ACENDER_LED24
	ACENDER_LED23
	ACENDER_LED16
	ACENDER_LED15
	ACENDER_LED8
	ACENDER_LED7
	call	Delay

	call ZerarPortas
	ACENDER_LED31
	ACENDER_LED30
	ACENDER_LED23
	ACENDER_LED22
	ACENDER_LED15
	ACENDER_LED14
	ACENDER_LED7
	ACENDER_LED6
	call	Delay

	call ZerarPortas
	ACENDER_LED30
	ACENDER_LED29
	ACENDER_LED22
	ACENDER_LED21
	ACENDER_LED14
	ACENDER_LED13
	ACENDER_LED6
	ACENDER_LED5
	call	Delay
	
	call ZerarPortas
	ACENDER_LED29
	ACENDER_LED28
	ACENDER_LED21
	ACENDER_LED20
	ACENDER_LED13
	ACENDER_LED12
	ACENDER_LED5
	ACENDER_LED4
	call	Delay

	return
end

