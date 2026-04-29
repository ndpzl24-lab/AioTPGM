#include <mega128.h>   

typedef unsigned char U8;                        
typedef unsigned short U16;                       
typedef unsigned int U32;
                                               
U8 EINT4_FLAG_BIT=0;                             
U8 EINT5_FLAG_BIT=0;
U8 EINT6_FLAG_BIT=0;
U8 EINT7_FLAG_BIT=0;

U8 led = 0xFE;

void main(void){                 

	DDRC |= 0xFF; PORTC = led;                
	 
	EIMSK |= 0b00110000;     
	EICRB |= 0b00001010;      
	
	SREG |= 0x80;
	while(1){
		if(EINT4_FLAG_BIT==1){                        
            EINT4_FLAG_BIT=0;                         
            
        } 
        if(EINT5_FLAG_BIT==1){ 
            EINT5_FLAG_BIT=0;
           
        } 
        if(EINT6_FLAG_BIT==1){ 
            EINT6_FLAG_BIT=0;
           
        } 
        if(EINT7_FLAG_BIT==1){ 
            EINT7_FLAG_BIT=0;
          
        } 
		
	
	}
}
  
interrupt [EXT_INT4] void external_int4(void){   
	SREG &= 0x7F;              

	led = led << 1;
	led = led | 0b00000001;  
	if(led == 0xFF) led = 0xFE;
	PORTC = led;                 

	SREG |= 0x80;         
} 

interrupt [EXT_INT5] void external_int5(void){
	SREG &= 0x7F; 
	PORTC = 0xFF;
	SREG |= 0x80;
} 