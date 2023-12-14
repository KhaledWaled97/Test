/*
 * FPEC_interface.h
 *
 *  Created on: Nov 24, 2023
 *      Author: Group 3 Team D
 */
#ifndef FPEC_INTERFACE
#define FPEC_INTERFACE

void FPEC_voidEraseAppArea(void);
	
void FPEC_voidFlashPageErase(u8 Copy_u8PageNumber);

void FPEC_voidFlashWrite(u32 Copy_u32Address, u16* Copy_u16Data, u8 Copy_u8Length);

#endif
