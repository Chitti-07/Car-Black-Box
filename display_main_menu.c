#include "Black_Box.h"

void display_main_menu(void)
{
    clcd_write(0x01, 0);
    unsigned char main_menu[4][20] = {"view log ", "clear log    ", "download log", "set time    "};
    if(main_menu_status == 1 && star_flag == 0)
    {
        clcd_putch('*', LINE1(0));
        clcd_putch(' ', LINE2(0));
        clcd_print(main_menu[main_menu_status-1], LINE1(1));
        clcd_print(main_menu[main_menu_status], LINE2(1));
    }  
    else
    {
        clcd_putch(' ', LINE1(0));
        clcd_putch('*', LINE2(0));
        clcd_print(main_menu[main_menu_status-1], LINE1(1));
        clcd_print(main_menu[main_menu_status], LINE2(1));
    }
    
    //checking key press
    if(key == 1)
    {
        //down scrolling
        if(main_menu_status == 1 && star_flag == 0)
        {
            clcd_putch(' ', LINE1(0));
            clcd_putch('*', LINE2(0));
            star_flag = 1;
        }
        else if(main_menu_status<3)
        {
            main_menu_status++;
        }
    }
    else if(key == 2)
    {
        //up scrolling
        if(main_menu_status == 1)
        {
            star_flag = 0;
        }
        if(main_menu_status>1)
        {
            main_menu_status--;
        }
    }
    else if(key == 11)
    {
        //entering into particular task
        if(main_menu_status == 1 && star_flag == 0)
        {
            clcd_write(0x01, 0);
            state = e_view_log;
        }
        else if(main_menu_status == 1 && star_flag == 1)
        {
            clcd_write(0x01, 0);
            state = e_clear_log;
        }
        else if(main_menu_status == 2)
        {
            clcd_write(0x01, 0);
            state = e_download_log;
        }
        else if(main_menu_status == 3)
        {
            clcd_write(0x01, 0);
            state = e_set_time;
        }
    }
}
