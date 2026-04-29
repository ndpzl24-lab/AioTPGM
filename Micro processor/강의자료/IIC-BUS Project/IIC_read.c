/*
 * IIC_read.c
 *
 * Created: 2026-03-31 오후 2:32:51
 * Author: wldyd
 */
 
#include <mega128a.h>
#include <delay.h>

#define CLK_HIGH    PORTD |= 0x01   // PD.0=1
#define CLK_LOW     PORTD &= 0xFE   // PD.0=0
#define DAT_HIGH    PORTD |= 0x02   // PD.1=1
#define DAT_LOW     PORTD &= 0xFD   // PD.1=0
    
#define SCL_OUT     DDRD |= 0x01    // PD.0=1 clk
#define SDA_IN      DDRD &= 0xFD    // PD.1=0 data
#define SDA_OUT     DDRD |= 0x02    // PD.1=1

typedef unsigned char U8;
typedef unsigned short U16;
typedef unsigned int U32;
typedef signed char S8;
typedef signed short S16;
typedef signed int S32;

U8 DEV_ADD_W = 0xA0;
U8 DEV_ADD_R = 0xA1;
U8 IIC_ADD = 0x55;
U8 IIC_DAT = 0xF0;
U8 READ_DATA = 0;
U8 Seq_READ_CNT = 10;

const U8 PAGE_DATA[] = {0x11, 0xA7, 0xFF, 0xDC};    // only read array
U8 Seq_READ_DATA[100] = {0};

void IIC_START(void);
void IIC_STOP(void);
void ACK_write(void);
void no_ACK(void);
void ACK_read(void);
void Process_8data(U8 value);
void Process_8data_read(void);

void Byte_write(void);
void Page_write(void);
void Byte_write_B(U8 ADD_B, U8 DAT_B);  // 불연속 address
void Random_read(void);
void Sequential_read(void);

void main(void)           
{    
    DDRC=0xFF;  
    PORTC=0xAA;
    
    SCL_OUT;                     
    SDA_OUT;                            
    
    
    while(1){
        //Byte_write();
        //Byte_write_B(0x77,0x6C); 
        //Page_write();
        //Random_read();
        Sequential_read(); 
        delay_ms(5);
    }   /* end of while */
}

void IIC_START(void){
    DAT_HIGH;
    CLK_HIGH;
    delay_us(3);
    DAT_LOW;
    delay_us(2);
    CLK_LOW;
    delay_us(5);
}

void IIC_STOP(void){
    DAT_LOW;
    CLK_HIGH;
    delay_us(3);
    DAT_HIGH;
    delay_us(2);
    CLK_LOW;
    delay_us(5);
}

void Process_8data(U8 value){
    U8 i;
    U8 data_value;
    
    data_value = value;
    
    for(i=0; i<8; i++){
        if((data_value & 0x80) == 0x80) DAT_HIGH;    
        else DAT_LOW;    
            
        delay_us(2);
        CLK_HIGH;
        delay_us(5);
        CLK_LOW;
        delay_us(3);
        data_value <<= 1;
    } /* end of for */
}

void ACK_write(void){
    U8 i;
        
    SDA_IN;
    CLK_HIGH;
    for(i=0; i<10; i++){
        if((PIND & 0x02) == 0x00) i=9;
         
    } /* end of for */
    delay_us(5);
    CLK_LOW;
    delay_us(2);
    SDA_OUT;
    delay_us(3);
}

void Byte_write(void){
    IIC_START();
    Process_8data(DEV_ADD_W);
    ACK_write();
    Process_8data(IIC_ADD);
    ACK_write();
    Process_8data(IIC_DAT);
    ACK_write();
    IIC_STOP();
}

void Byte_write_B(U8 ADD_B, U8 DAT_B){
    IIC_START();
    Process_8data(DEV_ADD_W);
    ACK_write();
    Process_8data(IIC_ADD);
    ACK_write();
    Process_8data(IIC_DAT); 
    ACK_write();
    Process_8data(ADD_B);
    ACK_write();
    Process_8data(DAT_B);
    ACK_write();
    IIC_STOP();
}

void Page_write(void){
    U8 n;
    U8 page_cnt;
    
    n = sizeof(PAGE_DATA) / sizeof(U8);
    
    IIC_START();
    Process_8data(DEV_ADD_W);
    ACK_write();
    Process_8data(IIC_ADD);
    ACK_write();
    Process_8data(IIC_DAT);
    ACK_write();
    for(page_cnt=0; page_cnt<n; page_cnt++){
        Process_8data(PAGE_DATA[page_cnt]);
        ACK_write();
    }   /* end of for */
    IIC_STOP();
}

void Process_8data_read(void){
    U8 i, TEMP_READ_DATA = 0;
    
    SDA_IN;
    
    for(i=0; i<8; i++){
        CLK_HIGH;
        delay_us(5);
        CLK_LOW;
        TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x08;
        TEMP_READ_DATA >>= i;
        READ_DATA |= TEMP_READ_DATA;
        delay_us(5);
    }    /*end of for */    
}

void no_ACK(void){
    SDA_OUT;
    DAT_HIGH;
    CLK_HIGH;
    delay_us(5);
    CLK_LOW;
    delay_us(5);
}

void ACK_read(void){
    SDA_OUT;
    DAT_LOW;
    CLK_HIGH;
    delay_us(5);
    CLK_LOW;
    delay_us(5);
}

void Random_read(void){
    IIC_START();
    Process_8data(DEV_ADD_W);
    ACK_write();
    Process_8data(IIC_ADD);
    ACK_write(); 
    
    IIC_START();
    Process_8data(DEV_ADD_R);
    ACK_write();
    
    Process_8data_read();
    no_ACK();
    IIC_STOP();
}

void Sequential_read(void){
    U8 CNT;
    
    IIC_START();
    Process_8data(DEV_ADD_W);
    ACK_write();
    Process_8data(IIC_ADD);
    ACK_write(); 
    
    IIC_START();
    Process_8data(DEV_ADD_R);
    ACK_write();
    
    for(CNT=0; CNT<Seq_READ_CNT; CNT++){
        Process_8data_read();
        Seq_READ_DATA[CNT] = READ_DATA;
        if(CNT == (Seq_READ_CNT-1)) no_ACK();
        else ACK_read();
    }   /* end of for */
    
    IIC_STOP();
}