#include "Black_Box.h"

//displaing the events in clcd
void display_log(char str[])
{
    clcd_putch(str[0], LINE2(2));
    clcd_putch(str[1], LINE2(3));
    clcd_putch(':', LINE2(4));
    clcd_putch(str[2], LINE2(5));
    clcd_putch(str[3], LINE2(6));
    clcd_putch(':', LINE2(7));
    clcd_putch(str[4], LINE2(8));
    clcd_putch(str[5], LINE2(9));
    clcd_putch(str[6], LINE2(11));
    clcd_putch(str[7], LINE2(12));
    clcd_putch(str[8], LINE2(14));
    clcd_putch(str[9], LINE2(15));
    
}

//printing the events one by one for every key press in clcd
void view_log(void)
{
    event_reader();
    clcd_write(0x01, 0);
    if(event_count == 0) {
        clcd_print("No Logs are", LINE1(0));
        clcd_print("Available", LINE2(6));
        __delay_ms(2000);
        state = e_main_menu;
    }
    else {
        clcd_print("# time     Gr Sp", LINE1(0));
        if(key == 1) {
            if(view_event<(event_count-1)) {
                view_event++;
            }
        }
        else if(key == 2) {
            if(view_event>0) {
                view_event--;
            }
        }
        else if(key == 12) {
            state = e_main_menu;
        }
        
        
        if(view_event == 9) {
            clcd_putch('1', LINE2(0));
            clcd_putch('0', LINE2(1));
        }
        else {
            clcd_putch(view_event+48+1, LINE2(0));
        }
        
        display_log(eeprom_data[view_event]);
    }
}
