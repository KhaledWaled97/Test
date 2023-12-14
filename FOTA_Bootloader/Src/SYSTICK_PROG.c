/*
 * SYSTICK_PROG.c
 *
 *  Created on: Nov 22, 2023
 *      Author: Group 3 Team D
 */

#include"TYPES.h"
#include"MACROS.h"

#include"SYSTICK_INTERFACE.h"
#include"SYSTICK_REG.h"
#include "SYSTICK_CONFIG.h"
void ( * MSTK_CallBack ) ( void );
/* Define Variable for interval mode */
static u8 MSTK_u8ModeOfInterval;
void SysTick_Handler(void){

	MSTK_CallBack();

}

void MSTK_VidSetCallBack( void (*ptr)(void) ){

	MSTK_CallBack = ptr;
}

void MSTK_VidInit( void ){

	// Enable Systick Interrupt  -  Clock = AHB / 8 - Stop Systick
	MSTK->CTRL = 0x00000002;

}


void MSTK_VidStart( u32 Copy_PreloadValue ){

	// AHB = EXT = 8MHZ & CLOCK OF MSTK = AHB / 8 = 8MHZ / 8 = 1MHZ = 1 Micro For Each Count
	//Load Reload Value
	MSTK->LOAD = Copy_PreloadValue - 1;
	//Clear Val Register
	MSTK->VAL  = 0 ;
	//Enable Systick
	SET_BIT( MSTK->CTRL , 0 );

}

void MSTK_VidINTStatus( u8 Copy_u8Status ){

	 MSTK->CTRL &= ~( 1 << 1 );
	 MSTK->CTRL |=  ( Copy_u8Status << 1 );

}

u8 MSTK_u8ReadFlag( void ){

	return ( GET_BIT( MSTK->CTRL , 16 ) );

}
void MSTK_voidSetIntervalSingle  ( u32 Copy_u32Ticks, void (*Copy_ptr)(void) )
{
	/* Stop Timer */
	CLR_BIT(MSTK->CTRL, 0);
	MSTK -> LOAD = 0;
	MSTK -> VAL  = 0;

	/* Load ticks to load register */
	MSTK -> LOAD = Copy_u32Ticks;

	/* Start Timer */
	SET_BIT(MSTK->CTRL, 0);

	/* Save CallBack */
	MSTK_CallBack = Copy_ptr;

	/* Set Mode to Single */
	MSTK_u8ModeOfInterval = 0;

	/* Enable STK Interrupt */
	SET_BIT(MSTK->CTRL, 1);
}

void MSTK_voidSetIntervalPeriodic( u32 Copy_u32Ticks, void (*Copy_ptr)(void) )
{
	/* Load ticks to load register */
	MSTK -> LOAD = Copy_u32Ticks;

	/* Start Timer */
	SET_BIT(MSTK->CTRL, 0);

	/* Save CallBack */
	MSTK_CallBack = Copy_ptr;

	/* Set Mode to Single */
	MSTK_u8ModeOfInterval = 1;

	/* Enable STK Interrupt */
	SET_BIT(MSTK->CTRL, 1);
}

void MSTK_voidSetBusyWait( u32 Copy_u32Ticks )
{
	/* Load ticks to load register */
	MSTK -> LOAD = Copy_u32Ticks;

	/* Start Timer */
	SET_BIT(MSTK->CTRL, 0);

	/* Wait till flag is raised */
	while( (GET_BIT(MSTK->CTRL,16)) == 0);

	/* Stop Timer */
	CLR_BIT(MSTK->CTRL, 0);
	MSTK -> LOAD = 0;
	MSTK -> VAL  = 0;

}

void MSTK_voidStopInterval(void)
{
	/* Disable STK Interrupt */
	CLR_BIT(MSTK->CTRL, 1);

	/* Stop Timer */
	SET_BIT(MSTK->CTRL, 0);
	MSTK -> LOAD = 0;
	MSTK -> VAL  = 0;
}
