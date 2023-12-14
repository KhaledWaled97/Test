/*
 * SYSTICK_REG.h
 *
 *  Created on: Nov 22, 2023
 *      Author: Group 3 Team D
 */
#ifndef SYSTICK_REG_H_
#define SYSTICK_REG_H_

typedef struct{

	volatile u32 CTRL ;
	volatile u32 LOAD ;
	volatile u32 VAL  ;
	volatile u32 CALIB;

}SYSTICK;


#define MSTK ((volatile SYSTICK*)0xE000E010)


#define     MSTK_SRC_AHB           0
#define     MSTK_SRC_AHB_8         1

#define     MSTK_SINGLE_INTERVAL    0
#define     MSTK_PERIOD_INTERVAL    1


#endif /* SYSTICK_REG_H_ */
