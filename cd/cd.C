//Project: cd.prj
// Device: FT61F08X
// Memory: Flash 8KX14b, EEPROM 256X8b, SRAM 1KX8b
// Author: 
//Company: 
//Version:
//   Date: 
//===========================================================
//===========================================================
#include	"cd.h"

//===========================================================
//Variable definition
//===========================================================
unint pwmi = 34,pwmu = 800;//800
unint wd=0,dci=0,dcu=0;
unchar gl_st = 0;//过流状态
unchar dcfj_st = 0;//电池接反
unchar wderr_st = 0;//过温状态
unchar dczx_st = 1;//电池在线状态
unchar dcmax_st = 0;//电池充满状态
unchar acerr_st = 0;//前级欠压
unint upsd = 0;//上电先小电流充10秒

//===========================================================
//Funtion name：interrupt ISR
//parameters：无
//returned value：无
//===========================================================
void interrupt ISR(void)
{
    if(EPIF0 & 0x01)
		{
			EPIF0 |= 0x01;					//写1清中断3响应标志位 
			PEIE = 0;
      gl_st = 1;
		}
}
//===========================================================
//Funtion name：main
//parameters：无
//returned value：无
//===========================================================
void main(void)
{
    unint i;
    
		POWER_INITIAL();
    Time1Initial();
    ADC_INITIAL();
    FAN = 1;
		for(i=0;i<200;i++){
        adc_run();
        DelayMs(5);
        LED_R = LED_G = ~LED_G;
    }
    pwmi = 34;//38-3.5 125-10
    TIM1CCR2H =pwmi/256;
    TIM1CCR2L =pwmi%256;
    pwmu = 800;
    TIM1CCR1H =pwmu/256;       //PWM脉宽
		TIM1CCR1L =pwmu%256;
    DelayS(1);
    //BO_IN_MO();
    DelayS(2);
    while(1)
		{
				DelayMs(1);
        adc_run();
        led_run();
		}
}
//===========================================================
