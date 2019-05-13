//********************************************************************
//
//      KEY Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#ifndef __MYPWM_H
#define __MYPWM_H

#define  TIM3_ENABLE      TMR3ON =1
#define  TIM3_DISABLE     TMR3ON =0

#define  TIM4_ENABLE      TMR4ON =1
#define  TIM4_DISABLE     TMR4ON =0

#define  TIM5_ENABLE      TMR5ON =1
#define  TIM5_DISABLE     TMR5ON =0

void SetPWM_4_Duty(uint16_t duty);
void SetPWM_5_Duty(uint16_t duty);
void PWM5_Init(void);
void PWM4_Init(void);
void PWM3_Init(void);

#endif