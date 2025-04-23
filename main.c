#include "Black_Box.h"

void init_config()
{
    init_adc();
    init_matrix_keypad();
    init_clcd();
    init_i2c();
    init_ds1307();
    init_uart();
    
    state = e_dashboard;
}

void main(void) 
{
    init_config();
    
    
    while(1)
    {
        get_time();
        // Detect key press
        key = read_matrix_keypad(1);
        switch (state)
        {
            case e_dashboard:
                // Display dashboard
                if(key == 11) {
                    clcd_write(0x01, 0);
                    state = e_main_menu;
                }
                view_dashboard();
                break;
            
            case e_main_menu:
                // Display dashboard
                if(key == 12) {
                    clcd_write(0x01, 0);
                    state = e_dashboard;
                }
                display_main_menu();
                break;
            
            case e_view_log:
                // Display dashboard
                view_log();
                break;
                 
            case e_download_log:
                download_log();
                break;
                
            case e_clear_log:
                clear_log();
                break;
                
                      
            case e_set_time:
                set_time();
                break;
                
        }
        
    }
    
}
