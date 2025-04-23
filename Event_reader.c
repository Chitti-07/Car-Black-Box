#include "Black_Box.h"

void event_reader(void)
{
    if(event_count == 10) {
        unsigned int cur_address = address;
        for(int i=0;i<10;i++) {
            for(int j=0;j<10;j++) {
                if(cur_address == 100) {
                    cur_address = 0;
                }
                eeprom_data[i][j] = read_External_EEPROM(cur_address++);
            }
        }
    }
    else {
        unsigned int cur_address = 0;
        for(int i=0;i<event_count;i++) {
            for(int j=0;j<10;j++) {
                eeprom_data[i][j] = read_External_EEPROM(cur_address++);
            }
        }
    }
    
}
