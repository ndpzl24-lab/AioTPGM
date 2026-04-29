/****************************************************************************************************************************/
/* project :                                                                                             */ 	                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               
/* Name :         																											*/
/* Modify :           																										*/
/* Date :               																									*/
/* Description : 																											*/	
/****************************************************************************************************************************/

#include <mega128.h>                              //라이브러리 헤더 파일 포함
#include <delay.h>                             

typedef unsigned char U8;                         //typedef 전처리문을 사용  
typedef unsigned short U16;                       //변수의 다양한 사용을 위해 main문밖 Global variable로 선언
typedef unsigned int U32;
                                               
U8 EINT4_FLAG_BIT=0;                              //변수 설정
U8 EINT5_FLAG_BIT=0;
U8 EINT6_FLAG_BIT=0;
U8 EINT7_FLAG_BIT=0;

U8 TIMER1_CTC_FLAG_BIT=0;
U8 TIMER2_OVF_FLAG_BIT=0;
U16 TIMER2_OVF_COUNT=0;

void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000);
void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000); 
    
void main(void){                             
    DDRC = 0xFF;    PORTC = 0xFF;              
    DDRB = 0xF0;                                 
    DDRD = 0xF0;                                
    DDRG = 0x0F;                                 
 
     
    EIMSK = 0b11110000;                         
    EICRB = 0b10111011;                                            
	
	// Seg4_out(1,2,3,4)	
    // Seg4_out(5,6,7,8)	 
	
    SREG |= 0x80; 
        
    while(1){    
	
	    // Seg4_out2(4,3,2,1)
            
        if(EINT4_FLAG_BIT==1) {                        
            EINT4_FLAG_BIT=0;                         
            EXIT4_TIMER2();
        } //end of if
        if(EINT5_FLAG_BIT==1) { 
            EINT5_FLAG_BIT=0;
            //EXIT5에서 TIMER1함수를 실행.
        } //end of if
        if(EINT6_FLAG_BIT==1) { 
            EINT6_FLAG_BIT=0;
            //EXIT6에서 PWM 1 함수를 실행.
        } //end of if
        if(EINT7_FLAG_BIT==1) { 
            EINT7_FLAG_BIT=0;
            //EXIT7에서 PWM 2 함수를 실행.
        } //end of if  
		
		if(TIMER2_OVF_FLAG_BIT==1) {
			
		}	
		        
    } //end of while
} //end of main

  
void Seg4_out(U8 N1, U8 N10, U8 N100, U8 N1000)    
{
    U8 i;
    for(i = 0;i <40 ;i++){                                          
        PORTG = 0b00001000;                                         
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);       
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             
        delay_ms(2);                                                
        PORTG = 0b00000100;                                         
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(2); 
        PORTG = 0b00000010;                                         
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);     
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(2);
        PORTG = 0b00000001;                                         
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);    
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(2);    
    } //end of for    
}//end of Seg4_out

void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000)   
{ 
        PORTG = 0b00001000; 
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);
        delay_ms(1);                                                
        PORTG = 0b00000100; 
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(1); 
        PORTG = 0b00000010; 
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(1);
        PORTG = 0b00000001; 
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F); 
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F); 
        delay_ms(1);    
} //end of Seg4_out2

void EXIT4_TIMER2(void){            
                            
                                    
} //end of EXIT4_TIMER2   


interrupt [EXT_INT4] void external_int4(void){   
    SREG &= 0x7F;                                
    EINT4_FLAG_BIT=1;                            
    SREG |= 0x80;                                
}                                                      
 
interrupt [EXT_INT5] void external_int5(void){ 
    SREG &= 0x7F;
    EINT5_FLAG_BIT=1;     
    SREG |= 0x80;  
} 
                                
interrupt [EXT_INT6] void external_int6(void){ 
    SREG &= 0x7F;  
    EINT6_FLAG_BIT=1;  
    SREG |= 0x80;   
}

interrupt [EXT_INT7] void external_int7(void){ 
    SREG &= 0x7F;  
    EINT7_FLAG_BIT=1;       
    SREG |= 0x80;       
}

interrupt [TIM2_OVF] void TIMER2_OVF_int(void){ 
    SREG &= 0x7F;  
    TIMER2_OVF_FLAG_BIT=1; 
    TCNT2 =                             
    SREG |= 0x80;         
}