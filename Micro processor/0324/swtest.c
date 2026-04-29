#include <mega128.h>
const unsigned char led[8] = {0xFE, 0xFD, 0xFB, 0xF7, 0xEF, 0xDF, 0xBF, 0x7F};
void main(void){
    unsigned char  o_sw, n_sw;
    unsigned char  state = 0;              
        DDRC = 0xFF;        
        DDRE = 0x00;
        PORTC = led[state];                   
        o_sw = PINE & 0b00010000;    
        while(1){
            n_sw = PINE  & 0b00010000;
            if(o_sw != 0 && n_sw == 0){     
                state = (state + 1) % 8; 
                PORTC = led[state];
} o_sw = n_sw; }
}

/*
#include <mega128.h>
void main(void) {               
    unsigned char key;
    DDRC = 0xFF;
    DDRE = 0x00;                   
    PORTC = 0xFF;
    
    while(1){       
    key = PINE & 0xF0;
        switch(key){
            case 0b11100000 :
            PORTC = 0x00;
            break;       
            case 0b11010000 :
            PORTC = 0xFF;
            break;
            case 0b10110000 :
            PORTC = 0b01010101;
            break;
            case 0b01110000 :     
            PORTC = 0b10101010;
            break;
            default:   
            break;
         } // end of switch
    } // end of while
} // end of main
*/

/*
#include <mega128.h>

void main(void){
    unsigned char sw;
    
    DDRC = 0xFF;
    DDRE = DDRE&0x0F;
    
    PORTC = 0xFF;
    
    while(1){
        sw = PINE & 0b00010000;
        
        if(sw !=0) PORTC = 0xFF;
        else PORTC = 0x01;
        
        sw = PINE & 0b00100000;
        
        if(sw !=0) PORTC = 0xFF;
        else PORTC = 0x02; 
        
        sw = PINE & 0b01000000;
        
        if(sw !=0) PORTC = 0xFF;
        else PORTC = 0x04;
        
        sw = PINE & 0b10000000;
        
        if(sw !=0) PORTC = 0xFF;
        else PORTC = 0x08;
        }
}
*/