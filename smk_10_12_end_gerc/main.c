#include "M0_Core.h"
#include "inc.h"
#include "src.c"
#include "radio.c"

void main(void)
{
//  BCKR_init();
//  RCC_init();
//  GPIO_init();
//  ADC_init();
//  Timer_init();
  RCC_init();
  SYSTICK_init();
//  SPI_init();
//  Null_struct(getptr(Timers), 24);
//  Timers.head.delta = 50;
//  Timers.bat.delta = 2;
//  Timers.alert.delta = 2;
//  start = 1;
//  period = SetAlarmPeriod();
//  LED_G_ON;
//  state = data1|state;


  RCC_GPIOC_EN = ON;
  RCC_ADC_EN  = ON;
  
  GPIO_CFG_PIN01(GPIOA, GPIO_ANALOG);                   //BAT_ADC1
  GPIO_CFG_PIN03(GPIOA, GPIO_ANALOG);                   //BAT_ADC2
  GPIO_CFG_PIN13(GPIOC, GPIO_OUT_PP_PD_L);              //LED_13
  
  ADC_init();
  
  
  while(1)
  {
    for(int cn=0;cn<=0x4000;cn++)
    {
      LED_13_ON;
    }

    for(int cn=0;cn<=0x4000;cn++)
    {
      LED_13_OFF;
    }
    Volt.ref_volt = 3.3*CAL_VINT/ADC_VAL(VR_ADC_CH);
    Volt.bat2 = ADC_VAL(B2_ADC_CH)*Volt.ref_volt/4095;
    
//    if(Status.led != LED_BIND_VALID)
//    {
//       
//      ADC_Complex();
//      if(TimeOut(Timers.d.basic,Timers.bat.prph) >= Timers.bat.delta || !scan_time)
//      {
//        if(!scan_time)
//        {
//          ADC_Simple();
//        }
////        Contact_Scan();
//        Contact_Scan();
//        Alert_Scan();
//        Bat_ADC_Ctrl();
//        LED_Linear();
//        Timers.bat.prph = Timers.d.basic;
//      }
//      if(TimeOut_16(Timers.e.basic,Timers.head.prph) > Timers.head.delta)
//      {
//        if((state || data1 != NORM_STBY)&&mode!=M_TEST
//           || mode == M_TEST&&(state != state_prev||data1!=data1_prev))// && (mode==MODE_STBY&&WakeCause == AFTER_SHORTPAUSE&&)) 
//        {
//          mode_change = 0;
//          if(!Status.rxon)
//          {
//            data1_prev = data1; state_prev = state;
//          }
//          Radio_Head();
//        }
//      }
//    }
//    else
//    {
//      Status.led = LED_DEFAULT;
//    }
//    if(mode==M_STBY)
//    {
//      if(Status.pack || (WakeCause == AFTER_SHORTPAUSE) ||Status.led == LED_BIND_FAULT)
//      {
//        
//        LED_Linear();
//        LED_OFF;
//        Tamper_init();
//        RTC->RTC_BKPxR_0.TAMP = Element.jprog;
//        RTC->RTC_BKPxR_0.MODE = mode;
//        RTC->RTC_BKPxR_0.CNT += period;
//        RTC->RTC_BKPxR_1.DATA1 = data1;
//        RTC->RTC_BKPxR_1.STATE = state;
//        IWDG_Set(period);
//        LowPower();
//      }
//    }
//    scan_time++;
//    if(!scan_time) 
//    {
//      scan_time=1;
//    }
  }
}
//------------------------------------------------------------------------------

//    u8 a1,a2,a3,a4; //,a5,a6,a7,a8;
//    a1 = (WakeCause == AFTER_LONGPAUSE || scan_time) && mode != MODE_TEST || rad_sw ;
//    a2 =        (TimeOut_16(Timers.e.basic,Timers.head.prph) > Timers.head.delta) 
//       && mode == MODE_STBY;
//    a3 = mode == MODE_BIND || (mode == MODE_TEST && state != state_prev) ||
//       (mode == MODE_TEST && mode_change && !scan_time ) || (rad_sw && !scan_time && mode != MODE_TEST);
//    a4 = (state != state_prev) && mode != MODE_X;
//    a10 = a1 && a2 || a3 || a4;


