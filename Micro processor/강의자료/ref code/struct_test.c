#include <mega128.h>   

typedef unsigned char U8;                        
typedef unsigned short U16;                       
typedef unsigned int U32;
   
typedef struct INT_FIELD
{
    U8 EINT4_FLAG_BIT : 1;
    U8 EINT5_FLAG_BIT : 1;
    U8 EINT6_FLAG_BIT : 1;
    U8 EINT7_FLAG_BIT : 1;
	U8 TEMP : 4;
} _BYTE_INT_CHECK;	

_BYTE_INT_CHECK INT_CHECK_ALL;
   		 
void main(void){                 

	DDRC |= 0xFF; PORTC = 0xFF;                
	 
	EIMSK |= 0b11110000;     
	EICRB |= 0b10101110;      
	
	SREG |= 0x80;
	while(1){
		
		if(INT_CHECK_ALL.EINT5_FLAG_BIT==1) {
			INT_CHECK_ALL.EINT5_FLAG_BIT=0;
			PORTC = 0x0F;
			/* 여기에 억수로 많은 CODE 있다고 가정합시다 */		
		}
	}
}
  
interrupt [EXT_INT4] void external_int4(void){   
	SREG &= 0x7F;              
		
	SREG |= 0x80;         
} 

interrupt [EXT_INT5] void external_int5(void){
	SREG &= 0x7F; 
	INT_CHECK_ALL.EINT5_FLAG_BIT=1;
	
	SREG |= 0x80;
} 

interrupt [EXT_INT6] void external_int6(void){
	SREG &= 0x7F; 
	
	PORTC = 0xF0;
    /* 여기에 억수로 많은 CODE 있다고 가정합시다 */		
	
	SREG |= 0x80;
} 

interrupt [EXT_INT7] void external_int7(void){
	SREG &= 0x7F; 
	
	PORTC = 0xAA;
    /* 여기에 억수로 많은 CODE 있다고 가정합시다 */		
	SREG |= 0x80;
} 