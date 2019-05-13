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
 * ��������Timer2_Init
 * ����  ��ϵ��ʱ��2��ʼ������
 * ����  ����
 * ���  ����
 * ����  ���ڲ�����
 ******************************************************************************/
void Timer2_Init(void)
{
    //T2CON
    TOUTPS0=1;
    TOUTPS1=0;
    TOUTPS2=0;
    TOUTPS3=1;//����������Ƶ��1~16
    T2CKPS0=1;
    T2CKPS1=1;//ʱ��Ԥ��Ƶ��00=1 01=4 1x=16

    TMR2=0;//��ʱ��2����������ֵ
    PR2=200;//��ʱ��2���ڱȽϼĴ��� PR2��ֵҪ����TMR2  T=(TOUTPS/16MHz)*T2CKPS*4*PR2 = 0.5ms

    //INTCON
    PEIE=1;//�����ж�ʹ�� 1=enble 0=disable
    TMR2IE=1;//TMR2��PR2�Ƚ�����ж�ʹ��λ 1=enable 0=disable
    TMR2IF=0;//TMR2��PR2�Ƚ�����жϱ�־λ Ӳ����1�������0
    GIE=1; //ȫ���ж�ʹ�� 1=enble 0=disable
    TMR2ON=1;//�򿪶�ʱ��2ʹ��λ
}

/*******************************************************************************
 * ��������PWM_SET
 * ����  ��PWM���ã����ڿ���L9110
 * ����  ����
 * ���  ����
 * ����  ����
 ******************************************************************************/
void PWM_SET(void)
{
    if(direction == 1) {
        GPIO_IB=0;     // 4��  3��
        if(PWM_set >= 10) {
            if(pwm_cnt <= PWM_set) {
                GPIO_IA=1;  // ��
            } else if(pwm_cnt > PWM_set)
                GPIO_IA=0;   // ��
        } else GPIO_IA=0;       // ��
    } else if(direction == 2) {
        GPIO_IA=0;     // 3�� 4��
        if(PWM_set >= 10) {
            if(pwm_cnt <= PWM_set) {
                GPIO_IB=1;  // ��
            } else if(pwm_cnt > PWM_set)
                GPIO_IB=0;   // ��
        } else  GPIO_IB=0;   // ��
    }
}
