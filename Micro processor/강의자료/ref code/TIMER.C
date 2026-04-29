#include <mega128.h>

unsigned char led = 0xFE;
unsigned char timer0_ovf =0;
unsigned char timer2_comp =0;
unsigned char timer3_compb =0;
unsigned char cnt = 0; 

void main(void){                 
	DDRC = 0xFF;  PORTC = led;           
	
	TIMSK = 0x01;         
//	TCCR0 = 0x07; 
//  TCNT0 = 0x00;

	TIMSK |=0x80;
//	TCCR2 = 0x0D;	
//  TCNT2=0;

	ETIMSK |=0x08;
	TCCR3A = 0x00;	TCCR3B=0x0C;	 TCCR3C=0x00;	
    TCNT3H=0;		TCNT3L=0;
	OCR3BH=0x7A;	OCR3BL=0x11;

	SREG |= 0x80;           
	while(1){
		if(timer0_ovf==1){
			timer0_ovf=0;
			led = led << 1;                 
			led = led | 0x01;               
			if(led == 0xFF) led = 0xFE;     
			PORTC = led;  
		}	
		if(timer2_comp==1){
			timer2_comp=0;
			cnt++;                    
			if(cnt == 31){  
				led = led ^ 0xFF;   
				PORTC = led; 	cnt = 0;   
			}
		}	
		if(timer3_compb==1){
			timer3_compb=0;
			led = led << 1;                 
			led = led | 0x01;               
			if(led == 0xFF) led = 0xFE;     
			PORTC = led;  
		}	
	}	
}

interrupt [TIM0_OVF] void timer_int0(void) { 
    SREG &= 0x7F;
	TCNT0 = 0x0;
	
	timer0_ovf=1;
	
	SREG |= 0x80; 	
}

interrupt [TIM2_COMP] void timer_int2(void) { 
    SREG &= 0x7F;
	TCNT2 = 0x0;
	timer2_comp=1;
	
 	SREG |= 0x80; 	           
}

interrupt [TIM3_COMPB] void timer_int3(void) { 
    SREG &= 0x7F;
	TCNT3H = 0x0;
    TCNT3L = 0x0; 
	timer3_compb=1;
	
 	SREG |= 0x80; 	           
}
