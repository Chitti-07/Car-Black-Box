

#ifndef BLACK_BOX_H
#define	BLACK_BOX_H

#include <xc.h>

#include "adc.h"
#include "clcd.h"
#include "Matrix_keypad.h"
#include "External_EEPROM.h"
#include "I2C.h"
#include "DS_1307.h"
#include "RTC.h"
#include "UART.h"

/* Enum for maintaining the app state */
typedef enum {
    e_dashboard, e_main_menu, e_view_log, e_set_time, e_download_log, e_clear_log
} State_t;


State_t state; // App state

//Function declarations

void init_config();

//Dashboard function declaration
void view_dashboard(void);
unsigned char key;
unsigned int gear_status = 0;
unsigned char collision_status = 0;
unsigned char time[6];

//Storing events function declaration
void event_store(unsigned char* time, unsigned char* gear, unsigned short speed);
unsigned char eeprom_data[10][13];
unsigned char event_count = 0;
unsigned short address = 0x00;

//Password function declaration
void password(void);

//main menu function declaration
void display_main_menu(void);
unsigned char main_menu_status = 1;
unsigned char star_flag = 0;
unsigned char star_up_flag = 0;

//View log function declaration
void view_log(void);
unsigned int view_event = 0;

//Reading events function declaration
void event_reader(void);

//Change password function declaration
void change_password(void);

//Set time function declaration
void set_time(void);
unsigned char change_time_flag = 1;
unsigned char set_time_once = 0;
unsigned char hour_var;
unsigned char min_var;
unsigned char sec_var;
unsigned int hour_delay = 0;
unsigned int min_delay = 0;
unsigned int sec_delay = 0;

//Download log function _decleration
void download_log(void);

//Clear log function declaration
void clear_log(void);


//eeprom internal
unsigned char internal_eeprom_read(unsigned char add);
void internal_eeprom_write(unsigned char add, unsigned char data);

#endif	/* BLACK_BOX_H */

