#include "Black_Box.h"

void event_store(unsigned char* time, unsigned char* gear, unsigned short speed)
{
    //storing data in 2d strings
    unsigned int event_data = 0;
    for(int i=0;i<6;i++)
    {
        eeprom_data[event_count][event_data++] = time[i];
    }
    for(int i=0;i<2;i++)
    {
        eeprom_data[event_count][event_data++] = gear[i];
    }
    eeprom_data[event_count][event_data++] = (speed/10)+48;
    eeprom_data[event_count][event_data++] = (speed%10)+48;
    
    //storing the 2d strings in the eeprom
    for(int j=0;j<10;j++) {
        write_External_EEPROM(address++, eeprom_data[event_count][j]);
    }
    
    //if count less than 10
    if(event_count < 10) {
        event_count++;
    }

    if(address == 100) {
        address = 0x00;
    } 
}
