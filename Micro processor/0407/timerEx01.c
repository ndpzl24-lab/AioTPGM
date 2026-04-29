/*
 * timerEx01.c
 *
 * Created: 2026-04-07 오후 12:36:13
 * Author: 성민
 */

#include <mega128.h>

unsigned int pwm = 0x0200;

void main (void)
{
    DDRB = 0xFF;
    DDRG = 0xFF;
    PORTG = 0x0F;
    
    EIMSK = 0b00110000;
    EICRB = 0b00001010;
    
    TCCR1A = 0b00001011;
    TCCR1B = 0b00000100;
    TCCR1C = 0x0;
    TCNT1 = 0x0;
    
    OCR1CH = (pwm & 0xFF00) >> 8;
    OCR1CL = pwm & 0x00FF;
    SREG |= 0x80;
    while(1);
}

interrupt [EXT_INT4] void external_int4(void)
{
    if(pwm < 0x03B0) pwm += 0x0040;
    OCR1CH = (pwm & 0xFF00) >> 8 ;
    OCR1CL = pwm & 0x00FF;
}
interrupt [EXT_INT5] void external_int5 (void)
{
    if(pwm > 0x0050) pwm -= 0x0040;
    OCR1CH = (pwm & 0xFF00) >> 8;
    OCR1CL = pwm & 0x00FF;
}    
    


/*
unsigned char led = 0xFE;
unsigned char timer0_ovf =0;
unsigned char timer2_comp = 0;
unsigned char timer3_compb = 0;
unsigned char cnt = 0;


void main(void)
{
    DDRC = 0xFF;
    PORTC = led;
    
    TIMSK = 0x01;
  // TCCR2 = 0x0D;     
  // TCCR0 = 0x07;
  // TCNT0 = 0x00;
     TIMSK |= 0x80; 
  // TCNT2 = 0; 
  //  OCR2 = 250;
    ETIMSK |= 0x08;
    TCCR3A = 0x00; TCCR3B = 0x0C;   TCCR3C = 0x00;
    TCNT3H = 0x00; TCNT3L = 0x00;
    OCR3BH = 0x7A;   OCR3BL = 0x11;
    SREG |= 0x80;             
    
    while (1){
        if(timer0_ovf == 1){
            timer0_ovf = 0;
            led = led << 1;
            led = led | 0x01;
            if(led == 0xFF) led = 0xFE;
            PORTC = led;
        }    
        if(timer2_comp == 1){
            timer2_comp = 0;
            cnt++;
            if( cnt == 31){
                led = led ^0xFF;        // ^(델타적 오아) XOR 같으면 0 다르면 1
                PORTC = led; cnt = 0;
            }
        }
        if(timer3_compb == 1){
            timer3_compb = 0;
            led = led << 1;
            led = led | 0x01;
            if (led ==0xFF) led = 0xFE;
            PORTC = led;
        }     
    }   
}
interrupt [TIM0_OVF] void timer_int0 (void)
{
    SREG &= 0x7F;
    TCNT0 = 0x0;
    
    timer0_ovf = 1;
    
    SREG |= 0x80;
}
interrupt [TIM2_COMP] void timer_int2 (void)
{
    SREG &= 0x7F;
  TCNT2 = 0x0;
    
    timer2_comp = 1;
    
    SREG |= 0x80;
}
interrupt [TIM3_COMPB] void timer_int3(void)
{
     SREG &= 0x7F;
    TCNT3H = 0x00; TCNT3L = 0x00;
    
    timer3_compb = 1;
    
    SREG |= 0x80;
}
*/

/*
unsigned char led = 0xFE;
unsigned char timer0_ovf = 0;
unsigned char timer2_comp = 0;
unsigned char cnt = 0;

void main(void)
{
    DDRC = 0xFF;
    PORTC = led;
    
    TIMSK = 0x01;
    TCCR2 = 0x0D;     
  // TCCR0 = 0x07;
  // TCNT0 = 0x00;
    TIMSK |= 0x80; TCNT2 = 0; 
    OCR2 = 250;
    SREG |= 0x80;             
    
    while (1){
        if(timer0_ovf == 1){
            timer0_ovf = 0;
            led = led << 1;
            led = led | 0x01;
            if(led == 0xFF) led = 0xFE;
            PORTC = led;
        }    
        if(timer2_comp == 1){
            timer2_comp = 0;
            cnt++;
            if( cnt == 31){
                led = led ^0xFF;        // ^(델타적 오아) XOR 같으면 0 다르면 1
                PORTC = led; cnt = 0;
            }
    } 
  }  
}
interrupt [TIM0_OVF] void timer_int0 (void)
{
    SREG &= 0x7F;
   // TCNT0 = 0x0;
    
    timer0_ovf = 1;
    
    SREG |= 0x80;
}
interrupt [TIM2_COMP] void timer_int2 (void)
{
    SREG &= 0x7F;
 //   TCNT0 = 0x0;
    
    timer2_comp = 1;
    
    SREG |= 0x80;
}
*/

/*
unsigned char led = 0xFE;
unsigned char timer0_ovf = 0;

void main(void)
{
    DDRC = 0xFF;
    PORTC = led;
    
    TIMSK = 0x01;     
   TCCR0 = 0x07;
   TCNT0 = 0x00;
    SREG |= 0x80;
    while (1){
        if(timer0_ovf == 1){
            timer0_ovf = 0;
            led = led << 1;
            led = led | 0x01;
            if(led == 0xFF) led = 0xFE;
            PORTC = led;
        }
    }
}
interrupt [TIM0_OVF] void timer_int0 (void)
{
    SREG &= 0x7F;
    TCNT0 = 0x0;
    
    timer0_ovf = 1;
    
    SREG |= 0x80;
}
*/

/*
unsigned char led = 0xFE;

void main(void)
{
    DDRC = 0xFF;
    PORTC = led;
    
    TIMSK = 0x01;
    TCCR0 = 0x07;
    TCNT0 = 0x00;
    SREG |= 0x80;
    while (1);
}
interrupt [TIM0_OVF] void timer_int0 (void)
{
    TCNT0 = 0x0;                // 초기값이 0이면 생략가능
    led = led <<1;
    led = led | 0x01;
    if(led == 0xFF) led = 0xFE;
    PORTC = led;
}
*/