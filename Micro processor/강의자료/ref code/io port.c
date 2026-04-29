#include <mega128.h>
void main(void)
{
	unsigned char sw;
	DDRC = 0xFF;                      
	DDRE = 0x00;         
	PORTC = 0xFF;                    
	while(1){
		sw = PINE & 0b00010000;       
		if(sw != 0) PORTC = 0xFF;     
		else PORTC = 0x00;              
	}

}


/*
#include <mega128.h>
#include <delay.h>    
const unsigned char led[8] = {0xFE, 0xFC, 0xF8, 0xF0, 0xE0, 0xC0, 0x80, 0x00};
const unsigned char led2[8] = {0xFE, 0xFD, 0xFB, 0xF7, 0xEF, 0xDF, 0xBF, 0x7F};

void main(void){
	unsigned char i;
	DDRC = 0xFF;    
	
	while(1){                  
		for(i = 0;i < 8;i++){
			PORTC = led[i];     
			delay_ms(100);      
		}
		for(i = 6; 0 < i ;i--){
			PORTC = led[i];     
			delay_ms(100);      
		}
		for(i = 0;i < 8;i++){
			PORTC = led2[i];     
			delay_ms(100);      
		}
		for(i = 6; 0 < i ;i--){
			PORTC = led2[i];     
			delay_ms(100);      
		}	
		
		
	} 
} 

*/

sw = PINE & 0b00010000;       
if(sw != 0) PORTC = 0xFF;     
else PORTC = 0x00;        

if(sw == 0) PORTC = 0x00;     
else PORTC = 0xFF; 