
#include "Black_Box.h"

void init_adc()
{
    //ADCON0
    
    //SELECTING CHANNEL 4
    CHS3 = 0;
    CHS2 = 1;
    CHS1 = 0;
    CHS0 = 0;
    //ADCON
    ADON = 1;
    
    //ADCON1
    
    //MAKING CHANNEL 4 AS ANALOG
    PCFG3 = 1;
    PCFG2 = 0;
    PCFG1 = 1;
    PCFG0 = 0;
    //MAKING VOLTAGE 0-5V 
    VCFG1 = 0;
    VCFG0 = 0;
    
    //ADCON2
    
    ADFM = 0;   //LEFT JUSTIFIED
    //CONVERSION CLOCK BITS 0.625MHZ
    ADCS2 = 0;
    ADCS1 = 1;
    ADCS0 = 0;
    //ACQISITION TIME 8AD
    ACQT2 = 1;
    ACQT1 = 0;
    ACQT0 = 0;
    
    //DATA REGISTERS
    ADRESH = 0X00;
    ADRESL = 0X00;
}


unsigned short read_adc()
{
    GO = 1;
    while(GO);
    return (ADRESH << 2) | (ADRESL >> 6);
}
