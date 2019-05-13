#ifndef __MYINCLUDE_H
#define __MYINCLUDE_H
#include "syscfg.h"


/*******************∫Í∂®“Â********************/
#define _XTAL_FREQ 		16000000		//4T
//#define EEpromStartAdd  0x00

#define  uint8_t        unsigned char
#define  uint16_t       unsigned int
#define  uint32_t       unsigned long int

#define  GPIO_DIR        PA6
#define  GPIO_IA         PC3 //PD3
#define  GPIO_IB         PC2 //PD4


#include "MyEEProm.h"
#include "MyADC.h"
#include "MyKey.h"
#include "MyPWM.h"


void System_init(void);
void GPIO_Init(void);
void Delay_xms(unsigned int x);//À¿—” ±x∫¡√Î
void Delay_xus(unsigned int x);
void LED_Study_End(void);
void Control(void);



#endif




