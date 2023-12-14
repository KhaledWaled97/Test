/*
 * EXTI_PRIVATE.h
 *
 *  Created on: Nov 20, 2023
 *      Author: Group 3 Team D
 */
#ifndef EXTI_PRIVATE_H_
#define EXTI_PRIVATE_H_


typedef struct{

	volatile u32 IMR;
	volatile u32 EMR;
	volatile u32 RTSR;
	volatile u32 FTSR;
	volatile u32 SWIER;
	volatile u32 PR;

}EXTI_Type;

#define EXTI ((volatile EXTI_Type *) 0x40010400)

#endif /* EXTI_PRIVATE_H_ */
