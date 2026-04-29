/****************************************************************************************************************************/
/* Project     : Integrated Control System (Project 2 + Project 3)                                                          */
/* Student ID  : 19940618 (18ms / 1.8s / 18% Duty)                                                                          */
/* Target MCU  : ATmega128 (Clock 16MHz)                                                                                    */
/****************************************************************************************************************************/

#include <mega128.h>
#include <delay.h>

typedef unsigned char U8;
typedef unsigned short U16;
typedef unsigned int U32;

// 전역 변수 및 플래그
U8 TIMER1_FLAG=0, TIMER2_FLAG=0;
U16 T2_CNT=0;
U8 ADC_DISP_COUNT=0; 
const U8 seg_pat[10]= {0x3f, 0x06, 0x5b, 0x4f, 0x66, 0x6d, 0x7d, 0x07, 0x7f, 0x6f};

U32 TEMP_VAL=0;
U8 NA100, NA10, NA1, NV100, NV10, NV1;

// 함수 선언
void UART_init(void);
void UART_send_byte(U8 data);
void UART_send_string(char *str);
void UART_Menu(void);
void Seg4_out_ID_Intro(void);
void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000);
void SEG7_TEMP_DIS(int val);
void AD_convert_volt(int val);

void main(void){
    // 포트 초기화
    DDRC = 0xFF; PORTC = 0xFF; // Segment Data
    DDRB |= 0xF0; DDRD |= 0xF0; DDRG |= 0x0F; // Segment Control
    DDRE |= 0x08; // PE3 (OC3A) PWM 출력 핀 설정 (중요!)
    
    UART_init();
    
    // [1] 시작 전 8자리 학번 디스플레이
    Seg4_out_ID_Intro(); 
    PORTG = 0x00; // 잔상 제거를 위한 클리어

    // [2] UART 메뉴 출력
    UART_Menu(); 
    
    // 인터럽트 트리거 설정 (INT4,6: Rising / INT5,7: Falling)
    EICRB = 0b10111011; 
    EIMSK = 0x00; // 초기에는 모두 비활성 (UART로 Enable)
    SREG |= 0x80; // 전역 인터럽트 허용

    while(1){
        // UART 수신 처리
        if(UCSR0A & 0x80){ 
            U8 rx_data = UDR0;
            UART_send_byte(rx_data); // Echo
            UART_send_string("\r\n");
            switch(rx_data){
                case '4': EIMSK |= 0x10; UART_send_string("INT4 (Temp) Enabled\r\n"); break;
                case '5': EIMSK |= 0x20; UART_send_string("INT5 (Volt) Enabled\r\n"); break;
                case '6': EIMSK |= 0x40; UART_send_string("INT6 (PWM Mode 6) Enabled\r\n"); break;
                case '7': EIMSK |= 0x80; UART_send_string("INT7 (PWM Mode 2) Enabled\r\n"); break;
                default:  UART_Menu(); break;
            }
        }

        // 세그먼트 디스플레이 로직
        if(ADC_DISP_COUNT > 0) SEG7_TEMP_DIS(TEMP_VAL);
        else Seg4_out2(8, 1, 6, 0); // 학번 뒤 4자리 0618

        // 타이머 이벤트 처리
        if(TIMER2_FLAG){ // 4.5초마다 온도 측정
            TIMER2_FLAG = 0;
            if(++T2_CNT >= 250){ 
                T2_CNT = 0;
                ADMUX = 7; ADCSRA = 0x82; ADCSRA |= 0x40;
                while(!(ADCSRA & 0x10));
                TEMP_VAL = ADCW;
                if(++ADC_DISP_COUNT > 10){ 
                    ADC_DISP_COUNT = 0; TCCR2 = 0; TIMSK &= ~0x40; 
                }
            }
        }

        if(TIMER1_FLAG){ // 1.8초마다 전압 측정 및 전송
            TIMER1_FLAG = 0;
            ADMUX = 6; ADCSRA = 0x82; ADCSRA |= 0x40;
            while(!(ADCSRA & 0x10));
            AD_convert_volt(ADCW);
            UART_send_string("Voltage: ");
            UART_send_byte(NV100 + '0'); UART_send_byte('.');
            UART_send_byte(NV10 + '0'); UART_send_byte(NV1 + '0');
            UART_send_string("V\r\n");
        }
    }
}

// UART 함수                                                        
void UART_init(void){ UCSR0B=0x18; UCSR0C=0x06; UBRR0L=103; }
void UART_send_byte(U8 d){ while(!(UCSR0A & 0x20)); UDR0=d; }
void UART_send_string(char *s){ while(*s) UART_send_byte(*s++); }
void UART_Menu(void){
    UART_send_string("\r\n--- The UART program mode ---\r\n");
    UART_send_string("External Interrupt : No 4\r\n");
    UART_send_string("External Interrupt : No 5\r\n");
    UART_send_string("External Interrupt : No 6\r\n");
    UART_send_string("External Interrupt : No 7\r\n");
    UART_send_string("Please press the number : ");
}

// 인터럽트 서비스 루틴
interrupt [EXT_INT4] void ext4_isr(void){ TCCR2=0x05; TCNT2=174; TIMSK|=0x40; }
interrupt [EXT_INT5] void ext5_isr(void){ TCCR1B=0x0D; OCR1AH=0x6D; OCR1AL=0xDD; TIMSK|=0x10; }

// INT6: Fast PWM 9-bit (Mode 6)
interrupt [EXT_INT6] void ext6_isr(void){ 
    TCCR3A = 0x82; // COM3A1=1, WGM31=1
    TCCR3B = 0x0A; // WGM32=1, CS31=1 (8분주)
    OCR3AH = 0x00; 
    OCR3AL = 92;   // Duty 18% (92/511)
}

// INT7: Phase Correct PWM 9-bit (Mode 2)
interrupt [EXT_INT7] void ext7_isr(void){ 
    TCCR3A = 0x82; // COM3A1=1, WGM31=1
    TCCR3B = 0x02; // WGM32=0, CS31=1 (8분주)
    OCR3AH = 0x00; 
    OCR3AL = 92;   // Duty 18% (92/511)
}

interrupt [TIM2_OVF] void t2_ovf(void){ TCNT2=174; TIMER2_FLAG=1; }
interrupt [TIM1_COMPA] void t1_ctc(void){ TIMER1_FLAG=1; }

// 디스플레이 함수 (G0=L, G3=R 순서)
void Seg4_out2(U8 N1, U8 N10, U8 N100, U8 N1000){
    U8 i; U8 val[4];
    val[0]=N1000; val[1]=N100; val[2]=N10; val[3]=N1;
    for(i=0; i<4; i++){
        PORTG = (0x01 << i);
        PORTD = ((seg_pat[val[i]] & 0x0F) << 4) | (PORTD & 0x0F);
        PORTB = (seg_pat[val[i]] & 0x70) | (PORTB & 0x0F);
        delay_ms(1);
    }
}

void SEG7_TEMP_DIS(int val){
    float fval = (float)val * 5.0 / 1023.0 * 100.0;
    int ival = (int)(fval * 10.0);
    NA100 = (ival / 100) % 10; NA10 = (ival / 10) % 10; NA1 = ival % 10;
    
    // 십의자리
    PORTG=0x01; PORTD=((seg_pat[NA100]&0x0F)<<4)|(PORTD&0x0F); PORTB=(seg_pat[NA100]&0x70)|(PORTB&0x0F); delay_ms(1);
    // 일의자리.
    PORTG=0x02; PORTD=((seg_pat[NA10]&0x0F)<<4)|(PORTD&0x0F); PORTB=(seg_pat[NA10]&0x70)|(PORTB&0x0F)|0x80; delay_ms(1);
    // 소수점1
    PORTG=0x04; PORTD=((seg_pat[NA1]&0x0F)<<4)|(PORTD&0x0F); PORTB=(seg_pat[NA1]&0x70)|(PORTB&0x0F); delay_ms(1);
    // C
    PORTG=0x08; PORTD=((0x39&0x0F)<<4)|(PORTD&0x0F); PORTB=(0x39&0x70)|(PORTB&0x0F); delay_ms(1);
}

void Seg4_out_ID_Intro(void){
    U16 i;
    for(i=0; i<300; i++) Seg4_out2(4, 9, 9, 1); 
    for(i=0; i<300; i++) Seg4_out2(8, 1, 6, 0); 
}

void AD_convert_volt(int val){
    float fv = (float)val * 5.0 / 1023.0;
    int iv = (int)(fv * 100.0);
    NV100 = iv / 100; NV10 = (iv % 100) / 10; NV1 = iv % 10;
}