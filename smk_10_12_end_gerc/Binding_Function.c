void BIND_TO_HY(void)
{
  if(TIMEOUT(tim,timradio) > 5)
  {
    if(bindst == 1)
    {
      if(status.rxon==0)
      {
        bindst = 0;
        Send(DATA, 16);
        StartRx();
      }
      //delay_ms(300);
      if(status.rxon == 1 && status.send==0)
      {
        Read_Fifo(DATA);
        Data_Check(DATA);
        if(status.crc == 1)
        {
          for(u8 cn=0; cn<=31; cn++) { EKEY_1[cn] = DATA_ZERO[cn+12];}
          status.rxon =0;
          LED_G_ON;

          f_unlock();
          f_erase_page(F_PAGE31_STR);
          f_w_array(F_PAGE31_STR, &DATA_ZERO[5]);
          f_w_array(F_PAGE31_STR+4,&DATA_ZERO[9]);
          f_lock();

  
          //bindst = 0;
        //led.red = 0;
        //led.green = 1;
        //status.send =0;
          DEVICE_STATE(0x33, 1, 2);
          INTERRUPT_CLR();
          FIFO_INFO(1,0x03);
          status.ss=0; status.send=0; status.rxon=0; status.srec=0;
        }
        else
        {
          status.ss=0; status.send=0; status.rxon=0; status.srec=0; status.crc=0;
          LED_OFF;
        }
        bindst=0;
      }
      status.send=0;
    }
    timradio = tim;
  }
}

