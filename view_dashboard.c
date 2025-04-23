#include "Black_Box.h"

void view_dashboard()
{
    clcd_write(0x01, 0);
    unsigned short adc_val;
    unsigned short speed;
    unsigned char gear[9][3] = {"ON", "GN", "G1", "G2", "G3", "G4", "G5", "GR", "C "};
    
    clcd_print("Time", LINE1(0));
    clcd_print("Speed", LINE1(6));
    clcd_print("Gear", LINE1(12));
    //time
    initial_rtc(time);
    //speed
    adc_val = read_adc();
    speed = adc_val/10;
    if(speed < 100)
    {
        clcd_putch((speed/10)+48, LINE2(9));
        clcd_putch((speed%10)+48, LINE2(10));
    }
    
    //gear
    if(key == 1)
    {
        if(collision_status == 1) {
            gear_status = 1;
            collision_status = 0;
        }
        else if(gear_status<7){
            gear_status++;
        }
        event_store(time, gear[gear_status], speed);
    }
    else if(key == 2)
    {
        if(collision_status == 1) {
            gear_status = 1;
            collision_status = 0;
        }
        else if(gear_status>1){
            gear_status--;
        }
        event_store(time, gear[gear_status], speed);
    }
    else if(key == 3) {
        gear_status = 8;
        collision_status = 1;
        event_store(time, gear[gear_status], speed);
    }
    clcd_print(gear[gear_status], LINE2(13));  
}
