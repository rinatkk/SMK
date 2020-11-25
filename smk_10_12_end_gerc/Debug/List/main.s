///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.80.4.12462/W32 for ARM      09/Oct/2020  22:07:50
// Copyright 1999-2017 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  D:\code\mkr\stm32\stm32f0xx\smk_10_12_end_gerc\main.c
//    Command line =  
//        D:\code\mkr\stm32\stm32f0xx\smk_10_12_end_gerc\main.c -lCN
//        D:\code\mkr\stm32\stm32f0xx\smk_10_12_end_gerc\Debug\List -lA
//        D:\code\mkr\stm32\stm32f0xx\smk_10_12_end_gerc\Debug\List -o
//        D:\code\mkr\stm32\stm32f0xx\smk_10_12_end_gerc\Debug\Obj --no_cse
//        --no_unroll --no_inline --no_code_motion --no_tbaa --no_clustering
//        --no_scheduling --debug --endian=little --cpu=Cortex-M0 -e --fpu=None
//        --dlib_config "C:\Program Files (x86)\IAR Systems\Embedded Workbench
//        7.5\arm\INC\c\DLib_Config_Normal.h" -Ol
//    Locale       =  Russian_Russia.1251
//    List file    =  
//        D:\code\mkr\stm32\stm32f0xx\smk_10_12_end_gerc\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_cdcmple
        EXTERN __aeabi_cfcmple
        EXTERN __aeabi_cfrcmple
        EXTERN __aeabi_d2f
        EXTERN __aeabi_dadd
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_dsub
        EXTERN __aeabi_f2d
        EXTERN __aeabi_fadd
        EXTERN __aeabi_fdiv
        EXTERN __aeabi_fmul
        EXTERN __aeabi_fsub
        EXTERN __aeabi_idiv
        EXTERN __aeabi_idivmod
        EXTERN __aeabi_ui2d
        EXTERN __aeabi_ui2f
        EXTERN __aeabi_uidivmod

        PUBLIC ADC_Complex
        PUBLIC ADC_Simple
        PUBLIC ADC_VAL
        PUBLIC ADC_init
        PUBLIC Alert_Scan
        PUBLIC BCKR_init
        PUBLIC Bat_ADC_Ctrl
        PUBLIC Bind
        PUBLIC CRC16_hy
        PUBLIC CTS_RESP
        PUBLIC Contact_Scan
        PUBLIC Data_Check
        PUBLIC Device_st
        PUBLIC Device_st_change
        PUBLIC EKEY_1
        PUBLIC EKEY_2
        PUBLIC ERR_CN
        PUBLIC EXTI415_Handler
        PUBLIC Element
        PUBLIC Encrypt
        PUBLIC Encrypt_PRG_hy
        PUBLIC Encrypt_RX_RU2
        PUBLIC Encrypt_TX_RU2
        PUBLIC Fifo_info
        PUBLIC GPIO_init
        PUBLIC Gr
        PUBLIC IWDG_Set
        PUBLIC Id
        PUBLIC Interr_st
        PUBLIC LED_Ctrl
        PUBLIC LED_Linear
        PUBLIC LED_off
        PUBLIC Led
        PUBLIC LowPower
        PUBLIC Lx
        PUBLIC Null_struct
        PUBLIC PackSend
        PUBLIC Ptr_Led
        PUBLIC Ptr_id
        PUBLIC RCC_init
        PUBLIC RLenght
        PUBLIC RTC_Handler
        PUBLIC RTC_period
        PUBLIC Radio_Head
        PUBLIC Radio_init
        PUBLIC Rd
        PUBLIC Read_Fifo
        PUBLIC RecPacketLength
        PUBLIC Resp
        PUBLIC SI4455_Reset
        PUBLIC SPI_init
        PUBLIC SPI_rw
        PUBLIC SYSTICK_init
        PUBLIC SendL
        PUBLIC SetAlarm
        PUBLIC SetAlarmPeriod
        PUBLIC Start_Rx
        PUBLIC Start_Tx
        PUBLIC Start_rx
        PUBLIC Start_tx
        PUBLIC Status
        PUBLIC SysTick_Handler
        PUBLIC Tamp_Scan
        PUBLIC Tamper_init
        PUBLIC TimeOut
        PUBLIC TimeOut_16
        PUBLIC Timer_init
        PUBLIC Timers
        PUBLIC Volt
        PUBLIC WakeCause
        PUBLIC Ye
        PUBLIC _wfi
        PUBLIC a10
        PUBLIC adc_cn
        PUBLIC alrtst
        PUBLIC arrow_1
        PUBLIC arrow_2
        PUBLIC arrow_new
        PUBLIC bat2
        PUBLIC bat2_cn
        PUBLIC bckr_0
        PUBLIC bckr_1
        PUBLIC bit_shift
        PUBLIC bkp_delta
        PUBLIC bkp_t
        PUBLIC bkp_u
        PUBLIC cn_bkp
        PUBLIC `data`
        PUBLIC data1
        PUBLIC data1_prev
        PUBLIC data2
        PUBLIC data_1
        PUBLIC data_shift
        PUBLIC data_zero
        PUBLIC delay_ms
        PUBLIC delay_us
        PUBLIC f_unlock_erase_page
        PUBLIC f_w_array
        PUBLIC fifo_buf_erase
        PUBLIC gerk_tN
        PUBLIC gt
        PUBLIC int_en
        PUBLIC jbind
        PUBLIC jdang
        PUBLIC led_mode
        PUBLIC led_mode_prev
        PUBLIC lpack
        PUBLIC main
        PUBLIC mode
        PUBLIC mode_change
        PUBLIC period
        PUBLIC plen
        PUBLIC px55
        PUBLIC pxaa
        PUBLIC rad_sw
        PUBLIC ratio_a5
        PUBLIC rdi
        PUBLIC rep
        PUBLIC scan_time
        PUBLIC sec_t
        PUBLIC sec_unit_1
        PUBLIC sendcn
        PUBLIC sff
        PUBLIC shlfst
        PUBLIC spi_byte
        PUBLIC start
        PUBLIC state
        PUBLIC state_prev
        PUBLIC sum_5
        PUBLIC sw_bkp
        PUBLIC tamp_cn
        PUBLIC tprev
        PUBLIC type
        PUBLIC xconst
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI EndCommon cfiCommon0
        
// D:\code\mkr\stm32\stm32f0xx\smk_10_12_end_gerc\main.c
//    1 #include "M0_Core.h"
//    2 #include "inc.h"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// static __absolute unsigned char const B_INT_CTL_ENABLE_1[10]
B_INT_CTL_ENABLE_1:
        DC8 17, 1, 4, 0, 7, 51, 39, 60, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// static __absolute unsigned char const B_FRR_CTL_A_MODE_4[16]
B_FRR_CTL_A_MODE_4:
        DC8 17, 2, 4, 0, 8, 6, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// static __absolute unsigned char const B_EZCONFIG_XO_TUNE_1[16]
B_EZCONFIG_XO_TUNE_1:
        DC8 17, 36, 4, 0, 2, 0, 0, 79, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// static __absolute unsigned char const SYNC_CONFIG[8]
SYNC_CONFIG:
        DC8 17, 17, 4, 0, 180, 212, 43, 45

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// static __absolute unsigned char const PA_PWR_LVL[6]
PA_PWR_LVL:
        DC8 17, 34, 1, 0, 127, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// static __absolute unsigned char const B_WRITE_TX_FIFO[114]
B_WRITE_TX_FIFO:
        DC8 102, 149, 113, 169, 118, 78, 165, 115, 241, 247, 28, 80, 188, 72
        DC8 135, 125, 184, 102, 200, 202, 10, 254, 174, 13, 166, 59, 192, 60
        DC8 147, 35, 4, 242, 24, 138, 107, 148, 168, 234, 152, 107, 224, 198
        DC8 196, 53, 152, 194, 217, 191, 252, 49, 175, 235, 13, 61, 30, 212
        DC8 183, 204, 169, 243, 146, 183, 156, 207, 161, 30, 221, 247, 166, 225
        DC8 148, 63, 80, 203, 126, 145, 65, 238, 31, 10, 92, 246, 254, 27, 213
        DC8 19, 154, 145, 152, 193, 249, 65, 1, 69, 116, 210, 198, 5, 228, 253
        DC8 44, 31, 217, 200, 231, 10, 147, 15, 236, 68, 48, 43, 24, 4, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// static __absolute unsigned char const B_WRITE_TX_FIFO_1[112]
B_WRITE_TX_FIFO_1:
        DC8 102, 253, 190, 69, 125, 68, 179, 233, 83, 179, 116, 199, 44, 121
        DC8 196, 97, 185, 111, 213, 81, 230, 92, 186, 18, 33, 151, 247, 196
        DC8 125, 128, 52, 69, 172, 69, 178, 222, 32, 78, 79, 176, 15, 73, 190
        DC8 20, 1, 115, 14, 174, 8, 229, 230, 21, 215, 245, 235, 226, 193, 193
        DC8 40, 208, 225, 162, 162, 170, 206, 80, 99, 12, 149, 91, 133, 120
        DC8 246, 87, 237, 51, 58, 56, 46, 216, 201, 97, 219, 51, 142, 128, 12
        DC8 132, 199, 139, 134, 149, 246, 24, 15, 213, 72, 76, 112, 34, 18, 174
        DC8 170, 190, 133, 145, 80, 32, 209, 40, 50, 255

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute unsigned char rep[4]
rep:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute unsigned char Resp[64]
Resp:
        DS8 64

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute unsigned char EKEY_1[32]
EKEY_1:
        DC8 182, 27, 21, 180, 107, 160, 201, 17, 76, 13, 19, 147, 204, 1, 126
        DC8 254, 177, 43, 169, 183, 250, 40, 14, 156, 99, 205, 142, 29, 239
        DC8 138, 21, 131

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute unsigned char EKEY_2[8]
EKEY_2:
        DC8 115, 152, 10, 128, 103, 198, 161, 147

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute unsigned char data[128]
`data`:
        DC8 255, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute unsigned char data_zero[128]
data_zero:
        DS8 128

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute unsigned char data_1[148]
data_1:
        DC8 170, 170, 170, 170, 45, 43, 9, 1, 115, 152, 10, 146, 209, 117, 144
        DC8 162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// __absolute unsigned int const xconst
xconst:
        DC32 19114957

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct <unnamed> Timers
Timers:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char jbind
jbind:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char jdang
jdang:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char tprev
tprev:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char shlfst
shlfst:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char alrtst
alrtst:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char data1
data1:
        DC8 128

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char data2
data2:
        DC8 186

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char data1_prev
data1_prev:
        DC8 128

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char type
type:
        DC8 18

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char gerk_tN
gerk_tN:
        DC8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char lpack
lpack:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char plen
plen:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char SendL
SendL:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char arrow_1
arrow_1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char arrow_2
arrow_2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char arrow_new
arrow_new:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char state
state:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char state_prev
state_prev:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char mode
mode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char CTS_RESP
CTS_RESP:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char ERR_CN
ERR_CN:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char data_shift
data_shift:
        DC8 7

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char bit_shift
bit_shift:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char RecPacketLength
RecPacketLength:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char RLenght
RLenght:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
// __absolute unsigned short adc_cn
adc_cn:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
// __absolute unsigned short sendcn
sendcn:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
// __absolute unsigned short sum_5
sum_5:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
        DATA
// __absolute unsigned short pxaa
pxaa:
        DS8 2

        SECTION `.data`:DATA:REORDER:NOROOT(1)
        DATA
// __absolute unsigned short px55
px55:
        DC16 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute float ratio_a5
ratio_a5:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char start
start:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char led_mode
led_mode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char led_mode_prev
led_mode_prev:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char bat2
bat2:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char bat2_cn
bat2_cn:
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute unsigned int bckr_0
bckr_0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute unsigned int bckr_1
bckr_1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char WakeCause
WakeCause:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char RTC_period
RTC_period:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char sec_unit_1
sec_unit_1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char sec_t
sec_t:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char bkp_u
bkp_u:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char bkp_t
bkp_t:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char bkp_delta
bkp_delta:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char sw_bkp
sw_bkp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char cn_bkp
cn_bkp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char rad_sw
rad_sw:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char scan_time
scan_time:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char mode_change
mode_change:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char a10
a10:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char period
period:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char rdi
rdi:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
        DATA
// __absolute unsigned char tamp_cn
tamp_cn:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute Bind_type *Bind
Bind:
        DC32 8007C00H

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct <unnamed> Volt
Volt:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct Tx_data Id
Id:
        DS8 128

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct Tx_data *Ptr_id
Ptr_id:
        DC32 Id

        SECTION `.rodata`:CONST:REORDER:NOROOT(0)
        DATA
// static __absolute unsigned char const Part_id[1]
Part_id:
        DC8 1

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// static __absolute unsigned char const Pow_up[7]
Pow_up:
        DC8 2, 1, 0, 1, 201, 195, 128, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// static __absolute unsigned char const Gpio_cfg[8]
Gpio_cfg:
        DC8 19, 1, 1, 1, 1, 26, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
// static __absolute unsigned char const Ez_check[3]
Ez_check:
        DC8 25, 127, 230, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct <unnamed> Interr_st
Interr_st:
        DC8 32, 63, 175, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct <unnamed> Start_tx
Start_tx:
        DC8 49, 0, 48, 0, 0, 255, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct <unnamed> Start_rx
Start_rx:
        DC8 50, 0, 0, 0, 64, 8, 3, 3, 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct <unnamed> Device_st
Device_st:
        DC8 51, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct <unnamed> Device_st_change
Device_st_change:
        DC8 52, 3, 0, 0, 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct <unnamed> Fifo_info
Fifo_info:
        DC8 21, 3, 0, 0, 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute Prop *gt
gt:
        DC32 B_INT_CTL_ENABLE_1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute Prop *int_en
int_en:
        DC32 B_INT_CTL_ENABLE_1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute Prop *sff
sff:
        DC32 B_INT_CTL_ENABLE_1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct Ledx Gr
Gr:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct Ledx Rd
Rd:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct Ledx Ye
Ye:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct Ledx Lx[3]
Lx:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct Ledx *Ptr_Led
Ptr_Led:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct <unnamed> Element
Element:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct <unnamed> Status
Status:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
// __absolute struct <unnamed> Led
Led:
        DS8 4
//    3 #include "src.c"

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function RCC_init
          CFI NoCalls
        THUMB
// __interwork __softfp void RCC_init(void)
RCC_init:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R0,??DataTable0  ;; 0x40021004
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+2
        BNE      ??RCC_init_0
        LDR      R0,??DataTable0  ;; 0x40021004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        LDR      R1,??DataTable0  ;; 0x40021004
        STR      R0,[R1, #+0]
??RCC_init_1:
        LDR      R0,??DataTable0  ;; 0x40021004
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BNE      ??RCC_init_1
??RCC_init_0:
        LDR      R0,??DataTable0_1  ;; 0x40021000
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable0_2  ;; 0xfeffffff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable0_1  ;; 0x40021000
        STR      R1,[R0, #+0]
??RCC_init_2:
        LDR      R0,??DataTable0_1  ;; 0x40021000
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+6        ;; ZeroExtS R1,R1,#+6,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BEQ      ??RCC_init_2
        LDR      R0,??DataTable0_3  ;; 0x40022000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable0_3  ;; 0x40022000
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable0_3  ;; 0x40022000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+7
        BICS     R0,R0,R1
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable0_3  ;; 0x40022000
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable0  ;; 0x40021004
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable0_4  ;; 0xfffe7fff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+8        ;; #+32768
        ORRS     R0,R0,R1
        LDR      R1,??DataTable0  ;; 0x40021004
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable0  ;; 0x40021004
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable0_5  ;; 0xffc3ffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+14       ;; #+2097152
        ORRS     R0,R0,R1
        LDR      R1,??DataTable0  ;; 0x40021004
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable0_1  ;; 0x40021000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+17       ;; #+16777216
        ORRS     R1,R1,R0
        LDR      R0,??DataTable0_1  ;; 0x40021000
        STR      R1,[R0, #+0]
??RCC_init_3:
        LDR      R0,??DataTable0_1  ;; 0x40021000
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+6        ;; ZeroExtS R1,R1,#+6,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BEQ      ??RCC_init_3
        LDR      R0,??DataTable0  ;; 0x40021004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable0  ;; 0x40021004
        STR      R1,[R0, #+0]
??RCC_init_4:
        LDR      R0,??DataTable0  ;; 0x40021004
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+2
        BNE      ??RCC_init_4
        LDR      R0,??DataTable0_6  ;; 0x40021014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+10       ;; #+131072
        ORRS     R1,R1,R0
        LDR      R0,??DataTable0_6  ;; 0x40021014
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable0_6  ;; 0x40021014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+11       ;; #+262144
        ORRS     R1,R1,R0
        LDR      R0,??DataTable0_6  ;; 0x40021014
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable0_6  ;; 0x40021014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+12       ;; #+524288
        ORRS     R1,R1,R0
        LDR      R0,??DataTable0_6  ;; 0x40021014
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable0_6  ;; 0x40021014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+15       ;; #+4194304
        ORRS     R1,R1,R0
        LDR      R0,??DataTable0_6  ;; 0x40021014
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable0_7  ;; 0x40021018
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        ORRS     R1,R1,R0
        LDR      R0,??DataTable0_7  ;; 0x40021018
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable0_7  ;; 0x40021018
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable0_7  ;; 0x40021018
        STR      R1,[R0, #+0]
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     0x40021004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_1:
        DC32     0x40021000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_2:
        DC32     0xfeffffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_3:
        DC32     0x40022000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_4:
        DC32     0xfffe7fff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_5:
        DC32     0xffc3ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_6:
        DC32     0x40021014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0_7:
        DC32     0x40021018

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function GPIO_init
          CFI NoCalls
        THUMB
// __interwork __softfp void GPIO_init(void)
GPIO_init:
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_0  ;; 0xfffff3ff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+4        ;; #+2048
        ORRS     R0,R0,R1
        MOVS     R1,#+144
        LSLS     R1,R1,#+23       ;; #+1207959552
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x4  ;; 0x4800000c
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_0  ;; 0xfffff3ff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+3        ;; #+1024
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x4  ;; 0x4800000c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x8  ;; 0x48000004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+32
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x8  ;; 0x48000004
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0xC  ;; 0x48000008
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        LSLS     R1,R1,#+4        ;; #+3072
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0xC  ;; 0x48000008
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R0,[R1, #+0]
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_1  ;; 0xffffcfff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+6        ;; #+8192
        ORRS     R0,R0,R1
        MOVS     R1,#+144
        LSLS     R1,R1,#+23       ;; #+1207959552
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x4  ;; 0x4800000c
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_1  ;; 0xffffcfff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+5        ;; #+4096
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x4  ;; 0x4800000c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x8  ;; 0x48000004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+64
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x8  ;; 0x48000004
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0xC  ;; 0x48000008
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        LSLS     R1,R1,#+6        ;; #+12288
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0xC  ;; 0x48000008
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R0,[R1, #+0]
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_2  ;; 0xffff3fff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+8        ;; #+32768
        ORRS     R0,R0,R1
        MOVS     R1,#+144
        LSLS     R1,R1,#+23       ;; #+1207959552
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x4  ;; 0x4800000c
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_2  ;; 0xffff3fff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+7        ;; #+16384
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x4  ;; 0x4800000c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x8  ;; 0x48000004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x8  ;; 0x48000004
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0xC  ;; 0x48000008
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        LSLS     R1,R1,#+8        ;; #+49152
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0xC  ;; 0x48000008
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R0,[R1, #+0]
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        ORRS     R1,R1,R0
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0x4  ;; 0x4800000c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x4  ;; 0x4800000c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x8  ;; 0x48000004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x8  ;; 0x48000004
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0xC  ;; 0x48000008
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0xC  ;; 0x48000008
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R0,[R1, #+0]
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        ORRS     R1,R1,R0
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0x4  ;; 0x4800000c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x4  ;; 0x4800000c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x8  ;; 0x48000004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+8
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x8  ;; 0x48000004
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0xC  ;; 0x48000008
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0xC  ;; 0x48000008
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R0,[R1, #+0]
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_3  ;; 0xfffffcff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+1        ;; #+256
        ORRS     R0,R0,R1
        MOVS     R1,#+144
        LSLS     R1,R1,#+23       ;; #+1207959552
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x4  ;; 0x4800000c
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_3  ;; 0xfffffcff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+1        ;; #+256
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x4  ;; 0x4800000c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x8  ;; 0x48000004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+16
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x8  ;; 0x48000004
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0xC  ;; 0x48000008
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_3  ;; 0xfffffcff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+1        ;; #+256
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0xC  ;; 0x48000008
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R0,[R1, #+0]
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_4  ;; 0xfcffffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+17       ;; #+16777216
        ORRS     R0,R0,R1
        MOVS     R1,#+144
        LSLS     R1,R1,#+23       ;; #+1207959552
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x4  ;; 0x4800000c
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_4  ;; 0xfcffffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+18       ;; #+33554432
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_0+0x4  ;; 0x4800000c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x8  ;; 0x48000004
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_5  ;; 0xffffefff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0x8  ;; 0x48000004
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0xC  ;; 0x48000008
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_4  ;; 0xfcffffff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0xC  ;; 0x48000008
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+21       ;; #+268435456
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R1,[R0, #+0]
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+2        ;; ZeroExtS R0,R0,#+2,#+2
        LSRS     R0,R0,#+2
        MOVS     R1,#+144
        LSLS     R1,R1,#+23       ;; #+1207959552
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x4  ;; 0x4800000c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+2        ;; ZeroExtS R0,R0,#+2,#+2
        LSRS     R0,R0,#+2
        MOVS     R1,#+128
        LSLS     R1,R1,#+23       ;; #+1073741824
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0x4  ;; 0x4800000c
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0x8  ;; 0x48000004
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_6  ;; 0xffff7fff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0x8  ;; 0x48000004
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0xC  ;; 0x48000008
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+2        ;; ZeroExtS R0,R0,#+2,#+2
        LSRS     R0,R0,#+2
        LDR      R1,??GPIO_init_0+0xC  ;; 0x48000008
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+128
        LSLS     R1,R1,#+8        ;; #+32768
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_0+0x10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_0+0x10  ;; 0x48000018
        B.N      ??GPIO_init_7
        Nop      
        DATA
??GPIO_init_0:
        DC32     0xfffff3ff
        DC32     0x4800000c
        DC32     0x48000004
        DC32     0x48000008
        DC32     0x48000018
        THUMB
??GPIO_init_7:
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_8  ;; 0x48000400
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_9  ;; 0x48000404
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_9+0x4  ;; 0x48000408
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_10  ;; 0x48000418
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_8+0x4  ;; 0x4800040c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_9  ;; 0x48000404
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_9+0x4  ;; 0x48000408
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??GPIO_init_10  ;; 0x48000418
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_10  ;; 0x48000418
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        LDR      R0,[R0, #+0]
        MOVS     R1,#+48
        BICS     R0,R0,R1
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+48
        BICS     R0,R0,R1
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_9  ;; 0x48000404
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        LDR      R0,[R0, #+0]
        MOVS     R1,#+48
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_9+0x4  ;; 0x48000408
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??GPIO_init_10  ;; 0x48000418
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+11       ;; #+262144
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_8  ;; 0x48000400
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        BICS     R0,R0,R1
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        LDR      R0,[R0, #+0]
        MOVS     R1,#+8
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_9  ;; 0x48000404
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_9+0x4  ;; 0x48000408
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_10  ;; 0x48000418
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_3  ;; 0xfffffcff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        B.N      ??GPIO_init_11
        DATA
??GPIO_init_1:
        DC32     0xffffcfff
        THUMB
??GPIO_init_11:
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_3  ;; 0xfffffcff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+1        ;; #+256
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_8+0x4  ;; 0x4800040c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        LDR      R0,[R0, #+0]
        MOVS     R1,#+16
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_9  ;; 0x48000404
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_3  ;; 0xfffffcff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_10  ;; 0x48000418
        B.N      ??GPIO_init_12
        Nop      
        DATA
??GPIO_init_2:
        DC32     0xffff3fff
        THUMB
??GPIO_init_12:
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_13  ;; 0xfffff3ff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+3        ;; #+1024
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_8  ;; 0x48000400
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_13  ;; 0xfffff3ff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+4        ;; #+2048
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_8+0x4  ;; 0x4800040c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        LDR      R0,[R0, #+0]
        MOVS     R1,#+32
        BICS     R0,R0,R1
        LDR      R1,??GPIO_init_9  ;; 0x48000404
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_13  ;; 0xfffff3ff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??GPIO_init_10  ;; 0x48000418
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+14       ;; #+2097152
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_14  ;; 0xfff3ffff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_14  ;; 0xfff3ffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+11       ;; #+262144
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_8+0x4  ;; 0x4800040c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_15  ;; 0xfffffdff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_14  ;; 0xfff3ffff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_10  ;; 0x48000418
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_16  ;; 0xffcfffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+13       ;; #+1048576
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_8  ;; 0x48000400
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_16  ;; 0xffcfffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+13       ;; #+1048576
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_8+0x4  ;; 0x4800040c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_17  ;; 0xfffffbff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        LDR      R0,[R0, #+0]
        LDR      R1,??GPIO_init_16  ;; 0xffcfffff
        B.N      ??GPIO_init_18
        DATA
??GPIO_init_3:
        DC32     0xfffffcff
        THUMB
??GPIO_init_18:
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+128
        LSLS     R1,R1,#+3        ;; #+1024
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_10  ;; 0x48000418
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1  ;; 0xff3fffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+15       ;; #+4194304
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_8  ;; 0x48000400
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1  ;; 0xff3fffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+16       ;; #+8388608
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_8+0x4  ;; 0x4800040c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1_1  ;; 0xfffff7ff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1  ;; 0xff3fffff
        B.N      ??GPIO_init_19
        Nop      
        DATA
??GPIO_init_4:
        DC32     0xfcffffff
        THUMB
??GPIO_init_19:
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??GPIO_init_10  ;; 0x48000418
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+20       ;; #+134217728
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1_2  ;; 0xfcffffff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        B.N      ??GPIO_init_20
        Nop      
        DATA
??GPIO_init_5:
        DC32     0xffffefff
        THUMB
??GPIO_init_20:
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1_2  ;; 0xfcffffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+17       ;; #+16777216
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_8+0x4  ;; 0x4800040c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable2  ;; 0xffffefff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1_2  ;; 0xfcffffff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        B.N      ??GPIO_init_21
        DATA
??GPIO_init_6:
        DC32     0xffff7fff
        THUMB
??GPIO_init_21:
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_10  ;; 0x48000418
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8  ;; 0x48000400
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1_3  ;; 0xcfffffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+21       ;; #+268435456
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_8  ;; 0x48000400
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_8+0x4  ;; 0x4800040c
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1_3  ;; 0xcfffffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+21       ;; #+268435456
        ORRS     R0,R0,R1
        LDR      R1,??GPIO_init_8+0x4  ;; 0x4800040c
        STR      R0,[R1, #+0]
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable2_1  ;; 0xffffbfff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_9  ;; 0x48000404
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1_3  ;; 0xcfffffff
        ANDS     R1,R1,R0
        LDR      R0,??GPIO_init_9+0x4  ;; 0x48000408
        B.N      ??GPIO_init_22
        Nop      
        DATA
??GPIO_init_8:
        DC32     0x48000400
        DC32     0x4800040c
        THUMB
??GPIO_init_22:
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+128
        LSLS     R1,R1,#+7        ;; #+16384
        ORRS     R1,R1,R0
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??GPIO_init_10  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??GPIO_init_10  ;; 0x48000418
        B.N      ??GPIO_init_23
        Nop      
        DATA
??GPIO_init_9:
        DC32     0x48000404
        DC32     0x48000408
        THUMB
??GPIO_init_23:
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable2_2  ;; 0x48000800
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1_3  ;; 0xcfffffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+21       ;; #+268435456
        ORRS     R0,R0,R1
        LDR      R1,??DataTable2_2  ;; 0x48000800
        B.N      ??GPIO_init_24
        DATA
??GPIO_init_10:
        DC32     0x48000418
        THUMB
??GPIO_init_24:
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable2_3  ;; 0x4800080c
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1_3  ;; 0xcfffffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+21       ;; #+268435456
        ORRS     R0,R0,R1
        LDR      R1,??DataTable2_3  ;; 0x4800080c
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3  ;; 0x48000804
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable2_1  ;; 0xffffbfff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable3  ;; 0x48000804
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_1  ;; 0x48000808
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable1_3  ;; 0xcfffffff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable3_1  ;; 0x48000808
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_2  ;; 0x48000818
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+128
        LSLS     R1,R1,#+7        ;; #+16384
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_2  ;; 0x48000818
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_2  ;; 0x48000818
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??DataTable3_2  ;; 0x48000818
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_3  ;; 0x48001400
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_3  ;; 0x48001400
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_4  ;; 0x4800140c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_4  ;; 0x4800140c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_5  ;; 0x48001404
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        BICS     R0,R0,R1
        LDR      R1,??DataTable3_5  ;; 0x48001404
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_6  ;; 0x48001408
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        LDR      R1,??DataTable3_6  ;; 0x48001408
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_7  ;; 0x48001418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??DataTable3_7  ;; 0x48001418
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_7  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+9        ;; #+65536
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_7  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_3  ;; 0x48001400
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_3  ;; 0x48001400
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_4  ;; 0x4800140c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_4  ;; 0x4800140c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_5  ;; 0x48001404
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        BICS     R0,R0,R1
        LDR      R1,??DataTable3_5  ;; 0x48001404
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_6  ;; 0x48001408
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        LDR      R1,??DataTable3_6  ;; 0x48001408
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_7  ;; 0x48001418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??DataTable3_7  ;; 0x48001418
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_7  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+10       ;; #+131072
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_7  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_3  ;; 0x48001400
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable3_8  ;; 0xffffcfff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+5        ;; #+4096
        ORRS     R0,R0,R1
        LDR      R1,??DataTable3_3  ;; 0x48001400
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_4  ;; 0x4800140c
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable3_8  ;; 0xffffcfff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+6        ;; #+8192
        ORRS     R0,R0,R1
        LDR      R1,??DataTable3_4  ;; 0x4800140c
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_5  ;; 0x48001404
        LDR      R0,[R0, #+0]
        MOVS     R1,#+64
        BICS     R0,R0,R1
        LDR      R1,??DataTable3_5  ;; 0x48001404
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_6  ;; 0x48001408
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable3_8  ;; 0xffffcfff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable3_6  ;; 0x48001408
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_7  ;; 0x48001418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??DataTable3_7  ;; 0x48001418
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_7  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+15       ;; #+4194304
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_7  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_3  ;; 0x48001400
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable5  ;; 0xffff3fff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+7        ;; #+16384
        ORRS     R0,R0,R1
        LDR      R1,??DataTable3_3  ;; 0x48001400
        B.N      ??GPIO_init_25
        Nop      
        DATA
??GPIO_init_13:
        DC32     0xfffff3ff
        THUMB
??GPIO_init_25:
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_4  ;; 0x4800140c
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable5  ;; 0xffff3fff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+8        ;; #+32768
        ORRS     R0,R0,R1
        LDR      R1,??DataTable3_4  ;; 0x4800140c
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_5  ;; 0x48001404
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        BICS     R0,R0,R1
        LDR      R1,??DataTable3_5  ;; 0x48001404
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_6  ;; 0x48001408
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable5  ;; 0xffff3fff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable3_6  ;; 0x48001408
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_7  ;; 0x48001418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??DataTable3_7  ;; 0x48001418
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_7  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+16       ;; #+8388608
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_7  ;; 0x48001418
        B.N      ??GPIO_init_26
        DATA
??GPIO_init_14:
        DC32     0xfff3ffff
        THUMB
??GPIO_init_26:
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable2_2  ;; 0x48000800
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable6  ;; 0xf3ffffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+19       ;; #+67108864
        ORRS     R0,R0,R1
        LDR      R1,??DataTable2_2  ;; 0x48000800
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable2_3  ;; 0x4800080c
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable6  ;; 0xf3ffffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+20       ;; #+134217728
        ORRS     R0,R0,R1
        LDR      R1,??DataTable2_3  ;; 0x4800080c
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3  ;; 0x48000804
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable7  ;; 0xffffdfff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable3  ;; 0x48000804
        B.N      ??GPIO_init_27
        Nop      
        DATA
??GPIO_init_15:
        DC32     0xfffffdff
        THUMB
??GPIO_init_27:
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_1  ;; 0x48000808
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable6  ;; 0xf3ffffff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable3_1  ;; 0x48000808
        B.N      ??GPIO_init_28
        Nop      
        DATA
??GPIO_init_16:
        DC32     0xffcfffff
        THUMB
??GPIO_init_28:
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable3_2  ;; 0x48000818
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??DataTable3_2  ;; 0x48000818
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable3_2  ;; 0x48000818
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+22       ;; #+536870912
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_2  ;; 0x48000818
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8  ;; 0x40010008
        LDR      R0,[R0, #+0]
        MOVS     R1,#+15
        BICS     R0,R0,R1
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8  ;; 0x40010008
        B.N      ??GPIO_init_29
        Nop      
        DATA
??GPIO_init_17:
        DC32     0xfffffbff
        THUMB
??GPIO_init_29:
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_1  ;; 0x40010400
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_1  ;; 0x40010400
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_2  ;; 0x4001040c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_2  ;; 0x4001040c
        STR      R1,[R0, #+0]
        MOVS     R0,#+128
        LDR      R1,??DataTable8_3  ;; 0xe000e100
        STR      R0,[R1, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0xff3fffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0xfffff7ff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0xfcffffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     0xcfffffff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function Timer_init
          CFI NoCalls
        THUMB
// __interwork __softfp void Timer_init(void)
Timer_init:
        LDR      R0,??DataTable8_4  ;; 0x4002101c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_4  ;; 0x4002101c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_5  ;; 0x40000428
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+7
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_5  ;; 0x40000428
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_6  ;; 0x40000400
        LDR      R0,[R0, #+0]
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_6  ;; 0x40000400
        STR      R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0xffffefff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0xffffbfff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0x48000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     0x4800080c

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ADC_init
          CFI NoCalls
        THUMB
// __interwork __softfp void ADC_init(void)
ADC_init:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R0,??DataTable8_7  ;; 0x40012408
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+24       ;; #-2147483648
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_7  ;; 0x40012408
        STR      R1,[R0, #+0]
??ADC_init_0:
        LDR      R0,??DataTable8_7  ;; 0x40012408
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+31
        CMP      R0,#+0
        BNE      ??ADC_init_0
        LDR      R0,??DataTable8_8  ;; 0x4001240c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+9        ;; #+65536
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_8  ;; 0x4001240c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_9  ;; 0x40012414
        LDR      R0,[R0, #+0]
        MOVS     R1,#+7
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_9  ;; 0x40012414
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_7  ;; 0x40012408
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_7  ;; 0x40012408
        STR      R1,[R0, #+0]
        MOVS     R0,#+0
        LDR      R1,??DataTable8_10  ;; 0x40012428
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable8_8  ;; 0x4001240c
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable7  ;; 0xffffdfff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable8_8  ;; 0x4001240c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_11  ;; 0x40012708
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+15       ;; #+4194304
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_11  ;; 0x40012708
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_12  ;; 0x40012410
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+2        ;; ZeroExtS R0,R0,#+2,#+2
        LSRS     R0,R0,#+2
        MOVS     R1,#+128
        LSLS     R1,R1,#+23       ;; #+1073741824
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_12  ;; 0x40012410
        STR      R1,[R0, #+0]
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3:
        DC32     0x48000804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_1:
        DC32     0x48000808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_2:
        DC32     0x48000818

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_3:
        DC32     0x48001400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_4:
        DC32     0x4800140c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_5:
        DC32     0x48001404

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_6:
        DC32     0x48001408

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_7:
        DC32     0x48001418

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable3_8:
        DC32     0xffffcfff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function SPI_init
          CFI NoCalls
        THUMB
// __interwork __softfp void SPI_init(void)
SPI_init:
        LDR      R0,??DataTable8_13  ;; 0x40021018
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_13  ;; 0x40021018
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_14  ;; 0x40013000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_14  ;; 0x40013000
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_14  ;; 0x40013000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+56
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_14  ;; 0x40013000
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_15  ;; 0x40013004
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable8_16  ;; 0xfffff0ff
        ANDS     R1,R1,R0
        MOVS     R0,#+224
        LSLS     R0,R0,#+3        ;; #+1792
        ORRS     R0,R0,R1
        LDR      R1,??DataTable8_15  ;; 0x40013004
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable8_14  ;; 0x40013000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        BICS     R0,R0,R1
        LDR      R1,??DataTable8_14  ;; 0x40013000
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable8_14  ;; 0x40013000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        BICS     R0,R0,R1
        LDR      R1,??DataTable8_14  ;; 0x40013000
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable8_14  ;; 0x40013000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        BICS     R0,R0,R1
        LDR      R1,??DataTable8_14  ;; 0x40013000
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable8_15  ;; 0x40013004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_15  ;; 0x40013004
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_14  ;; 0x40013000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_14  ;; 0x40013000
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_14  ;; 0x40013000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_14  ;; 0x40013000
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_15  ;; 0x40013004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_15  ;; 0x40013004
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_15  ;; 0x40013004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_15  ;; 0x40013004
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable8_14  ;; 0x40013000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_14  ;; 0x40013000
        STR      R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function SYSTICK_init
          CFI NoCalls
        THUMB
// __interwork __softfp void SYSTICK_init(void)
SYSTICK_init:
        LDR      R0,??DataTable9  ;; 0xe000e014
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        LSLS     R0,R0,#+24
        LDR      R1,??DataTable9_1  ;; 0x270f
        ORRS     R1,R1,R0
        LDR      R0,??DataTable9  ;; 0xe000e014
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_2  ;; 0xe000e018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+24
        LSLS     R0,R0,#+24
        LDR      R1,??DataTable9_2  ;; 0xe000e018
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable9_3  ;; 0xe000e010
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable9_3  ;; 0xe000e010
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable9_3  ;; 0xe000e010
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable9_3  ;; 0xe000e010
        STR      R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0xffff3fff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function ADC_VAL
          CFI NoCalls
        THUMB
// __interwork __softfp unsigned short ADC_VAL(unsigned int)
ADC_VAL:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R1,??DataTable9_4  ;; 0x40012400
        LDR      R1,[R1, #+0]
        MOVS     R2,#+4
        ORRS     R2,R2,R1
        LDR      R1,??DataTable9_4  ;; 0x40012400
        STR      R2,[R1, #+0]
        LDR      R1,??DataTable8_10  ;; 0x40012428
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable8_7  ;; 0x40012408
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable8_7  ;; 0x40012408
        STR      R1,[R0, #+0]
??ADC_VAL_0:
        LDR      R0,??DataTable9_4  ;; 0x40012400
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+29       ;; ZeroExtS R1,R1,#+29,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BEQ      ??ADC_VAL_0
        LDR      R0,??DataTable9_5  ;; 0x40012440
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0xf3ffffff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function SysTick_Handler
          CFI NoCalls
        THUMB
// __interwork __softfp void SysTick_Handler(void)
SysTick_Handler:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R0,??DataTable9_6
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable9_6
        STRH     R0,[R1, #+0]
        LDR      R0,??DataTable9_6
        LDRH     R0,[R0, #+4]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable9_6
        STRH     R0,[R1, #+4]
        LDR      R0,??DataTable9_6
        LDRH     R0,[R0, #+4]
        CMP      R0,#+10
        BLT      ??SysTick_Handler_0
        MOVS     R0,#+0
        LDR      R1,??DataTable9_6
        STRH     R0,[R1, #+4]
        LDR      R0,??DataTable9_6
        LDRH     R0,[R0, #+2]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable9_6
        STRH     R0,[R1, #+2]
??SysTick_Handler_0:
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     0xffffdfff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function EXTI415_Handler
          CFI NoCalls
        THUMB
// __interwork __softfp void EXTI415_Handler(void)
EXTI415_Handler:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function TimeOut
          CFI NoCalls
        THUMB
// __interwork __softfp unsigned char TimeOut(unsigned char, unsigned char)
TimeOut:
        SUBS     R0,R0,R1
        UXTB     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock9

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function TimeOut_16
          CFI NoCalls
        THUMB
// __interwork __softfp unsigned short TimeOut_16(unsigned short, unsigned short)
TimeOut_16:
        SUBS     R0,R0,R1
        UXTH     R0,R0
        BX       LR               ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function spi_byte
          CFI NoCalls
        THUMB
// __interwork __softfp unsigned char spi_byte(unsigned char)
spi_byte:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
??spi_byte_0:
        LDR      R1,??DataTable9_7  ;; 0x40013008
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+24
        BMI      ??spi_byte_0
??spi_byte_1:
        LDR      R1,??DataTable9_7  ;; 0x40013008
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+30
        BPL      ??spi_byte_1
        LDR      R1,??DataTable9_8  ;; 0x4001300c
        STRB     R0,[R1, #+0]
??spi_byte_2:
        LDR      R0,??DataTable9_7  ;; 0x40013008
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+24
        BMI      ??spi_byte_2
??spi_byte_3:
        LDR      R0,??DataTable9_7  ;; 0x40013008
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??spi_byte_3
        LDR      R0,??DataTable9_8  ;; 0x4001300c
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock11

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8:
        DC32     0x40010008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_1:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_2:
        DC32     0x4001040c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_3:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_4:
        DC32     0x4002101c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_5:
        DC32     0x40000428

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_6:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_7:
        DC32     0x40012408

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_8:
        DC32     0x4001240c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_9:
        DC32     0x40012414

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_10:
        DC32     0x40012428

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_11:
        DC32     0x40012708

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_12:
        DC32     0x40012410

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_13:
        DC32     0x40021018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_14:
        DC32     0x40013000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_15:
        DC32     0x40013004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable8_16:
        DC32     0xfffff0ff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function SPI_rw
        THUMB
// __interwork __softfp void SPI_rw(unsigned char, unsigned char, unsigned char *, unsigned char *, unsigned char)
SPI_rw:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R1
        MOVS     R5,R3
        LDR      R1,??DataTable11  ;; 0x48000018
        LDR      R1,[R1, #+0]
        UXTH     R1,R1
        MOVS     R3,#+128
        LSLS     R3,R3,#+13       ;; #+1048576
        ORRS     R3,R3,R1
        LDR      R1,??DataTable11  ;; 0x48000018
        STR      R3,[R1, #+0]
        LDR      R1,[SP, #+16]
        B        ??SPI_rw_0
??SPI_rw_1:
        LDR      R3,??DataTable9_7  ;; 0x40013008
        LDR      R3,[R3, #+0]
        MOVS     R6,R3
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+31
        LSRS     R6,R6,#+31
        CMP      R6,#+0
        BNE      ??SPI_rw_1
??SPI_rw_2:
        LDR      R3,??DataTable9_7  ;; 0x40013008
        LDR      R3,[R3, #+0]
        MOVS     R6,R3
        LSLS     R6,R6,#+30       ;; ZeroExtS R6,R6,#+30,#+31
        LSRS     R6,R6,#+31
        CMP      R6,#+0
        BEQ      ??SPI_rw_2
        LDRB     R3,[R2, #+0]
        LDR      R6,??DataTable9_8  ;; 0x4001300c
        STRB     R3,[R6, #+0]
        UXTB     R1,R1
        CMP      R1,#+0
        BEQ      ??SPI_rw_3
??SPI_rw_4:
        LDR      R3,??DataTable9_7  ;; 0x40013008
        LDR      R3,[R3, #+0]
        LSLS     R3,R3,#+31
        BPL      ??SPI_rw_4
        LDR      R3,??DataTable9_8  ;; 0x4001300c
        LDRB     R3,[R3, #+0]
        LDR      R6,??DataTable10
        STRB     R3,[R6, #+0]
??SPI_rw_3:
        ADDS     R2,R2,#+1
        SUBS     R0,R0,#+1
??SPI_rw_0:
        UXTB     R0,R0
        CMP      R0,#+0
        BNE      ??SPI_rw_1
        MOVS     R0,#+150
        LSLS     R0,R0,#+1        ;; #+300
          CFI FunCall delay_us
        BL       delay_us
        LDR      R0,??DataTable11  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable11  ;; 0x48000018
        STR      R1,[R0, #+0]
        MOVS     R0,#+0
        LDR      R1,??DataTable10
        STRB     R0,[R1, #+0]
        MOVS     R0,#+0
        LDR      R1,??DataTable10_1
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable11  ;; 0x48000018
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+13       ;; #+1048576
        ORRS     R1,R1,R0
        LDR      R0,??DataTable11  ;; 0x48000018
        STR      R1,[R0, #+0]
        UXTB     R4,R4
        CMP      R4,#+0
        BEQ      ??SPI_rw_5
        LDRB     R0,[R5, #+0]
        CMP      R0,#+119
        BNE      ??SPI_rw_6
        B        ??SPI_rw_5
??SPI_rw_7:
        LDR      R0,??DataTable9_7  ;; 0x40013008
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BNE      ??SPI_rw_7
??SPI_rw_8:
        LDR      R0,??DataTable9_7  ;; 0x40013008
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BEQ      ??SPI_rw_8
        MOVS     R0,#+68
        LDR      R1,??DataTable9_8  ;; 0x4001300c
        STRB     R0,[R1, #+0]
??SPI_rw_9:
        LDR      R0,??DataTable9_7  ;; 0x40013008
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??SPI_rw_9
        LDR      R0,??DataTable9_8  ;; 0x4001300c
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable10
        STRB     R0,[R1, #+0]
        MOVS     R0,#+20
          CFI FunCall delay_us
        BL       delay_us
??SPI_rw_10:
        LDR      R0,??DataTable9_7  ;; 0x40013008
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BNE      ??SPI_rw_10
??SPI_rw_11:
        LDR      R0,??DataTable9_7  ;; 0x40013008
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BEQ      ??SPI_rw_11
        MOVS     R0,#+255
        LDR      R1,??DataTable9_8  ;; 0x4001300c
        STRB     R0,[R1, #+0]
??SPI_rw_12:
        LDR      R0,??DataTable9_7  ;; 0x40013008
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??SPI_rw_12
        LDR      R0,??DataTable9_8  ;; 0x4001300c
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable10
        STRB     R0,[R1, #+0]
        MOVS     R0,#+20
          CFI FunCall delay_us
        BL       delay_us
        LDR      R0,??DataTable10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ      ??SPI_rw_6
        LDR      R0,??DataTable10_1
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable10_1
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable11  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable11  ;; 0x48000018
        STR      R1,[R0, #+0]
        MOVS     R0,#+100
          CFI FunCall delay_ms
        BL       delay_ms
        LDR      R0,??DataTable11  ;; 0x48000018
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+13       ;; #+1048576
        ORRS     R1,R1,R0
        LDR      R0,??DataTable11  ;; 0x48000018
        STR      R1,[R0, #+0]
??SPI_rw_6:
        LDR      R0,??DataTable10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BNE      ??SPI_rw_7
??SPI_rw_5:
        UXTB     R4,R4
        CMP      R4,#+0
        BEQ      ??SPI_rw_13
??SPI_rw_14:
        LDR      R0,??DataTable9_7  ;; 0x40013008
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BNE      ??SPI_rw_14
??SPI_rw_15:
        LDR      R0,??DataTable9_7  ;; 0x40013008
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BEQ      ??SPI_rw_15
        LDRB     R0,[R5, #+0]
        LDR      R1,??DataTable9_8  ;; 0x4001300c
        STRB     R0,[R1, #+0]
??SPI_rw_16:
        LDR      R0,??DataTable9_7  ;; 0x40013008
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??SPI_rw_16
        LDR      R0,??DataTable9_8  ;; 0x4001300c
        LDRB     R0,[R0, #+0]
        STRB     R0,[R5, #+0]
        ADDS     R5,R5,#+1
        SUBS     R4,R4,#+1
        B        ??SPI_rw_5
??SPI_rw_13:
        MOVS     R0,#+150
        LSLS     R0,R0,#+1        ;; #+300
          CFI FunCall delay_us
        BL       delay_us
        LDR      R0,??DataTable11  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable11  ;; 0x48000018
        STR      R1,[R0, #+0]
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock12

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     0xe000e014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x270f

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0xe000e018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_3:
        DC32     0xe000e010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_4:
        DC32     0x40012400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_5:
        DC32     0x40012440

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_6:
        DC32     Timers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_7:
        DC32     0x40013008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_8:
        DC32     0x4001300c

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function Radio_init
        THUMB
// __interwork __softfp void Radio_init(void)
Radio_init:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+12
          CFI CFA R13+16
        MOVS     R0,#+0
        MOV      R1,SP
        STRB     R0,[R1, #+4]
        LDR      R0,??DataTable14  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+128
        LSLS     R1,R1,#+4        ;; #+2048
        ORRS     R1,R1,R0
        LDR      R0,??DataTable14  ;; 0x48000418
        STR      R1,[R0, #+0]
          CFI FunCall SI4455_Reset
        BL       SI4455_Reset
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable14_1
        LDR      R2,??DataTable14_2
        MOVS     R1,#+9
        MOVS     R0,#+1
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+10
          CFI FunCall delay_ms
        BL       delay_ms
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable14_1
        LDR      R2,??DataTable14_3
        MOVS     R1,#+8
        MOVS     R0,#+7
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+10
          CFI FunCall delay_ms
        BL       delay_ms
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable14_1
        LDR      R2,??DataTable14_4
        MOVS     R1,#+0
        MOVS     R0,#+114
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+10
          CFI FunCall delay_ms
        BL       delay_ms
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable14_1
        ADD      R2,SP,#+4
        MOVS     R1,#+0
        MOVS     R0,#+1
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+10
          CFI FunCall delay_ms
        BL       delay_ms
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable14_1
        LDR      R2,??DataTable14_5
        MOVS     R1,#+0
        MOVS     R0,#+112
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+10
          CFI FunCall delay_ms
        BL       delay_ms
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable14_1
        LDR      R2,??DataTable14_6
        MOVS     R1,#+2
        MOVS     R0,#+3
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+10
          CFI FunCall delay_ms
        BL       delay_ms
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable14_1
        LDR      R2,??DataTable14_7
        MOVS     R1,#+8
        MOVS     R0,#+7
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        LDR      R2,??DataTable14_8
        MOVS     R1,#+0
        LDR      R0,??DataTable14_8
        LDRB     R0,[R0, #+2]
        ADDS     R0,R0,#+4
        UXTB     R0,R0
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+10
          CFI FunCall delay_ms
        BL       delay_ms
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        LDR      R2,??DataTable14_9
        MOVS     R1,#+0
        LDR      R0,??DataTable14_9
        LDRB     R0,[R0, #+2]
        ADDS     R0,R0,#+4
        UXTB     R0,R0
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+10
          CFI FunCall delay_ms
        BL       delay_ms
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        LDR      R2,??DataTable14_10
        MOVS     R1,#+0
        LDR      R0,??DataTable14_10
        LDRB     R0,[R0, #+2]
        ADDS     R0,R0,#+4
        UXTB     R0,R0
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+10
          CFI FunCall delay_ms
        BL       delay_ms
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        LDR      R2,??DataTable14_11
        MOVS     R1,#+0
        LDR      R0,??DataTable14_11
        LDRB     R0,[R0, #+2]
        ADDS     R0,R0,#+4
        UXTB     R0,R0
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+10
          CFI FunCall delay_ms
        BL       delay_ms
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        LDR      R2,??DataTable15
        MOVS     R1,#+0
        LDR      R0,??DataTable15
        LDRB     R0,[R0, #+2]
        ADDS     R0,R0,#+4
        UXTB     R0,R0
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+10
          CFI FunCall delay_ms
        BL       delay_ms
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable14_1
        LDR      R2,??DataTable15
        LDR      R0,??DataTable15
        LDRB     R1,[R0, #+2]
        ADDS     R1,R1,#+1
        UXTB     R1,R1
        MOVS     R0,#+4
          CFI FunCall SPI_rw
        BL       SPI_rw
        POP      {R0-R2,PC}       ;; return
          CFI EndBlock cfiBlock13

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     CTS_RESP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     ERR_CN

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function f_unlock_erase_page
          CFI NoCalls
        THUMB
// __interwork __softfp void f_unlock_erase_page(void)
f_unlock_erase_page:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R0,??DataTable15_1  ;; 0x45670123
        LDR      R1,??DataTable15_2  ;; 0x40022004
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable15_3  ;; 0xcdef89ab
        LDR      R1,??DataTable15_2  ;; 0x40022004
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable15_4  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable15_4  ;; 0x40022010
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable15_5  ;; 0x8007c00
        LDR      R1,??DataTable15_6  ;; 0x40022014
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable15_4  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable15_4  ;; 0x40022010
        STR      R1,[R0, #+0]
??f_unlock_erase_page_0:
        LDR      R0,??DataTable15_7  ;; 0x4002200c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI      ??f_unlock_erase_page_0
        LDR      R0,??DataTable15_4  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        BICS     R0,R0,R1
        LDR      R1,??DataTable15_4  ;; 0x40022010
        STR      R0,[R1, #+0]
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock14

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable11:
        DC32     0x48000018

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function f_w_array
          CFI NoCalls
        THUMB
// __interwork __softfp void f_w_array(unsigned int, unsigned char *)
f_w_array:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R2,??DataTable15_4  ;; 0x40022010
        LDR      R2,[R2, #+0]
        MOVS     R3,#+1
        ORRS     R3,R3,R2
        LDR      R2,??DataTable15_4  ;; 0x40022010
        STR      R3,[R2, #+0]
??f_w_array_0:
        LDR      R2,??DataTable15_7  ;; 0x4002200c
        LDR      R2,[R2, #+0]
        LSLS     R2,R2,#+31
        BMI      ??f_w_array_0
        LDRB     R2,[R1, #+2]
        LSLS     R2,R2,#+8
        LDRB     R3,[R1, #+3]
        ORRS     R2,R2,R3
        STRH     R2,[R0, #+0]
??f_w_array_1:
        LDR      R2,??DataTable15_7  ;; 0x4002200c
        LDR      R2,[R2, #+0]
        LSLS     R2,R2,#+31
        BMI      ??f_w_array_1
        ADDS     R0,R0,#+2
        LDRB     R2,[R1, #+0]
        LSLS     R2,R2,#+8
        LDRB     R1,[R1, #+1]
        ORRS     R2,R2,R1
        STRH     R2,[R0, #+0]
??f_w_array_2:
        LDR      R0,??DataTable15_7  ;; 0x4002200c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI      ??f_w_array_2
        LDR      R0,??DataTable15_4  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        BICS     R0,R0,R1
        LDR      R1,??DataTable15_4  ;; 0x40022010
        STR      R0,[R1, #+0]
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock15

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function delay_us
          CFI NoCalls
        THUMB
// __interwork __softfp void delay_us(unsigned short)
delay_us:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R1,??DataTable15_8  ;; 0x4000042c
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+16
        UXTH     R0,R0
        ORRS     R1,R1,R0
        LDR      R0,??DataTable15_8  ;; 0x4000042c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable16  ;; 0x40000424
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??DataTable16  ;; 0x40000424
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable16_1  ;; 0x40000410
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        BICS     R0,R0,R1
        LDR      R1,??DataTable16_1  ;; 0x40000410
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable16_2  ;; 0x40000400
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable16_2  ;; 0x40000400
        STR      R1,[R0, #+0]
??delay_us_0:
        LDR      R0,??DataTable16_1  ;; 0x40000410
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??delay_us_0
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock16

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function delay_ms
        THUMB
// __interwork __softfp void delay_ms(int)
delay_ms:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,#+0
        B        ??delay_ms_0
??delay_ms_1:
        LDR      R0,??DataTable16_3  ;; 0x3de
          CFI FunCall delay_us
        BL       delay_us
        ADDS     R5,R5,#+1
??delay_ms_0:
        CMP      R4,R5
        BGE      ??delay_ms_1
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock17

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     0x48000418

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_1:
        DC32     Resp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_2:
        DC32     Part_id

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_3:
        DC32     Pow_up

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_4:
        DC32     B_WRITE_TX_FIFO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_5:
        DC32     B_WRITE_TX_FIFO_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_6:
        DC32     Ez_check

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_7:
        DC32     Gpio_cfg

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_8:
        DC32     B_INT_CTL_ENABLE_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_9:
        DC32     B_FRR_CTL_A_MODE_4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_10:
        DC32     B_EZCONFIG_XO_TUNE_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14_11:
        DC32     SYNC_CONFIG

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function Tamp_Scan
          CFI NoCalls
        THUMB
// __interwork __softfp void Tamp_Scan(void)
Tamp_Scan:
        BX       LR               ;; return
          CFI EndBlock cfiBlock18

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function Contact_Scan
          CFI NoCalls
        THUMB
// __interwork __softfp void Contact_Scan(void)
Contact_Scan:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R0,??DataTable16_4  ;; 0x48000410
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+19
        BMI      ??Contact_Scan_0
        LDR      R0,??DataTable16_5
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable16_6  ;; 0xfffe7fff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable16_5
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable16_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??Contact_Scan_1
        LDR      R0,??DataTable16_8
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable16_8
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable16_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BLT      ??Contact_Scan_1
        LDR      R0,??DataTable16_5
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable16_6  ;; 0xfffe7fff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+9        ;; #+65536
        ORRS     R0,R0,R1
        LDR      R1,??DataTable16_5
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR      R1,??DataTable16_8
        STRB     R0,[R1, #+0]
        B        ??Contact_Scan_1
??Contact_Scan_0:
        LDR      R0,??DataTable16_5
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable16_6  ;; 0xfffe7fff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+8        ;; #+32768
        ORRS     R0,R0,R1
        LDR      R1,??DataTable16_5
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR      R1,??DataTable16_8
        STRB     R0,[R1, #+0]
??Contact_Scan_1:
        LDR      R0,??DataTable16_4  ;; 0x48000410
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BMI      ??Contact_Scan_2
        LDR      R0,??DataTable16_9
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        BICS     R0,R0,R1
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable16_9
        STR      R1,[R0, #+0]
        B        ??Contact_Scan_3
??Contact_Scan_2:
        LDR      R0,??DataTable16_9
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        BICS     R0,R0,R1
        LDR      R1,??DataTable16_9
        STR      R0,[R1, #+0]
??Contact_Scan_3:
        LDR      R0,??DataTable16_10  ;; 0x48000010
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+16
        BMI      ??Contact_Scan_4
        LDR      R0,??DataTable16_9
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable16_11  ;; 0xfffffcff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+1        ;; #+256
        ORRS     R0,R0,R1
        LDR      R1,??DataTable16_9
        STR      R0,[R1, #+0]
        B        ??Contact_Scan_5
??Contact_Scan_4:
        LDR      R0,??DataTable16_9
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable16_11  ;; 0xfffffcff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable16_9
        STR      R1,[R0, #+0]
??Contact_Scan_5:
        LDR      R0,??DataTable16_4  ;; 0x48000410
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BMI      ??Contact_Scan_6
        LDR      R0,??DataTable16_9
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+10
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BNE      ??Contact_Scan_7
        MOVS     R0,#+2
        LDR      R1,??DataTable16_7
        STRB     R0,[R1, #+0]
??Contact_Scan_7:
        LDR      R0,??DataTable16_9
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable17_1  ;; 0xfffff3ff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+3        ;; #+1024
        ORRS     R0,R0,R1
        LDR      R1,??DataTable16_9
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable16_5
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+15
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+2
        BNE      ??Contact_Scan_8
        MOVS     R0,#+1
        LDR      R1,??DataTable16_7
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable16_5
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable17  ;; 0xffe3ffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+12       ;; #+524288
        ORRS     R0,R0,R1
        LDR      R1,??DataTable16_5
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable16_9
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable17_1  ;; 0xfffff3ff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable16_9
        STR      R1,[R0, #+0]
        B        ??Contact_Scan_8
??Contact_Scan_6:
        LDR      R0,??DataTable16_9
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+10
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BEQ      ??Contact_Scan_8
        MOVS     R0,#+0
        LDR      R1,??DataTable16_7
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable16_9
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable17_1  ;; 0xfffff3ff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable16_9
        STR      R1,[R0, #+0]
        MOVS     R0,#+1
        LDR      R1,??DataTable17_7
        STRB     R0,[R1, #+0]
??Contact_Scan_8:
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock19

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     PA_PWR_LVL

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     0x45670123

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     0x40022004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     0xcdef89ab

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     0x40022010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     0x8007c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     0x40022014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     0x4002200c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_8:
        DC32     0x4000042c

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function ADC_Simple
        THUMB
// __interwork __softfp void ADC_Simple(void)
ADC_Simple:
        PUSH     {R4,R6,R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        LDR      R0,??DataTable17_2
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable17_2
        STRH     R0,[R1, #+0]
        MOVS     R0,#+128
        LSLS     R0,R0,#+10       ;; #+131072
          CFI FunCall ADC_VAL
        BL       ADC_VAL
        MOVS     R4,R0
        LDR      R0,??DataTable17_3  ;; 0x1ffff7ba
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        ADR      R2,??DataTable17_4
        LDM      R2,{R2,R3}
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        UXTH     R4,R4
        MOVS     R0,R4
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R6
        MOVS     R1,R7
          CFI FunCall __aeabi_ddiv
        BL       __aeabi_ddiv
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        LDR      R1,??DataTable17_6
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable17_6
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable17_6
        STR      R0,[R1, #+4]
        LDR      R0,??DataTable17_8  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+19       ;; #+67108864
        ORRS     R1,R1,R0
        LDR      R0,??DataTable17_8  ;; 0x48000418
        STR      R1,[R0, #+0]
        MOVS     R0,#+8
          CFI FunCall ADC_VAL
        BL       ADC_VAL
        UXTH     R0,R0
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR      R1,??DataTable17_6
        LDR      R1,[R1, #+0]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R1,#+138
        LSLS     R1,R1,#+23       ;; #+1157627904
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR      R1,??DataTable17_6
        STR      R0,[R1, #+8]
        LDR      R0,??DataTable17_8  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+128
        LSLS     R1,R1,#+3        ;; #+1024
        ORRS     R1,R1,R0
        LDR      R0,??DataTable17_8  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable16_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ      ??ADC_Simple_0
        LDR      R0,??DataTable17_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BEQ      ??ADC_Simple_0
        LDR      R0,??DataTable17_8  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        LDR      R0,??DataTable17_8  ;; 0x48000418
        STR      R1,[R0, #+0]
        MOVS     R0,#+128
        LSLS     R0,R0,#+2        ;; #+512
          CFI FunCall ADC_VAL
        BL       ADC_VAL
        UXTH     R0,R0
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR      R1,??DataTable17_6
        LDR      R1,[R1, #+0]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R1,#+139
        LSLS     R1,R1,#+23       ;; #+1166016512
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR      R1,??DataTable17_6
        STR      R0,[R1, #+12]
        LDR      R0,??DataTable17_8  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+14       ;; #+2097152
        ORRS     R1,R1,R0
        LDR      R0,??DataTable17_8  ;; 0x48000418
        STR      R1,[R0, #+0]
??ADC_Simple_0:
        POP      {R4,R6,R7,PC}    ;; return
          CFI EndBlock cfiBlock20

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     0x40000424

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DC32     0x40000410

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_2:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_3:
        DC32     0x3de

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_4:
        DC32     0x48000410

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_5:
        DC32     Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_6:
        DC32     0xfffe7fff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_7:
        DC32     mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_8:
        DC32     tamp_cn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_9:
        DC32     Element

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_10:
        DC32     0x48000010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_11:
        DC32     0xfffffcff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function ADC_Complex
        THUMB
// __interwork __softfp void ADC_Complex(void)
ADC_Complex:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        SUB      SP,SP,#+12
          CFI CFA R13+32
        MOVS     R0,#+128
        LSLS     R0,R0,#+10       ;; #+131072
          CFI FunCall ADC_VAL
        BL       ADC_VAL
        MOVS     R4,R0
        LDR      R0,??DataTable18_5
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        STR      R0,[SP, #+0]
        STR      R1,[SP, #+4]
        LDR      R0,??DataTable17_3  ;; 0x1ffff7ba
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        ADR      R2,??DataTable17_4
        LDM      R2,{R2,R3}
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        UXTH     R4,R4
        MOVS     R0,R4
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R6
        MOVS     R1,R7
          CFI FunCall __aeabi_ddiv
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
        LDR      R0,??DataTable18_5
        LDR      R0,[R0, #+0]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R4
        MOVS     R1,R5
          CFI FunCall __aeabi_dsub
        BL       __aeabi_dsub
        MOVS     R2,#+0
        LDR      R3,??DataTable18  ;; 0x40340000
          CFI FunCall __aeabi_ddiv
        BL       __aeabi_ddiv
        LDR      R2,[SP, #+0]
        LDR      R3,[SP, #+4]
          CFI FunCall __aeabi_dadd
        BL       __aeabi_dadd
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        LDR      R1,??DataTable18_5
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable18_5
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable18_5
        STR      R0,[R1, #+4]
        LDR      R0,??DataTable17_8  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+19       ;; #+67108864
        ORRS     R1,R1,R0
        LDR      R0,??DataTable17_8  ;; 0x48000418
        STR      R1,[R0, #+0]
        MOVS     R0,#+8
          CFI FunCall ADC_VAL
        BL       ADC_VAL
        UXTH     R0,R0
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR      R1,??DataTable18_5
        LDR      R1,[R1, #+0]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R1,#+138
        LSLS     R1,R1,#+23       ;; #+1157627904
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR      R1,??DataTable18_5
        LDR      R1,[R1, #+8]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        LDR      R1,??DataTable18_2  ;; 0x41a00000
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR      R1,??DataTable18_5
        LDR      R1,[R1, #+8]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR      R1,??DataTable18_5
        STR      R0,[R1, #+8]
        LDR      R0,??DataTable17_8  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+128
        LSLS     R1,R1,#+3        ;; #+1024
        ORRS     R1,R1,R0
        LDR      R0,??DataTable17_8  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable18_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ      ??ADC_Complex_0
        LDR      R0,??DataTable17_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BEQ      ??ADC_Complex_0
        LDR      R0,??DataTable17_8  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        LDR      R0,??DataTable17_8  ;; 0x48000418
        STR      R1,[R0, #+0]
        MOVS     R0,#+128
        LSLS     R0,R0,#+2        ;; #+512
          CFI FunCall ADC_VAL
        BL       ADC_VAL
        UXTH     R0,R0
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR      R1,??DataTable18_5
        LDR      R1,[R1, #+0]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R1,#+139
        LSLS     R1,R1,#+23       ;; #+1166016512
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR      R1,??DataTable18_5
        LDR      R1,[R1, #+12]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        LDR      R1,??DataTable18_2  ;; 0x41a00000
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR      R1,??DataTable18_5
        LDR      R1,[R1, #+12]
          CFI FunCall __aeabi_fadd
        BL       __aeabi_fadd
        LDR      R1,??DataTable18_5
        STR      R0,[R1, #+12]
??ADC_Complex_0:
        POP      {R0-R2,R4-R7,PC}  ;; return
          CFI EndBlock cfiBlock21

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     0xffe3ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     0xfffff3ff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     adc_cn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_3:
        DC32     0x1ffff7ba

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_4:
        DC32     0x66666666,0x400A6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_5:
        DC32     Bind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_6:
        DC32     Volt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_7:
        DC32     mode_change

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_8:
        DC32     0x48000418

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function Bat_ADC_Ctrl
        THUMB
// __interwork __softfp void Bat_ADC_Ctrl(void)
Bat_ADC_Ctrl:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        LDR      R0,??DataTable18_13
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        LDR      R1,??DataTable18_13
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable18_6  ;; 0x48000814
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BPL      ??Bat_ADC_Ctrl_0
        LDR      R0,??DataTable18_5
        LDR      R0,[R0, #+4]
        LDR      R1,??DataTable18_3  ;; 0x401851ec
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS      ??Bat_ADC_Ctrl_1
        LDR      R0,??DataTable18_13
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_13
        STR      R1,[R0, #+0]
??Bat_ADC_Ctrl_1:
        LDR      R0,??DataTable18_5
        LDR      R0,[R0, #+4]
        MOVS     R1,#+252
        LSLS     R1,R1,#+22       ;; #+1056964608
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS      ??Bat_ADC_Ctrl_0
        LDR      R0,??DataTable18_13
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_13
        STR      R1,[R0, #+0]
??Bat_ADC_Ctrl_0:
        LDR      R0,??DataTable18_13
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        LDR      R1,??DataTable18_13
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable18_5
        LDR      R0,[R0, #+8]
        LDR      R1,??DataTable18_3  ;; 0x401851ec
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS      ??Bat_ADC_Ctrl_2
        LDR      R0,??DataTable18_13
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_13
        STR      R1,[R0, #+0]
??Bat_ADC_Ctrl_2:
        LDR      R0,??DataTable18_5
        LDR      R0,[R0, #+4]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        ADR      R2,??DataTable18_4
        LDM      R2,{R2,R3}
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R4,R2
        MOVS     R5,R3
        LDR      R0,??DataTable18_5
        LDR      R0,[R0, #+8]
          CFI FunCall __aeabi_f2d
        BL       __aeabi_f2d
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_cdcmple
        BL       __aeabi_cdcmple
        BCS      ??Bat_ADC_Ctrl_3
        LDR      R0,??DataTable18_13
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_13
        STR      R1,[R0, #+0]
??Bat_ADC_Ctrl_3:
        LDR      R0,??DataTable18_13
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BEQ      ??Bat_ADC_Ctrl_4
        LDR      R0,??DataTable18_6  ;; 0x48000814
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BPL      ??Bat_ADC_Ctrl_5
        LDR      R0,??DataTable18_16  ;; 0x48000818
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+128
        LSLS     R1,R1,#+7        ;; #+16384
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_16  ;; 0x48000818
        STR      R1,[R0, #+0]
??Bat_ADC_Ctrl_5:
        LDR      R0,??DataTable18_7
        LDRH     R0,[R0, #+0]
        CMP      R0,#+10
        BGE      ??Bat_ADC_Ctrl_6
        LDR      R0,??DataTable18_8
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        CMP      R0,#+255
        BNE      ??Bat_ADC_Ctrl_7
??Bat_ADC_Ctrl_6:
        LDR      R0,??DataTable18_16  ;; 0x48000818
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+128
        LSLS     R1,R1,#+7        ;; #+16384
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_16  ;; 0x48000818
        STR      R1,[R0, #+0]
??Bat_ADC_Ctrl_7:
        LDR      R0,??DataTable18_13
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+1
        BNE      ??Bat_ADC_Ctrl_8
        LDR      R0,??DataTable18_11
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_11
        STRB     R1,[R0, #+0]
        LDR      R0,??DataTable18_12
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_12
        STRB     R1,[R0, #+0]
        LDR      R0,??DataTable18_9
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BNE      ??Bat_ADC_Ctrl_8
        MOVS     R0,#+0
        LDR      R1,??DataTable18_10
        STRH     R0,[R1, #+18]
??Bat_ADC_Ctrl_8:
        LDR      R0,??DataTable18_13
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+2
        BNE      ??Bat_ADC_Ctrl_4
        LDR      R0,??DataTable18_11
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_11
        STRB     R1,[R0, #+0]
        LDR      R0,??DataTable18_12
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_12
        STRB     R1,[R0, #+0]
        LDR      R0,??DataTable18_9
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BNE      ??Bat_ADC_Ctrl_4
        MOVS     R0,#+0
        LDR      R1,??DataTable18_10
        STRH     R0,[R1, #+18]
??Bat_ADC_Ctrl_4:
        LDR      R0,??DataTable18_13
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BEQ      ??Bat_ADC_Ctrl_9
        LDR      R0,??DataTable18_11
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_11
        STRB     R1,[R0, #+0]
        LDR      R0,??DataTable18_12
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+32
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_12
        STRB     R1,[R0, #+0]
        LDR      R0,??DataTable18_13
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BNE      ??Bat_ADC_Ctrl_10
        LDR      R0,??DataTable18_16  ;; 0x48000818
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+23       ;; #+1073741824
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_16  ;; 0x48000818
        STR      R1,[R0, #+0]
        B        ??Bat_ADC_Ctrl_9
??Bat_ADC_Ctrl_10:
        LDR      R0,??DataTable18_14
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable18_14
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable18_14
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable18_15
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BCC      ??Bat_ADC_Ctrl_9
        LDR      R0,??DataTable18_16  ;; 0x48000818
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+23       ;; #+1073741824
        ORRS     R1,R1,R0
        LDR      R0,??DataTable18_16  ;; 0x48000818
        STR      R1,[R0, #+0]
??Bat_ADC_Ctrl_9:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock22

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     0x40340000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     0x41a00000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     0x401851ec

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     0xEB851EB8,0x3FDEB851

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     Volt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     0x48000814

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_7:
        DC32     px55

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_8:
        DC32     Bind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_9:
        DC32     Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_10:
        DC32     Timers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_11:
        DC32     data1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_12:
        DC32     state

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_13:
        DC32     Element

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_14:
        DC32     bat2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_15:
        DC32     bat2_cn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_16:
        DC32     0x48000818

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function Alert_Scan
        THUMB
// __interwork __softfp void Alert_Scan(void)
Alert_Scan:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        LDR      R0,??DataTable19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??Alert_Scan_0
        LDR      R0,??DataTable19_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BNE      ??Alert_Scan_1
??Alert_Scan_0:
        LDR      R0,??DataTable19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ      .+4
        B        ??Alert_Scan_2
        LDR      R0,??DataTable20
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+8
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BEQ      .+4
        B        ??Alert_Scan_2
??Alert_Scan_1:
        LDR      R0,??DataTable20_1
        LDR      R4,[R0, #+0]
        LDR      R0,??DataTable20_1
        LDR      R1,[R0, #+12]
        LDR      R0,??DataTable19_2  ;; 0x45af0000
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        MOVS     R5,R0
        MOVS     R0,R4
        LDR      R1,??DataTable20_1
        LDR      R1,[R1, #+12]
          CFI FunCall __aeabi_fsub
        BL       __aeabi_fsub
        MOVS     R1,R0
        MOVS     R0,R5
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR      R1,??DataTable20_1
        STR      R0,[R1, #+16]
        LDR      R0,??DataTable20_1
        LDR      R0,[R0, #+16]
        LDR      R1,??DataTable20_2  ;; 0x46a63e01
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BLS      ??Alert_Scan_3
        LDR      R0,??DataTable20_1
        LDR      R0,[R0, #+16]
        LDR      R1,??DataTable20_3  ;; 0x437a0000
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS      ??Alert_Scan_4
??Alert_Scan_3:
        LDR      R0,??DataTable20_4
        LDRB     R0,[R0, #+1]
        MOVS     R1,#+248
        ANDS     R1,R1,R0
        MOVS     R0,#+3
        ORRS     R0,R0,R1
        LDR      R1,??DataTable20_4
        STRB     R0,[R1, #+1]
??Alert_Scan_4:
        LDR      R0,??DataTable20_1
        LDR      R0,[R0, #+16]
        LDR      R1,??DataTable20_5  ;; 0x43790001
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI      ??Alert_Scan_5
        LDR      R0,??DataTable20_1
        LDR      R0,[R0, #+16]
        LDR      R1,??DataTable20_6  ;; 0x448e8000
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS      ??Alert_Scan_5
        LDR      R0,??DataTable20_4
        LDRB     R0,[R0, #+1]
        MOVS     R1,#+248
        ANDS     R1,R1,R0
        MOVS     R0,#+2
        ORRS     R0,R0,R1
        LDR      R1,??DataTable20_4
        STRB     R0,[R1, #+1]
??Alert_Scan_5:
        LDR      R0,??DataTable20_1
        LDR      R0,[R0, #+16]
        LDR      R1,??DataTable20_7  ;; 0x448e6001
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI      ??Alert_Scan_6
        LDR      R0,??DataTable20_1
        LDR      R0,[R0, #+16]
        LDR      R1,??DataTable20_8  ;; 0x450de000
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS      ??Alert_Scan_6
        LDR      R0,??DataTable20_4
        LDRB     R0,[R0, #+1]
        MOVS     R1,#+248
        ANDS     R1,R1,R0
        MOVS     R0,#+1
        ORRS     R0,R0,R1
        LDR      R1,??DataTable20_4
        STRB     R0,[R1, #+1]
??Alert_Scan_6:
        LDR      R0,??DataTable20_1
        LDR      R0,[R0, #+16]
        LDR      R1,??DataTable20_9  ;; 0x450dd001
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI      ??Alert_Scan_7
        LDR      R0,??DataTable20_1
        LDR      R0,[R0, #+16]
        LDR      R1,??DataTable20_10  ;; 0x46126800
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS      ??Alert_Scan_7
        LDR      R0,??DataTable20_4
        LDRB     R0,[R0, #+1]
        MOVS     R1,#+248
        ANDS     R1,R1,R0
        LDR      R0,??DataTable20_4
        STRB     R1,[R0, #+1]
??Alert_Scan_7:
        LDR      R0,??DataTable20_1
        LDR      R0,[R0, #+16]
        LDR      R1,??DataTable20_11  ;; 0x46126401
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI      ??Alert_Scan_8
        LDR      R0,??DataTable20_1
        LDR      R0,[R0, #+16]
        LDR      R1,??DataTable20_12  ;; 0x465fc000
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS      ??Alert_Scan_8
        LDR      R0,??DataTable20_4
        LDRB     R0,[R0, #+1]
        MOVS     R1,#+248
        ANDS     R1,R1,R0
        MOVS     R0,#+1
        ORRS     R0,R0,R1
        LDR      R1,??DataTable20_4
        STRB     R0,[R1, #+1]
??Alert_Scan_8:
        LDR      R0,??DataTable20_1
        LDR      R0,[R0, #+16]
        LDR      R1,??DataTable20_13  ;; 0x465fbc01
          CFI FunCall __aeabi_cfrcmple
        BL       __aeabi_cfrcmple
        BHI      ??Alert_Scan_9
        LDR      R0,??DataTable20_1
        LDR      R0,[R0, #+16]
        LDR      R1,??DataTable20_14  ;; 0x46a64000
          CFI FunCall __aeabi_cfcmple
        BL       __aeabi_cfcmple
        BCS      ??Alert_Scan_9
        LDR      R0,??DataTable20_4
        LDRB     R0,[R0, #+1]
        MOVS     R1,#+248
        ANDS     R1,R1,R0
        MOVS     R0,#+2
        ORRS     R0,R0,R1
        LDR      R1,??DataTable20_4
        STRB     R0,[R1, #+1]
??Alert_Scan_9:
        LDR      R0,??DataTable20
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+6
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BNE      ??Alert_Scan_10
        LDR      R0,??DataTable20_4
        LDRB     R0,[R0, #+1]
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+0
        BEQ      ??Alert_Scan_10
        LDR      R0,??DataTable20_4
        LDRB     R0,[R0, #+1]
        MOVS     R1,#+248
        ANDS     R1,R1,R0
        MOVS     R0,#+1
        ORRS     R0,R0,R1
        LDR      R1,??DataTable20_4
        STRB     R0,[R1, #+1]
??Alert_Scan_10:
        MOVS     R0,#+0
        LDR      R1,??DataTable21
        STRB     R0,[R1, #+0]
        B        ??Alert_Scan_11
??Alert_Scan_2:
        LDR      R0,??DataTable21_1  ;; 0x48000410
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+22
        BMI      ??Alert_Scan_12
        LDR      R0,??DataTable20_4
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable21_2  ;; 0xfffdffff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable20_4
        STR      R1,[R0, #+0]
        B        ??Alert_Scan_11
??Alert_Scan_12:
        LDR      R0,??DataTable20_4
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+10       ;; #+131072
        ORRS     R1,R1,R0
        LDR      R0,??DataTable20_4
        STR      R1,[R0, #+0]
??Alert_Scan_11:
        LDR      R0,??DataTable20_4
        LDR      R0,[R0, #+0]
        MOVS     R1,#+224
        LSLS     R1,R1,#+10       ;; #+229376
        ANDS     R1,R1,R0
        CMP      R1,#+0
        BNE      ??Alert_Scan_13
        LDR      R0,??DataTable20_4
        LDRB     R0,[R0, #+1]
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+0
        BEQ      ??Alert_Scan_14
??Alert_Scan_13:
        LDR      R0,??DataTable21_3
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable21_3
        STRB     R1,[R0, #+0]
        LDR      R0,??DataTable20_4
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BNE      ??Alert_Scan_15
        MOVS     R0,#+0
        LDR      R1,??DataTable21_4
        STRH     R0,[R1, #+18]
??Alert_Scan_15:
        LDR      R0,??DataTable20_4
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+15
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BEQ      ??Alert_Scan_16
        LDR      R0,??DataTable21_5
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??DataTable21_5
        STRB     R1,[R0, #+0]
??Alert_Scan_16:
        LDR      R0,??DataTable20_4
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+14       ;; ZeroExtS R1,R1,#+14,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BNE      ??Alert_Scan_17
        LDR      R0,??DataTable20_4
        LDRB     R0,[R0, #+1]
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+0
        BEQ      ??Alert_Scan_18
??Alert_Scan_17:
        LDR      R0,??DataTable21_5
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable21_5
        STRB     R1,[R0, #+0]
        B        ??Alert_Scan_18
??Alert_Scan_14:
        MOVS     R0,#+128
        LDR      R1,??DataTable21_3
        STRB     R0,[R1, #+0]
        MOVS     R0,#+0
        LDR      R1,??DataTable21_5
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable21_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+128
        BNE      ??Alert_Scan_19
        LDR      R0,??DataTable21_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??Alert_Scan_18
??Alert_Scan_19:
        LDR      R0,??DataTable21_5
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable21_6
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable21_3
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable22
        STRB     R0,[R1, #+0]
??Alert_Scan_18:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock23

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     Bind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_2:
        DC32     0x45af0000

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock24 Using cfiCommon0
          CFI Function LowPower
        THUMB
// __interwork __softfp void LowPower(void)
LowPower:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        LDR      R0,??DataTable21_7  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable21_7  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable21_7  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+20       ;; #+134217728
        ORRS     R1,R1,R0
        LDR      R0,??DataTable21_7  ;; 0x48000418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_1  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_1  ;; 0xe000ed10
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_2  ;; 0x40007000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_2  ;; 0x40007000
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_2  ;; 0x40007000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_2  ;; 0x40007000
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_3  ;; 0x40007004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_3  ;; 0x40007004
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_2  ;; 0x40007000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_2  ;; 0x40007000
        STR      R1,[R0, #+0]
          CFI FunCall _wfi
        BL       _wfi
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock24

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     Element

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     Volt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_2:
        DC32     0x46a63e01

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_3:
        DC32     0x437a0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_4:
        DC32     Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_5:
        DC32     0x43790001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_6:
        DC32     0x448e8000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_7:
        DC32     0x448e6001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_8:
        DC32     0x450de000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_9:
        DC32     0x450dd001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_10:
        DC32     0x46126800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_11:
        DC32     0x46126401

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_12:
        DC32     0x465fc000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_13:
        DC32     0x465fbc01

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_14:
        DC32     0x46a64000

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock25 Using cfiCommon0
          CFI Function SetAlarm
        THUMB
// __interwork __softfp void SetAlarm(unsigned char)
SetAlarm:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        LDR      R1,??DataTable22_4
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable22_5  ;; 0x40002824
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+202
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_5  ;; 0x40002824
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_5  ;; 0x40002824
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+83
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_5  ;; 0x40002824
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_6  ;; 0x40002808
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable22_7  ;; 0xfffffeff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable22_6  ;; 0x40002808
        STR      R1,[R0, #+0]
??SetAlarm_0:
        LDR      R0,??DataTable22_8  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??SetAlarm_0
        LDR      R0,??DataTable22_9  ;; 0x4000281c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        BICS     R0,R0,R1
        LDR      R1,??DataTable22_9  ;; 0x4000281c
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable22_10  ;; 0x40002800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        LDR      R1,??DataTable22_4
        LDRB     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR      R1,??DataTable22_11
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable22_9  ;; 0x4000281c
        LDR      R4,[R0, #+0]
        MOVS     R0,#+15
        BICS     R4,R4,R0
        LDR      R0,??DataTable22_11
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+10
          CFI FunCall __aeabi_idivmod
        BL       __aeabi_idivmod
        LSLS     R0,R1,#+28       ;; ZeroExtS R0,R1,#+28,#+28
        LSRS     R0,R0,#+28
        ORRS     R0,R0,R4
        LDR      R1,??DataTable22_9  ;; 0x4000281c
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable22_11
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+10
          CFI FunCall __aeabi_idiv
        BL       __aeabi_idiv
        LDR      R1,??DataTable22_11
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable22_11
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable22_10  ;; 0x40002800
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+4
        LSLS     R1,R1,#+29       ;; ZeroExtS R1,R1,#+29,#+29
        LSRS     R1,R1,#+29
        ADDS     R0,R0,R1
        LDR      R1,??DataTable22_9  ;; 0x4000281c
        LDR      R1,[R1, #+0]
        MOVS     R2,#+112
        BICS     R1,R1,R2
        LSLS     R0,R0,#+4
        MOVS     R2,#+112
        ANDS     R2,R2,R0
        ORRS     R2,R2,R1
        LDR      R0,??DataTable22_9  ;; 0x4000281c
        STR      R2,[R0, #+0]
        LDR      R0,??DataTable22_9  ;; 0x4000281c
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        MOVS     R1,#+112
        BICS     R4,R4,R1
        LSRS     R0,R0,#+4
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        MOVS     R1,#+6
          CFI FunCall __aeabi_uidivmod
        BL       __aeabi_uidivmod
        LSLS     R0,R1,#+4
        MOVS     R1,#+112
        ANDS     R1,R1,R0
        ORRS     R1,R1,R4
        LDR      R0,??DataTable22_9  ;; 0x4000281c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_9  ;; 0x4000281c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+8        ;; #+32768
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_9  ;; 0x4000281c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_9  ;; 0x4000281c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+16       ;; #+8388608
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_9  ;; 0x4000281c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_9  ;; 0x4000281c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+24       ;; #-2147483648
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_9  ;; 0x4000281c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_6  ;; 0x40002808
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+5        ;; #+4096
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_6  ;; 0x40002808
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_6  ;; 0x40002808
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_6  ;; 0x40002808
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_5  ;; 0x40002824
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+254
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_5  ;; 0x40002824
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_5  ;; 0x40002824
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+100
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_5  ;; 0x40002824
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_12  ;; 0x40002850
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+9        ;; #+65536
        ADDS     R0,R0,R1
        LDR      R1,??DataTable22_12  ;; 0x40002850
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable22_12  ;; 0x40002850
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LDR      R1,??DataTable23
        STRB     R0,[R1, #+0]
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock25

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     jdang

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_1:
        DC32     0x48000410

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_2:
        DC32     0xfffdffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_3:
        DC32     data1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_4:
        DC32     Timers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_5:
        DC32     state

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_6:
        DC32     state_prev

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_7:
        DC32     0x48000418

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock26 Using cfiCommon0
          CFI Function SetAlarmPeriod
        THUMB
// __interwork __softfp unsigned char SetAlarmPeriod(void)
SetAlarmPeriod:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        LDR      R0,??DataTable22_12  ;; 0x40002850
        LDR      R0,[R0, #+0]
        MOVS     R4,R0
        LSRS     R4,R4,#+16
        MOVS     R5,#+7
        LDR      R0,??DataTable23_1
        LDR      R0,[R0, #+0]
        LDRB     R5,[R0, #+6]
        MOVS     R0,#+2
        LDR      R1,??DataTable23_2
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable23_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??SetAlarmPeriod_0
        LDR      R0,??DataTable23_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BNE      ??SetAlarmPeriod_0
        MOVS     R0,#+20
        LDR      R1,??DataTable23_2
        STRB     R0,[R1, #+0]
??SetAlarmPeriod_0:
        MOVS     R0,#+0
        LDR      R1,??DataTable23_4
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable22_12  ;; 0x40002850
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        LDR      R1,??DataTable22_12  ;; 0x40002850
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable22_12  ;; 0x40002850
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+4
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        LDR      R1,??DataTable23_3
        STRB     R0,[R1, #+0]
        UXTB     R5,R5
        UXTB     R4,R4
        SUBS     R0,R5,R4
        LDR      R1,??DataTable23_2
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BGE      ??SetAlarmPeriod_1
        UXTB     R5,R5
        MOVS     R0,R5
        UXTB     R4,R4
        MOVS     R1,R4
          CFI FunCall __aeabi_idivmod
        BL       __aeabi_idivmod
        CMP      R1,#+0
        BEQ      ??SetAlarmPeriod_2
        UXTB     R5,R5
        MOVS     R0,R5
        LDR      R1,??DataTable23_2
        LDRB     R1,[R1, #+0]
          CFI FunCall __aeabi_idivmod
        BL       __aeabi_idivmod
        LDR      R0,??DataTable23_2
        STRB     R1,[R0, #+0]
??SetAlarmPeriod_2:
        UXTB     R5,R5
        UXTB     R4,R4
        SUBS     R0,R5,R4
        CMP      R0,#+1
        BGE      ??SetAlarmPeriod_1
        LDR      R0,??DataTable23_5  ;; 0x48001418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable23_5  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable23_5  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+10       ;; #+131072
        ORRS     R1,R1,R0
        LDR      R0,??DataTable23_5  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable22_12  ;; 0x40002850
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??DataTable22_12  ;; 0x40002850
        STR      R0,[R1, #+0]
        MOVS     R0,#+1
        LDR      R1,??DataTable23_4
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable22_12  ;; 0x40002850
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable22_12  ;; 0x40002850
        STR      R1,[R0, #+0]
        MOVS     R0,#+2
        LDR      R1,??DataTable23_2
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable23_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??SetAlarmPeriod_1
        LDR      R0,??DataTable23_1
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BNE      ??SetAlarmPeriod_1
        MOVS     R0,#+20
        LDR      R1,??DataTable23_2
        STRB     R0,[R1, #+0]
??SetAlarmPeriod_1:
        LDR      R0,??DataTable22_12  ;; 0x40002850
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+4
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+1
        BNE      ??SetAlarmPeriod_3
        LDR      R0,??DataTable24
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable24_1  ;; 0xffe3ffff
        ANDS     R1,R1,R0
        MOVS     R0,#+192
        LSLS     R0,R0,#+12       ;; #+786432
        ORRS     R0,R0,R1
        LDR      R1,??DataTable24
        STR      R0,[R1, #+0]
??SetAlarmPeriod_3:
        LDR      R0,??DataTable23_2
        LDRB     R0,[R0, #+0]
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock26

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC32     data1_prev

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_1:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_2:
        DC32     0x40007000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_3:
        DC32     0x40007004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_4:
        DC32     sec_unit_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_5:
        DC32     0x40002824

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_6:
        DC32     0x40002808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_7:
        DC32     0xfffffeff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_8:
        DC32     0x4000280c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_9:
        DC32     0x4000281c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_10:
        DC32     0x40002800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_11:
        DC32     sec_t

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_12:
        DC32     0x40002850

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock27 Using cfiCommon0
          CFI Function LED_Ctrl
        THUMB
// __interwork __softfp void LED_Ctrl(void)
LED_Ctrl:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        LDR      R0,??DataTable25
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable25_1
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BEQ      ??LED_Ctrl_0
        LDR      R0,??DataTable25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ      ??LED_Ctrl_1
        BCC      ??LED_Ctrl_2
        CMP      R0,#+3
        BEQ      ??LED_Ctrl_3
        BCC      ??LED_Ctrl_4
        CMP      R0,#+4
        BEQ      ??LED_Ctrl_5
        B        ??LED_Ctrl_2
??LED_Ctrl_1:
        MOVS     R0,#+1
          CFI FunCall LED_off
        BL       LED_off
        MOVS     R0,#+3
        LDR      R1,??DataTable25_2
        STRH     R0,[R1, #+6]
        MOVS     R0,#+70
        LDR      R1,??DataTable25_2
        STRH     R0,[R1, #+8]
        B        ??LED_Ctrl_6
??LED_Ctrl_4:
        MOVS     R0,#+0
          CFI FunCall LED_off
        BL       LED_off
        MOVS     R0,#+3
        LDR      R1,??DataTable25_2
        STRH     R0,[R1, #+0]
        MOVS     R0,#+3
        LDR      R1,??DataTable25_2
        STRH     R0,[R1, #+2]
        MOVS     R0,#+4
        LDR      R1,??DataTable25_2
        STRB     R0,[R1, #+4]
        B        ??LED_Ctrl_6
??LED_Ctrl_3:
        MOVS     R0,#+0
          CFI FunCall LED_off
        BL       LED_off
        MOVS     R0,#+10
        LDR      R1,??DataTable25_2
        STRH     R0,[R1, #+0]
        MOVS     R0,#+0
        LDR      R1,??DataTable25_2
        STRH     R0,[R1, #+2]
        MOVS     R0,#+6
        LDR      R1,??DataTable25_2
        STRB     R0,[R1, #+4]
        B        ??LED_Ctrl_6
??LED_Ctrl_5:
        MOVS     R0,#+1
          CFI FunCall LED_off
        BL       LED_off
        MOVS     R0,#+10
        LDR      R1,??DataTable25_3
        STRH     R0,[R1, #+26]
        MOVS     R0,#+10
        LDR      R1,??DataTable25_2
        STRH     R0,[R1, #+6]
        MOVS     R0,#+0
        LDR      R1,??DataTable25_2
        STRH     R0,[R1, #+8]
        MOVS     R0,#+6
        LDR      R1,??DataTable25_2
        STRB     R0,[R1, #+10]
        B        ??LED_Ctrl_6
??LED_Ctrl_2:
        MOVS     R0,#+4
          CFI FunCall LED_off
        BL       LED_off
??LED_Ctrl_6:
        LDR      R0,??DataTable25
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable25_1
        STRB     R0,[R1, #+0]
??LED_Ctrl_0:
        LDR      R0,??DataTable25_3
        LDRH     R1,[R0, #+28]
        UXTB     R1,R1
        LDR      R0,??DataTable25_3
        LDRH     R0,[R0, #+2]
        UXTB     R0,R0
          CFI FunCall TimeOut
        BL       TimeOut
        LDR      R1,??DataTable25_3
        LDRH     R1,[R1, #+26]
        UXTH     R0,R0
        CMP      R0,R1
        BCS      .+4
        B        ??LED_Ctrl_7
        LDR      R0,??DataTable25
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??LED_Ctrl_8
        MOVS     R0,#+0
        B        ??LED_Ctrl_9
??LED_Ctrl_10:
        LDR      R1,??DataTable23_5  ;; 0x48001418
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+16
        UXTB     R0,R0
        MOVS     R2,R0
        ADDS     R2,R2,#+1
        ORRS     R2,R2,R1
        LDR      R1,??DataTable23_5  ;; 0x48001418
        STR      R2,[R1, #+0]
        LDR      R1,??DataTable25_2
        UXTB     R0,R0
        MOVS     R2,#+6
        MULS     R2,R0,R2
        LDRH     R1,[R1, R2]
        LDR      R2,??DataTable25_3
        STRH     R1,[R2, #+26]
??LED_Ctrl_11:
        LDR      R1,??DataTable25_2
        UXTB     R0,R0
        MOVS     R2,#+6
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+4]
        CMP      R1,#+0
        BEQ      ??LED_Ctrl_12
        LDR      R1,??DataTable25_2
        UXTB     R0,R0
        MOVS     R2,#+6
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+4]
        SUBS     R1,R1,#+1
        LDR      R2,??DataTable25_2
        UXTB     R0,R0
        MOVS     R3,#+6
        MULS     R3,R0,R3
        ADDS     R2,R2,R3
        STRB     R1,[R2, #+4]
        LDR      R1,??DataTable25_2
        UXTB     R0,R0
        MOVS     R2,#+6
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+4]
        CMP      R1,#+0
        BNE      ??LED_Ctrl_12
        MOVS     R1,#+0
        LDR      R2,??DataTable25
        STRB     R1,[R2, #+0]
??LED_Ctrl_12:
        ADDS     R0,R0,#+1
??LED_Ctrl_9:
        UXTB     R0,R0
        CMP      R0,#+3
        BGE      ??LED_Ctrl_13
        LDR      R1,??DataTable25_2
        UXTB     R0,R0
        MOVS     R2,#+6
        MULS     R2,R0,R2
        LDRH     R1,[R1, R2]
        CMP      R1,#+0
        BNE      ??LED_Ctrl_14
        LDR      R1,??DataTable25_2
        UXTB     R0,R0
        MOVS     R2,#+6
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRH     R1,[R1, #+2]
        CMP      R1,#+0
        BNE      ??LED_Ctrl_14
        LDR      R1,??DataTable25_2
        UXTB     R0,R0
        MOVS     R2,#+6
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+4]
        CMP      R1,#+0
        BEQ      ??LED_Ctrl_12
??LED_Ctrl_14:
        LDR      R1,??DataTable26  ;; 0x48001414
        LDR      R1,[R1, #+0]
        UXTH     R1,R1
        UXTB     R0,R0
        MOVS     R2,R0
        ADDS     R2,R2,#+1
        UXTH     R1,R1
        TST      R1,R2
        BEQ      ??LED_Ctrl_10
        LDR      R1,??DataTable23_5  ;; 0x48001418
        LDR      R1,[R1, #+0]
        UXTH     R1,R1
        UXTB     R0,R0
        MOVS     R2,R0
        ADDS     R2,R2,#+1
        LSLS     R2,R2,#+16
        ORRS     R2,R2,R1
        LDR      R1,??DataTable23_5  ;; 0x48001418
        STR      R2,[R1, #+0]
        LDR      R1,??DataTable25_2
        UXTB     R0,R0
        MOVS     R2,#+6
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRH     R1,[R1, #+2]
        LDR      R2,??DataTable25_3
        STRH     R1,[R2, #+26]
        B        ??LED_Ctrl_11
??LED_Ctrl_8:
        LDR      R0,??DataTable23_5  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+9        ;; #+65536
        ORRS     R1,R1,R0
        LDR      R0,??DataTable23_5  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable23_5  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+10       ;; #+131072
        ORRS     R1,R1,R0
        LDR      R0,??DataTable23_5  ;; 0x48001418
        STR      R1,[R0, #+0]
??LED_Ctrl_13:
        LDR      R0,??DataTable25_3
        LDRH     R0,[R0, #+2]
        LDR      R1,??DataTable25_3
        STRH     R0,[R1, #+28]
??LED_Ctrl_7:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock27

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23:
        DC32     cn_bkp

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_1:
        DC32     Bind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_2:
        DC32     period

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_3:
        DC32     mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_4:
        DC32     WakeCause

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23_5:
        DC32     0x48001418

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock28 Using cfiCommon0
          CFI Function LED_Linear
        THUMB
// __interwork __softfp void LED_Linear(void)
LED_Linear:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        LDR      R0,??DataTable24
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+18
        LSLS     R0,R0,#+29       ;; ZeroExtS R0,R0,#+29,#+29
        LSRS     R0,R0,#+29
        CMP      R0,#+1
        BEQ      ??LED_Linear_0
        BCC      ??LED_Linear_1
        CMP      R0,#+3
        BEQ      ??LED_Linear_2
        BCC      ??LED_Linear_3
        CMP      R0,#+4
        BEQ      ??LED_Linear_4
        B        ??LED_Linear_1
??LED_Linear_0:
        B        ??LED_Linear_5
??LED_Linear_3:
        LDR      R0,??DataTable26_1  ;; 0x48001418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable26_1  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable26_1  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+10       ;; #+131072
        ORRS     R1,R1,R0
        LDR      R0,??DataTable26_1  ;; 0x48001418
        STR      R1,[R0, #+0]
        MOVS     R0,#+100
          CFI FunCall delay_ms
        BL       delay_ms
        LDR      R0,??DataTable26_1  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+9        ;; #+65536
        ORRS     R1,R1,R0
        LDR      R0,??DataTable26_1  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable26_1  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+10       ;; #+131072
        ORRS     R1,R1,R0
        LDR      R0,??DataTable26_1  ;; 0x48001418
        STR      R1,[R0, #+0]
        MOVS     R0,#+100
          CFI FunCall delay_ms
        BL       delay_ms
        LDR      R0,??DataTable26_1  ;; 0x48001418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable26_1  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable26_1  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+10       ;; #+131072
        ORRS     R1,R1,R0
        LDR      R0,??DataTable26_1  ;; 0x48001418
        STR      R1,[R0, #+0]
        MOVS     R0,#+100
          CFI FunCall delay_ms
        BL       delay_ms
        B        ??LED_Linear_5
??LED_Linear_2:
        LDR      R0,??DataTable26_1  ;; 0x48001418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable26_1  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable26_1  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+10       ;; #+131072
        ORRS     R1,R1,R0
        LDR      R0,??DataTable26_1  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable27  ;; 0xbb8
          CFI FunCall delay_ms
        BL       delay_ms
        B        ??LED_Linear_5
??LED_Linear_4:
        LDR      R0,??DataTable26_1  ;; 0x48001418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+9        ;; #+65536
        ORRS     R1,R1,R0
        LDR      R0,??DataTable26_1  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable26_1  ;; 0x48001418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable26_1  ;; 0x48001418
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable27  ;; 0xbb8
          CFI FunCall delay_ms
        BL       delay_ms
        B        ??LED_Linear_5
??LED_Linear_1:
        MOVS     R0,#+4
          CFI FunCall LED_off
        BL       LED_off
??LED_Linear_5:
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock28

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     0xffe3ffff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock29 Using cfiCommon0
          CFI Function LED_off
          CFI NoCalls
        THUMB
// __interwork __softfp void LED_off(unsigned char)
LED_off:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R1,#+0
        B        ??LED_off_0
??LED_off_1:
        MOVS     R2,R0
        MOVS     R3,R1
        UXTB     R2,R2
        UXTB     R3,R3
        CMP      R2,R3
        BEQ      ??LED_off_2
        MOVS     R2,#+0
        LDR      R3,??DataTable25_2
        UXTB     R1,R1
        MOVS     R4,#+6
        MULS     R4,R1,R4
        STRH     R2,[R3, R4]
??LED_off_2:
        MOVS     R2,#+0
        LDR      R3,??DataTable25_2
        UXTB     R1,R1
        MOVS     R4,#+6
        MULS     R4,R1,R4
        ADDS     R3,R3,R4
        STRH     R2,[R3, #+2]
        MOVS     R2,#+0
        LDR      R3,??DataTable25_2
        UXTB     R1,R1
        MOVS     R4,#+6
        MULS     R4,R1,R4
        ADDS     R3,R3,R4
        STRB     R2,[R3, #+4]
        ADDS     R1,R1,#+1
??LED_off_0:
        UXTB     R1,R1
        CMP      R1,#+2
        BLT      ??LED_off_1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock29

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     led_mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_1:
        DC32     led_mode_prev

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_2:
        DC32     Lx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_3:
        DC32     Timers

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock30 Using cfiCommon0
          CFI Function BCKR_init
          CFI NoCalls
        THUMB
// __interwork __softfp void BCKR_init(void)
BCKR_init:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R0,??DataTable27_1  ;; 0x40021024
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable27_1  ;; 0x40021024
        STR      R1,[R0, #+0]
??BCKR_init_0:
        LDR      R0,??DataTable27_1  ;; 0x40021024
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+30       ;; ZeroExtS R1,R1,#+30,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BEQ      ??BCKR_init_0
        LDR      R0,??DataTable27_2  ;; 0x4002101c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+21       ;; #+268435456
        ORRS     R1,R1,R0
        LDR      R0,??DataTable27_2  ;; 0x4002101c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable27_3  ;; 0x40007000
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+1        ;; #+256
        ORRS     R1,R1,R0
        LDR      R0,??DataTable27_3  ;; 0x40007000
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable27_4  ;; 0x40002850
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable27_5
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable27_6  ;; 0x40002854
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable27_7
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable27_8  ;; 0x40021020
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+9        ;; #+65536
        ORRS     R1,R1,R0
        LDR      R0,??DataTable27_8  ;; 0x40021020
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable27_8  ;; 0x40021020
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable27_9  ;; 0xfffeffff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable27_8  ;; 0x40021020
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable27_8  ;; 0x40021020
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+8        ;; #+32768
        ORRS     R1,R1,R0
        LDR      R0,??DataTable27_8  ;; 0x40021020
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable27_8  ;; 0x40021020
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable28  ;; 0xfffffcff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+2        ;; #+512
        ORRS     R0,R0,R1
        LDR      R1,??DataTable27_8  ;; 0x40021020
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable30  ;; 0x40002824
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+202
        ORRS     R1,R1,R0
        LDR      R0,??DataTable30  ;; 0x40002824
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable30  ;; 0x40002824
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+83
        ORRS     R1,R1,R0
        LDR      R0,??DataTable30  ;; 0x40002824
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable27_5
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable27_4  ;; 0x40002850
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable27_7
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable27_6  ;; 0x40002854
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable30  ;; 0x40002824
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+254
        ORRS     R1,R1,R0
        LDR      R0,??DataTable30  ;; 0x40002824
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable30  ;; 0x40002824
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+100
        ORRS     R1,R1,R0
        LDR      R0,??DataTable30  ;; 0x40002824
        STR      R1,[R0, #+0]
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock30

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     0x48001414

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_1:
        DC32     0x48001418

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock31 Using cfiCommon0
          CFI Function Tamper_init
          CFI NoCalls
        THUMB
// __interwork __softfp void Tamper_init(void)
Tamper_init:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R0,??DataTable30  ;; 0x40002824
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+202
        ORRS     R1,R1,R0
        LDR      R0,??DataTable30  ;; 0x40002824
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable30  ;; 0x40002824
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+83
        ORRS     R1,R1,R0
        LDR      R0,??DataTable30  ;; 0x40002824
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable29  ;; 0x40002840
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+8        ;; #+32768
        ORRS     R1,R1,R0
        LDR      R0,??DataTable29  ;; 0x40002840
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable29  ;; 0x40002840
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable29_1  ;; 0xfffff8ff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+1        ;; #+256
        ORRS     R0,R0,R1
        LDR      R1,??DataTable29  ;; 0x40002840
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable29  ;; 0x40002840
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable29  ;; 0x40002840
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable29  ;; 0x40002840
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable29  ;; 0x40002840
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable29  ;; 0x40002840
        LDR      R0,[R0, #+0]
        MOVS     R1,#+8
        ORRS     R1,R1,R0
        LDR      R0,??DataTable29  ;; 0x40002840
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable29  ;; 0x40002840
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable29  ;; 0x40002840
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable29  ;; 0x40002840
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+14       ;; #+2097152
        ORRS     R1,R1,R0
        LDR      R0,??DataTable29  ;; 0x40002840
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable31  ;; 0x48000814
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+17
        BPL      ??Tamper_init_0
        LDR      R0,??DataTable29  ;; 0x40002840
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+13       ;; #+1048576
        ORRS     R1,R1,R0
        LDR      R0,??DataTable29  ;; 0x40002840
        STR      R1,[R0, #+0]
        B        ??Tamper_init_1
??Tamper_init_0:
        LDR      R0,??DataTable29  ;; 0x40002840
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable31_1  ;; 0xffefffff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable29  ;; 0x40002840
        STR      R1,[R0, #+0]
??Tamper_init_1:
        LDR      R0,??DataTable29  ;; 0x40002840
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable31_2  ;; 0xffff9fff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+6        ;; #+8192
        ORRS     R0,R0,R1
        LDR      R1,??DataTable29  ;; 0x40002840
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable32  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable32  ;; 0x4000280c
        STR      R1,[R0, #+0]
??Tamper_init_2:
        LDR      R0,??DataTable32  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+25       ;; ZeroExtS R1,R1,#+25,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BEQ      ??Tamper_init_2
        LDR      R0,??DataTable32_1  ;; 0x40002810
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable32_2  ;; 0xff80ffff
        ANDS     R1,R1,R0
        MOVS     R0,#+198
        LSLS     R0,R0,#+15       ;; #+6488064
        ORRS     R0,R0,R1
        LDR      R1,??DataTable32_1  ;; 0x40002810
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable32_1  ;; 0x40002810
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+15
        LSLS     R0,R0,#+15
        MOVS     R1,#+255
        ADDS     R1,R1,#+144      ;; #+399
        ORRS     R1,R1,R0
        LDR      R0,??DataTable32_1  ;; 0x40002810
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable32  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        BICS     R0,R0,R1
        LDR      R1,??DataTable32  ;; 0x4000280c
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable30  ;; 0x40002824
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+254
        ORRS     R1,R1,R0
        LDR      R0,??DataTable30  ;; 0x40002824
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable30  ;; 0x40002824
        LDR      R0,[R0, #+0]
        MOVS     R1,#+255
        BICS     R0,R0,R1
        MOVS     R1,#+100
        ORRS     R1,R1,R0
        LDR      R0,??DataTable30  ;; 0x40002824
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable27_2  ;; 0x4002101c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+21       ;; #+268435456
        ORRS     R1,R1,R0
        LDR      R0,??DataTable27_2  ;; 0x4002101c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable33  ;; 0x40010408
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+10       ;; #+131072
        ORRS     R1,R1,R0
        LDR      R0,??DataTable33  ;; 0x40010408
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable33_1  ;; 0x40010400
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable33_2  ;; 0xff00ffff
        ANDS     R1,R1,R0
        MOVS     R0,#+160
        LSLS     R0,R0,#+12       ;; #+655360
        ORRS     R0,R0,R1
        LDR      R1,??DataTable33_1  ;; 0x40010400
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable33_3  ;; 0x40010404
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable33_2  ;; 0xff00ffff
        ANDS     R1,R1,R0
        MOVS     R0,#+160
        LSLS     R0,R0,#+12       ;; #+655360
        ORRS     R0,R0,R1
        LDR      R1,??DataTable33_3  ;; 0x40010404
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable33  ;; 0x40010408
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+12       ;; #+524288
        ORRS     R1,R1,R0
        LDR      R0,??DataTable33  ;; 0x40010408
        STR      R1,[R0, #+0]
        MOVS     R0,#+6
        LDR      R1,??DataTable33_4  ;; 0x40010088
        STR      R0,[R1, #+0]
        MOVS     R0,#+4
        LDR      R1,??DataTable33_5  ;; 0xe000e100
        STR      R0,[R1, #+0]
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock31

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27:
        DC32     0xbb8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_1:
        DC32     0x40021024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_2:
        DC32     0x4002101c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_3:
        DC32     0x40007000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_4:
        DC32     0x40002850

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_5:
        DC32     bckr_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_6:
        DC32     0x40002854

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_7:
        DC32     bckr_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_8:
        DC32     0x40021020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_9:
        DC32     0xfffeffff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock32 Using cfiCommon0
          CFI Function RTC_Handler
          CFI NoCalls
        THUMB
// __interwork __softfp void RTC_Handler(void)
RTC_Handler:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        LDR      R0,??DataTable32  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+23       ;; ZeroExtS R1,R1,#+23,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BEQ      ??RTC_Handler_0
        LDR      R0,??DataTable32  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable33_6  ;; 0xfffffeff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable32  ;; 0x4000280c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable33_7  ;; 0x40010414
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable33_8  ;; 0xfffcffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+10       ;; #+131072
        ORRS     R0,R0,R1
        LDR      R1,??DataTable33_7  ;; 0x40010414
        STR      R0,[R1, #+0]
??RTC_Handler_0:
        LDR      R0,??DataTable32  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+18       ;; ZeroExtS R1,R1,#+18,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BNE      ??RTC_Handler_1
        LDR      R0,??DataTable32  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+17       ;; ZeroExtS R1,R1,#+17,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BNE      ??RTC_Handler_1
        LDR      R0,??DataTable32  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+16       ;; ZeroExtS R1,R1,#+16,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BEQ      ??RTC_Handler_2
??RTC_Handler_1:
        LDR      R0,??DataTable32  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable33_9  ;; 0xffffdfff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable32  ;; 0x4000280c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable32  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable33_10  ;; 0xffffbfff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable32  ;; 0x4000280c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable32  ;; 0x4000280c
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable33_11  ;; 0xfffff7ff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable32  ;; 0x4000280c
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable33_7  ;; 0x40010414
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+12       ;; #+524288
        ORRS     R1,R1,R0
        LDR      R0,??DataTable33_7  ;; 0x40010414
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable33_12  ;; 0x40021014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+15       ;; #+4194304
        ORRS     R1,R1,R0
        LDR      R0,??DataTable33_12  ;; 0x40021014
        STR      R1,[R0, #+0]
??RTC_Handler_2:
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock32

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28:
        DC32     0xfffffcff

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock33 Using cfiCommon0
          CFI Function _wfi
          CFI NoCalls
        THUMB
// __interwork __softfp void _wfi(void)
_wfi:
        wfi
        BX       LR               ;; return
          CFI EndBlock cfiBlock33

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock34 Using cfiCommon0
          CFI Function fifo_buf_erase
          CFI NoCalls
        THUMB
// __interwork __softfp void fifo_buf_erase(void)
fifo_buf_erase:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        MOVS     R0,#+0
        B        ??fifo_buf_erase_0
??fifo_buf_erase_1:
        MOVS     R1,#+255
        LDR      R2,??DataTable33_13
        STRB     R1,[R2, R0]
        ADDS     R0,R0,#+1
??fifo_buf_erase_0:
        CMP      R0,#+128
        BLT      ??fifo_buf_erase_1
        POP      {PC}             ;; return
          CFI EndBlock cfiBlock34

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29:
        DC32     0x40002840

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_1:
        DC32     0xfffff8ff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock35 Using cfiCommon0
          CFI Function Null_struct
          CFI NoCalls
        THUMB
// __interwork __softfp void Null_struct(unsigned char *, unsigned char)
Null_struct:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R2,#+0
        B        ??Null_struct_0
??Null_struct_1:
        MOVS     R3,#+0
        UXTB     R2,R2
        STRB     R3,[R0, R2]
        ADDS     R2,R2,#+1
??Null_struct_0:
        MOVS     R3,R1
        MOVS     R4,R2
        UXTB     R3,R3
        UXTB     R4,R4
        CMP      R3,R4
        BCS      ??Null_struct_1
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock35

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock36 Using cfiCommon0
          CFI Function IWDG_Set
          CFI NoCalls
        THUMB
// __interwork __softfp void IWDG_Set(unsigned char)
IWDG_Set:
        LDR      R1,??DataTable33_14  ;; 0x40003000
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+16
        LDR      R2,??DataTable33_15  ;; 0x5555
        ORRS     R2,R2,R1
        LDR      R1,??DataTable33_14  ;; 0x40003000
        STR      R2,[R1, #+0]
        LDR      R1,??DataTable33_16  ;; 0x40003004
        LDR      R1,[R1, #+0]
        MOVS     R2,#+7
        BICS     R1,R1,R2
        MOVS     R2,#+6
        ORRS     R2,R2,R1
        LDR      R1,??DataTable33_16  ;; 0x40003004
        STR      R2,[R1, #+0]
        LDR      R1,??DataTable33_17  ;; 0x40003008
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+12
        LSLS     R1,R1,#+12
        UXTB     R0,R0
        MOVS     R2,#+156
        MULS     R0,R2,R0
        LSLS     R0,R0,#+20       ;; ZeroExtS R0,R0,#+20,#+20
        LSRS     R0,R0,#+20
        ORRS     R0,R0,R1
        LDR      R1,??DataTable33_17  ;; 0x40003008
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable33_14  ;; 0x40003000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??DataTable33_18  ;; 0xaaaa
        ORRS     R1,R1,R0
        LDR      R0,??DataTable33_14  ;; 0x40003000
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable33_14  ;; 0x40003000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??DataTable33_19  ;; 0xcccc
        ORRS     R1,R1,R0
        LDR      R0,??DataTable33_14  ;; 0x40003000
        STR      R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock36

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable30:
        DC32     0x40002824
//    4 #include "radio.c"

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock37 Using cfiCommon0
          CFI Function SI4455_Reset
        THUMB
// __interwork __softfp void SI4455_Reset(void)
SI4455_Reset:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        LDR      R0,??DataTable34  ;; 0x48000418
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable34  ;; 0x48000418
        STR      R1,[R0, #+0]
        MOVS     R0,#+20
          CFI FunCall delay_us
        BL       delay_us
        LDR      R0,??DataTable34  ;; 0x48000418
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+11       ;; #+262144
        ORRS     R1,R1,R0
        LDR      R0,??DataTable34  ;; 0x48000418
        STR      R1,[R0, #+0]
        MOVS     R0,#+45
          CFI FunCall delay_us
        BL       delay_us
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock37

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31:
        DC32     0x48000814

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_1:
        DC32     0xffefffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable31_2:
        DC32     0xffff9fff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock38 Using cfiCommon0
          CFI Function CRC16_hy
          CFI NoCalls
        THUMB
// __interwork __softfp unsigned int CRC16_hy(unsigned char *, unsigned char)
CRC16_hy:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        MOVS     R2,R0
        MOVS     R3,R1
        LDR      R1,??DataTable34_1  ;; 0xffff
        MOVS     R4,#+0
        B        ??CRC16_hy_0
??CRC16_hy_1:
        ADDS     R4,R4,#+1
??CRC16_hy_0:
        MOVS     R0,R4
        MOVS     R5,R3
        UXTB     R0,R0
        UXTB     R5,R5
        CMP      R0,R5
        BCS      ??CRC16_hy_2
        UXTB     R4,R4
        LDRB     R0,[R2, R4]
        LSLS     R0,R0,#+8
        EORS     R0,R0,R1
        MOVS     R1,R0
        MOVS     R0,#+0
        B        ??CRC16_hy_3
??CRC16_hy_4:
        LSLS     R1,R1,#+1
??CRC16_hy_5:
        ADDS     R0,R0,#+1
??CRC16_hy_3:
        UXTB     R0,R0
        CMP      R0,#+8
        BGE      ??CRC16_hy_1
        LSLS     R5,R1,#+16
        BPL      ??CRC16_hy_4
        UXTH     R1,R1
        LSLS     R5,R1,#+1
        LDR      R1,??DataTable35  ;; 0x1021
        EORS     R1,R1,R5
        B        ??CRC16_hy_5
??CRC16_hy_2:
        UXTH     R1,R1
        LSLS     R0,R1,#+8
        UXTH     R1,R1
        LSRS     R1,R1,#+8
        UXTH     R1,R1
        ADDS     R1,R0,R1
        UXTH     R1,R1
        MOVS     R0,R1
        POP      {R4,R5,PC}       ;; return
          CFI EndBlock cfiBlock38

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32:
        DC32     0x4000280c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_1:
        DC32     0x40002810

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable32_2:
        DC32     0xff80ffff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock39 Using cfiCommon0
          CFI Function Encrypt
          CFI NoCalls
        THUMB
// __interwork __softfp void Encrypt(unsigned char *, unsigned char *, unsigned char, unsigned char, unsigned char)
Encrypt:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        MOVS     R4,#+0
        LDR      R5,[SP, #+20]
        B        ??Encrypt_0
??Encrypt_1:
        MOVS     R6,R3
        MOVS     R7,R5
        UXTB     R6,R6
        UXTB     R7,R7
        CMP      R6,R7
        BCC      ??Encrypt_2
        MOVS     R3,#+0
??Encrypt_2:
        UXTB     R4,R4
        LDRB     R6,[R0, R4]
        UXTB     R3,R3
        LDRB     R7,[R1, R3]
        EORS     R7,R7,R6
        UXTB     R4,R4
        STRB     R7,[R0, R4]
        ADDS     R3,R3,#+1
        ADDS     R4,R4,#+1
??Encrypt_0:
        MOVS     R6,R4
        MOVS     R7,R2
        UXTB     R6,R6
        UXTB     R7,R7
        CMP      R6,R7
        BCC      ??Encrypt_1
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock39

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock40 Using cfiCommon0
          CFI Function Encrypt_PRG_hy
        THUMB
// __interwork __softfp void Encrypt_PRG_hy(unsigned char *, unsigned char)
Encrypt_PRG_hy:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+8
          CFI CFA R13+24
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R4,#+0
        B        ??Encrypt_PRG_hy_0
??Encrypt_PRG_hy_1:
        MOVS     R0,#+8
        STR      R0,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3
        MOVS     R2,#+8
        LDR      R1,??DataTable36
        UXTB     R4,R4
        MOVS     R0,#+8
        MULS     R0,R4,R0
        ADDS     R0,R6,R0
          CFI FunCall Encrypt
        BL       Encrypt
        ADDS     R4,R4,#+1
??Encrypt_PRG_hy_0:
        UXTB     R4,R4
        CMP      R4,#+6
        BLT      ??Encrypt_PRG_hy_1
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock40

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33:
        DC32     0x40010408

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_1:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_2:
        DC32     0xff00ffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_3:
        DC32     0x40010404

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_4:
        DC32     0x40010088

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_5:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_6:
        DC32     0xfffffeff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_7:
        DC32     0x40010414

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_8:
        DC32     0xfffcffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_9:
        DC32     0xffffdfff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_10:
        DC32     0xffffbfff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_11:
        DC32     0xfffff7ff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_12:
        DC32     0x40021014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_13:
        DC32     `data`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_14:
        DC32     0x40003000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_15:
        DC32     0x5555

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_16:
        DC32     0x40003004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_17:
        DC32     0x40003008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_18:
        DC32     0xaaaa

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable33_19:
        DC32     0xcccc

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock41 Using cfiCommon0
          CFI Function Encrypt_TX_RU2
        THUMB
// __interwork __softfp void Encrypt_TX_RU2(unsigned char *, unsigned char *, unsigned char *, unsigned char, unsigned char, unsigned char)
Encrypt_TX_RU2:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R6,R0
        MOVS     R7,R2
        MOVS     R5,R3
        LDR      R4,[SP, #+28]
        MOVS     R0,#+32
        STR      R0,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3
        MOVS     R2,R4
        UXTB     R2,R2
        MOVS     R0,R6
          CFI FunCall Encrypt
        BL       Encrypt
        STRB     R5,[R6, #+6]
        MOVS     R0,#+8
        STR      R0,[SP, #+0]
        LDR      R3,[SP, #+24]
        MOVS     R2,R4
        UXTB     R2,R2
        MOVS     R1,R7
        MOVS     R0,R6
          CFI FunCall Encrypt
        BL       Encrypt
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock41

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock42 Using cfiCommon0
          CFI Function Encrypt_RX_RU2
        THUMB
// __interwork __softfp unsigned char Encrypt_RX_RU2(unsigned char *, unsigned char *, unsigned char *, unsigned char *, unsigned char, unsigned char)
Encrypt_RX_RU2:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R5,R0
        MOVS     R7,R1
        MOVS     R1,R2
        MOVS     R6,R3
        LDR      R4,[SP, #+28]
        MOVS     R0,#+8
        STR      R0,[SP, #+0]
        LDR      R3,[SP, #+24]
        MOVS     R2,R4
        UXTB     R2,R2
        MOVS     R0,R5
          CFI FunCall Encrypt
        BL       Encrypt
        LDRB     R0,[R5, #+0]
        STRB     R0,[R6, #+0]
        MOVS     R0,#+32
        STR      R0,[SP, #+0]
        LDRB     R3,[R6, #+0]
        MOVS     R2,R4
        UXTB     R2,R2
        MOVS     R1,R7
        MOVS     R0,R5
          CFI FunCall Encrypt
        BL       Encrypt
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
        MOVS     R1,R4
        UXTB     R1,R1
        MOVS     R0,R5
          CFI FunCall CRC16_hy
        BL       CRC16_hy
        CMP      R0,#+0
        BNE      ??Encrypt_RX_RU2_0
        MOVS     R0,#+1
        B        ??Encrypt_RX_RU2_1
??Encrypt_RX_RU2_0:
        MOVS     R0,#+0
??Encrypt_RX_RU2_1:
        POP      {R1,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock42

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock43 Using cfiCommon0
          CFI Function PackSend
        THUMB
// __interwork __softfp unsigned char PackSend(unsigned char *)
PackSend:
        PUSH     {R2-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R0,#+102
        STRB     R0,[R4, #+0]
        MOVS     R0,#+170
        STRB     R0,[R4, #+1]
        MOVS     R0,#+170
        STRB     R0,[R4, #+2]
        MOVS     R0,#+170
        STRB     R0,[R4, #+3]
        MOVS     R0,#+45
        STRB     R0,[R4, #+4]
        MOVS     R0,#+43
        STRB     R0,[R4, #+5]
        LDR      R0,??DataTable36_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??PackSend_0
        MOVS     R0,#+12
        LDR      R1,??DataTable37
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable37
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+6]
        MOVS     R0,#+1
        STRB     R0,[R4, #+7]
        LDR      R0,??DataTable36_2
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+0]
        STRB     R0,[R4, #+8]
        LDR      R0,??DataTable36_2
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+1]
        STRB     R0,[R4, #+9]
        LDR      R0,??DataTable36_2
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+2]
        STRB     R0,[R4, #+10]
        LDR      R0,??DataTable36_2
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        STRB     R0,[R4, #+11]
        LDR      R0,??DataTable36_3
        LDRB     R0,[R0, #+0]
        STRB     R0,[R4, #+12]
        LDR      R0,??DataTable36_4
        LDRB     R0,[R0, #+0]
        STRB     R0,[R4, #+13]
        MOVS     R0,#+0
        STRB     R0,[R4, #+14]
        MOVS     R0,#+7
        STRB     R0,[R4, #+15]
        MOVS     R1,#+8
        MOVS     R0,R4
        ADDS     R0,R0,#+8
          CFI FunCall CRC16_hy
        BL       CRC16_hy
        MOVS     R1,R0
        STRB     R1,[R4, #+16]
        LSRS     R0,R0,#+8
        STRB     R0,[R4, #+17]
        MOVS     R0,#+182
        LDR      R1,??DataTable36_5
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable37
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+2
        UXTB     R0,R0
        STR      R0,[SP, #+4]
        LDR      R0,??DataTable37_1
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        LDR      R0,??DataTable36_6
        LDRB     R3,[R0, #+0]
        LDR      R2,??DataTable36
        LDR      R1,??DataTable36_5
        MOVS     R0,R4
        ADDS     R0,R0,#+8
          CFI FunCall Encrypt_TX_RU2
        BL       Encrypt_TX_RU2
        LDR      R0,??DataTable37
        LDRB     R0,[R0, #+0]
        SUBS     R1,R0,#+1
        UXTB     R1,R1
        ADDS     R0,R4,#+7
          CFI FunCall CRC16_hy
        BL       CRC16_hy
        B        ??PackSend_1
??PackSend_0:
        MOVS     R0,#+8
        LDR      R1,??DataTable37
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable37
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        STRB     R0,[R4, #+6]
        LDR      R0,??DataTable36_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE      ??PackSend_2
        MOVS     R0,#+2
        STRB     R0,[R4, #+7]
        B        ??PackSend_3
??PackSend_2:
        MOVS     R0,#+1
        STRB     R0,[R4, #+7]
??PackSend_3:
        LDR      R0,??DataTable37_2
        LDRB     R0,[R0, #+0]
        STRB     R0,[R4, #+8]
        LDR      R0,??DataTable36_2
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+3]
        STRB     R0,[R4, #+9]
        LDR      R0,??DataTable36_2
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
        STRB     R0,[R4, #+10]
        LDR      R0,??DataTable37_3
        LDRB     R0,[R0, #+0]
        STRB     R0,[R4, #+11]
        MOVS     R1,#+4
        MOVS     R0,R4
        ADDS     R0,R0,#+8
          CFI FunCall CRC16_hy
        BL       CRC16_hy
        MOVS     R1,R0
        STRB     R1,[R4, #+12]
        LSRS     R0,R0,#+8
        STRB     R0,[R4, #+13]
        MOVS     R0,#+115
        LDR      R1,??DataTable36
        STRB     R0,[R1, #+0]
        MOVS     R0,#+8
        STR      R0,[SP, #+0]
        LDR      R0,??DataTable37_1
        LDRB     R3,[R0, #+0]
        LDR      R0,??DataTable37
        LDRB     R0,[R0, #+0]
        SUBS     R2,R0,#+2
        UXTB     R2,R2
        LDR      R1,??DataTable36
        MOVS     R0,R4
        ADDS     R0,R0,#+8
          CFI FunCall Encrypt
        BL       Encrypt
        LDR      R0,??DataTable37
        LDRB     R0,[R0, #+0]
        SUBS     R1,R0,#+1
        UXTB     R1,R1
        ADDS     R0,R4,#+7
          CFI FunCall CRC16_hy
        BL       CRC16_hy
        LDR      R1,??DataTable36_1
        LDRB     R1,[R1, #+0]
        CMP      R1,#+2
        BNE      ??PackSend_1
        MOVS     R1,#+2
        STRB     R1,[R4, #+7]
??PackSend_1:
        MOVS     R1,R0
        LDR      R2,??DataTable37
        LDRB     R2,[R2, #+0]
        ADDS     R2,R4,R2
        STRB     R1,[R2, #+6]
        LSRS     R0,R0,#+8
        LDR      R1,??DataTable37
        LDRB     R1,[R1, #+0]
        ADDS     R1,R4,R1
        STRB     R0,[R1, #+7]
        LDR      R0,??DataTable37
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+8
        UXTB     R0,R0
        POP      {R1,R2,R4,PC}    ;; return
          CFI EndBlock cfiBlock43

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34:
        DC32     0x48000418

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable34_1:
        DC32     0xffff

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock44 Using cfiCommon0
          CFI Function Start_Tx
        THUMB
// __interwork __softfp void Start_Tx(unsigned char *, unsigned char, unsigned char)
Start_Tx:
        PUSH     {R2-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+24
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R4,R2
        LDR      R0,??DataTable36_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ      ??Start_Tx_0
        LDR      R0,??DataTable36_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE      ??Start_Tx_1
??Start_Tx_0:
        MOVS     R4,#+5
??Start_Tx_1:
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable37_4
        LDR      R2,??DataTable37_5
        MOVS     R1,#+9
        MOVS     R0,#+4
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        ADD      R3,SP,#+4
        MOVS     R2,R6
        MOVS     R1,#+0
        MOVS     R0,R5
        ADDS     R0,R0,#+2
        UXTB     R0,R0
          CFI FunCall SPI_rw
        BL       SPI_rw
        LDR      R0,??DataTable37_6
        STRB     R4,[R0, #+1]
        LDR      R0,??DataTable37_6
        STRB     R5,[R0, #+4]
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable37_7
        LDR      R2,??DataTable37_6
        MOVS     R1,#+1
        MOVS     R0,#+6
          CFI FunCall SPI_rw
        BL       SPI_rw
        LDR      R0,??DataTable37_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        LDR      R1,??DataTable37_8
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR      R1,??DataTable37_9
        STRH     R0,[R1, #+0]
??Start_Tx_2:
        LDR      R0,??DataTable37_9
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable37_9
        STRH     R0,[R1, #+0]
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable37_4
        LDR      R2,??DataTable37_5
        MOVS     R1,#+9
        MOVS     R0,#+1
          CFI FunCall SPI_rw
        BL       SPI_rw
        LDR      R0,??DataTable37_9
        LDRH     R0,[R0, #+0]
        CMP      R0,#+15
        BGE      ??Start_Tx_3
??Start_Tx_4:
        LDR      R0,??DataTable37_5
        LDRB     R0,[R0, #+8]
        LSLS     R0,R0,#+26
        BPL      ??Start_Tx_2
??Start_Tx_3:
        LDR      R0,??DataTable37_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable37_8
        STR      R1,[R0, #+0]
        POP      {R0,R1,R4-R6,PC}  ;; return
          CFI EndBlock cfiBlock44

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable35:
        DC32     0x1021

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock45 Using cfiCommon0
          CFI Function Start_Rx
        THUMB
// __interwork __softfp void Start_Rx(unsigned char)
Start_Rx:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+8
          CFI CFA R13+16
        LDR      R1,??DataTable36_1
        LDRB     R1,[R1, #+0]
        CMP      R1,#+1
        BEQ      ??Start_Rx_0
        LDR      R1,??DataTable36_1
        LDRB     R1,[R1, #+0]
        CMP      R1,#+2
        BNE      ??Start_Rx_1
??Start_Rx_0:
        MOVS     R0,#+5
??Start_Rx_1:
        LDR      R1,??DataTable37_10
        STRB     R0,[R1, #+1]
        MOVS     R0,#+64
        LDR      R1,??DataTable37_10
        STRB     R0,[R1, #+4]
        MOVS     R4,#+0
        B        ??Start_Rx_2
??Start_Rx_3:
        LDR      R0,??DataTable37_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        LDR      R1,??DataTable37_8
        STR      R0,[R1, #+0]
        ADDS     R4,R4,#+1
??Start_Rx_2:
        CMP      R4,#+6
        BGE      ??Start_Rx_4
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable37_11
        LDR      R2,??DataTable37_10
        MOVS     R1,#+1
        MOVS     R0,#+8
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable37_12
        LDR      R2,??DataTable37_13
        MOVS     R1,#+3
        MOVS     R0,#+1
          CFI FunCall SPI_rw
        BL       SPI_rw
        LDR      R0,??DataTable37_13
        LDRB     R0,[R0, #+2]
        LSLS     R0,R0,#+28
        BPL      ??Start_Rx_3
        LDR      R0,??DataTable37_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable37_8
        STR      R1,[R0, #+0]
??Start_Rx_4:
        POP      {R0,R1,R4,PC}    ;; return
          CFI EndBlock cfiBlock45

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36:
        DC32     EKEY_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_1:
        DC32     mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_2:
        DC32     Bind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_3:
        DC32     data1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_4:
        DC32     data2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_5:
        DC32     EKEY_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_6:
        DC32     arrow_1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock46 Using cfiCommon0
          CFI Function Read_Fifo
        THUMB
// __interwork __softfp void Read_Fifo(unsigned char *)
Read_Fifo:
        PUSH     {R4,R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+12
        SUB      SP,SP,#+12
          CFI CFA R13+24
        MOVS     R5,R0
        MOVS     R0,#+0
        MOV      R1,SP
        STRB     R0,[R1, #+4]
        LDR      R0,??DataTable37_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+48
        BICS     R0,R0,R1
        LDR      R1,??DataTable37_8
        STR      R0,[R1, #+0]
        MOVS     R4,#+0
        B        ??Read_Fifo_0
??Read_Fifo_1:
        ADDS     R4,R4,#+1
??Read_Fifo_0:
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable37_4
        LDR      R2,??DataTable37_5
        MOVS     R1,#+9
        MOVS     R0,#+1
          CFI FunCall SPI_rw
        BL       SPI_rw
        LDR      R0,??DataTable37_5
        LDRB     R0,[R0, #+7]
        LSLS     R0,R0,#+27
        BMI      ??Read_Fifo_2
        CMP      R4,#+255
        BLE      ??Read_Fifo_1
??Read_Fifo_2:
        LDR      R0,??DataTable37_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+48
        BICS     R0,R0,R1
        MOVS     R1,#+16
        ORRS     R1,R1,R0
        LDR      R0,??DataTable37_8
        STR      R1,[R0, #+0]
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable37_4
        LDR      R2,??DataTable37_5
        MOVS     R1,#+9
        MOVS     R0,#+4
          CFI FunCall SPI_rw
        BL       SPI_rw
        LDR      R0,??DataTable37_8
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+4
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BEQ      ??Read_Fifo_3
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable37_14
        LDR      R2,??DataTable37_15
        MOVS     R1,#+3
        MOVS     R0,#+1
          CFI FunCall SPI_rw
        BL       SPI_rw
        LDR      R0,??DataTable37_15
        LDRB     R0,[R0, #+3]
        LDR      R1,??DataTable37_16
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable37_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+129
        BLT      ??Read_Fifo_4
        MOVS     R0,#+128
        LDR      R1,??DataTable37_16
        STRB     R0,[R1, #+0]
??Read_Fifo_4:
        MOVS     R0,#+119
        STRB     R0,[R5, #+0]
        LDRB     R0,[R5, #+0]
        MOV      R1,SP
        STRB     R0,[R1, #+4]
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,R5
        ADD      R2,SP,#+4
        LDR      R0,??DataTable37_16
        LDRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        UXTB     R1,R1
        MOVS     R0,#+0
          CFI FunCall SPI_rw
        BL       SPI_rw
??Read_Fifo_3:
        POP      {R0-R2,R4,R5,PC}  ;; return
          CFI EndBlock cfiBlock46

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37:
        DC32     SendL

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_1:
        DC32     arrow_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_2:
        DC32     state

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_3:
        DC32     type

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_4:
        DC32     Interr_st+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_5:
        DC32     Interr_st

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_6:
        DC32     Start_tx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_7:
        DC32     Start_tx+0x6

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_8:
        DC32     Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_9:
        DC32     sendcn

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_10:
        DC32     Start_rx

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_11:
        DC32     Start_rx+0x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_12:
        DC32     Device_st+0x1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_13:
        DC32     Device_st

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_14:
        DC32     Fifo_info+0x2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_15:
        DC32     Fifo_info

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable37_16:
        DC32     lpack

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock47 Using cfiCommon0
          CFI Function Data_Check
        THUMB
// __interwork __softfp unsigned char Data_Check(unsigned char *)
Data_Check:
        PUSH     {R4-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+20
        SUB      SP,SP,#+44
          CFI CFA R13+64
        LDR      R4,??Data_Check_0  ;; 0x8007c00
        MOVS     R5,#+0
        MOVS     R1,#+0
        LDR      R2,??Data_Check_1
        STRB     R1,[R2, #+0]
        MOVS     R1,#+0
        LDR      R2,??Data_Check_1+0x4
        STRB     R1,[R2, #+0]
        LDR      R1,??Data_Check_1+0x8
        LDR      R1,[R1, #+0]
        MOVS     R2,#+192
        BICS     R1,R1,R2
        LDR      R2,??Data_Check_1+0x8
        STR      R1,[R2, #+0]
        LDR      R3,??Data_Check_1+0xC
        LDRB     R3,[R3, #+0]
        CMP      R3,#+0
        BEQ      ??Data_Check_2
        CMP      R3,#+2
        BEQ      ??Data_Check_3
        BCC      ??Data_Check_4
        B        ??Data_Check_5
??Data_Check_2:
        MOVS     R1,#+13
        MOVS     R2,#+4
        B        ??Data_Check_5
??Data_Check_4:
        MOVS     R1,#+45
        MOVS     R2,#+1
        B        ??Data_Check_5
??Data_Check_3:
        MOVS     R1,#+45
        MOVS     R2,#+0
??Data_Check_5:
        LDR      R3,??Data_Check_1+0x8
        LDR      R3,[R3, #+0]
        LSRS     R3,R3,#+4
        LSLS     R3,R3,#+30       ;; ZeroExtS R3,R3,#+30,#+30
        LSRS     R3,R3,#+30
        CMP      R3,#+0
        BNE      .+4
        B        ??Data_Check_6
        MOVS     R5,#+0
        B        ??Data_Check_7
??Data_Check_8:
        ADDS     R5,R5,#+1
??Data_Check_7:
        CMP      R5,#+20
        BGE      ??Data_Check_9
        LDRB     R3,[R0, R5]
        MOVS     R6,R1
        UXTB     R6,R6
        CMP      R3,R6
        BNE      ??Data_Check_8
        ADDS     R3,R0,R5
        LDRB     R3,[R3, #+1]
        MOVS     R6,R2
        UXTB     R6,R6
        CMP      R3,R6
        BNE      ??Data_Check_8
        MOVS     R3,R5
        LDR      R6,??Data_Check_1+0x4
        STRB     R3,[R6, #+0]
??Data_Check_9:
        CMP      R5,#+20
        BLT      ??Data_Check_10
        MOVS     R3,#+1
        B        ??Data_Check_11
??Data_Check_12:
        ADDS     R3,R3,#+1
??Data_Check_11:
        UXTB     R3,R3
        CMP      R3,#+8
        BGE      ??Data_Check_13
        MOVS     R5,#+0
        B        ??Data_Check_14
??Data_Check_15:
        LDRB     R6,[R0, R5]
        LSLS     R6,R6,R3
        MOV      R12,R6
        ADDS     R6,R0,R5
        LDRB     R7,[R6, #+1]
        MOVS     R6,#+8
        SUBS     R6,R6,R3
        ASRS     R7,R7,R6
        MOV      R6,R12
        ORRS     R7,R7,R6
        LDR      R6,??DataTable38
        STRB     R7,[R6, R5]
        ADDS     R5,R5,#+1
??Data_Check_14:
        CMP      R5,#+65
        BLT      ??Data_Check_15
        MOVS     R5,#+0
        B        ??Data_Check_16
??Data_Check_17:
        ADDS     R5,R5,#+1
??Data_Check_16:
        CMP      R5,#+20
        BGE      ??Data_Check_18
        LDR      R6,??DataTable38
        LDRB     R6,[R6, R5]
        MOVS     R7,R1
        UXTB     R7,R7
        CMP      R6,R7
        BNE      ??Data_Check_17
        LDR      R6,??DataTable38
        ADDS     R6,R6,R5
        LDRB     R6,[R6, #+1]
        MOVS     R7,R2
        UXTB     R7,R7
        CMP      R6,R7
        BNE      ??Data_Check_17
        MOVS     R6,R5
        LDR      R7,??Data_Check_1+0x4
        STRB     R6,[R7, #+0]
??Data_Check_18:
        LDR      R6,??Data_Check_1
        STRB     R3,[R6, #+0]
        CMP      R5,#+20
        BGE      ??Data_Check_12
??Data_Check_13:
        LDR      R0,??DataTable38
??Data_Check_10:
        CMP      R5,#+20
        BLT      ??Data_Check_19
        LDR      R0,??Data_Check_1+0x8
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable38_1  ;; 0xffff9fff
        ANDS     R1,R1,R0
        LDR      R0,??Data_Check_1+0x8
        STR      R1,[R0, #+0]
        MOVS     R0,#+1
        B        ??Data_Check_20
??Data_Check_19:
        LDR      R1,??Data_Check_1+0x4
        LDRB     R1,[R1, #+0]
        LDRB     R1,[R0, R1]
        UXTB     R1,R1
        CMP      R1,#+129
        BLT      ??Data_Check_21
        MOVS     R1,#+128
??Data_Check_21:
        MOVS     R2,#+0
        B        ??Data_Check_22
??Data_Check_23:
        LDR      R3,??Data_Check_1+0x4
        LDRB     R3,[R3, #+0]
        ADDS     R3,R0,R3
        LDRB     R3,[R3, R2]
        LDR      R5,??DataTable38_2
        STRB     R3,[R5, R2]
        ADDS     R2,R2,#+1
??Data_Check_22:
        UXTB     R1,R1
        CMP      R1,R2
        BGE      ??Data_Check_23
        LDR      R0,??DataTable38_2
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable38_3
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable38_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+129
        BLT      ??Data_Check_24
        MOVS     R0,#+128
        LDR      R1,??DataTable38_3
        STRB     R0,[R1, #+0]
??Data_Check_24:
        LDR      R0,??DataTable38_3
        LDRB     R1,[R0, #+0]
        ADDS     R1,R1,#+1
        UXTB     R1,R1
        LDR      R0,??DataTable38_2
          CFI FunCall CRC16_hy
        BL       CRC16_hy
        CMP      R0,#+0
        BEQ      .+4
        B        ??Data_Check_25
        LDR      R0,??Data_Check_1+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??Data_Check_26
        LDR      R0,??DataTable38_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+4
        BNE      ??Data_Check_27
        LDR      R0,??Data_Check_1+0x8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        BICS     R0,R0,R1
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??Data_Check_1+0x8
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable38_3
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+3
        UXTB     R0,R0
        STR      R0,[SP, #+4]
        LDR      R0,??DataTable38_4
        LDRB     R0,[R0, #+0]
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable38_5
        LDR      R2,??DataTable38_6
        MOVS     R1,R4
        ADDS     R1,R1,#+8
        LDR      R0,??DataTable38_7
          CFI FunCall Encrypt_RX_RU2
        BL       Encrypt_RX_RU2
        CMP      R0,#+0
        BEQ      ??Data_Check_27
        LDR      R0,??DataTable38_2
        LDRB     R0,[R0, #+3]
        LDRB     R1,[R4, #+0]
        CMP      R0,R1
        BNE      ??Data_Check_27
        LDR      R0,??DataTable38_2
        LDRB     R0,[R0, #+4]
        LDRB     R1,[R4, #+1]
        CMP      R0,R1
        BNE      ??Data_Check_27
        LDR      R0,??DataTable38_2
        LDRB     R0,[R0, #+5]
        LDRB     R1,[R4, #+2]
        CMP      R0,R1
        BNE      ??Data_Check_27
        LDR      R0,??DataTable38_2
        LDRB     R0,[R0, #+6]
        LDRB     R1,[R4, #+3]
        CMP      R0,R1
        BNE      ??Data_Check_27
        LDR      R0,??Data_Check_1+0x8
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable38_1  ;; 0xffff9fff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+6        ;; #+8192
        ORRS     R0,R0,R1
        LDR      R1,??Data_Check_1+0x8
        STR      R0,[R1, #+0]
??Data_Check_27:
        LDR      R0,??DataTable38_5
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable38_8
        STRB     R0,[R1, #+0]
??Data_Check_26:
        LDR      R0,??Data_Check_1+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ      ??Data_Check_28
        LDR      R0,??Data_Check_1+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ      .+4
        B        ??Data_Check_6
??Data_Check_28:
        LDR      R0,??Data_Check_1+0x8
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable38_1  ;; 0xffff9fff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+6        ;; #+8192
        ORRS     R0,R0,R1
        LDR      R1,??Data_Check_1+0x8
        STR      R0,[R1, #+0]
        LDR      R0,??Data_Check_1+0x8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        BICS     R0,R0,R1
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        LDR      R0,??Data_Check_1+0x8
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable38_4
        LDRB     R1,[R0, #+0]
        LDR      R0,??DataTable38_7
          CFI FunCall Encrypt_PRG_hy
        BL       Encrypt_PRG_hy
        LDR      R0,??Data_Check_1+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ      .+4
        B        ??Data_Check_6
        MOVS     R0,#+0
        B        ??Data_Check_29
??Data_Check_30:
        LDR      R1,??DataTable38_2
        UXTB     R0,R0
        MOVS     R2,#+4
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+8]
        MOV      R2,SP
        UXTB     R0,R0
        MOVS     R3,#+4
        MULS     R3,R0,R3
        STRB     R1,[R2, R3]
        LDR      R1,??DataTable38_2
        UXTB     R0,R0
        MOVS     R2,#+4
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+7]
        MOV      R2,SP
        UXTB     R0,R0
        MOVS     R3,#+4
        MULS     R3,R0,R3
        ADDS     R2,R2,R3
        STRB     R1,[R2, #+1]
        LDR      R1,??DataTable38_2
        UXTB     R0,R0
        MOVS     R2,#+4
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+6]
        MOV      R2,SP
        UXTB     R0,R0
        MOVS     R3,#+4
        MULS     R3,R0,R3
        ADDS     R2,R2,R3
        STRB     R1,[R2, #+2]
        LDR      R1,??DataTable38_2
        UXTB     R0,R0
        MOVS     R2,#+4
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+5]
        MOV      R2,SP
        UXTB     R0,R0
        MOVS     R3,#+4
        MULS     R3,R0,R3
        ADDS     R2,R2,R3
        STRB     R1,[R2, #+3]
        ADDS     R0,R0,#+1
??Data_Check_29:
        UXTB     R0,R0
        CMP      R0,#+2
        BLT      ??Data_Check_30
        LDR      R0,??DataTable38_9
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+8
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BEQ      ??Data_Check_31
        MOVS     R0,#+0
        MOV      R1,SP
        STRB     R0,[R1, #+4]
        B        ??Data_Check_32
??Data_Check_31:
        MOVS     R0,#+1
        MOV      R1,SP
        STRB     R0,[R1, #+4]
??Data_Check_32:
        MOVS     R0,#+2
        B        ??Data_Check_33
??Data_Check_34:
        LDR      R1,??DataTable38_2
        UXTB     R0,R0
        MOVS     R2,#+4
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+7]
        MOV      R2,SP
        UXTB     R0,R0
        MOVS     R3,#+4
        MULS     R3,R0,R3
        STRB     R1,[R2, R3]
        LDR      R1,??DataTable38_2
        UXTB     R0,R0
        MOVS     R2,#+4
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+6]
        MOV      R2,SP
        UXTB     R0,R0
        MOVS     R3,#+4
        MULS     R3,R0,R3
        ADDS     R2,R2,R3
        STRB     R1,[R2, #+1]
        LDR      R1,??DataTable38_2
        UXTB     R0,R0
        MOVS     R2,#+4
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+5]
        MOV      R2,SP
        UXTB     R0,R0
        MOVS     R3,#+4
        MULS     R3,R0,R3
        ADDS     R2,R2,R3
        STRB     R1,[R2, #+2]
        LDR      R1,??DataTable38_2
        UXTB     R0,R0
        MOVS     R2,#+4
        MULS     R2,R0,R2
        ADDS     R1,R1,R2
        LDRB     R1,[R1, #+4]
        MOV      R2,SP
        UXTB     R0,R0
        MOVS     R3,#+4
        MULS     R3,R0,R3
        ADDS     R2,R2,R3
        STRB     R1,[R2, #+3]
        ADDS     R0,R0,#+1
??Data_Check_33:
        UXTB     R0,R0
        CMP      R0,#+10
        BLT      ??Data_Check_34
          CFI FunCall f_unlock_erase_page
        BL       f_unlock_erase_page
        MOVS     R4,#+0
        B        ??Data_Check_35
        DATA
??Data_Check_0:
        DC32     0x8007c00
        THUMB
??Data_Check_36:
        MOV      R0,SP
        MOVS     R1,#+4
        MULS     R1,R4,R1
        ADDS     R1,R0,R1
        MOVS     R0,#+4
        MULS     R0,R4,R0
        LDR      R2,??DataTable38_10  ;; 0x8007c00
        ADDS     R0,R0,R2
          CFI FunCall f_w_array
        BL       f_w_array
        ADDS     R4,R4,#+1
??Data_Check_35:
        CMP      R4,#+10
        BLT      ??Data_Check_36
        LDR      R0,??DataTable38_11  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable38_11  ;; 0x40022010
        STR      R1,[R0, #+0]
        B        ??Data_Check_6
        DATA
??Data_Check_1:
        DC32     bit_shift
        DC32     data_shift
        DC32     Status
        DC32     mode
        THUMB
??Data_Check_25:
        LDR      R0,??DataTable39
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        BICS     R0,R0,R1
        LDR      R1,??DataTable39
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable39
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable38_1  ;; 0xffff9fff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable39
        STR      R1,[R0, #+0]
??Data_Check_6:
        LDR      R0,??DataTable39
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+13
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+1
        BNE      ??Data_Check_37
        MOVS     R0,#+0
        B        ??Data_Check_20
??Data_Check_37:
        MOVS     R0,#+1
??Data_Check_20:
        ADD      SP,SP,#+44
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock47

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38:
        DC32     data_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_1:
        DC32     0xffff9fff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_2:
        DC32     data_zero

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_3:
        DC32     RLenght

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_4:
        DC32     arrow_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_5:
        DC32     arrow_new

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_6:
        DC32     EKEY_2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_7:
        DC32     data_zero+0x2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_8:
        DC32     arrow_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_9:
        DC32     Element

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_10:
        DC32     0x8007c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_11:
        DC32     0x40022010

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock48 Using cfiCommon0
          CFI Function Radio_Head
        THUMB
// __interwork __softfp void Radio_Head(void)
Radio_Head:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+8
          CFI CFA R13+16
        LDR      R0,??DataTable39_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??Radio_Head_0
          CFI FunCall Radio_init
        BL       Radio_init
        MOVS     R0,#+1
        LDR      R1,??DataTable39_1
        STRB     R0,[R1, #+0]
??Radio_Head_0:
        LDR      R0,??DataTable39_2
        LDRH     R0,[R0, #+0]
        LDR      R1,??DataTable39_2
        STRH     R0,[R1, #+20]
        LDR      R0,??DataTable39
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BEQ      ??Radio_Head_1
        LDR      R0,??DataTable39
        LDR      R0,[R0, #+0]
        MOVS     R1,R0
        LSLS     R1,R1,#+19       ;; ZeroExtS R1,R1,#+19,#+31
        LSRS     R1,R1,#+31
        CMP      R1,#+0
        BEQ      ??Radio_Head_2
??Radio_Head_1:
        LDR      R0,??DataTable39_3
          CFI FunCall PackSend
        BL       PackSend
        LDR      R1,??DataTable39_4
        STRB     R0,[R1, #+0]
        LDR      R0,??DataTable39_5
        LDR      R0,[R0, #+0]
        LDRB     R2,[R0, #+5]
        LDR      R0,??DataTable39_4
        LDRB     R1,[R0, #+0]
        LDR      R0,??DataTable39_3
          CFI FunCall Start_Tx
        BL       Start_Tx
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable39_6
        LDR      R2,??DataTable39_7
        MOVS     R1,#+3
        MOVS     R0,#+1
          CFI FunCall SPI_rw
        BL       SPI_rw
        LDR      R0,??DataTable39_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+5]
          CFI FunCall Start_Rx
        BL       Start_Rx
        MOVS     R0,#+100
        LDR      R1,??DataTable39_2
        STRH     R0,[R1, #+18]
??Radio_Head_2:
        LDR      R0,??DataTable39
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+30       ;; ZeroExtS R0,R0,#+30,#+30
        LSRS     R0,R0,#+30
        CMP      R0,#+0
        BNE      .+4
        B        ??Radio_Head_3
        LDR      R0,??DataTable39_3
          CFI FunCall Read_Fifo
        BL       Read_Fifo
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable39_8
        LDR      R2,??DataTable39_9
        MOVS     R1,#+3
        MOVS     R0,#+2
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable39_6
        LDR      R2,??DataTable39_7
        MOVS     R1,#+3
        MOVS     R0,#+1
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+6
        LDR      R1,??DataTable39_10
        STRB     R0,[R1, #+1]
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable39_11
        LDR      R2,??DataTable39_10
        MOVS     R1,#+2
        MOVS     R0,#+1
          CFI FunCall SPI_rw
        BL       SPI_rw
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable39_6
        LDR      R2,??DataTable39_7
        MOVS     R1,#+3
        MOVS     R0,#+1
          CFI FunCall SPI_rw
        BL       SPI_rw
        LDR      R0,??DataTable39_3
          CFI FunCall Data_Check
        BL       Data_Check
        CMP      R0,#+0
        BNE      ??Radio_Head_4
        LDR      R0,??DataTable39_12
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable39_12
        STRH     R0,[R1, #+0]
        LDR      R0,??DataTable39_13
        LDRH     R0,[R0, #+0]
        LDR      R1,??DataTable39_14
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR      R1,??DataTable39_13
        STRH     R0,[R1, #+0]
        LDR      R0,??DataTable39_12
        LDRH     R0,[R0, #+0]
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        MOVS     R4,R0
        LDR      R0,??DataTable39_13
        LDRH     R0,[R0, #+0]
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        MOVS     R1,R0
        MOVS     R0,R4
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR      R1,??DataTable39_15
        STR      R0,[R1, #+0]
        MOVS     R0,#+0
        LDR      R1,??DataTable39_14
        STRH     R0,[R1, #+0]
        LDR      R0,??DataTable39
        LDR      R0,[R0, #+0]
        MOVS     R1,#+48
        BICS     R0,R0,R1
        LDR      R1,??DataTable39
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable39_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??Radio_Head_5
        LDR      R0,??DataTable39_14
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+17
        MULS     R1,R0,R1
        LDR      R0,??DataTable39_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+6]
        MOVS     R2,#+100
        MULS     R0,R2,R0
        CMP      R1,R0
        BGE      ??Radio_Head_5
        LDR      R0,??DataTable39_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+6]
        MOVS     R1,#+100
        MULS     R0,R1,R0
        LDR      R1,??DataTable39_14
        LDRH     R1,[R1, #+0]
        MOVS     R2,#+17
        MULS     R2,R1,R2
        SUBS     R0,R0,R2
        LDR      R1,??DataTable39_2
        STRH     R0,[R1, #+18]
??Radio_Head_5:
        LDR      R0,??DataTable39_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??Radio_Head_6
        LDR      R0,??DataTable39
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable39_17  ;; 0xffe3ffff
        ANDS     R1,R1,R0
        MOVS     R0,#+192
        LSLS     R0,R0,#+12       ;; #+786432
        ORRS     R0,R0,R1
        LDR      R1,??DataTable39
        STR      R0,[R1, #+0]
        MOVS     R0,#+2
        LDR      R1,??DataTable39_16
        STRB     R0,[R1, #+0]
        MOVS     R0,#+3
        LDR      R1,??DataTable40_1
        STRB     R0,[R1, #+0]
??Radio_Head_6:
        LDR      R0,??DataTable40  ;; 0x48000814
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        CMP      R0,#+0
        BNE      ??Radio_Head_7
        MOVS     R0,#+1
        B        ??Radio_Head_8
??Radio_Head_7:
        MOVS     R0,#+0
        B        ??Radio_Head_8
??Radio_Head_4:
        MOVS     R0,#+0
        LDR      R1,??DataTable39_2
        STRH     R0,[R1, #+18]
        LDR      R0,??DataTable39_14
        LDRH     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable39_14
        STRH     R0,[R1, #+0]
        LDR      R0,??DataTable39_14
        LDRH     R0,[R0, #+0]
        CMP      R0,#+3
        BLT      ??Radio_Head_8
        LDR      R0,??DataTable39_5
        LDR      R0,[R0, #+0]
        LDRB     R0,[R0, #+6]
        MOVS     R1,#+100
        MULS     R0,R1,R0
        LDR      R1,??DataTable39_14
        LDRH     R1,[R1, #+0]
        MOVS     R2,#+17
        MULS     R2,R1,R2
        SUBS     R0,R0,R2
        LDR      R1,??DataTable39_2
        STRH     R0,[R1, #+18]
        MOVS     R0,#+0
        LDR      R1,??DataTable39_14
        STRH     R0,[R1, #+0]
        LDR      R0,??DataTable39_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??Radio_Head_9
        LDR      R0,??DataTable39
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable39_17  ;; 0xffe3ffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+13       ;; #+1048576
        ORRS     R0,R0,R1
        LDR      R1,??DataTable39
        STR      R0,[R1, #+0]
        MOVS     R0,#+2
        LDR      R1,??DataTable39_16
        STRB     R0,[R1, #+0]
        MOVS     R0,#+3
        LDR      R1,??DataTable40_1
        STRB     R0,[R1, #+0]
??Radio_Head_9:
        LDR      R0,??DataTable39
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable40_2  ;; 0xffff9fff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+7        ;; #+16384
        ORRS     R0,R0,R1
        LDR      R1,??DataTable39
        STR      R0,[R1, #+0]
??Radio_Head_8:
        LDR      R0,??DataTable39_16
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??Radio_Head_10
        MOVS     R0,#+0
        LDR      R1,??DataTable39_2
        STRH     R0,[R1, #+18]
??Radio_Head_10:
          CFI FunCall fifo_buf_erase
        BL       fifo_buf_erase
        LDR      R0,??DataTable39
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        LDR      R1,??DataTable39
        STR      R0,[R1, #+0]
??Radio_Head_3:
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        LDR      R3,??DataTable40_3
        LDR      R2,??DataTable40_4
        MOVS     R1,#+11
        MOVS     R0,#+4
          CFI FunCall SPI_rw
        BL       SPI_rw
        LDR      R0,??DataTable39
        LDR      R0,[R0, #+0]
        MOVS     R1,#+3
        BICS     R0,R0,R1
        LDR      R1,??DataTable39
        STR      R0,[R1, #+0]
        POP      {R0,R1,R4,PC}    ;; return
          CFI EndBlock cfiBlock48

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39:
        DC32     Status

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_1:
        DC32     rdi

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_2:
        DC32     Timers

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_3:
        DC32     `data`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_4:
        DC32     plen

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_5:
        DC32     Bind

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_6:
        DC32     Device_st+0x1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_7:
        DC32     Device_st

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_8:
        DC32     Fifo_info+0x2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_9:
        DC32     Fifo_info

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_10:
        DC32     Device_st_change

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_11:
        DC32     Device_st_change+0x2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_12:
        DC32     pxaa

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_13:
        DC32     sum_5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_14:
        DC32     px55

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_15:
        DC32     ratio_a5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_16:
        DC32     mode

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39_17:
        DC32     0xffe3ffff
//    5 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock49 Using cfiCommon0
          CFI Function main
        THUMB
//    6 void main(void)
//    7 {
main:
        PUSH     {R4,R6,R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
//    8 //  BCKR_init();
//    9 //  RCC_init();
//   10 //  GPIO_init();
//   11 //  ADC_init();
//   12 //  Timer_init();
//   13   RCC_init();
          CFI FunCall RCC_init
        BL       RCC_init
//   14   SYSTICK_init();
          CFI FunCall SYSTICK_init
        BL       SYSTICK_init
//   15 //  SPI_init();
//   16 //  Null_struct(getptr(Timers), 24);
//   17 //  Timers.head.delta = 50;
//   18 //  Timers.bat.delta = 2;
//   19 //  Timers.alert.delta = 2;
//   20 //  start = 1;
//   21 //  period = SetAlarmPeriod();
//   22 //  LED_G_ON;
//   23 //  state = data1|state;
//   24 
//   25 
//   26   RCC_GPIOC_EN = ON;
        LDR      R0,??DataTable40_5  ;; 0x40021014
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+12       ;; #+524288
        ORRS     R1,R1,R0
        LDR      R0,??DataTable40_5  ;; 0x40021014
        STR      R1,[R0, #+0]
//   27   RCC_ADC_EN  = ON;
        LDR      R0,??DataTable40_6  ;; 0x40021018
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        LSLS     R1,R1,#+2        ;; #+512
        ORRS     R1,R1,R0
        LDR      R0,??DataTable40_6  ;; 0x40021018
        STR      R1,[R0, #+0]
//   28   
//   29   GPIO_CFG_PIN01(GPIOA, GPIO_ANALOG);                   //BAT_ADC1
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        ORRS     R1,R1,R0
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable40_7  ;; 0x4800000c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        LDR      R1,??DataTable40_7  ;; 0x4800000c
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable40_8  ;; 0x48000004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        BICS     R0,R0,R1
        LDR      R1,??DataTable40_8  ;; 0x48000004
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable40_9  ;; 0x48000008
        LDR      R0,[R0, #+0]
        MOVS     R1,#+12
        BICS     R0,R0,R1
        LDR      R1,??DataTable40_9  ;; 0x48000008
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable40_10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??DataTable40_10  ;; 0x48000018
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable40_10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??DataTable40_10  ;; 0x48000018
        STR      R0,[R1, #+0]
//   30   GPIO_CFG_PIN03(GPIOA, GPIO_ANALOG);                   //BAT_ADC2
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        ORRS     R1,R1,R0
        MOVS     R0,#+144
        LSLS     R0,R0,#+23       ;; #+1207959552
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable40_7  ;; 0x4800000c
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        BICS     R0,R0,R1
        LDR      R1,??DataTable40_7  ;; 0x4800000c
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable40_8  ;; 0x48000004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+8
        BICS     R0,R0,R1
        LDR      R1,??DataTable40_8  ;; 0x48000004
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable40_9  ;; 0x48000008
        LDR      R0,[R0, #+0]
        MOVS     R1,#+192
        BICS     R0,R0,R1
        LDR      R1,??DataTable40_9  ;; 0x48000008
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable40_10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??DataTable40_10  ;; 0x48000018
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable40_10  ;; 0x48000018
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        LDR      R1,??DataTable40_10  ;; 0x48000018
        STR      R0,[R1, #+0]
//   31   GPIO_CFG_PIN13(GPIOC, GPIO_OUT_PP_PD_L);              //LED_13
        LDR      R0,??DataTable40_11  ;; 0x48000800
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable40_15  ;; 0xf3ffffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+19       ;; #+67108864
        ORRS     R0,R0,R1
        LDR      R1,??DataTable40_11  ;; 0x48000800
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable40_12  ;; 0x4800080c
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable40_15  ;; 0xf3ffffff
        ANDS     R1,R1,R0
        MOVS     R0,#+128
        LSLS     R0,R0,#+20       ;; #+134217728
        ORRS     R0,R0,R1
        LDR      R1,??DataTable40_12  ;; 0x4800080c
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable40_14  ;; 0x48000804
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable40_13  ;; 0xffffdfff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable40_14  ;; 0x48000804
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable40_16  ;; 0x48000808
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable40_15  ;; 0xf3ffffff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable40_16  ;; 0x48000808
        STR      R1,[R0, #+0]
        LDR      R0,??DataTable40_17  ;; 0x48000818
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+16
        LSLS     R0,R0,#+16
        LDR      R1,??DataTable40_17  ;; 0x48000818
        STR      R0,[R1, #+0]
        LDR      R0,??DataTable40_17  ;; 0x48000818
        LDR      R0,[R0, #+0]
        UXTH     R0,R0
        MOVS     R1,#+128
        LSLS     R1,R1,#+22       ;; #+536870912
        ORRS     R1,R1,R0
        LDR      R0,??DataTable40_17  ;; 0x48000818
        STR      R1,[R0, #+0]
//   32   
//   33   ADC_init();
          CFI FunCall ADC_init
        BL       ADC_init
        B        ??main_0
//   34   
//   35   
//   36   while(1)
//   37   {
//   38     for(int cn=0;cn<=0x4000;cn++)
//   39     {
//   40       LED_13_ON;
//   41     }
//   42 
//   43     for(int cn=0;cn<=0x4000;cn++)
//   44     {
//   45       LED_13_OFF;
??main_1:
        LDR      R1,??DataTable40_17  ;; 0x48000818
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+16
        LSLS     R1,R1,#+16
        MOVS     R2,#+128
        LSLS     R2,R2,#+6        ;; #+8192
        ORRS     R2,R2,R1
        LDR      R1,??DataTable40_17  ;; 0x48000818
        STR      R2,[R1, #+0]
//   46     }
        ADDS     R0,R0,#+1
??main_2:
        LDR      R1,??DataTable40_22  ;; 0x4001
        CMP      R0,R1
        BLT      ??main_1
//   47     Volt.ref_volt = 3.3*CAL_VINT/ADC_VAL(VR_ADC_CH);
        MOVS     R0,#+128
        LSLS     R0,R0,#+10       ;; #+131072
          CFI FunCall ADC_VAL
        BL       ADC_VAL
        MOVS     R4,R0
        LDR      R0,??DataTable40_18  ;; 0x1ffff7ba
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        ADR      R2,??DataTable40_19
        LDM      R2,{R2,R3}
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R6,R0
        MOVS     R7,R1
        UXTH     R4,R4
        MOVS     R0,R4
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        MOVS     R2,R0
        MOVS     R3,R1
        MOVS     R0,R6
        MOVS     R1,R7
          CFI FunCall __aeabi_ddiv
        BL       __aeabi_ddiv
          CFI FunCall __aeabi_d2f
        BL       __aeabi_d2f
        LDR      R1,??DataTable40_21
        STR      R0,[R1, #+0]
//   48     Volt.bat2 = ADC_VAL(B2_ADC_CH)*Volt.ref_volt/4095;
        MOVS     R0,#+8
          CFI FunCall ADC_VAL
        BL       ADC_VAL
        UXTH     R0,R0
          CFI FunCall __aeabi_ui2f
        BL       __aeabi_ui2f
        LDR      R1,??DataTable40_21
        LDR      R1,[R1, #+0]
          CFI FunCall __aeabi_fmul
        BL       __aeabi_fmul
        LDR      R1,??DataTable40_20  ;; 0x457ff000
          CFI FunCall __aeabi_fdiv
        BL       __aeabi_fdiv
        LDR      R1,??DataTable40_21
        STR      R0,[R1, #+8]
??main_0:
        MOVS     R0,#+0
        B        ??main_3
??main_4:
        LDR      R1,??DataTable40_17  ;; 0x48000818
        LDR      R1,[R1, #+0]
        UXTH     R1,R1
        MOVS     R2,#+128
        LSLS     R2,R2,#+22       ;; #+536870912
        ORRS     R2,R2,R1
        LDR      R1,??DataTable40_17  ;; 0x48000818
        STR      R2,[R1, #+0]
        ADDS     R0,R0,#+1
??main_3:
        LDR      R1,??DataTable40_22  ;; 0x4001
        CMP      R0,R1
        BLT      ??main_4
        MOVS     R0,#+0
        B        ??main_2
//   49     
//   50 //    if(Status.led != LED_BIND_VALID)
//   51 //    {
//   52 //       
//   53 //      ADC_Complex();
//   54 //      if(TimeOut(Timers.d.basic,Timers.bat.prph) >= Timers.bat.delta || !scan_time)
//   55 //      {
//   56 //        if(!scan_time)
//   57 //        {
//   58 //          ADC_Simple();
//   59 //        }
//   60 ////        Contact_Scan();
//   61 //        Contact_Scan();
//   62 //        Alert_Scan();
//   63 //        Bat_ADC_Ctrl();
//   64 //        LED_Linear();
//   65 //        Timers.bat.prph = Timers.d.basic;
//   66 //      }
//   67 //      if(TimeOut_16(Timers.e.basic,Timers.head.prph) > Timers.head.delta)
//   68 //      {
//   69 //        if((state || data1 != NORM_STBY)&&mode!=M_TEST
//   70 //           || mode == M_TEST&&(state != state_prev||data1!=data1_prev))// && (mode==MODE_STBY&&WakeCause == AFTER_SHORTPAUSE&&)) 
//   71 //        {
//   72 //          mode_change = 0;
//   73 //          if(!Status.rxon)
//   74 //          {
//   75 //            data1_prev = data1; state_prev = state;
//   76 //          }
//   77 //          Radio_Head();
//   78 //        }
//   79 //      }
//   80 //    }
//   81 //    else
//   82 //    {
//   83 //      Status.led = LED_DEFAULT;
//   84 //    }
//   85 //    if(mode==M_STBY)
//   86 //    {
//   87 //      if(Status.pack || (WakeCause == AFTER_SHORTPAUSE) ||Status.led == LED_BIND_FAULT)
//   88 //      {
//   89 //        
//   90 //        LED_Linear();
//   91 //        LED_OFF;
//   92 //        Tamper_init();
//   93 //        RTC->RTC_BKPxR_0.TAMP = Element.jprog;
//   94 //        RTC->RTC_BKPxR_0.MODE = mode;
//   95 //        RTC->RTC_BKPxR_0.CNT += period;
//   96 //        RTC->RTC_BKPxR_1.DATA1 = data1;
//   97 //        RTC->RTC_BKPxR_1.STATE = state;
//   98 //        IWDG_Set(period);
//   99 //        LowPower();
//  100 //      }
//  101 //    }
//  102 //    scan_time++;
//  103 //    if(!scan_time) 
//  104 //    {
//  105 //      scan_time=1;
//  106 //    }
//  107   }
//  108 }
          CFI EndBlock cfiBlock49

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40:
        DC32     0x48000814

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_1:
        DC32     period

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_2:
        DC32     0xffff9fff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_3:
        DC32     Interr_st+0x4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_4:
        DC32     Interr_st

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_5:
        DC32     0x40021014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_6:
        DC32     0x40021018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_7:
        DC32     0x4800000c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_8:
        DC32     0x48000004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_9:
        DC32     0x48000008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_10:
        DC32     0x48000018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_11:
        DC32     0x48000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_12:
        DC32     0x4800080c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_13:
        DC32     0xffffdfff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_14:
        DC32     0x48000804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_15:
        DC32     0xf3ffffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_16:
        DC32     0x48000808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_17:
        DC32     0x48000818

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_18:
        DC32     0x1ffff7ba

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_19:
        DC32     0x66666666,0x400A6666

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_20:
        DC32     0x457ff000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_21:
        DC32     Volt

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_22:
        DC32     0x4001

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  109 //------------------------------------------------------------------------------
//  110 
//  111 //    u8 a1,a2,a3,a4; //,a5,a6,a7,a8;
//  112 //    a1 = (WakeCause == AFTER_LONGPAUSE || scan_time) && mode != MODE_TEST || rad_sw ;
//  113 //    a2 =        (TimeOut_16(Timers.e.basic,Timers.head.prph) > Timers.head.delta) 
//  114 //       && mode == MODE_STBY;
//  115 //    a3 = mode == MODE_BIND || (mode == MODE_TEST && state != state_prev) ||
//  116 //       (mode == MODE_TEST && mode_change && !scan_time ) || (rad_sw && !scan_time && mode != MODE_TEST);
//  117 //    a4 = (state != state_prev) && mode != MODE_X;
//  118 //    a10 = a1 && a2 || a3 || a4;
//  119 
//  120 
// 
//    495 bytes in section .bss
//    401 bytes in section .data
//    313 bytes in section .rodata
// 12 574 bytes in section .text
// 
// 12 574 bytes of CODE  memory
//    313 bytes of CONST memory
//    896 bytes of DATA  memory
//
//Errors: none
//Warnings: none
