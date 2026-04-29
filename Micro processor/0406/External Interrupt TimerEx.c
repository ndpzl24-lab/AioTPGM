/*
 * External Interrupt TimerEx.c
 *
 * Created: 2026-04-06 ¿ÀÈÄ 4:16:09
 * Author: ¼º¹Î
 */

#include <mega128.h>
#include <delay.h>

typedef unsigned char U8;

const U8 seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f,0x66, 0x6d, 0x7d,0x07,0x7f, 0x6f};

U8 N1,N10,N100,N1000;
U8 pos = 0;
U8 hour = 16, min = 18, sec=0;

void Time_out(void);

void main(void){
    unsigned char i;
    
    DDRB = 0xF0;
    DDRD = 0xF0;
    DDRG = 0x0F;
    EIMSK = 0b00110000;
    EICRB = 0b00001010;
    
    SREG = 0x80;
    
while (1){
    for(i=0; i<49; i++){
        Time_out();
    }
    sec = sec + 1;
    if(sec == 60){
        sec = 0;
        min = min+1;
        if(min == 60){
        min = 0 ;
        hour = (hour +1) %24;
        }
    }
   }
}
void Time_out(void){
    PORTG = 0b00001000;
    PORTD = ((seg_pat[min % 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[min % 10] & 0x70) | (PORTB & 0x0F);
    delay_ms(5);
    
    PORTG = 0b00000100;
    PORTD = ((seg_pat[min / 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[min / 10] & 0x70) | (PORTB & 0x0F);
    delay_ms(5);
    
    PORTG = 0b00000010;
    PORTD = ((seg_pat[hour % 10] & 0x0F) <<4) | (PORTD & 0x0F);
    PORTB = (seg_pat [ hour % 10] & 0x70) | (PORTB & 0x0F);
    delay_ms(5);
    
    PORTG = 0b00000001;
    PORTD = ((seg_pat[hour / 10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[hour /10] & 0x70) | ( PORTB & 0x0F);
    delay_ms(5);
}

interrupt [EXT_INT4] void external_int4(void)
{
    N1 = min %10;
    N10 = min / 10;
    N100 = hour % 10;
    N1000 = hour / 10;
    
    if(pos == 0) N1 = (N1 +1) % 10;
        else if (pos == 1) N10 = (N10 + 1) %6;
        else if (pos == 2){
            if(N1000 == 2) N100 = (N100 + 1) % 4;
            else N100 = (N100 +1) % 10;
        }
        else {
        if(N100 <4) N1000 = (N1000 +1) %3;
        else N1000 = (N1000 +1) % 2;
        }
        
        hour = N1000 * 10 + N100;
        min = N10 * 10 + N1;
        }
        
        interrupt [EXT_INT5] void external_int5(void)
        {
            pos = (pos + 1) % 4;
        }   