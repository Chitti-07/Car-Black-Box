#include "Black_Box.h"

/* 
 * DS1307 Slave address
 * D0  -  Write Mode
 * D1  -  Read Mode
 */



void write_External_EEPROM(unsigned char address, unsigned char data)
{
	i2c_start();
	i2c_write(SLAVE_WRITE_E);    //sending slave id
	i2c_write(address);  //where to write the data
	i2c_write(data);   //what to write
	i2c_stop();
    for(unsigned int wait=3000;wait--;);
}

unsigned char read_External_EEPROM(unsigned char address)
{
	unsigned char data;

	i2c_start();
	i2c_write(SLAVE_WRITE_E);
	i2c_write(address);
	i2c_rep_start();
	i2c_write(SLAVE_READ_E);
	data = i2c_read();
	i2c_stop();

	return data;
}