//********************************************************************
//
//      KEY Init Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#include "MyInclude.h"

uint16_t  pwm_cnt=0;
uint16_t  PWM_set=0;
uint8_t direction=2;

void PWM_SET(void);
/*******************************************************************************
 * 函数名：Timer2_Init
 * 描述  ：系定时器2初始化函数
 * 输入  ：无
 * 输出  ：无
 * 调用  ：内部调用
 ******************************************************************************/
void Timer2_Init(void)
{
    //T2CON
    TOUTPS0=1;
    TOUTPS1=0;
    TOUTPS2=0;
    TOUTPS3=1;//设置输出后分频比1~16
    T2CKPS0=1;
    T2CKPS1=1;//时钟预分频比00=1 01=4 1x=16

    TMR2=0;//定时器2计数器付初值
    PR2=200;//定时器2周期比较寄存器 PR2的值要大于TMR2  T=(TOUTPS/16MHz)*T2CKPS*4*PR2 = 0.5ms

    //INTCON
    PEIE=1;//外设中断使能 1=enble 0=disable
    TMR2IE=1;//TMR2与PR2比较相等中断使能位 1=enable 0=disable
    TMR2IF=0;//TMR2与PR2比较相等中断标志位 硬件置1，软件清0
    GIE=1; //全局中断使能 1=enble 0=disable
    TMR2ON=1;//打开定时器2使能位
}

/*******************************************************************************
 * 函数名：PWM_SET
 * 描述  ：PWM设置，用于控制L9110
 * 输入  ：无
 * 输出  ：无
 * 调用  ：无
 ******************************************************************************/
void PWM_SET(void)
{
    if(direction == 1) {
        GPIO_IB=0;     // 4低  3高
        if(PWM_set >= 10) {
            if(pwm_cnt <= PWM_set) {
                GPIO_IA=1;  // 高
            } else if(pwm_cnt > PWM_set)
                GPIO_IA=0;   // 低
        } else GPIO_IA=0;       // 低
    } else if(direction == 2) {
        GPIO_IA=0;     // 3低 4高
        if(PWM_set >= 10) {
            if(pwm_cnt <= PWM_set) {
                GPIO_IB=1;  // 高
            } else if(pwm_cnt > PWM_set)
                GPIO_IB=0;   // 低
        } else  GPIO_IB=0;   // 低
    }
}
