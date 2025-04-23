#include "Black_Box.h"

//editing the time
void print_set_time(unsigned char hour, unsigned char min, unsigned char sec) {
    if (change_time_flag == 1) {
        if (hour_delay++ <= 100) {
            clcd_putch((hour / 10) + 48, LINE2(0));
            clcd_putch((hour % 10) + 48, LINE2(1));
        } else if (hour_delay < 200) {
            clcd_putch(' ', LINE2(0));
            clcd_putch(' ', LINE2(1));
        } else {
            hour_delay = 0;
        }
        clcd_putch((min / 10) + 48, LINE2(3));
        clcd_putch((min % 10) + 48, LINE2(4));
        clcd_putch((sec / 10) + 48, LINE2(6));
        clcd_putch((sec % 10) + 48, LINE2(7));
    }
    clcd_putch(':', LINE2(2));
    if (change_time_flag == 2) {
        if (min_delay++ <= 100) {
            clcd_putch((min / 10) + 48, LINE2(3));
            clcd_putch((min % 10) + 48, LINE2(4));
        } else if (min_delay < 200) {
            clcd_putch(' ', LINE2(3));
            clcd_putch(' ', LINE2(4));
        } else {
            min_delay = 0;
        }
        clcd_putch((hour / 10) + 48, LINE2(0));
        clcd_putch((hour % 10) + 48, LINE2(1));
        clcd_putch((sec / 10) + 48, LINE2(6));
        clcd_putch((sec % 10) + 48, LINE2(7));
    }
    clcd_putch(':', LINE2(5));
    if (change_time_flag == 3) {
        if (sec_delay++ <= 100) {
            clcd_putch((sec / 10) + 48, LINE2(6));
            clcd_putch((sec % 10) + 48, LINE2(7));
        } else if (sec_delay < 200) {
            clcd_putch(' ', LINE2(6));
            clcd_putch(' ', LINE2(7));
        } else {
            sec_delay = 0;
        }
        clcd_putch((hour / 10) + 48, LINE2(0));
        clcd_putch((hour % 10) + 48, LINE2(1));
        clcd_putch((min / 10) + 48, LINE2(3));
        clcd_putch((min % 10) + 48, LINE2(4));
    }
}

void set_time(void) {
    clcd_print("Set Time", LINE1(0));

    //fetching the real time from rtc
    if (set_time_once == 0) {
        get_time();
        set_time_once = 1;
        hour_var = ((time[0] - 48)*10) + (time[1] - 48);
        min_var = ((time[2] - 48)*10) + (time[3] - 48);
        sec_var = ((time[4] - 48)*10) + (time[5] - 48);
    }

    //incrementingg the time for every key press(1)
    if (key == 1) {
        if (change_time_flag == 1) {
            hour_var++;
            if (hour_var > 23) {
                hour_var = 0;
            }
        } else if (change_time_flag == 2) {
            min_var++;
            if (min_var == 60) {
                min_var = 0;
            }
        } else if (change_time_flag == 3) {
            sec_var++;
            if (sec_var == 60) {
                sec_var = 0;
            }
        }
        //changing the field to edit in circular for every key press(2)
    } else if (key == 2) {
        change_time_flag++;
        if (change_time_flag == 4) {
            change_time_flag = 1;
        }
    }

    print_set_time(hour_var, min_var, sec_var);


    //saving the time and exit
    if (key == 11) {
        write_ds1307(HOUR_ADDR, ((hour_var/10)<<4) | (hour_var%10));
        write_ds1307(MIN_ADDR, ((min_var/10)<<4) | (min_var%10));
        write_ds1307(SEC_ADDR, ((sec_var/10)<<4) | (sec_var%10));
        set_time_once = 0;
        state = e_dashboard;
        //exit without saving the time
    } else if (key == 12) {
        state = e_dashboard;
        set_time_once = 0;
    }

}


