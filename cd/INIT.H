#ifndef __INIT_H__
#define __INIT_H__

#define  LED_G	RB3//绿灯
#define  LED_R RC4//红灯

#define  KEY_A	RB4//电流挡位选择默认10A暂时不用

#define  QACL RB2//0：市电欠压

#define  JDQ RC5//继电器
#define  FAN RC6//风扇

#define  BO RA0//短路保护检测默认低

void POWER_INITIAL(void) ;
void BO_IN_MO(void);
void BO_IN_OUT(void);
void Time1Initial(void);
void ADC_INITIAL(void);
unsigned int GET_ADC_DATA(unsigned char adcChannel);

#endif
