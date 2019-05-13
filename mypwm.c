//********************************************************************
//
//      PWM Init Initialization Part
//      4DClass
//      Copyright(C)  2017
//      All rights reserved
//***********************************************************************
#include "MyInclude.h"

// PR5L=125;//50%
void SetPWM_5_Duty(uint16_t duty)
{
    uint8_t dudata=0;

    dudata = (uint8_t)(duty/4);
    TMR5H=0;//��4λΪR3H
    PR5L=dudata;//����ռ�ձ�
}
// PR4L=125;//50%
void SetPWM_4_Duty(uint16_t duty)
{
    uint8_t dudata=0;

    dudata = (uint8_t)(duty/4);
    TMR4H=0;//��4λΪR3H
    PR4L=dudata;//����ռ�ձ�
}
void PWM5_Init(void)
{
    TRISC2=1;
    //PWMxCR0  ��������
    P5INTS=0;
    P5PER0=1;
    P5PER1=1;
    P5PER2=0;//����ѡ��λ 8
    P5CKSRC0=1;
    P5CKSRC1=0;
    P5CKSRC2=0;//ʱ��ѡ��λ
    P5BZR=0;//0=pwm��1=BUZZER
    //PWMxCR1
    P5EN=1;//1=pwm/buzzerģʽ��0=��ʱ��ģʽ
    P5POL=0;//0=high,1=low
    TMR5PS0=0;
    TMR5PS1=0;
    TMR5PS2=1;//Ԥ��Ƶ 16
    TMR5ON=0;//0=off��1=on
    TMR5IE=0;//0=off,1=on
    TMR5IF=0;//0=OFF,1=ON

    T5CKDIV=3;	//	61

    TMR5H=0;//��4λΪR3H
    PR5L=125;//����ռ�ձ�   125 =50%ռ�ձ�

    TMR5IF=0;//0=OFF,1=ON
    TMR5ON=1;//0=off��1=on
    while(TMR5IF==0) CLRWDT();
    TRISC2=0;
    //���� ��T5CKDIV+1��/16000000*2^(����λ)*(Ԥ��Ƶ)=��3+1��/16000000*2^8*16=1.024
    //ռ�ձ� ��T5CKDIV+1��/16000000*(Ԥ��Ƶ)*PR =��3+1��/16000000*16*125 = 0.5
    //TIM5_DISABLE;
}

void PWM4_Init(void)
{
    TRISC3 = 1;
    //PWMxCR0  ��������
    P4INTS=0;
    P4PER0=1;
    P4PER1=1;
    P4PER2=0;//����ѡ��λ
    P4CKSRC0=1;
    P4CKSRC1=0;
    P4CKSRC2=0;//ʱ��ѡ��λ
    P4BZR=0;//0=pwm��1=BUZZER
    //PWMxCR1
    P4EN=1;//1=pwm/buzzerģʽ��0=��ʱ��ģʽ
    P4POL=0;//0=high,1=low
    TMR4PS0=0;
    TMR4PS1=0;
    TMR4PS2=1;//Ԥ��Ƶ
    TMR4ON=0;//0=off��1=on
    TMR4IE=0;//0=off,1=on
    TMR4IF=0;//0=OFF,1=ON

    T4CKDIV=3;

    TMR4H=0;//��4λΪR3H
    PR4L=125;//����ռ�ձ�


    TMR4IF=0;//0=OFF,1=ON
    TMR4ON=1;//0=off��1=on
    while(TMR4IF==0) CLRWDT();
    TRISC3 = 0;
    //TIM4_DISABLE;
}

