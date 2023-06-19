void main() {
ANSEL=0;
ANSELH=0;
TRISC=0x00;
PortC=0x00;
TRISA=0xFF;
TRISD=0;
PORTD=0;
//PORTD=0b00000000;
while(1){

         switch(PORTA){
                  case(0b00000001):
                                   PORTD=0b00000001;
                                   PortC=0b00000111;
                  break;

                  case(0b00000010):
                                   PORTD=0b00000010;
                                   PortC=0b00000101;
                  break;

                  case(0b00000100):
                                   PORTD=0b00000100;
                                   PortC=0b00001101;
                  break;
                  
                  case(0b00001000):
                                   PORTD=0b00001000;
                                   PortC=0b00001001;
                  break;
                  
         
         }
/*PortC=0b00000111;
delay_ms(1000);
PortC=0b00000101; //180
delay_ms(1000);
PortC=0b00001101; //90
delay_ms(1000);
PortC=0b00001001;
delay_ms(1000);
PortC=0b00001011;
delay_ms(1000);
PortC=0b00001010;
delay_ms(1000);
PortC=0b00000110;
delay_ms(1000); */

}
}