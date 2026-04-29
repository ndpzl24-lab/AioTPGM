/*
 * ADC7.c
 *
 * Created: 2026-04-13 오후 4:42:13
 * Author: 성민
 */

#include <mega128.h>
#include <delay.h>

// 1. u_char 정의가 main 함수 밖(최상단)에 있는지 확인
typedef unsigned char u_char;

// 숫자 0~9 패턴
flash u_char seg_pat[10] = {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

// 함수 선언
void AD_disp(int val);

void main(void)
{
    int ad_val;
    u_char i; // 2. 루프용 변수 i를 미리 선언 (에러 방지)
    
    // 포트 설정
    DDRB = 0xF0; 
    DDRD = 0xF0;
    DDRG = 0x0F;
    
    // ADC 설정 (ADC7 사용)
    ADMUX = 0x07; 
    ADCSRA = 0x87; 
    delay_ms(5);
    
    while (1)
    {
        // ADC 변환 시작
        ADCSRA |= 0x40; 
        while((ADCSRA & 0x10) == 0); 
        
        ad_val = (int)ADCL + ((int)ADCH << 8);
        
        // 3. 세그먼트 잔상을 위해 여러 번 출력
        for(i = 0; i < 30; i++) {
            AD_disp(ad_val);      
        }
    } // 4. while문의 끝
} // 5. main문의 끝 (이 부분이 빠지면 에러가 납니다)

void AD_disp(int val){
    float f_temp;
    int ival, buf;
    u_char N100, N10, N1;
    
    // 온도 계산 (LM35 기준)
    f_temp = (float)val * 500.0 / 1024.0;
    ival = (int)(f_temp * 10.0 + 0.5); // 25.4도 -> 254
    
    // 자릿수 분리
    N100 = ival / 100;    
    buf = ival % 100;
    N10 = buf / 10;       
    N1 = buf % 10;        
    
    // --- 세그먼트 출력 (제공된 배선 방식) ---
    
    // 첫 번째 자리 (소수점 첫째 자리)
    PORTG = 0b00001000;
    PORTD = ((seg_pat[N1] & 0x0f) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N1] & 0x70) | (PORTB & 0x0F);
    delay_ms(2);
    
    // 두 번째 자리 (일의 자리) + 소수점(DP)
    PORTG = 0b00000100;
    PORTD = ((seg_pat[N10] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N10] & 0x70) | (PORTB & 0x0F);    
    PORTB |= 0x80; // DP 켜기
    delay_ms(2);
    
    // 세 번째 자리 (십의 자리)
    PORTG = 0b00000010;
    PORTD = ((seg_pat[N100] & 0x0F) << 4) | (PORTD & 0x0F);
    PORTB = (seg_pat[N100] & 0x70) | (PORTB & 0x0F);
    PORTB &= 0x7F; // DP 끄기
    delay_ms(2); 
}