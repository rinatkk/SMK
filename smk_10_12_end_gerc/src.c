void RCC_init(void)
{
  
  if ((RCC->CFGR.SWS) == RCC_CFGR_SWS_PLL)  
  { 
   RCC->CFGR.SW = 0;
   while ((RCC->CFGR.SWS) != RCC_CFGR_SWS_HSI){}
  }
  
  RCC->CR.PLLON = 0;
  while(!(RCC->CR.PLLRDY)) {};
  FLASH->ACR.PRFTBE = 1;
  FLASH->ACR.LATENCY = 1;
  RCC->CFGR.PLLSRC =0x01;
  RCC->CFGR.PLLMUL = 0x8; 
  
  RCC->CR.PLLON = 1; 
  while(!(RCC->CR.PLLRDY)){};
  
  RCC->CFGR.SW = RCC_CFGR_SW_PLL;
  while ((RCC->CFGR.SWS) != RCC_CFGR_SWS_PLL) {};
  
  
  
  RCC_GPIOA_EN = ON;
  RCC_GPIOB_EN = ON;
  RCC_GPIOC_EN = ON;
  RCC_GPIOF_EN = ON;
  RCC_ADC_EN  = ON;
  //RCC_TIM1_EN = ON;
  RCC_SYS_EN = ON;
}
//------------------------------------------------------------------------------
void GPIO_init(void)
{
  
  GPIO_CFG_PIN05(GPIOA, GPIO_AF_PP_PU_H);               //CLK
  GPIO_CFG_PIN06(GPIOA, GPIO_AF_PP_PU_H);               //MISO
  GPIO_CFG_PIN07(GPIOA, GPIO_AF_PP_PU_H);               //MOSI
  
//  GPIO_CFG_PIN00(GPIOA, GPIO_OUT_PP_PU_L);              //BAT1
  GPIO_CFG_PIN01(GPIOA, GPIO_ANALOG);                   //BAT_ADC1
//  GPIO_CFG_PIN02(GPIOA, GPIO_OUT_PP_PD_L);              //BAT2
  GPIO_CFG_PIN03(GPIOA, GPIO_ANALOG);                   //BAT_ADC2
  GPIO_CFG_PIN04(GPIOA, GPIO_OUT_PP_PU_M);              //NSS
  //GPIO_CFG_PIN05(GPIOA, GPIO_OUT_PP_PU_M);              //CLK
  //GPIO_CFG_PIN06(GPIOA, GPIO_IN_PU);                    //MISO
  //GPIO_CFG_PIN07(GPIOA, GPIO_OUT_PP_PU_M);              //MOSI
  GPIO_CFG_PIN12(GPIOA, GPIO_OUT_PP_PD_L);              //BAT2
  GPIO_CFG_PIN15(GPIOA, GPIO_IN_PU);                    //GK

  GPIO_CFG_PIN00(GPIOB, GPIO_IN_PU);                    //nIRQ
  GPIO_BIT_SET(GPIOB) = GPIO_PIN00;
  GPIO_CFG_PIN01(GPIOB, GPIO_ANALOG);                   //ADC
  GPIO_CFG_PIN02(GPIOB, GPIO_OUT_PP_PD_L);              //GPIO_CFG_PIN11(GPIOB, GPIO_OUT_PP_PD_L);              //RF_SHUTDOWN
  GPIO_CFG_PIN03(GPIOB, GPIO_IN_PU);                    //PRG
  GPIO_CFG_PIN04(GPIOB, GPIO_IN_PU);                    //TIP     
  GPIO_CFG_PIN05(GPIOB, GPIO_OUT_PP_PD_L);              //SH     
  GPIO_CFG_PIN09(GPIOB, GPIO_IN_PU);                    //GERC     
  GPIO_CFG_PIN10(GPIOB, GPIO_OUT_PP_PU_L);              //ADC_BAT2_ON
  GPIO_CFG_PIN11(GPIOB, GPIO_OUT_PP_PD_L);              //SI4455_PWR_ON
  GPIO_CFG_PIN12(GPIOB, GPIO_IN_PU);                    //TAMP
  GPIO_CFG_PIN14(GPIOB, GPIO_OUT_PP_PU_L);              //
  
  GPIO_CFG_PIN14(GPIOC, GPIO_OUT_PP_PU_L);              //BAT_SW

  GPIO_CFG_PIN00(GPIOF, GPIO_OUT_PP_PD_L);              //LED_G     
  GPIO_CFG_PIN01(GPIOF, GPIO_OUT_PP_PD_L);              //LED_R  
  GPIO_CFG_PIN06(GPIOF, GPIO_OUT_PP_PD_L);              //LED_G     
  GPIO_CFG_PIN07(GPIOF, GPIO_OUT_PP_PD_L);              //LED_R  
  
  GPIO_CFG_PIN13(GPIOC, GPIO_OUT_PP_PD_L);              //LED_13

  

  SYSCFG->SYSCFG_EXTICR1.EXTI00 = 0x01;
  EXTI->EXTI_IMR.MRx0 = 0x01;
  EXTI->EXTI_FTSR.TR0 = 0x01;
  NVIC->ISER[0] = (1 <<((u32)(EXTI415_IRQ)));
}
//------------------------------------------------------------------------------
void Timer_init(void)
{
  RCC_TIM3_EN = ON;
  TIM03->TIMx_PSC.PSC = 7;
  TIM03->TIMx_CR1.OPM = 1;
}
//------------------------------------------------------------------------------
void ADC_init(void)
{
  
  ADC_CAL = ON;                                         //  ADC calibration
  while(ADC_CAL);                                       //  Wait while the calibration end
  ADC_DISCEN = 1;                                       //  ADC disable     
  ADC_SMP = 0x07;
  ADC_EN = ON;                                          //  ADC enable
  ADC_CH_NONE;
  ADC_CONT = 0;
  ADC_VREFEN = ON;
  //  Single mode      
  //ADC_EOCIE = ON;                                     //  End of conversation interrupt enable
  ADC_CKMODE = ON;                                      //  ADC clock mode
}
//------------------------------------------------------------------------------
void SPI_init(void)
{
  RCC_SPI1_EN = ON;   
  SPIx_MSTR_SEL(SPI1);
  SPIx_BAUDRATE(SPI1, F_PLCKDIV_h100);   
  SPIx_DATASIZE(SPI1, BIT08);
  SPIx_CLK_PHASE(SPI1) = 0;   
  SPIx_CLK_POL(SPI1) = 0;
  SPIx_LSBMSB(SPI1) = NULL;                             //Data is transmitted / received with the MSB first
  SPIx_SS_OUT_EN(SPI1) = ON; 
  SPIx_IN_SLV_SEL(SPI1) = 0x01;                         //Internal slave select.  I/O value of the NSS pin is ignored
  SPIx_SOFT_SLV_MNG(SPI1) = 0x01;                       //Software slave management
  SPIx_FIFO_BIT08(SPI1);   
  SPIx_RX_BUFF_NEMPTY_EN(SPI1) = 0x01;
  SPIx_SPI_EN(SPI1) = 0x01;                             //SPI enable
}
//-----------------------------SYSTICK_init-------------------------------------
void SYSTICK_init(void)
{
  STK_REL = 9999;		// Загрузка значения
  STK_CUR = 0;		        // Обнуляем таймеры и флаги. Записью, помните? 
  //STK_CLK = 1;
  STK_IRQ = 1;
  STK_EN = 1;
}
//------------------------------ADC_VAL-----------------------------------------
u16 ADC_VAL(u32 chnum)
{
  ADC_EOC = 1;
  ADC->CHSELR = chnum;
  ADC_START;
  while (ADC_EOC == 0);
  return ADC_DATA;              // * VR_VAL() / 4095;
}
//------------------------------------------------------------------------------
void SysTick_Handler(void)
{
  Timers.e.basic++;
  Timers.d.tim_0++;
  if(Timers.d.tim_0>=10)
  {
    Timers.d.tim_0 = 0;
    Timers.d.basic++;
  }
}
//------------------------------------------------------------------------------
void EXTI415_Handler(void)
{
//  if ((EXTI->EXTI_PR.PR0 & 0x01) != 0)  /* Check line 0 has triggered the IT */
//  {
//    EXTI->EXTI_PR.PR0 |= 0x01; /* Clear the pending bit */
//    irq_on++;
//  }
//  else /* Should never occur */
//  {
//    
//  }
}
//------------------------------------------------------------------------------
u8 TimeOut(u8 tbase, u8 tperiph)
{
  return (u8)(tbase - tperiph);
}
//------------------------------------------------------------------------------
u16 TimeOut_16(u16 tbase, u16 tperiph)
{
  return (u16)(tbase - tperiph);
}
//------------------------------------------------------------------------------
u8 spi_byte(u8 data)
{
  while ((SPI1->SPIx_SR.BSY) & 0x01);
  while(!(SPI1->SPIx_SR.TXE & 0x01));
  SPI1_DATAW = data;
  while ((SPI1->SPIx_SR.BSY) & 0x01);
  //delay_us(5);
  while(!(SPI1->SPIx_SR.RXNE));
  //while(!(SPI1->SPIx_SR.RXNE & 0x01));
  return (SPI1_DATAW);
}

//------------------------------------------------------------------------------
//void SPIRW(u8 TX, u8 RX, u8 *Buf)
//{
//  NSS1_ON;
//  u8 *Temp = Buf;
//  //for(int delay=0;delay<50;delay++);
//  while(TX)
//  {
//    spi_byte(*Buf);
//    *Buf++;
//    TX--;
//    //for(int delay=0;delay<50;delay++);
//  }
//  Buf = Temp;
//  while(RX)
//  {
//    *Buf = spi_byte(*Buf);
//    *Buf++;
//    RX--;
//    //for(int delay=0;delay<50;delay++);
//  }
//  delay_us(300);
//  NSS1_OFF;
//}
//------------------------------------------------------------------------------
void SPI_rw(u8 TX, u8 RX, u8 *Buf_tx, u8 *Buf_rx, u8 added_x)
{
  NSS1_ON;
  while(TX)
  {
    while(SPIx_BSY(SPI1));
    while(!SPIx_TXE(SPI1));
    SPI1_DATAW = *Buf_tx;
    if(added_x)
    {
      while(!SPIx_RXNE(SPI1));
      CTS_RESP = SPI1_DATAW;
    }
    *Buf_tx++;
    TX--;
  }
  delay_us(300);
  NSS1_OFF;
  
  CTS_RESP = 0;
  ERR_CN=0;
  NSS1_ON;
  if(RX && (*Buf_rx)!=0x77)
  {
    while(CTS_RESP != 0xff)
    {
      while(SPIx_BSY(SPI1));
      while(!SPIx_TXE(SPI1));
      SPI1_DATAW = 0x44;
      while(!SPIx_RXNE(SPI1));
      CTS_RESP = SPI1_DATAW;
delay_us(20);
      while(SPIx_BSY(SPI1));
      while(!SPIx_TXE(SPI1));
      SPI1_DATAW = 0xFF;
      while(!SPIx_RXNE(SPI1));
      CTS_RESP = SPI1_DATAW;
delay_us(20);
      if(CTS_RESP != 0xff)
      {
        ERR_CN++;
        NSS1_OFF;
        delay_ms(100);
        NSS1_ON;
      }
    }
  }
  while(RX)
  {
    while(SPIx_BSY(SPI1));
    while(!SPIx_TXE(SPI1));
    SPI1_DATAW = *Buf_rx;
    while(!SPIx_RXNE(SPI1));
    *Buf_rx = SPI1_DATAW;
    *Buf_rx++;
    RX--;
  }
  delay_us(300);
  NSS1_OFF;
}
//------------------------------------------------------------------------------
void Radio_init(void)
{
  u8 nop = 0x00;
  SI4455_PWR_ON;
  SI4455_Reset();
  SPI_rw(1, 9, (u8*)Part_id, Resp, 0);
  delay_ms(10);
  SPI_rw(7, 8, (u8*)Pow_up,  Resp, 1);
  delay_ms(10);
  SPI_rw(114, 0, (u8*)B_WRITE_TX_FIFO, Resp, 1);
  delay_ms(10);
  SPI_rw(1, 0, getptr(nop), Resp, 1);
  delay_ms(10);
  SPI_rw(112, 0, (u8*)B_WRITE_TX_FIFO_1, Resp, 1);
  delay_ms(10);
  SPI_rw(3, 2, (u8*)Ez_check, Resp, 1);
  delay_ms(10);
  SPI_rw(7, 8, (u8*)Gpio_cfg,  Resp, 1);
  SPI_rw(B_INT_CTL_ENABLE_1[2]+4, 0, (u8*)B_INT_CTL_ENABLE_1, 0, 1);
  delay_ms(10);
  SPI_rw(B_FRR_CTL_A_MODE_4[2]+4, 0, (u8*)B_FRR_CTL_A_MODE_4, 0, 1);
  delay_ms(10);
  SPI_rw(B_EZCONFIG_XO_TUNE_1[2]+4, 0, (u8*)B_EZCONFIG_XO_TUNE_1, 0, 1);
  delay_ms(10);
  SPI_rw(SYNC_CONFIG[2]+4, 0, (u8*)SYNC_CONFIG, 0, 1);
  delay_ms(10);
  SPI_rw(PA_PWR_LVL[2]+4, 0, (u8*)PA_PWR_LVL, 0, 1);
  delay_ms(10);
  SPI_rw(4, PA_PWR_LVL[2]+1, (u8*)PA_PWR_LVL, Resp, 1);
}
//------------------------------------------------------------------------------
//void f_lock(void) {
//  FLASH->CR.LOCK = 1;
//}
//------------------------------------------------------------------------------
//Функция стирает одну страницу. В качестве адреса можно использовать любой
//принадлежащий диапазону адресов той странице которую нужно очистить.
void f_unlock_erase_page(void) {
  FLASH->KEYR.FKEY = FLASH_KEY1;
  FLASH->KEYR.FKEY = FLASH_KEY2;
  FLASH->CR.PER = 1; //Устанавливаем бит стирания одной страницы
  FLASH->AR.FAR = F_PAGE31_STR; // Задаем её адрес
  FLASH->CR.STRT = 1; // Запускаем стирание 
  while ((FLASH->SR.BSY));
  FLASH->CR.PER = 0; //Сбрасываем бит обратно
}
//------------------------------------------------------------------------------
void f_w_array(u32 addr, u8 *buf) 
{
  u16 data;

  FLASH->CR.PG = 1; //Разрешаем программирование флеша
  while ((FLASH->SR.BSY));
  data = (buf[2]<<8)|(buf[3]);
  *(u16 *)addr = data; //Пишем младшие 2 байта
  while ((FLASH->SR.BSY));
  addr+=2;
  data = (buf[0]<<8)|(buf[1]);
  *(u16 *)addr = data; //Пишем старшие 2 байта
  while ((FLASH->SR.BSY));
  FLASH->CR.PG = 0; //Запрещаем программирование флеша
}
//------------------------------------------------------------------------------
void delay_us(u16 value)
{
    TIM03->TIMx_ARR.LARR = value;
    TIM03->TIMx_CNT.CNT = 0;
    TIM03->TIMx_SR.UIF = 0;
    TIM03->TIMx_CR1.CEN = ON;
    while(!TIM03->TIMx_SR.UIF);
}
//------------------------------------------------------------------------------
void delay_ms(int ms)
{
    for(int i=0; i<=ms; i++){ delay_us(990);}
}
//------------------------------------------------------------------------------
void Tamp_Scan(void)
{

}
//------------------------------------------------------------------------------
void Contact_Scan(void)
{
  //Проверка тампера  
  if(!BTAMP)
  {
    Status.tamp = 0;
    if(mode!=M_STBY)
    {
      tamp_cn++;
      if(tamp_cn >= 5)
      {
        Status.tamp = T_BIND;
        tamp_cn = 0;
      }
      else
      {
//        Status.tamp = T_TEST;
//        tamp_cn = 0;
      }        
    }
  }
  else
  {
    Status.tamp = 1;
    tamp_cn = 0;
  }
  
  if(!JTYPE) {Element.jtype = 1;} else {Element.jtype = 0;}
  if(!JGERC) {Element.jgerc = 1;} else {Element.jgerc = 0;}
  
  
  if(!JPROG )
  {
    if(!Element.jprog)
    {
      mode = M_TEST;
    }
    Element.jprog = 1;
    if(Status.tamp == T_BIND)
    {
      mode = M_BIND;
      Status.led = LED_SW_MODE;
      Element.jprog = 0;
    }
  }
  else 
  {
    if(Element.jprog)
    {
      mode = M_STBY;
      Element.jprog = 0;
      mode_change = 1;
    }
  }
}
//------------------------------------------------------------------------------
void ADC_Simple(void)
{
  //Даннаая функция выдает величину напряжении источника питания, резервной батареи и шлейфа сигнализации
  //Измерение производится по двум ответвлениям: после просыпания от кототкого периода времени и 
  //после длинного периода (просыпание для отправки в Hybrid)
  //Примечание 1: значение напряжения на основной батарее во время работы от него же соответственно равно значению
  //напряжению питания. Когда питание устройства переключается на резервную батарею, значение 
  //переменной Volt.bat1 игнорируется, т.к. в этом случае напряжение питания равно напряжению на резервной батарее.
  //Примечание 2: значения переменной Volt.bat1 в других функциях во время питания от резервной батареи 
  //также не берется в расчет
  //Как слдествие от Прим. 1 устанавливается, что во время работы от резервной батареи значение напряжения
  //на первой батарее неизвестно (данная величина находится в состоянии квантовой запутанности ЛОЛ).
  //В это время принимается, что основная батарея истратила свой ресурс и измерять нет необходимости.
  //
  adc_cn++;
  Volt.ref_volt = 3.3*CAL_VINT/ADC_VAL(VR_ADC_CH);
  Volt.bat1 = Volt.ref_volt;
  ADC_BAT2_ON;
  Volt.bat2 = ADC_VAL(B2_ADC_CH)*Volt.ref_volt/2048;
  ADC_BAT2_OFF;
  if(mode != M_BIND){
    if(Bind->gerk_t){
      SH_ON;
      Volt.vshlf = ADC_VAL(SH_ADC_CH)*Volt.ref_volt/4096;
      SH_OFF;
    }
  }
}
void ADC_Complex(void)
{
  Volt.ref_volt = Volt.ref_volt + ((3.3*CAL_VINT)/ADC_VAL(VR_ADC_CH) - Volt.ref_volt)/20;
  Volt.bat1 = Volt.ref_volt;//(Volt.bat1 + (ADC_VAL(B1_ADC_CH)*Volt.ref_volt/2048 - Volt.bat1 )/20);
  ADC_BAT2_ON;
  Volt.bat2 = (Volt.bat2 + (ADC_VAL(B2_ADC_CH)*Volt.ref_volt/2048 - Volt.bat2 )/20);
  ADC_BAT2_OFF;
  if(mode != M_BIND){
    if(Bind->gerk_t){
      SH_ON;
      Volt.vshlf =(Volt.vshlf +(ADC_VAL(SH_ADC_CH)*Volt.ref_volt/4096 - Volt.vshlf )/20);
    }
  }
//      Volt.ref_volt = 3.2;
//      Volt.bat1 = 3.2;
//      Volt.bat2 = 3.2;
//      Volt.vshlf = 1.89;
}
//------------------------------------------------------------------------------
void Bat_ADC_Ctrl(void)
{
//  if(WakeCause == AFTER_LONGPAUSE && rad_sw && 
//     (TimeOut(Timers.d.basic,Timers.bat.prph) >= Timers.bat.delta) || 
//       (WakeCause == AFTER_SHORTPAUSE && !scan_time))
//  {
//  RTC->RTC_TAFCR.PC14MODE = 1;
    Element.bat1 = 0;
    if(IFBAT1_ON)
    {
      if(Volt.bat1 < BAT_TRHLD_1){Element.bat1 = 1;}
      if(Volt.bat1 < BAT_TRHLD_2){Element.bat1 = 2;}
    }
    Element.bat2 = 0;
    if(Volt.bat2 < BAT_TRHLD_1){Element.bat2 = 1;}
    if(Volt.bat2 < 0.48*Volt.bat1 + 0.0){Element.bat2 = 2;}
    if(Element.bat2)
    {
      if(IFBAT1_ON)
      {
        BAT1_ON;
      }
      if(px55>9 || Bind->addr_256 == 0xFF)
      {
        BAT1_ON;
      }
  //    else
  //    {

      if(Element.bat2 == 1)
      {
        data1 |= RAZRYAD_STBY; state |= RAZRYAD_TEST; 
        if(!Status.rxon) {Timers.head.delta = 0;} //Запрещен переход во время ожидания приема
      }
      if(Element.bat2 == 2)  
      {
        data1 |= NEISP_STBY; state |= RESERV_TEST;  
        if(!Status.rxon) {Timers.head.delta = 0;} //Запрещен переход во время ожидания приема
      }
  //    }
    }
    if(Element.bat1)
    {
      data1 |= NEISP_STBY; state |= RAZRYAD_TEST; //Timers.head.delta = 0;
  //    if(Element.bat2)  {BAT2_OFF;}
  //    else              {BAT2_ON;}
      if(!Element.bat2)
      {
        BAT2_ON;
//        BAT2_OFF;
      }
      else
      {
        bat2++;
        if(bat2>=bat2_cn)
        {
  //      BAT2_ON;
          BAT2_ON;
        }
      }
    }
//    Timers.bat.prph = Timers.d.basic;
//  }
}
//------------------------------------------------------------------------------
void Alert_Scan(void)
{
  if((mode == M_STBY && Bind->gerk_t) || (mode == M_TEST && !Element.jgerc))
  {
    float ur = Volt.ref_volt;
    Volt.rshlf = 5600 * Volt.vshlf/(ur - Volt.vshlf);   //or 4095
  
    if(Volt.rshlf > 21279 || Volt.rshlf < 250  )  
    {Status.shlf = SH_ER;} //0x03
    if(Volt.rshlf > 249   && Volt.rshlf < 1140 )  
    {Status.shlf = SH_P2;} //0x02
    if(Volt.rshlf > 1139  && Volt.rshlf < 2270 )  
    {Status.shlf = SH_P1;} //0x01
    if(Volt.rshlf > 2269  && Volt.rshlf < 9370 )  
    {Status.shlf = SH_NM;} //0x00
    if(Volt.rshlf > 9369  && Volt.rshlf < 14320)  
    {Status.shlf = SH_P1;} //0x01
    if(Volt.rshlf > 14319 && Volt.rshlf < 21280)  
    {Status.shlf = SH_P2;} //0x02

    if(!Element.jtype && Status.shlf) //Если не пожар, все кроме 0 это 1
    {
      Status.shlf = 1;
    }

    jdang=0;
  }
  else
  {
    //Проверка геркона
    if(!BGERC) 
    {
      Status.gerc = 0;
    }
    else 
    {
      Status.gerc = 1;  
    }
  }


  if(Status.tamp||Status.gerc||Status.shlf)
  {
    data1 |= SRAB_STBY; 
    if(!Status.rxon) {Timers.head.delta = 0;}
    if(Status.tamp) 
    {
      state |= TAMP_TEST;
    }
    if(Status.gerc||Status.shlf)
    {
      state |= SRAB_TEST;
    }
//    state = state_prev; data1 = data1_prev;
//      Status.led = LED_NEISP_TREV;
}
  else 
  {
    data1 = NORM_STBY; state = NORM_TEST; /*Status.led = (~LED_DEFAULT)&Status.led; */
    if(data1 != NORM_STBY || state != NORM_TEST)
    {
      state_prev = state; data1_prev = data1;
    }
//    {
//      Status.led ^= Status.led ;
//    }
  }
}
//------------------------------------------------------------------------------  
  void LowPower(void)
  {
    SI4455_SDN_OFF;
    SI4455_PWR_OFF;
    SCB->SCR.SLEEPDEEP = 1;
//    if((mode == M_STBY))
//    {
      PWR->PWR_CR.PDDS = 1;
      PWR->PWR_CR.CWUF = 1;
      PWR->PWR_CSR.WUF = 1;
//    }
//    else
//    {
//      PWR->PWR_CR.PDDS = 0;
//      PWR->PWR_CR.CWUF = 0;
//      PWR->PWR_CSR.WUF = 0;
//    }
    PWR->PWR_CR.LPDS = 1;
    _wfi();
//    SCB->SCR.SLEEPDEEP = 0;
//    PWR->PWR_CR.LPDS = 0;
//    LED_OFF;
//    period = SHORTPAUSE;
//    Timers.head.delta = 0;
  }

//#define NORM_STBY               0x00
//#define SRAB                    0x02
//#define OSHIBKA                 0x04
//#define RESERV                  0x10
//#define RAZRYAD                 0x20
//#define TAMP                    0x40

//void Led_sw(u1 cn)
//{
//------------------------------------------------------------------------------
void SetAlarm(u8 sec_unit)
{
  sec_unit_1 = sec_unit;
  RTC->RTC_WPR.KEY = 0xCA;
  RTC->RTC_WPR.KEY = 0x53;
  RTC->RTC_CR.ALRAE = 0;
  while(!RTC->RTC_ISR.ALRAWF){}
  RTC->RTC_ALRMAR.MSK1 = 0;
  sec_t = RTC->RTC_TR.SU + sec_unit_1;
  RTC->RTC_ALRMAR.SU = sec_t%10;
  sec_t = sec_t/10;
  RTC->RTC_ALRMAR.ST = sec_t + RTC->RTC_TR.ST;
  RTC->RTC_ALRMAR.ST %= 6;
//  RTC->RTC_ALRMAR.ST = (RTC->RTC_TR.ST + (RTC->RTC_TR.SU + sec_unit)/10)%6;
//  RTC->RTC_ALRMAR.SU = (RTC->RTC_TR.SU + sec_unit)%10;
  RTC->RTC_ALRMAR.MSK2 = 1;
  RTC->RTC_ALRMAR.MSK3 = 1;
  RTC->RTC_ALRMAR.MSK4 = 1;
  RTC->RTC_CR.ALRAIE = 1;
  RTC->RTC_CR.ALRAE = 1;
  RTC->RTC_WPR.KEY = 0xFE; //12
  RTC->RTC_WPR.KEY = 0x64; //12
  RTC->RTC_BKPxR_0.CNT++;
  cn_bkp =   RTC->RTC_BKPxR_0.CNT;
}


u8 SetAlarmPeriod(void)
{
  u8 bckp = RTC->RTC_BKPxR_0.CNT;
  u8 longp = LONGPAUSE;
  longp = Bind->t_tx;
  period = SHORTPAUSE;
  if(mode == M_STBY && !Bind->gerk_t)
  {
    period = GERCPAUSE;
  }
  WakeCause = AFTER_SHORTPAUSE; RTC->RTC_BKPxR_0.WKP_CAUSE = AFTER_SHORTPAUSE;
  mode = RTC->RTC_BKPxR_0.MODE;
  if(longp - bckp < period)
  {
    if(longp%bckp)
    {
      period = longp%period;
    }
    if(longp - bckp <= 0)
    {
      LED_G_ON;
      RTC->RTC_BKPxR_0.CNT = 0;
      WakeCause = AFTER_LONGPAUSE; RTC->RTC_BKPxR_0.WKP_CAUSE = AFTER_LONGPAUSE;
      period = SHORTPAUSE;
      if(mode == M_STBY && !Bind->gerk_t)
      {
        period = GERCPAUSE;
      }
    }
  }
  if(RTC->RTC_BKPxR_0.MODE == M_BIND)
    Status.led = LED_BIND_VALID;
  return period;
}

//------------------------------------------------------------------------------
void LED_Ctrl(void)
{
  if(led_mode != led_mode_prev)
  {
    switch(led_mode)
      {
        case (LED_RAZR_B1 || LED_OTSUT_B2 || LED_NEISP_TREV):
          LED_off(RED);
          Lx[RED].time_on = LED_BL_ON;
          Lx[RED].time_off = LED_TIM_DEL_NEIS;
          break;
        case LED_SW_MODE:
          LED_off(GRN);        
          Lx[GRN].time_on = LED_BL_ON;
          Lx[GRN].time_off = LED_BL_OFF;
          Lx[GRN].tau = 4;
          break;
        case LED_BIND_VALID:
          LED_off(GRN);        
          Lx[GRN].time_on = 10;
          Lx[GRN].time_off = 0;
          Lx[GRN].tau = 3*2;
          break;
        case LED_BIND_FAULT:
          LED_off(RED);        
          Timers.led.delta = 10;
          Lx[RED].time_on = 10;
          Lx[RED].time_off = 0;
          Lx[RED].tau = 3*2;
          break;
      default:
        LED_off(4);        
        break;
    }
    led_mode_prev = led_mode;
}
  if(TimeOut(Timers.d.basic,Timers.led.prph)>=Timers.led.delta)
  {
    if(led_mode)
    {
      for(u8 cn=0; cn<3; cn++)
      {
        if(Lx[cn].time_on || Lx[cn].time_off || Lx[cn].tau)
        {
            if(GPIO_OUT(GPIOF)&(cn+1)) {GPIO_BIT_RST(GPIOF) = cn+1; Timers.led.delta = Lx[cn].time_off;}
            else {GPIO_BIT_SET(GPIOF) = cn+1; Timers.led.delta = Lx[cn].time_on;}
          if(Lx[cn].tau)
          {
            if(!--Lx[cn].tau)
            {
              led_mode = LED_DEFAULT;//Lx[cn].mode = LM_OFF;
            }
          }
        }
      }
    }   
    else
    {
      LED_OFF;
    }
    Timers.led.prph = Timers.d.basic;
  }
}
//------------------------------------------------------------------------------
void LED_Linear(void)
{
  switch(Status.led)
  {
    case (LED_RAZR_B1 || LED_OTSUT_B2 || LED_NEISP_TREV):
//      LED_R_ON; delay_ms(100); LED_OFF;
      break;
    case LED_SW_MODE:
      LED_G_ON; delay_ms(100);
      LED_OFF;  delay_ms(100);
      LED_G_ON; delay_ms(100);
      
      break;
    case LED_BIND_VALID:
      LED_G_ON; delay_ms(3000);
      break;
    case LED_BIND_FAULT:
      LED_R_ON; delay_ms(3000);
      break;
  default:
    LED_off(4);        
    break;
  }
}
//------------------------------------------------------------------------------
void LED_off(u8 led_x)
{
  for(u8 led_cn=0; led_cn<2; led_cn++)
  {
    if(led_x!=led_cn)
    Lx[led_cn].time_on = 0; Lx[led_cn].time_off = 0; Lx[led_cn].tau = 0;
  }
}
//------------------------------------------------------------------------------
void BCKR_init(void)
{
  RCC->CSR.LSION = 1;
  while(!RCC->CSR.LSIRDY){}
  RCC->APB1ENR.PWREN = 1;
  PWR->PWR_CR.DBP = 1;
  bckr_0 = *(u32*)&(RTC->RTC_BKPxR_0);
  bckr_1 = *(u32*)&(RTC->RTC_BKPxR_1);
  RCC->BDCR.BDRST = 1;
  RCC->BDCR.BDRST = 0;
  RCC->BDCR.RTCEN = 1;
  RCC->BDCR.RTCSEL = 0x02;
  RTC->RTC_WPR.KEY = 0xCA;
  RTC->RTC_WPR.KEY = 0x53;

  *(u32*)&(RTC->RTC_BKPxR_0) = bckr_0;
  *(u32*)&(RTC->RTC_BKPxR_1) = bckr_1;
  RTC->RTC_WPR.KEY = 0xFE; //12
  RTC->RTC_WPR.KEY = 0x64; //12
}
//------------------------------------------------------------------------------
void Tamper_init(void)
{
  RTC->RTC_WPR.KEY = 0xCA;
  RTC->RTC_WPR.KEY = 0x53;

  RTC->RTC_TAFCR.TAMPPUDIS = 1;
  RTC->RTC_TAFCR.TAMPFREQ = 0x01;
  RTC->RTC_TAFCR.TAMPTS = 1;
  RTC->RTC_TAFCR.TAMP1E = 1;
  RTC->RTC_TAFCR.TAMP2E = 1;
  RTC->RTC_TAFCR.TAMPIE = 1;

//  RTC->RTC_TAFCR.TAMPPUDIS = 1;
//  RTC->RTC_TAFCR.PC13MODE = 1;
//  RTC->RTC_TAFCR.PC13VALUE = 1;
  RTC->RTC_TAFCR.PC14MODE = 1;
  if(IFBAT1_ON)
  {
    RTC->RTC_TAFCR.PC14VALUE = 1;
  }
  else
  {
    RTC->RTC_TAFCR.PC14VALUE = 0;
  }
  RTC->RTC_TAFCR.TAMPPRCH = 1;

  RTC->RTC_ISR.INIT = 1;
  while(!RTC->RTC_ISR.INITF){}; //3
  RTC->RTC_PRER.PREDIV_A = 99; //4
  RTC->RTC_PRER.PREDIV_S = 399; //4
  RTC->RTC_ISR.INIT = 0; //6
  
  RTC->RTC_WPR.KEY = 0xFE; //12
  RTC->RTC_WPR.KEY = 0x64; //12

  RCC->APB1ENR.PWREN = 1;
  EXTI->EXTI_RTSR.TR2 |= 0x02; /* (14) */ 
  EXTI->EXTI_IMR.MRx2 = 0x0a;
  EXTI->EXTI_EMR.MRx2 = 0x0a;
  EXTI->EXTI_RTSR.TR3 |= 0x01; /* (14) */ 
  SYSCFG->SYSCFG_ITLINE[2] = 0x06;
  NVIC_INT_SET_EN(0, RTC_IRQ);

}
//------------------------------------------------------------------------------
void RTC_Handler(void)
{
  if(RTC->RTC_ISR.ALRAF)
  {

    RTC->RTC_ISR.ALRAF = 0;
    EXTI->EXTI_PR.PR2 = 0x02;
//    SetAlarm(RTC_period);
  }
  if(RTC->RTC_ISR.TAMP1F || RTC->RTC_ISR.TAMP2F || RTC->RTC_ISR.TAMP3F)
  {
    RTC->RTC_ISR.TAMP1F = 0;
    RTC->RTC_ISR.TAMP2F = 0;
    RTC->RTC_ISR.TSF = 0;
    
    EXTI->EXTI_PR.PR3 |= 0x01;
    RCC_GPIOF_EN = ON;
//    GPIO_CFG_PIN00(GPIOF, GPIO_OUT_PP_PU_L);              //LED_G     
//    LED_G_ON;
  }
}
//------------------------------------------------------------------------------
void _wfi(void)
{
  asm("wfi");
}
//------------------------------------------------------------------------------
void fifo_buf_erase(void)
{
  for(int i=0;i<ZeroPacketLength;i++) data[i] = 0xff;
}
//------------------------------------------------------------------------------
void Null_struct(u8 *ptr, u8 len)
{
//      *((u16*)&Timers+cn) = 0xaa;
  for(u8 cn=0; cn<=len; cn++)
  {
    *(ptr+cn) = 0;
  }
}

//-------------------------------- IWDG_Set ------------------------------------
void IWDG_Set(u8 sec)
{
  IWDG->IWDG_KR.KEY = 0x5555; 
  IWDG->IWDG_PR.PR = 6; 
  IWDG->IWDG_RLR.RL = sec*156; 
  IWDG->IWDG_KR.KEY = 0xAAAA; 
  IWDG->IWDG_KR.KEY = 0xCCCC; 
}
//------------------------------------------------------------------------------
