#include <avr/io.h>
#include <util/delay.h>

#define LED_PIN PD4 //port D set to 6
#define BUTTON_PIN PD6 //port D set to 6


int main(void) {
    // Set LED_PIN as output
    DDRD |= (1 << LED_PIN);
    // Set BUTTON_PIN as input
     DDRD &= ~(1 << BUTTON_PIN);
     PORTD |= (1<< BUTTON_PIN);
   
    

    while (1) {
       
        if(!(PIND & (1 << BUTTON_PIN))) {
           
             PORTD |= (1 << LED_PIN); // Turn off LED
              _delay_ms(500);
            
            PORTD &= ~(1 << LED_PIN); 
              _delay_ms(500);
            
        } else {
            
           PORTD &= ~(1 << LED_PIN);
        } 

        _delay_ms(20);
        }
        
      
    }

   

