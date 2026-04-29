/* M24C08 */

#include <mega128a.h>
#include <delay.h>

#define CLK_HIGH    PORTD |= 0x01   // PD.0=1
#define CLK_LOW     PORTD &= 0xFE   // PD.0=0
#define DAT_HIGH    PORTD |= 0x02   // PD.1=1
#define DAT_LOW     PORTD &= 0xFD   // PD.1=0
    
#define SCL_OUT     DDRD |= 0x01    // PD.0=1 clk
#define SDA_IN      DDRD &= 0xFD    // PD.1=0 data
#define SDA_OUT		DDRD |= 0x02    // PD.1=1

typedef unsigned char U8;
typedef unsigned short U16;
typedef unsigned int U32;
typedef signed char S8;
typedef signed short S16;
typedef signed int S32;

U8 DEV_ADD_W = 0xA0;
U8 DEV_ADD_R = 0xA1;
U8 IIC_ADD = 0;
U8 IIC_DAT = 0;
U8 READ_DATA = 0;

void IIC_START(void);
//void IIC_STOP(void);
//void ACK_write(void);
//void no_ACK(void);
//void ACK_read(void);
//void Process_8data(U8 value);
//void Process_8data_read(void);

void Byte_write(void);
//void Page_write(void);
//void Random_read(void);
//void Sequential_read(void);

void main(void)           
{
	unsigned int CNT=0;
	
    DDRC=0xFF;  
    PORTC=0xAA;
    
    SCL_OUT;                     
    SDA_OUT;                            
    
    
    while(1){
		
		for(CNT=0; CNT<1000; CNT++){
			CLK_HIGH;
			delay_us(4);
			CLK_LOW;
			delay_us(4);
		}	
		delay_ms(5);
		
	
    }
}

/*
void Byte_write(void){
	IIC_START();    
    Process_8data(DEV_ADD_W);
	ACK_write();
	Process_8data(IIC_ADD);
	ACK_write();
	Process_8data(IIC_DAT);		
	ACK_write();		
    IIC_STOP();

} // end of Byte_write 
*/	


void IIC_START(void)
{
	DAT_HIGH;
    CLK_HIGH;
	DAT_LOW;
    CLK_LOW;
}