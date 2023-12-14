/*
 * AFIO_PRIVATE.h
 *
 *  Created on: Nov 20, 2023
 *      Author: Group 3 Team D
 */
#ifndef AFIO_PRIVATE_H_
#define AFIO_PRIVATE_H_



typedef struct{

	volatile u32 EVCR;
	volatile u32 MAPR;
	volatile u32 EXTICRx[4];
	volatile u32 MAPR2;

}AFIO_Type;


#define AFIO ((volatile AFIO_Type *) 0x40010000)



#endif /* AFIO_PRIVATE_H_ */
