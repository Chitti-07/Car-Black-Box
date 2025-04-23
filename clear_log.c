#include "Black_Box.h"

void clear_log(void)
{
    clcd_write(0x01, 0);
    event_count = 0;
    address = 0x00;
    view_event = 0;
    clcd_print("Logs are cleared", LINE1(0));
    __delay_ms(3000);
    state = e_main_menu;
}
