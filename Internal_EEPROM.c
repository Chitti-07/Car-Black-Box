#include "Black_Box.h"

unsigned char internal_eeprom_read(unsigned char add)
{
    EEADR = add;
    
    EEPGD = 0;
    CFGS = 0;
    WREN = 0;
    RD = 1;
    
    return EEDATA;
}

//WRITE A BYTE TO EEPROM
void internal_eeprom_write(unsigned char add, unsigned char data)
{
    EEADR = add;
    EEDATA = data;
    
    EEPGD = 0;
    CFGS = 0;
    WREN = 1;
    
    GIE = 0;   //DISABLE INTERRUPT
    
    EECON2 = 0X55;
    EECON2 = 0XAA;
    WR = 1;
    
    GIE = 1;    //ENABLE INTERRUPT
    
    while(WR);    //HOLDING UNTIL WRITE OPERATION COMPLETES
}
