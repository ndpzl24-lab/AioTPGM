/*
 * timer3.c
 *
 * Created: 2026-04-13 오전 9:12:30
 * Author: 성민
 */

#include <mega128.h>

// ================== 전역 ==================
volatile unsigned char mode = 0; 
// 0: Timer3, 1: Timer0, 2: Timer2

unsigned char t0_toggle = 0;
unsigned char t2_toggle = 0;
unsigned char shift_data = 0xFE;

unsigned int pwm = 0x0200;

// ================== Timer0 ==================
interrupt [TIM0_OVF] void timer0_ovf_isr(void)
{
    if (mode == 1)  // Timer0 차례일 때만 출력
    {
        if (t0_toggle == 0) {
            PORTC = 0xF5;
            t0_toggle = 1;
        } else {
            PORTC = 0xFA;
            t0_toggle = 0;
        }

        mode = 2; // 다음은 Timer2
    }
}

// ================== Timer2 ==================
interrupt [TIM2_COMP] void timer2_comp_isr(void)
{
    if (mode == 2)  // Timer2 차례일 때만 출력
    {
        if (t2_toggle == 0) {
            PORTC = 0x5F;
            t2_toggle = 1;
        } else {
            PORTC = 0xAF;
            t2_toggle = 0;
        }

        mode = 0; // 다음은 Timer3
    }
}

// ================== Timer3 ==================
interrupt [TIM3_COMPA] void timer3_compa_isr(void)
{
    if (mode == 0) // 기본 상태
    {
        shift_data = (shift_data << 1) | 0x01;
        PORTC = shift_data;

        mode = 1; // 다음은 Timer0
    }
}

// ================== PWM ==================
interrupt [EXT_INT4] void external_int4(void)
{
    if(pwm < 0x03B0) pwm += 0x0040;

    OCR1CH = (pwm >> 8);
    OCR1CL = (pwm & 0xFF);
}

interrupt [EXT_INT5] void external_int5(void)
{
    if(pwm > 0x0050) pwm -= 0x0040;

    OCR1CH = (pwm >> 8);
    OCR1CL = (pwm & 0xFF);
}

// ================== 초기화 ==================
void init_all(void)
{
    DDRC = 0xFF;
    PORTC = 0xFF;

    DDRG = 0xFF;
    PORTG = 0x0F;

    // Timer0
    TCCR0 = (1<<CS02) | (1<<CS00);
    TIMSK |= (1<<TOIE0);

    // Timer2
    TCCR2 = (1<<WGM21) | (1<<CS22) | (1<<CS20);
    OCR2 = 156;
    TIMSK |= (1<<OCIE2);

    // Timer3
    TCCR3A = 0x00;
    TCCR3B = (1<<WGM32) | (1<<CS32) | (1<<CS30);

    OCR3AH = 0xB7;
    OCR3AL = 0x1B;

    ETIMSK |= (1<<OCIE3A);

    // Timer1 PWM
    DDRB |= (1<<5);
    TCCR1A = 0b00001011;
    TCCR1B = 0b00000100;

    OCR1CH = (pwm >> 8);
    OCR1CL = (pwm & 0xFF);

    // 외부 인터럽트
    EIMSK |= (1<<INT4) | (1<<INT5);
    EICRB |= (1<<ISC41) | (1<<ISC51);

    #asm("sei")
}

// ================== 메인 ==================
void main(void)
{
    init_all();

    while(1)
    {
        // 인터럽트 기반이라 비워둠
    }
}