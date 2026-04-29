#include <mega128.h>

unsigned char led=0x00;
unsigned char timer0_ovf=0;
unsigned char timer1_pcpwm=0;
unsigned char timer2_comp=0;
unsigned char timer3_compa=0;
unsigned char timer0_cnt = 0;
unsigned char timer2_cnt = 0;
unsigned char timer3_cnt = 0;
unsigned char led_state0 = 0;
unsigned char led_state1 = 0;
unsigned char led_state2 = 0;

unsigned int pwm = 0x0200;

// 함수 선언을 위로 배치하여 컴파일 에러 방지
void stop_all_timers(void) {
    // 모든 타이머의 클럭 공급 차단 
    TCCR0 = 0x00;
    TCCR2 = 0x00;
    TCCR3B = 0x00;
    
    TIMSK &= ~(0x81);   // Timer0(비트0), Timer2(비트7) 차단
    ETIMSK &= ~(0x10);  // Timer3(비트4) 차단
    
    PORTC = 0xFF; 
}

void main(void)
{
    led_state0 = 0xFA;      // timer0에서 짝 -> 홀    
    
    DDRD = 0x00;             
    DDRB = 0xFF;            // OC1C(PB7) 핀 출력방향 설정
    DDRC = 0xFF;            // PORTC 출력 방향 설정 
    DDRG = 0xFF;            // 7-segment on/off             
    PORTG = 0x0F;           // 7-segment All ON
    
    EIMSK = 0x3E;           // EXT 1, 2, 3, 4, 5 enable 
    EICRA = 0b10101000;     // falling edge
    EICRB = 0b00001010;     // falling edge
      
    TCCR1A = 0x0B;          // MODE: 10bits PC PWM
    TCCR1B = 0x04;          // Prescaler: 256
    
    OCR1CH = (pwm & 0xFF00) >> 8;
    OCR1CL = pwm & 0x00FF;
    
    SREG |= 0x80;
    
    while(1) {
        if(timer0_ovf==1) {
            timer0_ovf=0;
            led = led_state0;
            PORTC = led;
            timer0_cnt++;
            
            if(timer0_cnt == 6) {
                led_state0 = ~(led_state0) | 0xF0;
                led = led_state0;                
                PORTC = led;
                timer0_cnt = 0;
            }              
        }
        
        if(timer2_comp==1) {
            timer2_comp=0;
            led = led_state1;
            PORTC = led;
            timer2_cnt++;
            
            if(timer2_cnt == 12) {
                led_state1 = ~(led_state1) | 0x0F;
                led = led_state1;                
                PORTC = led;
                timer2_cnt = 0; 
            }              
        } 
        
        
        if(timer3_compa==1) {
            timer3_compa = 0;
            
            led_state2 = (led_state2 << 1) | 0x01;
            if(led_state2 == 0xFF) led_state2 = 0xFE;
            PORTC = led_state2;                          
        }
    }
}


interrupt [EXT_INT1] void external_int1(void) {
    SREG &= 0x7F;
    stop_all_timers();
    
    TCCR0 = 0x07; 
    TIMSK = 0x01;
    TCNT0 = 0x00;
    
    timer0_cnt = 0;
    led_state0 = 0xF5;
    
    SREG |= 0x80;      
}

interrupt [EXT_INT2] void external_int2(void) {
    SREG &= 0x7F;
    stop_all_timers();
    
    TCCR2 = 0x0D;
    TIMSK = 0x80;
    TCNT2 = 0x00;
    OCR2 = 0xFF;
    
    timer2_cnt = 0;
    led_state1 = 0x5F; 
  
    SREG |= 0x80;        
}

interrupt [EXT_INT3] void external_int3(void) {
    SREG &= 0x7F;
    stop_all_timers();
    
    led_state2 = 0xFE;
    PORTC = led_state2;
    
    TCNT3H = 0x00; TCNT3L = 0x00;
    OCR3AH = 0x24; OCR3AL = 0x9E; // 9375 (1024 분주 시 600ms)
    TCCR3A = 0x00;
    TCCR3B = 0x0D;     // 분주비 1024, CTC 모드 -> 타이머 출발
    ETIMSK |= 0x10;    // Timer3 COMPA 인터럽트 켬
    
    SREG |= 0x80;      
}

interrupt [EXT_INT4] void external_int4(void)
{
    if(pwm < 0x03B0)                           // 0x03B0보다 작으면 증가
        pwm += 0x0040;                         // OCR1C 값 갱신
    OCR1CH = (pwm& 0xFF00) >> 8;
    OCR1CL = pwm & 0x00FF;
}

interrupt [EXT_INT5] void external_int5(void)
{
    if(pwm > 0x0050)                          
        pwm -= 0x0040;
    OCR1CH = (pwm& 0xFF00) >> 8;
    OCR1CL = pwm & 0x00FF;
}

interrupt [TIM0_OVF] void timer0_int0(void) {
    SREG &= 0x7F;
    timer0_ovf = 1;
    SREG |= 0x80;
}

interrupt [TIM2_COMP] void timer2_int1(void) {
    SREG &= 0x7F;  
    timer2_comp=1;
    SREG |= 0x80;   
}

interrupt [TIM3_COMPA] void timer3_int2 (void)
{
    SREG &= 0x7F;
    timer3_compa = 1;
    SREG |= 0x80;
}