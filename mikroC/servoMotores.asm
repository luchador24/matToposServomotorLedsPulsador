
_main:

;servoMotores.c,1 :: 		void main() {
;servoMotores.c,2 :: 		ANSEL=0;
	CLRF       ANSEL+0
;servoMotores.c,3 :: 		ANSELH=0;
	CLRF       ANSELH+0
;servoMotores.c,4 :: 		TRISC=0x00;
	CLRF       TRISC+0
;servoMotores.c,5 :: 		PortC=0x00;
	CLRF       PORTC+0
;servoMotores.c,6 :: 		TRISA=0xFF;
	MOVLW      255
	MOVWF      TRISA+0
;servoMotores.c,7 :: 		TRISD=0;
	CLRF       TRISD+0
;servoMotores.c,8 :: 		PORTD=0;
	CLRF       PORTD+0
;servoMotores.c,10 :: 		while(1){
L_main0:
;servoMotores.c,12 :: 		switch(PORTA){
	GOTO       L_main2
;servoMotores.c,13 :: 		case(0b00000001):
L_main4:
;servoMotores.c,14 :: 		PORTD=0b00000001;
	MOVLW      1
	MOVWF      PORTD+0
;servoMotores.c,15 :: 		PortC=0b00000111;
	MOVLW      7
	MOVWF      PORTC+0
;servoMotores.c,16 :: 		break;
	GOTO       L_main3
;servoMotores.c,18 :: 		case(0b00000010):
L_main5:
;servoMotores.c,19 :: 		PORTD=0b00000010;
	MOVLW      2
	MOVWF      PORTD+0
;servoMotores.c,20 :: 		PortC=0b00000101;
	MOVLW      5
	MOVWF      PORTC+0
;servoMotores.c,21 :: 		break;
	GOTO       L_main3
;servoMotores.c,23 :: 		case(0b00000100):
L_main6:
;servoMotores.c,24 :: 		PORTD=0b00000100;
	MOVLW      4
	MOVWF      PORTD+0
;servoMotores.c,25 :: 		PortC=0b00001101;
	MOVLW      13
	MOVWF      PORTC+0
;servoMotores.c,26 :: 		break;
	GOTO       L_main3
;servoMotores.c,28 :: 		case(0b00001000):
L_main7:
;servoMotores.c,29 :: 		PORTD=0b00001000;
	MOVLW      8
	MOVWF      PORTD+0
;servoMotores.c,30 :: 		PortC=0b00001001;
	MOVLW      9
	MOVWF      PORTC+0
;servoMotores.c,31 :: 		break;
	GOTO       L_main3
;servoMotores.c,34 :: 		}
L_main2:
	MOVF       PORTA+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_main4
	MOVF       PORTA+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main5
	MOVF       PORTA+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_main6
	MOVF       PORTA+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_main7
L_main3:
;servoMotores.c,50 :: 		}
	GOTO       L_main0
;servoMotores.c,51 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
