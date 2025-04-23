

#ifndef MATRIX_KEYPAD_H
#define	MATRIX_KEYPAD_H

void init_matrix_keypad();
unsigned char scan_key();
unsigned char read_matrix_keypad(unsigned char detection);

#endif	/* MATRIX_KEYPAD_H */

