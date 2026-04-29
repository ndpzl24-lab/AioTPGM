/*
 * 7-Segment.c
 *
 * Created: 2026-04-06 ¿ÀÀü 9:42:38
 * Author: ¼º¹Î
 */

#include <mega128.h>
#include <delay.h>


const unsigned char seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 
                        0x07, 0x7f, 0x6f};

unsigned int num = 7777;
void Seg4_out(int); 

void main(void) {
    unsigned char key;                                               
    DDRB = 0xF0;                
    DDRD = 0xF0;                
    DDRG = 0x0F;                
    PORTB = 0x0;                
    PORTD = 0x0;
    DDRE = 0x00;
                  
while(1){
    key = PINE & 0xF0; 
    
    switch(key){
    case 0b11100000:
        num++;
        break;
    case 0b11010000:
        num--;
        break;
    }  
    Seg4_out(num);
    }
} 

void Seg4_out(int num) 
{                   
    int N1000, N100, N10, N1, buf;
    N1000 = num / 1000;             
    buf = num % 1000;
    N100 = buf / 100;               
    buf = buf % 100;          
    N10 = buf / 10;                
    N1 = buf % 10;                  
   
        PORTG = 0b00001000;    
        PORTD = ((seg_pat[N1] & 0x0F) << 4) | (PORTD & 0x0F);        
        PORTB = (seg_pat[N1] & 0x70 ) | (PORTB & 0x0F);             
        delay_ms(5);
        PORTG = 0b00000100;
        PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);       
        PORTB = (seg_pat[N10] & 0x70 ) | (PORTB & 0x0F);              
        delay_ms(5);
        PORTG = 0b00000010;        
        PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);       
        PORTB = (seg_pat[N100] & 0x70 ) | (PORTB & 0x0F);              
        delay_ms(5);
        PORTG = 0b00000001;     
        PORTD = ((seg_pat[N1000] & 0x0F) << 4) | (PORTD & 0x0F);        
        PORTB = (seg_pat[N1000] & 0x70 ) | (PORTB & 0x0F);             
        delay_ms(5);
    
}


/*
const unsigned char seg_pat[16]
    = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07,
        0x7f, 0x6f, 0x77, 0x7c, 0x39, 0x5e, 0x79, 0x71};
void main(void){
    int i;
    DDRB = 0xF0;
    DDRD = 0xF0;
    DDRG = 0x0F;
    PORTG = 0b00001000;
    PORTB = 0x00;
    PORTD = 0x00;
    
    while(1){
    for(i=0;i<16;i++){
    PORTG = 0b00001000;
    PORTD = ((seg_pat[i] & 0x0F)<<4)|(PORTD & 0x0F);
    PORTB = (seg_pat[i] & 0x70)|(PORTB & 0x0F);
    delay_ms(300);
    }
    for(i=0;i<16;i++){
    PORTG = 0b00000100;
    PORTD = ((seg_pat[i] & 0x0F)<<4)|(PORTD & 0x0F);
    PORTB = (seg_pat[i] & 0x70)|(PORTB & 0x0F);
    delay_ms(300);
    }
    for(i=0;i<16;i++){
    PORTG = 0b00000010;
    PORTD = ((seg_pat[i] & 0x0F)<<4)|(PORTD & 0x0F);
    PORTB = (seg_pat[i] & 0x70)|(PORTB & 0x0F);
    delay_ms(300);
    }
    for(i=0;i<16;i++){
    PORTG = 0b00000001;
    PORTD = ((seg_pat[i] & 0x0F)<<4)|(PORTD & 0x0F);
    PORTB = (seg_pat[i] & 0x70)|(PORTB & 0x0F);
    delay_ms(300);
    }
    for(i=0;i<16;i++){
    PORTG = 0b00001100;
    PORTD = ((seg_pat[i] & 0x0F)<<4)|(PORTD & 0x0F);
    PORTB = (seg_pat[i] & 0x70)|(PORTB & 0x0F);
    delay_ms(300);
    }
    for(i=0;i<16;i++){
    PORTG = 0b00001110;
    PORTD = ((seg_pat[i] & 0x0F)<<4)|(PORTD & 0x0F);
    PORTB = (seg_pat[i] & 0x70)|(PORTB & 0x0F);
    delay_ms(300);
    }
    for(i=0;i<16;i++){
    PORTG = 0b00001111;
    PORTD = ((seg_pat[i] & 0x0F)<<4)|(PORTD & 0x0F);
    PORTB = (seg_pat[i] & 0x70)|(PORTB & 0x0F);
    delay_ms(300);
    }
}
}
*/

/*
void main(void)
{
    char i, value;
    
    DDRB = 0xF0;
    DDRD = 0xF0;
    
    DDRG = 0x0F;
    
    PORTG = 0b00001111;
    PORTB = 0X00;
    PORTD = 0X00;
    
while (1)
    {
    PORTD = 0b11110000;  
    PORTB = 0b00110000;
    delay_ms(500);
    PORTD = 0b00000000;  
    PORTB = 0b00000000;   
    
         
    }
}
*/