#include "Black_Box.h"

unsigned char clock_reg[3];


void get_time(void)
{
	clock_reg[0] = read_ds1307(HOUR_ADDR);
	clock_reg[1] = read_ds1307(MIN_ADDR);
	clock_reg[2] = read_ds1307(SEC_ADDR);

	if (clock_reg[0] & 0x40)
	{
		time[0] = '0' + ((clock_reg[0] >> 4) & 0x01);
		time[1] = '0' + (clock_reg[0] & 0x0F);
	}
	else
	{
		time[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
		time[1] = '0' + (clock_reg[0] & 0x0F);
	}
	time[2] = '0' + ((clock_reg[1] >> 4) & 0x0F);
	time[3] = '0' + (clock_reg[1] & 0x0F);
	time[4] = '0' + ((clock_reg[2] >> 4) & 0x0F);
	time[5] = '0' + (clock_reg[2] & 0x0F);
	time[6] = '\0';
}


void initial_rtc(char str[])
{
	clcd_putch(str[0], LINE2(0));
    clcd_putch(str[1], LINE2(1));
    clcd_putch(':', LINE2(2));
    clcd_putch(str[2], LINE2(3));
    clcd_putch(str[3], LINE2(4));
    clcd_putch(':', LINE2(5));
    clcd_putch(str[4], LINE2(6));
    clcd_putch(str[5], LINE2(7));
}

