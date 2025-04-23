#include "Black_Box.h"

void download_log(void)
{
    clcd_print("log downloaded", LINE1(0));
    if(event_count == 0) {
        puts("No Logs Are Available");
        puts("\n\r");
    }
    else {
        puts("# Time     Gr Sp");
    }
    event_reader();
    for(int i=0;i<event_count;i++) {
        puts("\n\r");
        if(i == 9) {
            putch('1');
            putch('0');
        }
        else {
            putch(i+'0'+1);
        }
        putch(' ');
        putch(eeprom_data[i][0]);
        putch(eeprom_data[i][1]);
        putch(':');
        putch(eeprom_data[i][2]);
        putch(eeprom_data[i][3]);
        putch(':');
        putch(eeprom_data[i][4]);
        putch(eeprom_data[i][5]);
        putch(' ');
        putch(eeprom_data[i][6]);
        putch(eeprom_data[i][7]);
        putch(' ');
        putch(eeprom_data[i][8]);
        putch(eeprom_data[i][9]);
    }
    puts("\n\r");
    __delay_ms(2000);
    state = e_main_menu;
}
