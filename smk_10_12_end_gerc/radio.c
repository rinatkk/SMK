//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//-----------------------------M: Radio--------------------------------------------
//void CTS_CHECK(void)
//{
//  do
//  {
//    NSS1_ON;
//    delay_us(10);
//    rep[0] = spi_byte(0x44);
//    rep[1] = spi_byte(0xff);
//    delay_us(10);
//    NSS1_OFF;
//    delay_us(10);
//  }
//  while(rep[1] != 0xff);
//}
//------------------------------------------------------------------------------
void SI4455_Reset(void)
{
  SI4455_SDN_OFF;
  delay_us(20);
  SI4455_SDN_ON;
  delay_us(45);
}
//------------------------------------------------------------------------------
//void GPIO_Cfg(u8 *b)
//{
//  SPIRW(0, 8, b);
//  NSS1_ON;
//  rep[0] = spi_byte(0x44);
//  rep[1] = spi_byte(0xff);
//  SPIRW(0, 8, b);
//}
//------------------------------------------------------------------------------
//void Cfg_Check(u8 *b)
//{
//  SPIRW(0, 3, b);
//  delay_us(10);
//  NSS1_ON;
//  rep[0] = spi_byte(0x44);
//  rep[1] = spi_byte(0xff);
//  SPIRW(0, 16, b);
//}
//------------------------------------------------------------------------------
//void FIFO_Info(u8 clear, u8 byte)
//{
//    fifo_status[0] = 0x15;
//    fifo_status[1] = byte;               //2
//    CTS_CHECK();
//    if(clear)
//      SPIRW(0, 2, fifo_status);
//    else
//      SPIRW(0, 1, fifo_status);                //INTERRUPTS  0x02*05 PREAMBLE DETECT    
//    NSS1_ON;
//    rep[0] = spi_byte(0x44);
//    rep[1] = spi_byte(0xff);
//    
//    SPIRW(0, 2, fifo_status);    
//}
//------------------------------------------------------------------------------
u32 CRC16_hy(u8 *data, u8 len)
{
  u16 crc = 0xFFFF;
  for (u8 i = 0; i < len; i++) 
  {
    crc ^= ((u16)data[i]) << 8;
    for (u8 j = 0; j < 8; j++)
      crc = (crc&(1 << 15)) ? (crc << 1) ^ CRC16_POLYNOM : crc << 1;
  }
  crc = (crc << 8) + (crc >> 8);  // обмен байтов местами
  return crc;
}

//------------------------------------------------------------------------------
void Encrypt(u8 *buf, u8 *key, u8 len, u8 index, u8 keylength)
{
    for (u8 i=0; i<len; i++) 
    {
      if(index >= keylength) index=0;
      buf[i] = buf[i] ^ key[index];
      index++;
    }
}
//------------------------------------------------------------------------------
void Encrypt_PRG_hy(u8 *buf, u8 arr)
{
  for(u8 cn=0; cn<=5; cn++)
  {
    Encrypt (&(*(buf+cn*8)), EKEY_2, 8, arr, 8);       // Шифруем посылку фиксированным ключом 8 б//
  }
//  Encrypt (&buf[cn*8], EKEY_2, 8, arr, 8);       // Шифруем посылку фиксированным ключом 8 б//
//    Encrypt (buf,      EKEY_2, 8, arr, 8);       // Шифруем посылку фиксированным ключом 8 б//
//    Encrypt (&buf[8],  EKEY_2, 8, arr, 8);   // Шифруем посылку фиксированным ключом 8 б// 
//    Encrypt (&buf[16], EKEY_2, 8, arr, 8);  // Шифруем посылку фиксированным ключом 8 б// 
//    Encrypt (&buf[24], EKEY_2, 8, arr, 8);  // Шифруем посылку фиксированным ключом 8 б// 
//    Encrypt (&buf[32], EKEY_2, 8, arr, 8);  // Шифруем посылку фиксированным ключом 8 б// 
//    Encrypt (&buf[40], EKEY_2, 2, arr, 8);  // Шифруем посылку фиксированным ключом 8 б// 
}
//------------------------------------------------------------------------------
void Encrypt_TX_RU2(u8 *buf, u8 *k1, u8 *k2, u8 arr_1, u8 arr_2, u8 Length)
{
	Encrypt(buf, k1, Length, arr_1, 32);                 // Шифруем посылку переменным ключом 32 б         //
	buf[6] = arr_1;
	Encrypt(buf, k2, Length, arr_2, 8);                 // Шифруем посылку фиксированным ключом 8 б       // 	
}
//------------------------------------------------------------------------------
u8 Encrypt_RX_RU2(u8 *buf, u8 *key_1, u8 *key_2, u8* arr_1, u8 arr_2, u8 Length)
{
  u32 crc;
  Encrypt(buf, key_2, Length, arr_2, 8);                 // фиксированным ключом 8 б     // 
  *arr_1 = buf[0];
  Encrypt(buf, key_1, Length, *arr_1, 32);               // переменным ключом 32 б       //    		
  buf[0] = 0;
  crc = CRC16_hy(buf, Length);
  if (crc == 0) {return 1;}
  return 0;//Ошибка
}
//------------------------------------------------------------------------------
u8 PackSend(u8 *buf_5)
{
  u32 crc;
  buf_5[0] = 0x66;                              
  buf_5[1] = 0xaa;                              
  buf_5[2] = 0xaa;                              
  buf_5[3] = 0xaa;                              
  buf_5[4] = 0x2d;                              
  buf_5[5] = 0x2b;                              
  if(mode == M_STBY)
  {
    SendL = 12;
    buf_5[0+6] = SendL+1;                         //Длина с CRC без самой длины
    buf_5[1+6] = 1;                               //Посылка от датчика
    buf_5[2+6] = Bind->id_pkr[0];
    buf_5[3+6] = Bind->id_pkr[1];
    buf_5[4+6] = Bind->id_pkr[2];
    buf_5[5+6] = Bind->addr_256;                        
    buf_5[6+6] = data1;
    buf_5[7+6] = data2;
    buf_5[8+6] = 0;                               //Для CRC arrow_1
    buf_5[9+6] = 7;                               //Текущий уровень передачи
    crc = CRC16_hy((u8 *)&buf_5[8], 8);
    buf_5[10+6] = low(crc);
    buf_5[11+6] = high(crc);
    EKEY_1[0] = 182;
    Encrypt_TX_RU2((u8 *)&buf_5[2+6],EKEY_1,EKEY_2, arrow_1, arrow_2,SendL-2);
    crc = CRC16_hy((u8 *)&buf_5[1+6], SendL-1);
    
//    EKEY_1[0] = 182;
//    Encrypt_TX_RU2((u8 *)&buf_5[2+6],EKEY_1,EKEY_2, arrow_1, arrow_2,SendL-2);
//    crc = CRC16_hy((u8 *)&buf_5[1+6], SendL-1);
    
  }
  else
  {
    SendL = 8;
    buf_5[0+6] = SendL+1;                                                       //Длина с CRC без самой длины
    if(mode == M_TEST)       {buf_5[1+6] = 2;}                               //Посылка от датчика
    else                        {buf_5[1+6] = 1;}                               //Посылка от датчика
    buf_5[2+6] = state; 
    buf_5[3+6] = Bind->addr_256;
    buf_5[4+6] = Bind->chann;
    buf_5[5+6] = type;                                                          //Тип прибора	
    crc = CRC16_hy((u8 *)&buf_5[2+6], 4);
    buf_5[6+6] = low(crc);
    buf_5[7+6] = high(crc);
//    if(mode == M_BIND)
//    {
      EKEY_2[0] = 115;
      Encrypt((u8 *)(buf_5+8), EKEY_2, SendL - 2, arrow_2, 8);                  // Шифруем посылку фиксированным ключом 8 б
      crc = CRC16_hy((u8 *)(buf_5+1+6), SendL - 1);
//    }
    if(mode == M_TEST)
    {
//      EKEY_1[0] = 182;
//      Encrypt_TX_RU2((u8 *)&buf_5[2+6],EKEY_1,EKEY_2, arrow_1, arrow_2,SendL-2);
//      crc = CRC16_hy((u8 *)&buf_5[1+6], SendL-1);
      buf_5[1+6] = 2;
    }
  }
  buf_5[SendL+6] = low(crc);
  buf_5[SendL+1+6] = high(crc);
  return SendL + 8;
}
//------------------------------------------------------------------------------
void Start_Tx(u8 *buf, u8 packlen, u8 ch)
{
  if(mode == M_BIND || mode == M_TEST) {ch = 0x05;}
  u8 nop;
  SPI_rw(4, 9, getptr(Interr_st),  getptr(Interr_st.CTS), 1);                   //Check interrupt status
//  FIFO_Info(1,0x03);
//  SPI_rw(1, 0, getptr(Fifo_info.CMD), getptr(Fifo_info.CTS), 1);
  SPI_rw(packlen+2, 0, buf, getptr(nop), 1); //Write to FIFO
//  SPI_rw(1, 9, getptr(Interr_st),  getptr(Interr_st.CTS), 1); //Check interrupt status
  
  Start_tx.CHANNEL = ch;
  Start_tx.TX_LEN[1] = packlen;
  SPI_rw(6, 1, getptr(Start_tx),  getptr(Start_tx.CTS), 1);                     //Start_tx
  Status.send = 0; sendcn=0;
//  SPI_rw(1, 9, getptr(Interr_st),  getptr(Interr_st.CTS), 1);                   //Check interrupt status
  do{
    sendcn++;
    SPI_rw(1, 9, getptr(Interr_st),  getptr(Interr_st.CTS), 1);                 //Check interrupt status
    if(sendcn>=0x0f)
      break;
  }while(!(Interr_st.RESP.PH_STATUS&0x20));
  
  Status.send = 1;
//  for(int cn=0; cn<=25; cn++){*(data+cn)=0;}
}
//------------------------------------------------------------------------------
void Start_Rx(u8 ch)
{
  if(mode == M_BIND || mode == M_TEST) {ch = 0x05;}
  Start_rx.CHANNEL = ch;
  Start_rx.TX_LEN[1] = 64;

  for(int cn=0; cn<=5;cn++)
  {
    //if(mode == M_BIND ) {Start_RX(ch, 64);}
    SPI_rw(8, 1, getptr(Start_rx),  getptr(Start_rx.CTS), 1);
    SPI_rw(1, 3, getptr(Device_st),  getptr(Device_st.CTS), 1); //Check interrupt status
    if(Device_st.CURR_STATE&0x08) { Status.rxon = 1;break;}
    else {Status.rxon=0;}
  }
}
//------------------------------------------------------------------------------
void Read_Fifo(u8 *buf)
{
  u8 nop = 0;
  Status.srec = 0;
  for(int fifo_cn=0;;fifo_cn++)
  {
    SPI_rw(1, 9, getptr(Interr_st),  getptr(Interr_st.CTS), 1); //Check interrupt status
    if((Interr_st.RESP.PH_PEND&0x10) || fifo_cn>0xff) {Status.srec = 1; break;}
  }
  SPI_rw(4, 9, getptr(Interr_st),  getptr(Interr_st.CTS), 1); //Clear interrupt flags
if(Status.srec)
{
  SPI_rw(1, 3,  getptr(Fifo_info.CMD), getptr(Fifo_info.CTS), 1);
  lpack = Fifo_info.RX_FIFO_COUNT;
  if(lpack >ZeroPacketLength) {lpack = ZeroPacketLength;}
  *buf = 0x77; nop = *buf;
  SPI_rw(0, lpack+1, getptr(nop), buf, 1); //Read frmom FIFO
}
}
//------------------------------------------------------------------------------
u8 Data_Check(u8 *buf)
{
  Bind_type *Bind = ((Bind_type*) F_PAGE31_STR); 
  u32 crc;
  int shift_cn=0;
  bit_shift=0;
  data_shift=0;
  Status.crc = 0;
  u8 a_0;
  u8 a_1;
  
  //Маркеры начала полезных данных для разных режимов работы
  switch(mode)
  {
  case M_STBY:
    a_0 = 0x0d; a_1 = 0x04; break;
  case M_BIND:
    a_0 = 0x2d; a_1 = 0x01; break;
  case M_TEST:
    a_0 = 0x2d; a_1 = 0x00; break;
  }

  //Проверяем, с какого элемента массива начинаются полезные данные. Маркером служат байты a_0 и a_1
  //data_shift служит началом (порядковым номером) массива полезных данных
  if(Status.srec)
  {
   
    for(shift_cn =0; shift_cn<20; shift_cn++){
      if(*(buf+shift_cn) == a_0 && *(buf+shift_cn+1) == a_1) {data_shift = shift_cn; break;}
    }
    //Если в первых 20 байтах не обнаружились данные маркеры, делаем сдвиг всего массива каждого байта в левую сторону.
    //Выполняем, пока не получим правильные данные
    if (shift_cn>=20) 
    {
      for(u8 sh_bit=1; sh_bit<=7; sh_bit++){
        for(int cn=0; cn<=64; cn++){
          data_1[cn] = (*(buf+cn)<<sh_bit)|(*(buf+1+cn)>>(8-sh_bit));
        }
        for(shift_cn =0; shift_cn<20; shift_cn++){
          if(data_1[shift_cn] == a_0 && data_1[shift_cn+1] == a_1) {data_shift = shift_cn; break;}
        }
        //Если при проверке маркеров не дошли до конца цикла (меньше 20 повторов),
        //считать, что получили правильные данные
        bit_shift = sh_bit;
        if (shift_cn<20) break;
      }
      buf = data_1;
    }
    if (shift_cn>=20) { Status.pack = 0;return 1;}
    
    u8 len = *(buf+data_shift);
    if(len > ZeroPacketLength)
      len = ZeroPacketLength;
    for(int cn=0; cn<=len; cn++)
    {
      data_zero[cn]=*(buf+data_shift+cn);
    }
    RLenght = data_zero[0];
    if(RLenght > ZeroPacketLength)
      RLenght = ZeroPacketLength;
    crc = CRC16_hy(data_zero, RLenght + 1);
    if(!crc)
    {
      if(mode==M_STBY)
      {
        if (data_zero[1] == 4){
          Status.crc = 1;
          if(Encrypt_RX_RU2((u8 *)&data_zero[2], Bind->EKEY_1, EKEY_2, &arrow_new, arrow_2, RLenght - 3)){
            if ((data_zero[3] == Bind->id_pkr[0]) && (data_zero[4] == Bind->id_pkr[1]) && (data_zero[5] == Bind->id_pkr[2])){
              if ((data_zero[6] == Bind->addr_256)){Status.pack = 1;}
            }
          }
        }
        arrow_1 = arrow_new;
      }
      if(mode==M_BIND || mode==M_TEST)
      {
        Status.pack = 1;
        Status.crc = 1;
        Encrypt_PRG_hy(&data_zero[2], arrow_2); /*led.green=2;*/
        if(mode == M_BIND)
        {
          u8 temp[44];
          for(u8 cn = 0; cn < 2; cn++)
          {
            temp[0+cn*4] = data_zero[8+cn*4];
            temp[1+cn*4] = data_zero[7+cn*4];
            temp[2+cn*4] = data_zero[6+cn*4];
            temp[3+cn*4] = data_zero[5+cn*4];
          }
          if(Element.jgerc) { temp[0+1*4] = 0;} // Gercon
          else  { temp[0+1*4] = 1;} //Shleif /*Внешний датчик*/
          for(u8 cn = 2; cn < 10; cn++)
          {
            temp[0+cn*4] = data_zero[7+cn*4];
            temp[1+cn*4] = data_zero[6+cn*4];
            temp[2+cn*4] = data_zero[5+cn*4];
            temp[3+cn*4] = data_zero[4+cn*4];
          }
          f_unlock_erase_page();
          for(int cn=0; cn<=9; cn++) {f_w_array(F_PAGE31_STR+cn*4,&temp[0+cn*4]);}
          FLASH_LOCK = 1;
          //f_lock();
        }
      }
    }
    else
    {
      Status.crc = 0;
      Status.pack = 0;
    }
  }
  if(Status.pack == 1) return 0;
  else return 1;
}
//------------------------------------------------------------------------------
void Radio_Head(void)
{
  if(!rdi)
  {
    Radio_init();
    rdi = 1;
  }

    Timers.head.prph = Timers.e.basic;
    if(!Status.rxon || Status.tkey_1)
    {
      plen = PackSend(data);
      Start_Tx(data, plen, Bind->chann);
      SPI_rw(1, 3, getptr(Device_st),  getptr(Device_st.CTS), 1); //Check device status
      Start_Rx(Bind->chann);
      Timers.head.delta = 100;
    }
    if(Status.rxon)
    {
      Read_Fifo(data);
      SPI_rw(2, 3,  getptr(Fifo_info.CMD), getptr(Fifo_info.CTS), 1);
      SPI_rw(1, 3, getptr(Device_st),  getptr(Device_st.CTS), 1); //Check device status
      Device_st_change.NEXT_STATE1 = 6;
      SPI_rw(1, 2, getptr(Device_st_change),  getptr(Device_st_change.CTS), 1); //Change device status
      SPI_rw(1, 3, getptr(Device_st),  getptr(Device_st.CTS), 1); //Check device status

      if(!Data_Check(data))
      {
        pxaa++;
        sum_5 += px55;
        ratio_a5 = (float)pxaa/sum_5;
        px55=0;
        Status.srec = 0;
        if(mode == M_STBY)// || mode == M_TEST)
        {
          if(px55*17<Bind->t_tx*100) {Timers.head.delta = Bind->t_tx*100 - px55*17;}
        }
        if(mode==M_BIND) 
        {
          Status.led = LED_BIND_VALID;
          mode = M_TEST;
          period = 3;
        }
        if(!IFBAT1_ON && Element.bat2)
        {
          BAT1_ON;
        }
      }
      else
      {
        Timers.head.delta = 0;
        px55++;
        if(px55>2)
        {
          Timers.head.delta = Bind->t_tx*100 - px55*17;
          px55=0;
          if(mode==M_BIND) 
          {
            Status.led = LED_BIND_FAULT; 
            mode = M_TEST;
            period = 3;
          }
          Status.pack = 2;
        }
      }
      if(mode == M_BIND) {Timers.head.delta = 0;}
      fifo_buf_erase();
      Status.rxon =0;
    }
    
    SPI_rw(4, 11, getptr(Interr_st),  getptr(Interr_st.CTS), 1); //Check interrupt status
    Status.send = 0;
}
//------------------------------------------------------------------------------
//void ParamSet(void)
//{
////  f_data = flash_read(F_PAGE31_STR);
//  Bind_type *Bind = ((Bind_type*) F_PAGE31_STR); 
////  f_data = Bind->id_pkr[0];
//}

//------------------------------------------------------------------------------
//-----------------------------M: Radio-----------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------