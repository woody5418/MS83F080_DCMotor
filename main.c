/****************************************************************************
*       Copyright (C), ������ά���ǽ����Ƽ����޹�˾
*
*       MS83Fxx02B
*       V0.1
*       2017-12-04
*       Woody  QQ:2490006131
*Description  :      <-MS83F1602AS->
* 				        _________
* 				   VDD|1        16|VSS
*  PA7/OSC1/CLKI/T1CKI|2        15|PA0/AN0/C1IN+/ICSPCLK
*    PA6/OSC2/CLKO/T1G|3    M   14|PA1/AN1/C1IN-/ICSPDAT
* 			 PA5/MCLRB|4    S   13|PA2/AN2/C1OUT/T0CKI
*  	      PC3/P1C/PWM4|5    8   12|PA3/AN3/ATEST1
* 	  PC2/AN6/P1D/PWM5|6    3   11|PC0/AN4/C2IN+/P1F/Vref
* 	  PA4/ATEST0/Vregp|7        10|PC1/AN5/C2IN-/P1E/INT
*   PC5/CCP1/P1A/Vregn|8_________9|PC4/C2OUT/P1B/PWM3
*   4Tģʽ
*****************************************************************************/
#include "MyInclude.h"
#include "MyEEProm.h"
#include "MyADC.h"
#include "MyKey.h"
#include "MyPWM.h"


uint16_t ADC_Value=0;
uint16_t PWM_SET=0;
/*******************************************************************************
 * ��������interrupt ISR
 * ����  ���жϺ���
 * ����  ����
 * ���  ����
 * ����  ���ڲ�����
 ******************************************************************************/
void interrupt ISR(void)
{
}
/*******************************************************************************
 * ��������main
 * ����  ��ϵͳ������
 * ����  ����
 * ���  ����
 * ����  ���ڲ�����
 ******************************************************************************/
void main(void)
{
    System_init();
    GPIO_Init();
    ADC_Init();
    PWM4_Init();
    PWM5_Init();
    TIM4_DISABLE;
    TIM5_DISABLE;
    switch_pwm();
    while(1) {
        isSwitchOn();
        ADC_Value = GetADCValue();
        if(ADC_Value <= 180)
            ADC_Value=0;
        if(ADC_Value >= 1023) ADC_Value=1023;
        SetPWM_4_Duty(ADC_Value);
        SetPWM_5_Duty(ADC_Value);
        //Delay_xms(10);
    }
}


/*******************************************************************************
 * ��������Control
 * ����  �����̿��ƺ���
 * ����  ����
 * ���  ����
 * ����  ���ڲ�����
 *****************************************************************************
void Control(void)
{
	if(flag_eeprom == 0)
    {
        flag_eeprom=1;
        direction=Read_EEPROM_u8(0x00);
        if(direction == 0XFF)
			direction=1;
		Delay_xms(10);
    }
	isSwitchOn();
	ExchChannel(5);
	for(j=0;j<5;j++)
		ADC_Value = GetADCValue();
	if(ADC_Value <= 180)
		PWM_set = 0;
	else
        PWM_set = ADC_Value;
	Delay_xms(50);
}
*/



