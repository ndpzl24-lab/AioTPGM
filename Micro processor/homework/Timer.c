/*
 * Timer.c
 *
 * Created: 2026-04-11 오후 5:52:51
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

// ================== Timer3 COMP (600ms SHIFT) ==================
interrupt [TIM3_COMPA] void timer3_compa_isr(void)
{
    if (!t3_run) return;

    shift_data = (shift_data << 1) | 0x01;
    PORTC = shift_data;
}

// ================== 초기화 ==================
void timer_init(void)
{
    // -------- Timer0 (OVF) --------
    TCCR0 = (1<<CS02) | (1<<CS00);  // 1024분주
    TIMSK |= (1<<TOIE0);

    // -------- Timer2 (CTC) --------
    TCCR2 = (1<<WGM21) | (1<<CS22) | (1<<CS20); // 128분주
    OCR2 = 156;  // 약 200ms (16MHz 기준 근사)
    TIMSK |= (1<<OCIE2);

    // -------- Timer3 (CTC) --------
    TCCR3A = 0x00;
    TCCR3B = (1<<WGM32) | (1<<CS32) | (1<<CS30); // 1024분주

    // OCR3A = 46875;
    OCR3AH = 0xB7;
    OCR3AL = 0x1B;

    ETIMSK |= (1<<OCIE3A);

    // -------- Timer1 PWM (10bit) --------
    DDRB |= (1<<5); // PB5 = OC1A

    TCCR1A = (1<<COM1A1) | (1<<WGM10) | (1<<WGM11);
    TCCR1B = (1<<WGM12) | (1<<CS11); // prescaler 8

    OCR1A = 512; // 50% duty
}

// ================== 메인 ==================
void main(void)
{
    DDRC = 0xFF;
    PORTC = 0xFF;  // 초기값

    timer_init();

    #asm("sei")

    while(1)
    {
        // 필요 시 버튼 로직 추가 가능
    }
}