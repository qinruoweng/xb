#include	"cd.h"

unint  theVoltage1;
unint  theVoltage2;
unint  theVoltage3;
unint adc0[10],adc1[10],adc2[10];
unint adc3[10],adc4[10];
unint gljs = 0;
unchar dczxjs = 0;
unint acerjs = 0;
void adc_run(void)
{
    unint i;
    unint adz0=0,adz1=0,adz2=0;
    
    theVoltage1 = GET_ADC_DATA(0);DelayMs(1);
    theVoltage2 = GET_ADC_DATA(1);DelayMs(1);
    theVoltage3 = GET_ADC_DATA(2);DelayMs(1);
    
	for(i=0;i<9;i++){
		adc0[i] = adc0[i+1];
        adc1[i] = adc1[i+1];
        adc2[i] = adc2[i+1];
        adc3[i] = adc3[i+1];
        adc4[i] = adc4[i+1];
	}
    if(theVoltage1 >= 1000){adc0[9] = theVoltage1;}
    adc1[9] = theVoltage2;
	adc2[9] = theVoltage3;
    adz0=0;adz1=0;adz2=0;
    for(i=0;i<10;i++){
        adz0 = adz0+adc0[i];
        adz1 = adz1+adc1[i];
        adz2 = adz2+adc2[i];
    }
	wd = adz0/10;
  dcu = adz1/10;
  dci = adz2/10;
  if(JDQ == 1){
      if(dci <= 100){dczxjs++;}
      else{dczxjs=0;}
      if(dczxjs >= 200){
          dczxjs = 200;
          dczx_st = 0;
			}else{dczx_st = 1;}
      if(BO == 1){gl_st = 1;}
	}
/*	
	adc3[9] = dcu;
	adc4[9] = dci;
	adz0=0;adz1=0;adz2=0;
    for(i=0;i<10;i++){
        adz1 = adz1+adc3[i];
        adz2 = adz2+adc4[i];
    }
	dcu = adz1/10;
  dci = adz2/10;
 */   
	
  if(dcu > 3500){dcfj_st = 1;}   
  else if(dcu > DC_MAX_U3){dcmax_st = 1;}
  else if(dcmax_st == 1){
      if(dcu <= DC_MAX_U2){dcmax_st = 0;}
  }else  if(upsd >= 10500){upsd = 10500;}
  else{upsd++;dcu = DC_MAX_U1;}
  
   if(dci > 900){//12A
       gljs++;
       if(gljs >= 1000){gl_st = 1;}
   }else{gljs = 0;}
   
		if(QACL == 1){
        if(acerjs >= 1000){acerr_st = 1;}
        else{acerjs++;}
		}else{
       acerjs = acerr_st = 0;
		}
}
unint ledjs = 0;
unint wderjs = 0;
void led_run(void)
{
    if(wd < 3850){//80度1.25K-3800
        if(wderjs >= 5000){wderr_st = 1;}
        else{wderjs++;}
		}else if(wd > 4000){wderjs = wderr_st = 0;}//74
    
    if(gl_st != 1 && dcfj_st != 1 && wderr_st !=1 && acerr_st != 1){
			if(dcu <= DC_MAX_U1){
					 if(pwmi != 34 || JDQ == 0){
							pwmi = 34;
							TIM1CCR2H =pwmi/256;
							TIM1CCR2L =pwmi%256;
              if(JDQ == 0){
                 BO_IN_OUT();
									DelayMs(10);
									JDQ = 1;
									DelayMs(150);
									BO_IN_MO(); 
							}
					}
					dcmax_st = 0;
			}else if(dcu <= DC_MAX_U3){
					if(dcmax_st == 0){
							if(pwmi < 115){
									pwmi++;
									TIM1CCR2H =pwmi/256;
									TIM1CCR2L =pwmi%256;
							}
							if(JDQ == 0){
                 BO_IN_OUT();
									DelayMs(10);
									JDQ = 1;
									DelayMs(150);
									BO_IN_MO(); 
							}
							dcmax_st = 0;
					}else{
							JDQ = 0;
							dcmax_st = 1;
							if(dcu <= DC_MAX_U2){dcmax_st = 0;}
					}
			}else{
					if(dcmax_st == 0){
							dcmax_st = 1;
							JDQ = 0;
							pwmi = 1;
							TIM1CCR2H =pwmi/256;
							TIM1CCR2L =pwmi%256;
					}
			}
    }else{
        if(JDQ == 1){
					JDQ = 0;
          pwmi = 1;
					TIM1CCR2H =pwmi/256;
					TIM1CCR2L =pwmi%256;
				}
    }
    
    if(gl_st == 1 || dcfj_st == 1 || wderr_st == 1 || acerr_st == 1){
			LED_G = 0;
			ledjs++;
      if(ledjs < 100){LED_R = 1;}
			else if(ledjs < 200){LED_R = 0;}
			else if(ledjs > 200){ledjs = 0;}
//      if(gl_st == 1){//过流
//          if(ledjs < 50){LED_R = 1;}
//					else if(ledjs < 100){LED_R = 0;}
//					else if(ledjs > 1000){ledjs = 0;}
//			}else if(dcfj_st == 1){//电池反接
//          if(ledjs < 50){LED_R = 1;}
//          else if(ledjs < 100){LED_R = 0;}
//          else if(ledjs < 150){LED_R = 1;}
//					else if(ledjs < 200){LED_R = 0;}
//					else if(ledjs > 1000){ledjs = 0;}
//			}else if(wderr_st == 1){//过温
//          if(ledjs < 50){LED_R = 1;}
//          else if(ledjs < 100){LED_R = 0;}
//          else if(ledjs < 150){LED_R = 1;}
//          else if(ledjs < 200){LED_R = 0;}
//          else if(ledjs < 250){LED_R = 1;}
//					else if(ledjs < 300){LED_R = 0;}
//					else if(ledjs > 1000){ledjs = 0;}
//			}else{//市电电压低
//          if(ledjs < 50){LED_R = 1;}
//          else if(ledjs < 100){LED_R = 0;}
//          else if(ledjs < 150){LED_R = 1;}
//          else if(ledjs < 200){LED_R = 0;}
//          else if(ledjs < 250){LED_R = 1;}
//					else if(ledjs < 300){LED_R = 0;}
//          else if(ledjs < 350){LED_R = 1;}
//					else if(ledjs < 400){LED_R = 0;}
//					else if(ledjs > 1000){ledjs = 0;}
//			}
//       if(pwmi != 38){
//					pwmi = 38;
//					TIM1CCR2H =pwmi/256;
//					TIM1CCR2L =pwmi%256;
//			 }
//    }else  if(dczx_st == 0){
//        LED_R = 0;
//        ledjs++;
//        if(ledjs < 50){LED_G = 1;}
//        else if(ledjs < 100){LED_G = 0;}
//        else{ledjs = 0;}
		}else if(dcmax_st == 0){
        LED_R = 1;LED_G = 0;
		}else{
        LED_R = 0;LED_G = 1;
		}
}


