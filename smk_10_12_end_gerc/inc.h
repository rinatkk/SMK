#define BAT1_ON                 GPIO_BIT_SET(GPIOC) = GPIO_PIN14
#define BAT2_ON                 GPIO_BIT_RST(GPIOC) = GPIO_PIN14
#define IFBAT1_ON               GPIO_OUT(GPIOC)&GPIO_PIN14
//#define BAT2_ON                 RTC->RTC_TAFCR.PC14VALUE = 0//GPIO_BIT_SET(GPIOA) = GPIO_PIN02
//#define BAT2_OFF                RTC->RTC_TAFCR.PC14VALUE = 1//GPIO_BIT_RST(GPIOA) = GPIO_PIN02
//#define IFBAT2_ON               GPIO_OUT(GPIOA)&GPIO_PIN02
#define GRN                     0x00
#define RED                     0x01
#define YEL                     0x02
#define LM_OFF                  0x00
#define LM_ON                   0x01
#define LM_BL                   0x02
#define LED_DEFAULT             0x00
#define LED_RAZR_B1             0x01
#define LED_OTSUT_B2            0x01
#define LED_NEISP_TREV          0x01               
#define LED_SW_MODE             0x02
#define LED_BIND_VALID          0x03
#define LED_BIND_FAULT          0x04
#define LED_TIM_DEL_NEIS        70
#define LED_BL_ON               3
#define LED_BL_OFF              3
#define LED_G_ON                GPIO_BIT_SET(GPIOF) = GPIO_PIN00; GPIO_BIT_RST(GPIOF) = GPIO_PIN01
#define LED_R_ON                GPIO_BIT_RST(GPIOF) = GPIO_PIN00; GPIO_BIT_SET(GPIOF) = GPIO_PIN01
#define LED_Y_ON                GPIO_BIT_SET(GPIOF) = GPIO_PIN00; GPIO_BIT_SET(GPIOF) = GPIO_PIN01
#define LED_OFF                 GPIO_BIT_RST(GPIOF) = GPIO_PIN00; GPIO_BIT_RST(GPIOF) = GPIO_PIN01
#define LED_G_TOGGLE            GPIO_OUT(GPIOF) ^= GPIO_PIN00;
#define LED_R_TOGGLE            GPIO_OUT(GPIOF) ^= GPIO_PIN01;
#define IFLED_G_ON              GPIO_OUT(GPIOF)&GPIO_PIN00
#define RST_LED_G               GPIO_BIT_RST(GPIOF) = GPIO_PIN00
#define SET_LED_G               GPIO_BIT_SET(GPIOF) = GPIO_PIN00
#define IFLED_R_ON              GPIO_OUT(GPIOF)&GPIO_PIN01
#define RST_LED_R               GPIO_BIT_RST(GPIOF) = GPIO_PIN01
#define SET_LED_R               GPIO_BIT_SET(GPIOF) = GPIO_PIN01
#define IFLED_Y_ON              (GPIO_OUT(GPIOF)&GPIO_PIN00)||(GPIO_OUT(GPIOF)&GPIO_PIN01)
#define RST_LED_Y               GPIO_BIT_RST(GPIOF) = (GPIO_PIN00|GPIO_PIN01)
#define SET_LED_Y               GPIO_BIT_SET(GPIOF) = (GPIO_PIN00|GPIO_PIN01)
#define LED_MODE_OFF            0
#define LED_MODE_ON             1
#define LED_MODE_BLINK          2
#define LED_MODE_BLINK_LIM      3

#define LED_13_ON                GPIO_BIT_RST(GPIOC) = GPIO_PIN13
#define LED_13_OFF               GPIO_BIT_SET(GPIOC) = GPIO_PIN13

#define BGERC                   (GPIO_IN(GPIOB)&GPIO_PIN09)
#define BTAMP                   (GPIO_IN(GPIOB)&GPIO_PIN12)
#define JTYPE                   (GPIO_IN(GPIOB)&GPIO_PIN04)
#define JPROG                   (GPIO_IN(GPIOB)&GPIO_PIN03)
#define JGERC                   (GPIO_IN(GPIOA)&GPIO_PIN15)
#define B1_ADC_CH               ADC_CH01
#define B2_ADC_CH               ADC_CH03
#define SH_ADC_CH               ADC_CH09
#define VR_ADC_CH               ADC_CH17
#define CAL_VINT                ( (u32) (*VREFINT_CAL))
#define ADC_BAT2_ON             GPIO_BIT_RST(GPIOB) = GPIO_PIN10
#define ADC_BAT2_OFF            GPIO_BIT_SET(GPIOB) = GPIO_PIN10
#define SH_ON                   GPIO_BIT_SET(GPIOB) = GPIO_PIN05
#define SH_OFF                  GPIO_BIT_RST(GPIOB) = GPIO_PIN05
#define LED_G                   GPIO_PIN00
#define LED_R                   GPIO_PIN01
#define LED_1                   GPIO_PIN06
#define LED_2                   GPIO_PIN07
#define ADC_DATA_DEF(x)         SH_ADC_ON; ADC_START; adcdata = x * ADC_DATA / 4095; SH_ADC_OFF
#define BAT1_ADC_NUM            1
#define BAT2_ADC_NUM            2
#define SH_ADC_NUM              3
#define SPI1_DATA               *(u8 *) & (SPIx_DATA_REG(SPI1))
#define SPI1_DATAW              *(u8 *) & (SPIx_DATA_REG(SPI1))
#define SPI1_DATAR              (u8) SPIx_DATA_REG(SPI1)
#define VREFINT_CAL             ((u16*) ((u32) 0x1FFFF7BA))
#define NSS1_ON                 GPIO_BIT_RST(GPIOA) = GPIO_PIN04
#define NSS1_OFF                GPIO_BIT_SET(GPIOA) = GPIO_PIN04
#define MOSI_SET                GPIO_BIT_SET(GPIOA) = GPIO_PIN07
#define MOSI_CLR                GPIO_BIT_RST(GPIOA) = GPIO_PIN07
#define SCK1_SET                GPIO_BIT_SET(GPIOA) = GPIO_PIN05
#define SCK1_CLR                GPIO_BIT_RST(GPIOA) = GPIO_PIN05
#define MISO_EXIST              GPIO_IN(   GPIOA  )&GPIO_PIN06
#define MISO_PIN                GPIO_PIN06
#define IF_nIRQ                 (GPIO_IN(GPIOB)&GPIO_PIN00)
#define SI4455_SDN_ON           GPIO_BIT_RST(GPIOB) = GPIO_PIN02
#define SI4455_SDN_OFF          GPIO_BIT_SET(GPIOB) = GPIO_PIN02
#define SI4455_PWR_ON           GPIO_BIT_SET(GPIOB) = GPIO_PIN11
#define SI4455_PWR_OFF          GPIO_BIT_RST(GPIOB) = GPIO_PIN11
#define low(x)                  ((u8)(x))
#define high(x)                 ((u8)(x>>8)) 
#define getptr(strc)            (u8*)&strc
#define ptr_                    (u8*)
#define ZETARF_PACKET_LENGTH    16
#define CRC16_POLYNOM           0x1021U
#define FLASH_KEY1              ((u32)0x45670123)
#define FLASH_KEY2              ((u32)0xCDEF89AB)
#define F_PAGE31_STR            0x08007c00
#define F_PAGE31_END            0x08007ffc
#define ADDR_ID                 0                                               // ID ПКР  (3 байта)                              //
#define ADDR_addr_256           3                                               // внешний адрес извещателя в системе             //
#define ADDR_ADDR_32            4                                               // внутренний адрес извещеталя для борьбы с коллиз//
#define ADDR_CHANNEL            5                                               // частотный канал                                //
#define ADDR_T_TX               6                                               // интервал передачи извещений                    //
#define ADDR_TYPE               8                                               // Тип датчика                                    //
//#define  ADDR_THRESH          100                                             // Порог для ДИПа                             //
#define ADDR_KEY_1              10                                              // 32-байтный ключ      40 байт при очистке       //

#define RAZRYAD_STBY            0x01
#define SRAB_STBY               0x02
#define NEISP_STBY              0x04
#define NORM_STBY               0x80

#define NORM_TEST               0x00
#define SRAB_TEST               0x02
#define OSHIBKA_TEST            0x04
#define RESERV_TEST             0x10
#define RAZRYAD_TEST            0x20
#define TAMP_TEST               0x40

#define SH_ER                   ((u8)0x03)                                      //Состояние шлейфа: неисправность
#define SH_P2                   ((u8)0x02)                                      //Состояние шлейфа: пожар2
#define SH_P1                   ((u8)0x01)                                      //Состояние шлейфа: пожар1
#define SH_TR                   ((u8)0x01)                                      //Состояние шлейфа: тревога
#define SH_NM                   ((u8)0x00)                                      //Состояние шлейфа: Деж. режим

#define BAT_TRHLD_1             2.38
#define BAT_TRHLD_2             0.5

#define ZeroPacketLength        128
//#define BAT_NORM_LVL            2.7
//#define BAT_LOW_LVL             2.45
//#define BAT_CRIT_LVL            2.4
//#define BAT_ADC_DEG3            2.2
//#define BAT_ADC_DEG4            2.2
#define M_STBY                  00
#define M_BIND                  01
#define M_TEST                  02
#define MODE_X                  03
#define TYPE                    0x02
#define AFTER_SHORTPAUSE        0
#define AFTER_LONGPAUSE         1
#define AFTER_BIND_TEST         2
#define SHORTPAUSE              2
#define GERCPAUSE               20
#define LONGPAUSE               7
#define CLR_REG(REG)            *(u32*)&(USB->REG)
#define T_BIND                  2




static const u8 B_INT_CTL_ENABLE_1[10]       = {0x11, 0x01, 0x04, 0x00, 0x07, 0x33, 0x27, 0x3C};
static const u8 B_FRR_CTL_A_MODE_4[16]       = {0x11, 0x02, 0x04, 0x00, 0x08, 0x06, 0x04, 0x0A};
static const u8 B_EZCONFIG_XO_TUNE_1[16]     = {0x11, 0x24, 0x04, 0x00, 0x02, 0x00, 0x00, 0x4F};
static const u8 SYNC_CONFIG[8]               = {0x11, 0x11, 0x04, 0x00, 0xb4, 0xd4, 0x2b, 0x2d};
static const u8 PA_PWR_LVL[6]                = {0x11, 0x22, 0x01, 0x00, 0x7f};
static const u8 B_EZCONFIG_CHECK[3]  = {0x19, 0x80, 0x14};
static const u8 B_WRITE_TX_FIFO[114] = {0x66, 0x95, 0x71, 0xA9, 0x76, 0x4E, 0xA5, 0x73, 0xF1, 0xF7, 0x1C, 0x50, 0xBC, 0x48, 0x87, 0x7D, 0xB8, 0x66, 0xC8, 0xCA, \
0x0A, 0xFE, 0xAE, 0x0D, 0xA6, 0x3B, 0xC0, 0x3C, 0x93, 0x23, 0x04, 0xF2, 0x18, 0x8A, 0x6B, 0x94, 0xA8, 0xEA, 0x98, 0x6B, \
0xE0, 0xC6, 0xC4, 0x35, 0x98, 0xC2, 0xD9, 0xBF, 0xFC, 0x31, 0xAF, 0xEB, 0x0D, 0x3D, 0x1E, 0xD4, 0xB7, 0xCC, 0xA9, 0xF3, \
0x92, 0xB7, 0x9C, 0xCF, 0xA1, 0x1E, 0xDD, 0xF7, 0xA6, 0xE1, 0x94, 0x3F, 0x50, 0xCB, 0x7E, 0x91, 0x41, 0xEE, 0x1F, 0x0A, \
0x5C, 0xF6, 0xFE, 0x1B, 0xD5, 0x13, 0x9A, 0x91, 0x98, 0xC1, 0xF9, 0x41, 0x01, 0x45, 0x74, 0xD2, 0xC6, 0x05, 0xE4, 0xFD, \
0x2C, 0x1F, 0xD9, 0xC8, 0xE7, 0x0A, 0x93, 0x0F, 0xEC, 0x44, 0x30, 0x2B, 0x18, 0x04};
/*static const u8 B_WRITE_TX_FIFO[114] = {0x66, 0xF4, 0x30, 0x29, 0xE7, 0x24, 0xB6, 0x6A, 0xC1, 0x08, 0xBD, 0x91, 0xF0, 0x69, 0xE3, 0xEF, 0x89, 0xA0, 0xF9, 0xF7, \
0x24, 0x9D, 0x03, 0xA6, 0xB4, 0xA4, 0xE7, 0xAF, 0x28, 0xD0, 0xBD, 0x41, 0x28, 0x89, 0xC8, 0x5D, 0xD7, 0x51, 0x00, 0xA7, \
0x1B, 0x71, 0x66, 0x47, 0x7B, 0xAB, 0xE5, 0x41, 0x74, 0x09, 0x06, 0xD7, 0x73, 0x5B, 0xAD, 0x1E, 0xFC, 0x3B, 0x71, 0x91, \
0x08, 0xAE, 0x99, 0x87, 0x05, 0x70, 0x6E, 0x35, 0x85, 0xA1, 0xDB, 0x1B, 0x23, 0x1C, 0xA8, 0x54, 0x28, 0x0F, 0x04, 0x15, \
0x41, 0xF0, 0xAE, 0xEC, 0x01, 0xDA, 0xD7, 0x80, 0x53, 0x12, 0xAF, 0x56, 0x8E, 0x1A, 0x94, 0x56, 0x97, 0xFE, 0x1E, 0xF8, \
0x2D, 0x02, 0x9B, 0x00, 0xDD, 0x2F, 0xDE};*/
static const u8 B_WRITE_TX_FIFO_1[112] = {0x66, 0xFD, 0xBE, 0x45, 0x7D, 0x44, 0xB3, 0xE9, 0x53, 0xB3, 0x74, 0xC7, 0x2C, 0x79, 0xC4, 0x61, 0xB9, 0x6F, 0xD5, 0x51, \
0xE6, 0x5C, 0xBA, 0x12, 0x21, 0x97, 0xF7, 0xC4, 0x7D, 0x80, 0x34, 0x45, 0xAC, 0x45, 0xB2, 0xDE, 0x20, 0x4E, 0x4F, 0xB0, \
0x0F, 0x49, 0xBE, 0x14, 0x01, 0x73, 0x0E, 0xAE, 0x08, 0xE5, 0xE6, 0x15, 0xD7, 0xF5, 0xEB, 0xE2, 0xC1, 0xC1, 0x28, 0xD0, \
0xE1, 0xA2, 0xA2, 0xAA, 0xCE, 0x50, 0x63, 0x0C, 0x95, 0x5B, 0x85, 0x78, 0xF6, 0x57, 0xED, 0x33, 0x3A, 0x38, 0x2E, 0xD8, \
0xC9, 0x61, 0xDB, 0x33, 0x8E, 0x80, 0x0C, 0x84, 0xC7, 0x8B, 0x86, 0x95, 0xF6, 0x18, 0x0F, 0xD5, 0x48, 0x4C, 0x70, 0x22, \
0x12, 0xAE, 0xAA, 0xBE, 0x85, 0x91, 0x50, 0x20, 0xD1, 0x28, 0x32, 0xFF};
/*static const u8 B_WRITE_TX_FIFO_1[112] = {0x66, 0x75, 0x52, 0xDF, 0xE1, 0x9D, 0x46, 0x71, 0x0B, 0xBD, 0x72, 0xC0, 0x72, 0x89, 0xCB, 0x03, 0x9F, 0x7A, 0x0E, 0xBE, \
0xA5, 0x65, 0x69, 0x40, 0x43, 0xAD, 0xA5, 0xCB, 0x8A, 0xA6, 0xA1, 0xCF, 0x5A, 0x38, 0xC2, 0xC1, 0x10, 0xD5, 0x60, 0x3B, \
0xEF, 0x3F, 0x0F, 0xE1, 0x21, 0xA1, 0xB6, 0x75, 0x4D, 0xBF, 0x0C, 0x5E, 0xE2, 0xA5, 0x34, 0x95, 0xC5, 0xCD, 0xA3, 0x93, \
0x2F, 0xA3, 0x87, 0x26, 0xC4, 0x67, 0x69, 0xD9, 0xA1, 0x32, 0xCA, 0xE4, 0xE0, 0x3A, 0x70, 0x4D, 0x80, 0x86, 0x88, 0xDA, \
0x6C, 0x93, 0xA4, 0x49, 0x66, 0xC5, 0x66, 0x37, 0xE7, 0xCE, 0x5F, 0x9B, 0x93, 0x14, 0xB7, 0x3E, 0x3E, 0x2B, 0xC9, 0x99, \
0xBE, 0x30, 0x8A, 0x0B, 0x0B, 0x62};*/
u8 rep[4];
u8 Resp[64];
u8 EKEY_1[32]={182, 27, 21, 180, 107, 160, 201, 17,76, 13, 19, 147, 204, 1, 126, 254, 177, 43, 169, 183, 250, 40, 14, 156, 99, 205, 142, 29, 239, 138, 21, 131};
u8 EKEY_2[8] = {115,152,10,128,103,198,161,147};                                // Ключ шифрования 2                              //
u8 data[ZeroPacketLength] = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
u8 data_zero[ZeroPacketLength];
u8 data_1[ZeroPacketLength+20] = {0xaa, 0xaa, 0xaa, 0xaa, 0x2d, 0x2b, 0x09, 0x01, 0x73, 0x98, 0x0a, 0x92, 0xd1, 0x75, 0x90, 0xa2};

const u32 xconst = 0x0123abcd;
struct
{
  struct{
    u16 basic; 
  }e;
  struct{
    u16 basic; 
    u16 tim_0;
  }d;
  struct{
    u16 delta;
    u16 prph;
  }tamp;
  struct{
    u16 delta;
    u16 prph;
  }jump;
  struct{
    u16 delta;
    u16 prph;
  }alert;
  struct{
    u16 delta;
    u16 prph;
  }head;
  struct{
    u16 delta;
    u16 prph;
  }bat;
  struct{
    u16 delta;
    u16 prph;
  }led;
}Timers;


u8 jbind, jdang; 
u8 tprev=0, shlfst, alrtst;
u8 data1=128, data2=186;
u8 data1_prev = 0x80;
u8 type = 0x10| TYPE,                                                           /*тип датчика*/
gerk_tN=12                                                                      /*адресс массива для хранения параметра геркон/шлейф*/;
u8 lpack=0;
u8 plen;
u8 SendL;                                                                       /*длина отправляемого пакета*/
u8 arrow_1 = 0;                                                                 // указатель ключа 32 байта                       //
u8 arrow_2 = 0;                                                                 // указатель ключа 8 байт                         //
u8 arrow_new = 0;
u8 state = 0;
u8 state_prev = 0;
u8 mode=0;
u8 CTS_RESP=0;
u8 ERR_CN=0;
u8 data_shift = 7;
u8 bit_shift=0;
u8 RecPacketLength;
u8 RLenght;
//u16 st_change = 0;
//int irq_on=0;
u16 adc_cn=0;
u16 sendcn;
u16 sum_5=0;
u16 pxaa, px55=1;
float ratio_a5=0;
u8 start=0;
u8 led_mode=0, led_mode_prev=0;
u8 bat2=0, bat2_cn=1;
u32 bckr_0=0, bckr_1=0;
u8 WakeCause;
u8 RTC_period = 0;
u8 sec_unit_1 = 0;
u8 sec_t = 0;
u8 bkp_u  = 0, bkp_t = 0, bkp_delta = 0, sw_bkp = 0, cn_bkp = 0;
u8 rad_sw=0, scan_time = 0;
u8 mode_change=0;
u8 a10;
u8 period = 0;
u8 rdi = 0;
u8 tamp_cn=0;
typedef struct {
  u8 id_pkr[3];
  u8 addr_256;
  u8 addr_32;
  u8 chann;
  u8 t_tx;
  u8 gerk_t;                                                                    /*значение параметра геркон/шлейф*/
  u8 EKEY_1[32];
}Bind_type;
Bind_type *Bind = ((Bind_type*) F_PAGE31_STR);
struct
{
  float ref_volt;
  float bat1;
  float bat2;
  float vshlf;
  float rshlf;
}Volt;
  
//struct
//{
//  u8 CMD;
//  u8 DATA[63];
//}TX;
//
//struct
//{
//  u8 CTS;
//  u8 DATA[63];
//}RX;

struct Tx_data
{
  u8 CMD;
  u8 data_w[63];
  u8 CTS;
  u8 data_r[63];
};
struct Tx_data Id;
struct Tx_data *Ptr_id = &Id;

static const u8 Part_id[1] = {0x01};
static const u8 Pow_up[7] = {0x02, 0x01, 0x00, 0x01, 0xC9, 0xC3, 0x80};
static const u8 Gpio_cfg[8] = {0x13, 0x01, 0x01, 0x01, 0x01, 0x1a, 0x00, 0x00};
static const u8 Ez_check[3] = {0x19, 0x7F, 0xE6};
typedef struct
{
  u8 CMD;
  u8 data_w[63];
  u8 CTS;
  u8 data_r[63];
}Command;
struct{
  u8 CMD;
  u8 PH_CLR_PEND;
  u8 MODEM_CLR_PEND;
  u8 CHIP_CLR_PEND;
  u8 CTS;
  struct
  {
    u8 INT_PEND;
    u8 INT_STATUS;
    u8 PH_PEND;
    u8 PH_STATUS;
    u8 MODEM_PEND;
    u8 MODEM_STATUS;
    u8 CHIP_PEND;
    u8 CHIP_STATUS;
  }RESP;
}Interr_st = {0x20, 0x3f, 0xaf, 0x3c};
struct{
  u8 CMD;
  u8 CHANNEL;
  u8 CONDITION;
  u8 TX_LEN[2];
  u8 TX_DELAY;
  u8 CTS;
}Start_tx = {0x31, 0x00, 0x30, 0x00, 0x00, 0xff};
struct{
  u8 CMD;
  u8 CHANNEL;
  u8 RSV;
  u8 TX_LEN[2];
  u8 NEXT_STATE[3];
  u8 CTS;
}Start_rx = {0x32, 0x00, 0x00, 0x00, 0x40, 0x08, 0x03, 0x03};
struct{
  u8 CMD;
  u8 CTS;
  u8 CURR_STATE;
  u8 CURR_CHANN;
}Device_st = {0x33};
struct{
  u8 CMD;
  u8 NEXT_STATE1;
  u8 CTS;
  u8 CURR_STATE;
  u8 CURR_CHANN;
}Device_st_change = {0x34, 0x03};
struct{
  u8 CMD;
  u8 FIFO;
  u8 CTS;
  u8 RX_FIFO_COUNT;
  u8 TX_FIFO_SPACE;
}Fifo_info = {0x15, 0x03};
typedef struct {
  u8 CMD;
  u8 GROUP;
  u8 NUM_PropS;
  u8 START_Prop;
  u8 CTS;
  u8 DATA[15];
}Prop;

#define sf ((Prop*) &B_INT_CTL_ENABLE_1)
Prop *gt = ((Prop*) &B_INT_CTL_ENABLE_1);
Prop *int_en = ((Prop*) &B_INT_CTL_ENABLE_1);
Prop *sff = ((Prop*) &B_INT_CTL_ENABLE_1);


//typedef struct {
//  u8 CMD;
//  u8 GROUP;
//  u8 NUM_PropS;
//  u8 START_Prop;
//  u8 CTS;
//  u8 DATA[15];
//}Led;


typedef struct
{
  u1 mode       :2;
  u8 tau;
}Led_type;

//Led_type *gr = ()

struct Ledx
{
  u16 time_on;
  u16 time_off;
  u8 tau;
};
struct Ledx Gr;
struct Ledx Rd;
struct Ledx Ye;
struct Ledx Lx[3];
struct Ledx *Ptr_Led;// = &Gr;

//struct 
//{
//  u8 mode;
//  u8 tau[3];
//}Ledm;

struct
{
  u1 bat1    :2;
  u1 bat2    :2;
  u1 rshlf   :2;
  u1 jtype   :2;
  u1 jgerc   :2;
  u1 jprog   :2;
  u1 tamp    :2;
  u1 gerc    :2;
  u1 rsv     :16; 
}Element;

struct
{
  u1 send    :2;
  u1 rxon    :2;
  u1 srec    :2;   
  u1 crc     :2;
  u8 shlf    :3; 
  u1 tkey_0  :1;
  u1 tkey_1  :1;
  u1 pack    :2;   
  u1 tamp    :2;
  u1 gerc    :1;
  u1 led     :3;
}Status;

struct
{
  u1 green      :2;                                                             //0- Off; 1- On; 2- Blink;
  u1 red        :2;
  u1 yellow     :2;
  u8 greencnt;
  u8 redcnt;
  u8 yellowcnt;
//  u8 period;
}Led;

void RCC_init(void);
void GPIO_init(void);
void TIMER_init(void);
void ADC_init(void);
u16  ADC_VAL(u32 chnum);
void ADC_Simple(void);
void ADC_Complex(void);
void Timer_init(void);
void SYSTICK_init(void);
void TIM1_Handler(void);
void SysTick_Handler(void);
void SPI_init(void);
u8   spi_byte(u8 data);
void SPIRW(u8 TX, u8 RX, u8 *Buf);
void SPI_rw(u8 TX, u8 RX, u8 *Buf_tx, u8 *Buf_rx, u8 added_x);
void delay_us(u16 value);
void delay_ms(int ms);
void TOGGLE(u16 led_pin, u8 freq);
void BLINKG(void);
void BLINKR(void);
void LED_Ctrl(void);
void LED_off(u8 led_x);
void Alert_Scan(void);
void Tamp_Scan(void);
void Contact_Scan(void);
void Shlf_Scan(void);
u8   TimeOut(u8 tbase, u8 tperiph);
u16  TimeOut_16(u16 tbase, u16 tperiph);
void Bat_ADC_Ctrl(void);
void Null_struct(u8 *ptr, u8 len);

void CTS_CHECK(void);
void SI4455_Reset(void);
void Get_id(void);
void SI4455_PowUp_soft(void);
void GPIO_Cfg(u8 *b);
void Cfg_Check(u8 *b);
void Get_Pr(u8 *buf);
void Device_State(u8 cmd, u8 snum, u8 rnum);
void Set_Pr(u8 *b);
void Interr_Scan(u8 clear);
void BIND_TO_HY(void);
u8   PackProg(u8 *buf_5, u8 type);
u8   PackSend(u8 *buf_5);
u32  CRC16_hy(u8 *data, u8 len);
void Encrypt_PRG_hy(u8 *buf, u8 arr);
void Encrypt(u8 *buf, u8 *key, u8 len, u8 index, u8 keylength);
void Radio_init(void);
void rec(u8 *buf);
void Start_Tx(u8 *buf, u8 packlen, u8 ch);
void Start_Rx(u8 ch);
void Read_Fifo(u8 *buf);
u8   Data_Check(u8 *buf);
u8   Data_Check(u8 *buf);
void Send_To_Hybrid(void);
void Rec_From_Hy(void);
void Radio_Head(void);
//void FIFO_Info(u8 clear, u8 byte);
//void ParamSet(void);
void fifo_buf_erase(void);
void BCKR_init(void);
void Tamper_init(void);
void StopMode(void);
void TimeManager(void);
void LED_Ctrl(void);
void LED_Linear(void);
u8   RadioSw(void);
void SetPause(u8 sec_unit);
void SetAlarm(u8 sec_unit);
u8   SetAlarmPeriod(void);
void LowPower(void);
void _wfi(void);