/*
 * Timer2.c
 *
 * Created: 2026-04-11 오후 6:11:43
 * Author: 성민
 */
#include <mega128.h>

// ================== 전역 변수 ==================
unsigned char t0_toggle = 0;
unsigned char t2_toggle = 0;
unsigned char shift_data = 0xFE;

bit t0_run = 1;
bit t2_run = 1;
bit t3_run = 1;

unsigned int pwm = 0x0200;  // PWM 초기값

// ================== Timer0 OVF ==================
interrupt [TIM0_OVF] void timer0_ovf_isr(void)
{
    if (!t0_run) return;

    // Timer2 정지
    TCCR2 = 0x00;
    TIMSK &= ~(1<<OCIE2);

    // Timer3 정지
    TCCR3B = 0x00;
    t3_run = 0;

    // 출력 토글
    if (t0_toggle == 0) {
        PORTC = 0xF5;
        t0_toggle = 1;
    } else {
        PORTC = 0xFA;
        t0_toggle = 0;
    }
}

// ================== Timer2 COMP ==================
interrupt [TIM2_COMP] void timer2_comp_isr(void)
{
    if (!t2_run) return;

    // Timer0 정지
    TCCR0 = 0x00;
    TIMSK &= ~(1<<TOIE0);

    // Timer3 정지
    TCCR3B = 0x00;
    t3_run = 0;

    // 출력 토글
    if (t2_toggle == 0) {
        PORTC = 0x5F;
        t2_toggle = 1;
    } else {
        PORTC = 0xAF;
        t2_toggle = 0;
    }
}

// ================== Timer3 COMP ==================
interrupt [TIM3_COMPA] void timer3_compa_isr(void)
{
    if (!t3_run) return;

    shift_data = (shift_data << 1) | 0x01;
    PORTC = shift_data;
}

// ================== 외부 인터럽트 ==================
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
void timer_init(void)
{
    // -------- Timer0 --------
    TCCR0 = (1<<CS02) | (1<<CS00);  // 1024분주
    TIMSK |= (1<<TOIE0);

    // -------- Timer2 --------
    TCCR2 = (1<<WGM21) | (1<<CS22) | (1<<CS20);
    OCR2 = 156;
    TIMSK |= (1<<OCIE2);

    // -------- Timer3 --------
    TCCR3A = 0x00;
    TCCR3B = (1<<WGM32) | (1<<CS32) | (1<<CS30);

    OCR3AH = 0xB7;
    OCR3AL = 0x1B;

    ETIMSK |= (1<<OCIE3A);

    // -------- Timer1 PWM --------
    DDRB |= (1<<5);   // OC1A (PB5)

    TCCR1A = 0b00001011;
    TCCR1B = 0b00000100;

    OCR1CH = (pwm >> 8);
    OCR1CL = (pwm & 0xFF);

    // -------- 외부 인터럽트 --------
    EIMSK |= (1<<INT4) | (1<<INT5);
    EICRB |= (1<<ISC41) | (1<<ISC51);  // falling edge
}

// ================== 메인 ==================
void main(void)
{
    DDRC = 0xFF;
    PORTC = 0xFF;

    DDRG = 0xFF;
    PORTG = 0x0F;

    timer_init();

    #asm("sei")

    while(1)
    {
        // 메인 루프는 비워둠 (인터럽트 기반)
    }
}