/*
 * UART.c
 *
 * Created: 2026-04-13 ¿ÀÀü 11:33:24
 * Author: ¼º¹Î
 */

#include <mega128.h>
#include <delay.h>

void Putch(char);               

void main(void)
{                                             
    char string[] = "This is USART0 control program. ^_______^";  
    char *pStr;                
    
    delay_ms(7000);
    UCSR0A = 0x0;
    UCSR0B = 0b00001000;       
    UCSR0C = 0b00000110;       
    UBRR0H = 0;     
    UBRR0L = 103;

    pStr = string;               
    while(*pStr != 0) Putch(*pStr++);    

    while(1);                           
}

void Putch(char data)
{
    while((UCSR0A & 0x20) == 0x0);
    UDR0 = data;                   
}
