#include	"cd.h"

/*-------------------------------------------------
 *  函数名：POWER_INITIAL
 *	功能：  上电系统初始化
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/	
void POWER_INITIAL(void) 
{
	 
	OSCCON = 0B01110001;	//WDT 32KHZ IRCF=111=16MHZ
					 		//Bit0=1,系统时钟为内部振荡器
					 		//Bit0=0,时钟源由FOSC<2：0>决定即编译选项时选择
	INTCON = 0;  			//暂禁止所有中断
    
	PORTA = 0B00000000;		
	TRISA = 0B11111110;		//PA输入输出 0-输出 1-输入
	PORTB = 0B00000000;		
	TRISB = 0B11110111;		//PB输入输出 0-输出 1-输入							
	PORTC = 0B00000000; 	
	TRISC = 0B10001111;		//PC输入输出 0-输出 1-输入  	
    PORTD = 0B00000000;		
	TRISD = 0B11111001;		//PD输入输出 0-输出 1-输入
	
	WPUA = 0B00000000;     	//PA端口上拉控制 1-开上拉 0-关上拉
	WPUB = 0B00011000;     	//PB端口上拉控制 1-开上拉 0-关上拉
	WPUC = 0B01110000;     	//PC端口上拉控制 1-开上拉 0-关上拉
	WPUD = 0B00000110;     	//PD端口上拉控制 1-开上拉 0-关上拉
    
    WPDA = 0B00000001;     	//PA端口上拉控制 1-开下拉 0-关下拉
	WPDB = 0B00000000;     	//PB端口上拉控制 1-开下拉 0-关下拉
	WPDC = 0B00000000;     	//PC端口上拉控制 1-开下拉 0-关下拉
	WPDD = 0B00000000;     	//PD端口上拉控制 1-开下拉 0-关下拉
    
    PSRC0  = 0B11111111;  	//PORTA,PORTB源电流设置最大
    //BIT7~BIT6:PORTB[7:4]源电流能力控制,BIT5~BIT4:PORTB[3:0]源电流能力控制 
    //BIT3~BIT2:PORTA[7:4]源电流能力控制,BIT1~BIT0:PORTA[3:0]源电流能力控制
    
    PSRC1  = 0B11111111;    //PORTC,PORTD源电流设置最大    
    //BIT7~BIT6:PORTD[7:4]源电流能力控制,BIT5~BIT4:PORTD[3:0]源电流能力控制 
    //BIT3~BIT2:PORTC[7:4]源电流能力控制,BIT1~BIT0:PORTC[3:0]源电流能力控制
    
    PSINK0 = 0B11111111;  	//PORTA灌电流设置最大 0:最小，1:最大
    PSINK1 = 0B11111111; 	//PORTB灌电流设置最大 0:最小，1:最大
    PSINK2 = 0B11111111;	//PORTC灌电流设置最大 0:最小，1:最大
    PSINK3 = 0B11111111;	//PORTD灌电流设置最大 0:最小，1:最大
	
    ANSELA = 0B00000111;
 
	BO = 0;
	LED_R = LED_G = 0;
  JDQ = 0;FAN = 0;

}
void BO_IN_MO(void)
{
    TRISA0 = 1;
    EPS0 = 0B00000000; 	//选择PA0管脚中断
    EPS1 = 0B00000000;
    ITYPE0 = 0B00000011;//双沿中断
    ITYPE1 = 0B00000000;
    EPIE0 = 0B00000001;//使能中断0
		EPIF0 = 0xFF;						//写1清中断响应标志位 
		PEIE = 1;										//使能外部中断
		GIE = 1;											//开总中断
}
void BO_IN_OUT(void)
{
    TRISA0 = 0;
    PEIE = 0;
    BO = 0;
}

/*-------------------------------------------------
 *  函数名：Time1Initial
 *	功能：  上电系统初始化
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/		
void Time1Initial(void)
{
	PCKEN |=0B00000010;    //使能timer1时钟模块
    
	AFP0 = 0B01000000;
    AFP1 = 0B00000001;
    AFP2 = 0B00000000;
    
    CKOCON=0B00100000;
    TCKSRC=0B00000011;    //TIM1时钟为HIRC的2倍频 32M
    
    TIM1CR1 =0B10000101;  //预载允许，边沿对齐向上计数器，计数器使能
    TIM1SMCR=0B00000000;

    TIM1IER =0B00000000;//禁止所有中断
    TIM1SR1 =0B00000000;
    TIM1SR2 =0B00000000;
    TIM1EGR =0B00000000;
    TIM1CCMR1 =0B01101000;//CC1通道被配置为输出
    TIM1CCMR2 =0B01101000;//CC2通道被配置为输出
    TIM1CCMR3 =0B00000000;
    TIM1CCMR4 =0B00000000;
    
    TIM1CCER1 =0B00010001; 
    TIM1CCER2 =0B00000000;
    
    TIM1CNTRH =0B00000000;//TIM1计数器
    TIM1CNTRL =0B00000000;
    
    TIM1PSCRH =0B00000000;
    TIM1PSCRL =0B00000000;
    
    TIM1ARRH =0x03;        //自动重载，周期
    TIM1ARRL =0xe8;
    
    TIM1RCR =0B00001111;   //重复计数器的值
    
    TIM1CCR1H =pwmu/256;       //PWM脉宽
    TIM1CCR1L =pwmu%256;
    
    TIM1CCR2H =pwmi/256;
    TIM1CCR2L =pwmi%256;

    TIM1BKR =0B11000000;   //输出使能，禁止刹车
    TIM1DTR =0B00000000;   //死区发生器
    TIM1OISR =0B00000000; //空闲输出状态设置
	
    LEBCON =0B10000000; //使能前沿消隐  TIM1_CH1 PWM上升沿 LEBEN=1
}
/*-------------------------------------------------
 *  函数名: ADC_INITIAL
 *	功能：  ADC初始化
 *  输入：  无
 *  输出：  无
 --------------------------------------------------*/
void ADC_INITIAL(void)
{
     PCKEN |=0B00000001;      //AD模块时钟使能
     ANSELA = 0B00000111;    //模拟口设置，AN0/1/2为模拟管脚

	ADCON1 = 0B10100100; 	//右对齐，转换时钟Fosc/32，负参考电压GND，正参考电压内部电压(3V)                          
	ADCON0 = 0B00000000; 	//选择AD转换通道0，使能ADC   						   			 			
    ADCON2 = 0B10010000; 	//选择内部正参考电压3V  PWM 或 ADC_ETR脚的上升沿 PWM0
    ADCON3 = 0B00000100; 	//前沿消隐周期结束后，触发ADC转换

    ADDLY  = 0X0B;    //外部触发廷时，1US

    ADCMPH = 0B00000000;	//ADC比较阈值,仅8位，用于ADC结果高8位比较。

	ADCAL=1;                //校准ADC, 注意点：校准要放在配置之后
    NOP();
    while(ADCAL);       
    
    ADON=1; //全能ADC
}                   
/*-------------------------------------------------
 *  函数名: GET_ADC_DATA
 *	功能：  读取通道ADC值
 *  输入：  adcChannel 通道序号
 *  输出：  INT类型AD值(单次采样无滤波)
 --------------------------------------------------*/
unsigned int GET_ADC_DATA(unsigned char adcChannel) 
{ 
	ADCON0 &= 0B00001111;        				   
    ADCON0 |= adcChannel<<4; 				//重新加载通道值
	DelayUs(40);                        	//廷时等待电压稳定 Tst >10us
    
	LEBADT = 1;
	ADEX = 1;             					//启动ADC  
    NOP();
    NOP();
	while(GO);    							//等待ADC转换完成
	ADEX = 0;
    
    return  (unsigned int)(ADRESH<<8|ADRESL);      //整合12位AD值
} 

