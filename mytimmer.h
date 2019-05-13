//********************************************************************
//
//      KEY Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#ifndef __MYTIMMER_H
#define __MYTIMMER_H

extern uint16_t PWM_set;


#define  TIM2_ENABLE   TMR2ON = 1
#define  TIM2_DISABLE  TMR2ON = 0


void Timer2_Init(void);

#endif