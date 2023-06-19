#line 1 "C:/Users/rherr/Downloads/Ken/septimoSemestre/arquitecturaDeComputadoras/Tareas/servoMotores - copia/mikroC/servoMotores.c"
void main() {
ANSEL=0;
ANSELH=0;
TRISC=0x00;
PortC=0x00;
TRISA=0xFF;
TRISD=0;
PORTD=0;

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
#line 50 "C:/Users/rherr/Downloads/Ken/septimoSemestre/arquitecturaDeComputadoras/Tareas/servoMotores - copia/mikroC/servoMotores.c"
}
}
