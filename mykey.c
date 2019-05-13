//********************************************************************
//
//      KEY Init Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#include "MyInclude.h"

uint8_t flag0=0;
uint8_t flag1=0;
/*******************************************************************************
 * 函数名：isKeyPressed
 * 描述  ：判断学习按键状态
 * 输入  ：、
 * 输出  ：无
 * 调用  ：内部调用
 ******************************************************************************/
/*uint8_t isKeyPressed(void)  //判断学习按键状态
{
    return  KEY_STUDY ? 0:1;
}*/
/*******************************************************************************
 * 函数名：KEY_Scan
 * 描述  ：按判断拨码开关状态,1正转 2反转
 * 输入  ：无
 * 输出  ：无
 * 调用  ：内部调用
 ******************************************************************************/
void isSwitchOn(void)  //判断拨码开关状态
{
    Delay_xms(20);
    if(GPIO_DIR == 0) {
        if(flag0==0) {
            flag0=1;
            flag1=0;
            TIM4_DISABLE;
            TIM5_DISABLE;
            P4EN=0;
            P5EN=0;
            PC3=0;
            PC2=0;
            Delay_xms(50);
            PWM5_Init();
        }
    } else {
        if(flag1 == 0) {
            flag1=1;
            flag0=0;
            TIM4_DISABLE;
            TIM5_DISABLE;
            P4EN=0;
            P5EN=0;
            PC3=0;
            PC2=0;
            Delay_xms(50);
            PWM4_Init();
        }
    }
}

void switch_pwm(void)
{
    if(GPIO_DIR == 0) {
        TIM4_DISABLE;
        TIM5_ENABLE;
    } else {
        TIM4_ENABLE;
        TIM5_DISABLE;
    }
}
