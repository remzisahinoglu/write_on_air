;************ 7 SEGMENTL� D�J�TAL SAAT****************************

;*********DE���KENLER�N TANIMLANMASI******************************
	LIST	P=16F628

PORTB	EQU	0X06
PORTA	EQU	0X05
STATUS	EQU	0X03
TRISB	EQU	0X86
TRISA	EQU	0X85
CMCON	EQU	0X1F

;*********G�R�S/CIKIS AYARLARININ OLUSTURULMASI*******************

	BSF	STATUS,5	;BANK1 E GEC	
	CLRF	TRISB		;PORTB CIKIS
	MOVLW	b'01000011'	;RB0,RB1,RB7 G�R��
	MOVWF	TRISA		;PORTA G�R�S
	BCF	STATUS,5	;BANK0 A GEC

	MOVLW	b'00000111'	;B�T�N KARSILASTIRICILAR KAPALI
	MOVWF	CMCON		;T�M P�NLER G�R�S/CIKIS
	CLRF	PORTB		;BASLANGICTA T�M LED LER S�N�K

;***************ANA PROGRAMIN OLUSTURULMASI***********************

;************* "R" HARF� ���N ************************************

BASLA
	MOVLW	b'01111111'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'00001001'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'00011001'
	MOVWF	PORTB		
	CALL	BEKLE1
	MOVLW	b'00101001'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'01000110'
	MOVWF	PORTB
	CALL	BEKLE1

	CLRF	PORTB
	CALL	BEKLE1

;************* "E" HARF� ���N*************************************

	MOVLW	b'01111111'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'01001001'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'01001001'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'01001001'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'01000001'
	MOVWF	PORTB
	CALL	BEKLE1
	
	CLRF	PORTB
	CALL	BEKLE1

;************ "M" HARF� ���N**************************************

	MOVLW	b'01111111'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'00000010'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'00000100'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'00000010'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'01111111'
	MOVWF	PORTB
	CALL	BEKLE1
	
	CLRF	PORTB
	CALL	BEKLE1

;************ "Z" HARF� ���N**************************************

	MOVLW	b'01100001'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'01010001'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'01001001'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'01000101'
	MOVWF	PORTB
	CALL	BEKLE1
	MOVLW	b'01000011'
	MOVWF	PORTB
	CALL	BEKLE1
	
	CLRF	PORTB
	CALL	BEKLE1

;************ "�" HARF� ���N**************************************

	MOVLW	b'01111101'
	MOVWF	PORTB
	CALL	BEKLE1
		
	CLRF	PORTB
	CALL	BEKLE2



	GOTO	BASLA



;***************1 M�L�SAN�YE GEC�KME YAP**************************
;***********LED�N B�R PARCA YANIK KALMA S�RES�********************

BEKLE1
	MOVLW	d'111'		;YAKLASIK 1 M�L�SAN�YE 
	MOVWF	0X21		;BEKLEME YAP
D1	MOVLW	d'3'		
	MOVWF	0X20		
D2	DECFSZ	0X20,1		
	GOTO	D2		
	DECFSZ	0X21,1
	GOTO	D1
	RETURN

;*****************95 M�L�SAN�YE GEC�KME YAP***********************
;************PROGRAM BOSLUGUNDA K� LED�N S�N�K KALMA S�RES�*******

BEKLE2
	MOVLW	d'255'		;YAKLASIK 74 M�L�SAN�YE 
	MOVWF	0X22		;BEKLEME YAP
D3	MOVLW	d'97'		
	MOVWF	0X23		
D4	DECFSZ	0X23,1		
	GOTO	D4		
	DECFSZ	0X22,1
	GOTO	D3
	RETURN
	
	
	END






















