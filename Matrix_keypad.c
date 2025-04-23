#include "Black_Box.h"

void init_matrix_keypad()
{
    TRISB = 0x1e;
//    TRISB0 = 0;
    RBPU = 0;    //to make matrix keypad switches as pull up
}

unsigned char scan_key()
{
    
    //for row 1
    RB5 = 0;
    RB6 = RB7 = 1;
    if(RB1 == 0)
    {
        return 1;
    }
    else if(RB2 == 0)
    {
        return 4;
    }
    else if(RB3 == 0)
    {
        return 7;
    }
    else if(RB4 == 0)
    {
        return 10;
    }
    
    //for row 2
    RB6 = 0;
    RB5 = RB7 = 1;
    if(RB1 == 0)
    {
        return 2;
    }
    else if(RB2 == 0)
    {
        return 5;
    }
    else if(RB3 == 0)
    {
        return 8;
    }
    else if(RB4 == 0)
    {
        return 11;
    }
    
    //for row 3
    RB7 = 0;
    RB5 = RB6 = 1;
    RB7 = 0;
    if(RB1 == 0)
    {
        return 3;
    }
    else if(RB2 == 0)
    {
        return 6;
    }
    else if(RB3 == 0)
    {
        return 9;
    }
    else if(RB4 == 0)
    {
        return 12;
    }
    
    return 0xff;  //all released
}



unsigned char read_matrix_keypad(unsigned char detection)
{
    static unsigned char once = 1;
    unsigned char key = scan_key();
    
    if(detection == 0)   //level triggering
    {
        return key;
    }
    else if(detection == 1)    //edge triggering
    {
        if((key != 0xff) && once)
        {
            once = 0;
            return key;
        }
        else if(key == 0xff)
        {
            once = 1;
        }
       //all released
    }
     return 0xff;   
}
