#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PD5 //port D set to 6
#define LED_PIN PD2
#define LED_PIN PD7 



int main(void) {
   
        DDRD |=(1 << PD5);
        DDRD |= (1<< PD2);
        DDRD |= (1 << PD7);

      _delay_ms(500);
        PORTD |= (1 << PD5);
         
       PORTD |= (1<< PD2);
         _delay_ms(500);
        PORTD &= ~(1 << PD2);
        

        while ((1)){
           PORTD ^= (1<< PD7);
           _delay_ms(500);
        }
        
        
      
    }
