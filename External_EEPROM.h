

#ifndef EXTERNAL_EEPROM_H
#define	EXTERNAL_EEPROM_H

#define SLAVE_READ_E		0xA1
#define SLAVE_WRITE_E		0xA0



void write_External_EEPROM(unsigned char address1,  unsigned char data);
unsigned char read_External_EEPROM(unsigned char address1);

#endif	/* EXTERNAL_EEPROM_H */

