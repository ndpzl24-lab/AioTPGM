/* M24C08 */

#include <mega128a.h>
#include <delay.h>

#define SCL_OUT     DDRD |= 0x01    // PD.0 OUT
#define SDA_OUT        DDRD |= 0x02    // PD.1 OUT
#define SDA_IN      DDRD &= 0xFD    // PD.1 IN

#define CLK_HIGH    PORTD |= 0x01   // PD.0=1
#define CLK_LOW     PORTD &= 0xFE   // PD.0=0

#define DAT_HIGH    PORTD |= 0x02   // PD.1=1
#define DAT_LOW     PORTD &= 0xFD   // PD.1=0

typedef unsigned char U8;
typedef unsigned short U16;

U8 DEV_ADD_W = 0xA0;
U8 DEV_ADD_R = 0xA1;
U8 IIC_ADD = 0;
U8 IIC_DAT = 0;
U8 READ_DATA = 0;
U8 Seq_READ_CNT = 4;

const U8 PAGE_DATA[10]={0xF0, 0x0F, 0xAA, 0x55, 0x1F, 0xF1, 0x00, 0xFF, 0xAA, 0xF0};
U8 Seq_READ_DATA[100]={0};

void IIC_START(void);
void IIC_STOP(void);
void ACK_write(void);
void no_ACK(void);
void ACK_read(void);
void Process_8data(U8 value);
void Process_8data_read(void);
void Byte_write(void);
void Page_write(void);
void Random_read(void);
void Sequential_read(void);

void main(void)           
{
    DDRC=0xFF;    PORTC=0xAA;
    
    SCL_OUT;    SDA_OUT;                             
    
    while(1){
    //  Byte_write();
    //    Page_write();
    //    Random_read();
        Sequential_read();
        delay_ms(5);
    }
}

void IIC_START(void)
{
    DAT_HIGH;
    CLK_HIGH;
    delay_us(3);
    DAT_LOW;
    delay_us(3);
    CLK_LOW;
    delay_us(5);
}

void IIC_STOP(void)
{
    DAT_LOW;
    CLK_HIGH;
    delay_us(3);
    DAT_HIGH;
    delay_us(3);
    CLK_LOW;
    delay_ms(5);
}

void Process_8data(U8 value)
{
    U8 i_8bit;
    U8 value_buffer;
    
    value_buffer=value;
    for(i_8bit=0;i_8bit<8;i_8bit++)
    {
        if((value_buffer&0x80)==0x80) DAT_HIGH;
        else DAT_LOW;
       
         delay_us(1);  
        
        CLK_HIGH;
        delay_us(5);
        CLK_LOW;  
        delay_us(4);
        value_buffer<<=1;
    }
}

void ACK_write(void){
    U8 i = 0;                                

    SDA_IN;                                  
    CLK_HIGH;                                
    for(i=10;i>0;i--){                        
        if((PIND & 0x02) == 0x00){i=1;
        PORTC=0xf1;
        }
        else PORTC=0x00;                     // NACK 받았다면 LED 다 켜 
    }
    delay_us(5);
    CLK_LOW;        
    SDA_OUT;                                
    delay_us(5);      
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

void Page_write(void){
    U8 PAGE_CNT=0;
    
    IIC_START();    
    Process_8data(DEV_ADD_W);
    ACK_write();
    Process_8data(IIC_ADD);
    ACK_write();
    for(PAGE_CNT=0; PAGE_CNT<10; PAGE_CNT++){
        Process_8data(PAGE_DATA[PAGE_CNT]);        
        ACK_write(); 
    }        
    IIC_STOP();    
}    

void no_ACK(void)                                     //CLK가 High인 구간에서 DAT는 High
{
    SDA_OUT;                                          //Master to Slave
    DAT_HIGH;
    CLK_HIGH;
    delay_us(5);
    CLK_LOW;
    delay_us(5);
}//end of no_ACK    
 
 
void ACK_read(void)
{
    SDA_OUT;                                         //Master to Slave
    DAT_LOW;
    CLK_HIGH;
    delay_us(5);
    CLK_LOW;
    delay_us(5);
}//end of ACK_read

void Process_8data_read(void)                           
{
    U8 i, TEMP_READ_DATA = 0;  
    
    SDA_IN;                                            //Slave to Master
                      
    for (i = 0; i < 8; i++) {
        CLK_LOW;    // OPTIMIZE
        CLK_HIGH;
        delay_us(5);
        CLK_LOW;  
        TEMP_READ_DATA = (PIND & 0x02 == 0x00) ? 0x00 : 0x80;    
        TEMP_READ_DATA >>= i;                                    
        READ_DATA |= TEMP_READ_DATA;
        delay_us(5);
    } //end of for    
    
}//end of Process_8data_read

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
        Seq_READ_DATA[CNT]=READ_DATA;
        if(CNT==(Seq_READ_CNT-1)) no_ACK();   
        else ACK_read();
    }
    
    IIC_STOP();
}    