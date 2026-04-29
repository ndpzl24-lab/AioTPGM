/*
 * Usart_acc.c
 *
 * Created: 2026-04-13 ¿ÀÈÄ 12:38:49
 * Author: ¼º¹Î
 */

#include <mega128.h>

void main(void)
{
    UCSR0A = 0x0;
    UCSR0B = 0b10011000;
           
    UCSR0C = 0b00000110;      
    UBRR0H = 0;                
    UBRR0L = 103;
    
    SREG |= 0x80;                
    while(1);                   
}

interrupt [USART0_RXC] void usart0_rx(void)
{
    unsigned char ch;

    ch = UDR0;                      

    if(ch >= 'a' && ch <= 'z') ch = ch- 'a' + 'A';     
    else if(ch >= 'A' && ch <= 'Z') ch = ch- 'A' + 'a'; 

    while((UCSR0A & 0x20) == 0x0);  
    UDR0 = ch;                      
}