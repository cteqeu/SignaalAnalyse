# 1 "RTE\\Device\\S6E2CCAJ0A\\system_s6e2cc.c"







































 













 

# 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\mcu.h"







































 










 








  
# 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"







































 
 




























 












 





# 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\mcu.h"







































 










 

# 90 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"




 

typedef enum IRQn
{
    NMI_IRQn          = -14,  
    HardFault_IRQn    = -13,  
    MemManage_IRQn    = -12,  
    BusFault_IRQn     = -11,  
    UsageFault_IRQn   = -10,  
    SVC_IRQn          = -5,   
    DebugMonitor_IRQn = -4,   
    PendSV_IRQn       = -2,   
    SysTick_IRQn      = -1,   

    CSV_IRQn              =   0,   
    SWDT_IRQn             =   1,   
    LVD_IRQn              =   2,   
    IRQ003SEL_IRQn        =   3,   
    IRQ004SEL_IRQn        =   4,   
    IRQ005SEL_IRQn        =   5,   
    IRQ006SEL_IRQn        =   6,   
    IRQ007SEL_IRQn        =   7,   
    IRQ008SEL_IRQn        =   8,   
    IRQ009SEL_IRQn        =   9,   
    IRQ010SEL_IRQn        =  10,   
    EXINT0_IRQn           =  11,   
    EXINT1_IRQn           =  12,   
    EXINT2_IRQn           =  13,   
    EXINT3_IRQn           =  14,   
    EXINT4_IRQn           =  15,   
    EXINT5_IRQn           =  16,   
    EXINT6_IRQn           =  17,   
    EXINT7_IRQn           =  18,   
    QPRC0_IRQn            =  19,   
    QPRC1_IRQn            =  20,   
    WFG0_DTIF0_IRQn       =  21,   
    WFG1_DTIF1_IRQn       =  22,   
    WFG2_DTIF2_IRQn       =  23,   
    FRT0_PEAK_IRQn        =  24,   
    FRT0_ZERO_IRQn        =  25,   
    ICU0_IRQn             =  26,   
    OCU0_IRQn             =  27,   
    FRT1_PEAK_IRQn        =  28,   
    FRT1_ZERO_IRQn        =  29,   
    ICU1_IRQn             =  30,   
    OCU1_IRQn             =  31,   
    FRT2_PEAK_IRQn        =  32,   
    FRT2_ZERO_IRQn        =  33,   
    ICU2_IRQn             =  34,   
    OCU2_IRQn             =  35,   
    PPG00_02_04_IRQn      =  36,   
    PPG08_10_12_IRQn      =  37,   
    PPG16_18_20_IRQn      =  38,   
    BT0_IRQn              =  39,   
    BT1_IRQn              =  40,   
    BT2_IRQn              =  41,   
    BT3_IRQn              =  42,   
    BT4_IRQn              =  43,   
    BT5_IRQn              =  44,   
    BT6_IRQn              =  45,   
    BT7_IRQn              =  46,   
    DT1_2_IRQn            =  47,   
    WC_IRQn               =  48,   
    EXTBUS_ERR_IRQn       =  49,   
    RTC_IRQn              =  50,   
    EXINT8_IRQn           =  51,   
    EXINT9_IRQn           =  52,   
    EXINT10_IRQn          =  53,   
    EXINT11_IRQn          =  54,   
    EXINT12_IRQn          =  55,   
    EXINT13_IRQn          =  56,   
    EXINT14_IRQn          =  57,   
    EXINT15_IRQn          =  58,   
    TIM_IRQn              =  59,   
    MFS0_RX_IRQn          =  60,   
    MFS0_TX_IRQn          =  61,   
    MFS1_RX_IRQn          =  62,   
    MFS1_TX_IRQn          =  63,   
    MFS2_RX_IRQn          =  64,   
    MFS2_TX_IRQn          =  65,   
    MFS3_RX_IRQn          =  66,   
    MFS3_TX_IRQn          =  67,   
    MFS4_RX_IRQn          =  68,   
    MFS4_TX_IRQn          =  69,   
    MFS5_RX_IRQn          =  70,   
    MFS5_TX_IRQn          =  71,   
    MFS6_RX_IRQn          =  72,   
    MFS6_TX_IRQn          =  73,   
    MFS7_RX_IRQn          =  74,   
    MFS7_TX_IRQn          =  75,   
    ADC0_IRQn             =  76,   
    ADC1_IRQn             =  77,   
    USB0_IRQn             =  78,   
    USB0_HOST_IRQn        =  79,   
    CAN0_IRQn             =  80,   
    CAN1_CANFD_IRQn       =  81,   
    ETHER0_IRQn           =  82,   
    DMAC0_IRQn            =  83,   
    DMAC1_IRQn            =  84,   
    DMAC2_IRQn            =  85,   
    DMAC3_IRQn            =  86,   
    DMAC4_IRQn            =  87,   
    DMAC5_IRQn            =  88,   
    DMAC6_IRQn            =  89,   
    DMAC7_IRQn            =  90,   
    DSTC_IRQn             =  91,   
    EXINT16_17_18_19_IRQn =  92,   
    EXINT20_21_22_23_IRQn =  93,   
    EXINT24_25_26_27_IRQn =  94,   
    EXINT28_29_30_31_IRQn =  95,   
    QPRC2_IRQn            =  96,   
    QPRC3_IRQn            =  97,   
    BT8_IRQn              =  98,   
    BT9_IRQn              =  99,   
    BT10_IRQn             = 100,   
    BT11_IRQn             = 101,   
    BT12_IRQn             = 102,   
    MFS8_RX_IRQn          = 103,   
    MFS8_TX_IRQn          = 104,   
    MFS9_RX_IRQn          = 105,   
    MFS9_TX_IRQn          = 106,   
    MFS10_RX_IRQn         = 107,   
    MFS10_TX_IRQn         = 108,   
    MFS11_RX_IRQn         = 109,   
    MFS11_TX_IRQn         = 110,   
    ADC2_IRQn             = 111,   
    USB1_HDMICEC0_IRQn    = 113,   
    USB1_HOST_HDMICEC1_IRQn = 114,   
    HSSPI_IRQn            = 115,   
    PRGCRC_I2S_IRQn       = 117,   
    SD_IRQn               = 118,   
    FLASH_IRQn            = 119,   
    MFS12_RX_IRQn         = 120,   
    MFS12_TX_IRQn         = 121,   
    MFS13_RX_IRQn         = 122,   
    MFS13_TX_IRQn         = 123,   
    MFS14_RX_IRQn         = 124,   
    MFS14_TX_IRQn         = 125,   
    MFS15_RX_IRQn         = 126,   
    MFS15_TX_IRQn         = 127    
} IRQn_Type;

# 285 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

# 1 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"
 




 
















 










# 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
# 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











# 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
# 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



# 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











# 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
# 35 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"

















 




 



 

# 1 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\cmsis_version.h"
 




 
















 










 
# 64 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"

 









 
# 87 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"

# 161 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"

# 1 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\cmsis_compiler.h"
 




 
















 




# 29 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\cmsis_compiler.h"



 
# 1 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\cmsis_armcc.h"
 




 
















 









 













   
   

 




 
# 107 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\cmsis_armcc.h"

 



 





 
 






 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}









 







 







 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}






 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xFFU);
}







 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xFFU);
}






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}






 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1U);
}









 
static __inline uint32_t __get_FPSCR(void)
{


  register uint32_t __regfpscr         __asm("fpscr");
  return(__regfpscr);



}






 
static __inline void __set_FPSCR(uint32_t fpscr)
{


  register uint32_t __regfpscr         __asm("fpscr");
  __regfpscr = (fpscr);



}


 


 



 




 






 







 






 








 










 










 






                  





 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int16_t __REVSH(int16_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 
# 536 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\cmsis_armcc.h"







 











 












 












 














 














 














 










 









 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}








 








 








 








 








 








 


# 784 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\cmsis_armcc.h"

   


 



 



# 855 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\cmsis_armcc.h"











 


# 35 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\cmsis_compiler.h"




 
# 268 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\cmsis_compiler.h"




# 163 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"

















 
# 207 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"

 






 
# 223 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"

 




 













 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:16;               
    uint32_t GE:4;                        
    uint32_t _reserved1:7;                
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 





















 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 






 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:1;                
    uint32_t ICI_IT_1:6;                  
    uint32_t GE:4;                        
    uint32_t _reserved1:4;                
    uint32_t T:1;                         
    uint32_t ICI_IT_2:2;                  
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 

































 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 









 







 



 
typedef struct
{
  volatile uint32_t ISER[8U];                
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];                
        uint32_t RESERVED1[24U];
  volatile uint32_t ISPR[8U];                
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];                
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];                
        uint32_t RESERVED4[56U];
  volatile uint8_t  IP[240U];                
        uint32_t RESERVED5[644U];
  volatile  uint32_t STIR;                    
}  NVIC_Type;

 



 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    
  volatile uint32_t VTOR;                    
  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
  volatile uint8_t  SHP[12U];                
  volatile uint32_t SHCSR;                   
  volatile uint32_t CFSR;                    
  volatile uint32_t HFSR;                    
  volatile uint32_t DFSR;                    
  volatile uint32_t MMFAR;                   
  volatile uint32_t BFAR;                    
  volatile uint32_t AFSR;                    
  volatile const  uint32_t PFR[2U];                 
  volatile const  uint32_t DFR;                     
  volatile const  uint32_t ADR;                     
  volatile const  uint32_t MMFR[4U];                
  volatile const  uint32_t ISAR[5U];                
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;                   
} SCB_Type;

 















 






























 



 





















 









 


















 










































 









 


















 





















 


















 









 















 







 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const  uint32_t ICTR;                    
  volatile uint32_t ACTLR;                   
} SCnSCB_Type;

 



 















 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 












 



 



 









 







 



 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                  
    volatile  uint16_t   u16;                 
    volatile  uint32_t   u32;                 
  }  PORT [32U];                          
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;                     
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;                     
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;                     
        uint32_t RESERVED3[32U];
        uint32_t RESERVED4[43U];
  volatile  uint32_t LAR;                     
  volatile const  uint32_t LSR;                     
        uint32_t RESERVED5[6U];
  volatile const  uint32_t PID4;                    
  volatile const  uint32_t PID5;                    
  volatile const  uint32_t PID6;                    
  volatile const  uint32_t PID7;                    
  volatile const  uint32_t PID0;                    
  volatile const  uint32_t PID1;                    
  volatile const  uint32_t PID2;                    
  volatile const  uint32_t PID3;                    
  volatile const  uint32_t CID0;                    
  volatile const  uint32_t CID1;                    
  volatile const  uint32_t CID2;                    
  volatile const  uint32_t CID3;                    
} ITM_Type;

 



 



























 









   







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t CYCCNT;                  
  volatile uint32_t CPICNT;                  
  volatile uint32_t EXCCNT;                  
  volatile uint32_t SLEEPCNT;                
  volatile uint32_t LSUCNT;                  
  volatile uint32_t FOLDCNT;                 
  volatile const  uint32_t PCSR;                    
  volatile uint32_t COMP0;                   
  volatile uint32_t MASK0;                   
  volatile uint32_t FUNCTION0;               
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;                   
  volatile uint32_t MASK1;                   
  volatile uint32_t FUNCTION1;               
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;                   
  volatile uint32_t MASK2;                   
  volatile uint32_t FUNCTION2;               
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;                   
  volatile uint32_t MASK3;                   
  volatile uint32_t FUNCTION3;               
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   







 



 
typedef struct
{
  volatile const  uint32_t SSPSR;                   
  volatile uint32_t CSPSR;                   
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;                    
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;                    
        uint32_t RESERVED2[131U];
  volatile const  uint32_t FFSR;                    
  volatile uint32_t FFCR;                    
  volatile const  uint32_t FSCR;                    
        uint32_t RESERVED3[759U];
  volatile const  uint32_t TRIGGER;                 
  volatile const  uint32_t FIFO0;                   
  volatile const  uint32_t ITATBCTR2;               
        uint32_t RESERVED4[1U];
  volatile const  uint32_t ITATBCTR0;               
  volatile const  uint32_t FIFO1;                   
  volatile uint32_t ITCTRL;                  
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;                
  volatile uint32_t CLAIMCLR;                
        uint32_t RESERVED7[8U];
  volatile const  uint32_t DEVID;                   
  volatile const  uint32_t DEVTYPE;                 
} TPI_Type;

 



 



 












 






 



 





















 






 





















 






 



 


















 






   








 



 
typedef struct
{
  volatile const  uint32_t TYPE;                    
  volatile uint32_t CTRL;                    
  volatile uint32_t RNR;                     
  volatile uint32_t RBAR;                    
  volatile uint32_t RASR;                    
  volatile uint32_t RBAR_A1;                 
  volatile uint32_t RASR_A1;                 
  volatile uint32_t RBAR_A2;                 
  volatile uint32_t RASR_A2;                 
  volatile uint32_t RBAR_A3;                 
  volatile uint32_t RASR_A3;                 
} MPU_Type;



 









 









 



 









 






























 








 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile uint32_t FPCCR;                   
  volatile uint32_t FPCAR;                   
  volatile uint32_t FPDSCR;                  
  volatile const  uint32_t MVFR0;                   
  volatile const  uint32_t MVFR1;                   
  volatile const  uint32_t MVFR2;                   
} FPU_Type;

 



























 



 












 
























 












 




 







 



 
typedef struct
{
  volatile uint32_t DHCSR;                   
  volatile  uint32_t DCRSR;                   
  volatile uint32_t DCRDR;                   
  volatile uint32_t DEMCR;                   
} CoreDebug_Type;

 




































 






 







































 







 






 







 


 







 

 
# 1553 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"

# 1562 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"









 










 


 



 





 

# 1616 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"

# 1626 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"




 
# 1637 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"










 
static __inline void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));  
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U)  );               
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}






 
static __inline uint32_t __NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}







 
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);
    do { __schedule_barrier(); __isb(0xF); __schedule_barrier(); } while (0U);
  }
}









 
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}







 
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetActive(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}










 
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - 4)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4)) & (uint32_t)0xFFUL);
  }
}










 
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               >> (8U - 4)));
  }
  else
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4)));
  }
}












 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}












 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4)) ? (uint32_t)(4) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}










 
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t vectors = (uint32_t )((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  (* (int *) (vectors + ((int32_t)IRQn + 16) * 4)) = vector;
}









 
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t vectors = (uint32_t )((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return (uint32_t)(* (int *) (vectors + ((int32_t)IRQn + 16) * 4));
}





 
__declspec(noreturn) static __inline void __NVIC_SystemReset(void)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16U)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U)    );          
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                           

  for(;;)                                                            
  {
    __nop();
  }
}

 


 



# 1 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\mpu_armv7.h"





 
















 
 





 



# 62 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\mpu_armv7.h"

# 69 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\mpu_armv7.h"





 












   














 
# 110 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\mpu_armv7.h"












                          









  










  












  




 




 




 




 





 
typedef struct {
  uint32_t RBAR; 
  uint32_t RASR; 
} ARM_MPU_Region_t;
    


 
static __inline void ARM_MPU_Enable(uint32_t MPU_Control)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL = MPU_Control | (1UL );

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR |= (1UL << 16U);

  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);
  do { __schedule_barrier(); __isb(0xF); __schedule_barrier(); } while (0U);
}


 
static __inline void ARM_MPU_Disable(void)
{
  do { __schedule_barrier(); __dmb(0xF); __schedule_barrier(); } while (0U);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR &= ~(1UL << 16U);

  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL  &= ~(1UL );
}



 
static __inline void ARM_MPU_ClrRegion(uint32_t rnr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = 0U;
}




    
static __inline void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}





    
static __inline void ARM_MPU_SetRegionEx(uint32_t rnr, uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}





 
static __inline void ARM_MPU_OrderedMemcpy(volatile uint32_t* dst, const uint32_t* __restrict src, uint32_t len)
{
  uint32_t i;
  for (i = 0U; i < len; ++i) 
  {
    dst[i] = src[i];
  }
}




 
static __inline void ARM_MPU_Load(ARM_MPU_Region_t const* table, uint32_t cnt) 
{
  const uint32_t rowWordSize = sizeof(ARM_MPU_Region_t)/4U;
  while (cnt > 4U) {
    ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), 4U*rowWordSize);
    table += 4U;
    cnt -= 4U;
  }
  ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), cnt*rowWordSize);
}

# 1953 "C:\\Keil_v5\\ARM\\PACK\\ARM\\CMSIS\\5.5.1\\CMSIS\\Core\\Include\\core_cm4.h"




 





 








 
static __inline uint32_t SCB_GetFPUType(void)
{
  uint32_t mvfr0;

  mvfr0 = ((FPU_Type *) ((0xE000E000UL) + 0x0F30UL) )->MVFR0;
  if      ((mvfr0 & ((0xFUL << 4U) | (0xFUL << 8U))) == 0x020U)
  {
    return 1U;            
  }
  else
  {
    return 0U;            
  }
}


 



 





 













 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 4) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}



 



 





 

extern volatile int32_t ITM_RxBuffer;                               










 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __nop();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}







 
static __inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;                            

  if (ITM_RxBuffer != ((int32_t)0x5AA55AA5U))
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = ((int32_t)0x5AA55AA5U);        
  }

  return (ch);
}







 
static __inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == ((int32_t)0x5AA55AA5U))
  {
    return (0);                               
  }
  else
  {
    return (1);                               
  }
}

 










# 287 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"
# 1 ".\\RTE\\Device\\S6E2CCAJ0A\\system_s6e2cc.h"







































 

 










 








 
 
 
# 66 ".\\RTE\\Device\\S6E2CCAJ0A\\system_s6e2cc.h"

 
 
 
   
 
 
 
    
 
 
 
 








  






     






   


































  




















     

 














     

   
























      

   
























     




















   














   

 




































      


























     






















     

















     

   







   









   









   






   


   
 
 
 
  
 
 

 
 
 





     

   




  






  

   




  






  

   




  

   




  

   




  






  

   




  






  








  

   







  



 
 
 





















































  
 
 
 




 





 





 





 


 
 
 




 
# 626 ".\\RTE\\Device\\S6E2CCAJ0A\\system_s6e2cc.h"




 
# 648 ".\\RTE\\Device\\S6E2CCAJ0A\\system_s6e2cc.h"

 
 
 















   



   
 
 
 

extern uint32_t SystemCoreClock;          
   
extern void SystemInit (void);            

extern void SystemCoreClockUpdate (void); 





# 288 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"
# 289 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"









 
 
 


#pragma anon_unions




 


 
typedef struct
{
    volatile uint32_t DRQSEL;
    uint8_t RESERVED0[12];
    volatile uint32_t EXC02MON;
    volatile uint32_t IRQ00MON;
    volatile uint32_t IRQ01MON;
    volatile uint32_t IRQ02MON;
    volatile uint32_t IRQ03MON;
    volatile uint32_t IRQ04MON;
    volatile uint32_t IRQ05MON;
    volatile uint32_t IRQ06MON;
    volatile uint32_t IRQ07MON;
    volatile uint32_t IRQ08MON;
    volatile uint32_t IRQ09MON;
    volatile uint32_t IRQ10MON;
    volatile uint32_t IRQ11MON;
    volatile uint32_t IRQ12MON;
    volatile uint32_t IRQ13MON;
    volatile uint32_t IRQ14MON;
    volatile uint32_t IRQ15MON;
    volatile uint32_t IRQ16MON;
    volatile uint32_t IRQ17MON;
    volatile uint32_t IRQ18MON;
    volatile uint32_t IRQ19MON;
    volatile uint32_t IRQ20MON;
    volatile uint32_t IRQ21MON;
    volatile uint32_t IRQ22MON;
    volatile uint32_t IRQ23MON;
    volatile uint32_t IRQ24MON;
    volatile uint32_t IRQ25MON;
    volatile uint32_t IRQ26MON;
    volatile uint32_t IRQ27MON;
    volatile uint32_t IRQ28MON;
    volatile uint32_t IRQ29MON;
    volatile uint32_t IRQ30MON;
    volatile uint32_t IRQ31MON;
    volatile uint32_t IRQ32MON;
    volatile uint32_t IRQ33MON;
    volatile uint32_t IRQ34MON;
    volatile uint32_t IRQ35MON;
    volatile uint32_t IRQ36MON;
    volatile uint32_t IRQ37MON;
    volatile uint32_t IRQ38MON;
    volatile uint32_t IRQ39MON;
    volatile uint32_t IRQ40MON;
    volatile uint32_t IRQ41MON;
    volatile uint32_t IRQ42MON;
    volatile uint32_t IRQ43MON;
    volatile uint32_t IRQ44MON;
    volatile uint32_t IRQ45MON;
    volatile uint32_t IRQ46MON;
    volatile uint32_t IRQ47MON;
}PDL_INTREQ_TypeDef;




# 415 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"




 



 
 
typedef struct stc_flash_if_faszr_field
{
  volatile uint32_t ASZ        : 2;
} stc_flash_if_faszr_field_t;

typedef struct stc_flash_if_frwtr_field
{
  volatile uint32_t RWT        : 2;
} stc_flash_if_frwtr_field_t;

typedef struct stc_flash_if_fstr_field
{
  volatile uint32_t RDY        : 1;
  volatile uint32_t HNG        : 1;
  volatile uint32_t ERR        : 1;
} stc_flash_if_fstr_field_t;

typedef struct stc_flash_if_fsyndn_field
{
  volatile uint32_t SD         : 3;
} stc_flash_if_fsyndn_field_t;

typedef struct stc_flash_if_fbfcr_field
{
  volatile uint32_t BE         : 1;
  volatile uint32_t BS         : 1;
} stc_flash_if_fbfcr_field_t;

typedef struct stc_flash_if_ficr_field
{
  volatile uint32_t RDYIE      : 1;
  volatile uint32_t HANGIE     : 1;
  volatile uint32_t ERRIE      : 1;
} stc_flash_if_ficr_field_t;

typedef struct stc_flash_if_fisr_field
{
  volatile uint32_t RDYIF      : 1;
  volatile uint32_t HANGIF     : 1;
  volatile uint32_t ERRIF      : 1;
} stc_flash_if_fisr_field_t;

typedef struct stc_flash_if_ficlr_field
{
  volatile uint32_t RDYIC      : 1;
  volatile uint32_t HANGIC     : 1;
  volatile uint32_t ERRIC      : 1;
} stc_flash_if_ficlr_field_t;

typedef struct stc_flash_if_dfctrlr_field
{
  volatile uint32_t DFE        : 1;
  volatile uint32_t RME        : 1;
       uint32_t RESERVED1  : 14;
  volatile uint32_t WKEY       : 16;
} stc_flash_if_dfctrlr_field_t;

typedef struct stc_flash_if_crtrmm_field
{
  volatile uint32_t TRMM       : 10;
       uint32_t RESERVED1  : 6;
  volatile uint32_t TTRMM      : 5;
} stc_flash_if_crtrmm_field_t;

typedef struct stc_flash_if_fgpdm1_field
{
  volatile uint32_t GPD1       : 32;
} stc_flash_if_fgpdm1_field_t;

typedef struct stc_flash_if_fgpdm2_field
{
  volatile uint32_t GPD2       : 32;
} stc_flash_if_fgpdm2_field_t;

typedef struct stc_flash_if_fgpdm3_field
{
  volatile uint32_t GPD3       : 32;
} stc_flash_if_fgpdm3_field_t;

typedef struct stc_flash_if_fgpdm4_field
{
  volatile uint32_t GPD4       : 32;
} stc_flash_if_fgpdm4_field_t;



 
 
typedef struct stc_dualflash_if_dfaszr_field
{
  volatile uint32_t DASZ       : 2;
} stc_dualflash_if_dfaszr_field_t;

typedef struct stc_dualflash_if_dfrwtr_field
{
  volatile uint32_t DRWT       : 2;
} stc_dualflash_if_dfrwtr_field_t;

typedef struct stc_dualflash_if_dfstr_field
{
  volatile uint32_t DFRDY      : 1;
  volatile uint32_t DFHNG      : 1;
  volatile uint32_t DFERR      : 1;
} stc_dualflash_if_dfstr_field_t;



 
 
typedef struct stc_unique_id_uidr0_field
{
       uint32_t RESERVED0  : 4;
  volatile uint32_t UID        :28;
} stc_unique_id_uidr0_field_t;

typedef struct stc_unique_id_uidr1_field
{
  volatile uint32_t UID        :13;
} stc_unique_id_uidr1_field_t;



 
 
typedef struct stc_ecc_capture_ferrad_field
{
  volatile uint32_t ERRAD      :23;
} stc_ecc_capture_ferrad_field_t;



 
 
typedef struct stc_crg_scm_ctl_field
{
       uint32_t RESERVED1  : 1;
  volatile uint32_t MOSCE      : 1;
       uint32_t RESERVED2  : 1;
  volatile uint32_t SOSCE      : 1;
  volatile uint32_t PLLE       : 1;
  volatile uint32_t RCS        : 3;
} stc_crg_scm_ctl_field_t;

typedef struct stc_crg_scm_str_field
{
       uint32_t RESERVED1  : 1;
  volatile uint32_t MORDY      : 1;
       uint32_t RESERVED2  : 1;
  volatile uint32_t SORDY      : 1;
  volatile uint32_t PLRDY      : 1;
  volatile uint32_t RCM0       : 1;
  volatile uint32_t RCM1       : 1;
  volatile uint32_t RCM2       : 1;
} stc_crg_scm_str_field_t;

typedef struct stc_crg_rst_str_field
{
  volatile uint32_t PONR       : 1;
  volatile uint32_t INITX      : 1;
  volatile uint32_t LVDH       : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t SWDT       : 1;
  volatile uint32_t HWDT       : 1;
  volatile uint32_t CSVR       : 1;
  volatile uint32_t FCSR       : 1;
  volatile uint32_t SRST       : 1;
} stc_crg_rst_str_field_t;

typedef struct stc_crg_bsc_psr_field
{
  volatile uint32_t BSR0       : 1;
  volatile uint32_t BSR1       : 1;
  volatile uint32_t BSR2       : 1;
} stc_crg_bsc_psr_field_t;

typedef struct stc_crg_apbc0_psr_field
{
  volatile uint32_t APBC00     : 1;
  volatile uint32_t APBC01     : 1;
} stc_crg_apbc0_psr_field_t;

typedef struct stc_crg_apbc1_psr_field
{
  volatile uint32_t APBC10     : 1;
  volatile uint32_t APBC11     : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t APBC1RST   : 1;
       uint32_t RESERVED2  : 2;
  volatile uint32_t APBC1EN    : 1;
} stc_crg_apbc1_psr_field_t;

typedef struct stc_crg_apbc2_psr_field
{
  volatile uint32_t APBC20     : 1;
  volatile uint32_t APBC21     : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t APBC2RST   : 1;
       uint32_t RESERVED2  : 2;
  volatile uint32_t APBC2EN    : 1;
} stc_crg_apbc2_psr_field_t;

typedef struct stc_crg_swc_psr_field
{
  volatile uint32_t SWDS0      : 1;
  volatile uint32_t SWDS1      : 1;
} stc_crg_swc_psr_field_t;

typedef struct stc_crg_ttc_psr_field
{
  volatile uint32_t TTC        : 2;
} stc_crg_ttc_psr_field_t;

typedef struct stc_crg_csw_tmr_field
{
  volatile uint32_t MOWT0      : 1;
  volatile uint32_t MOWT1      : 1;
  volatile uint32_t MOWT2      : 1;
  volatile uint32_t MOWT3      : 1;
  volatile uint32_t SOWT0      : 1;
  volatile uint32_t SOWT1      : 1;
  volatile uint32_t SOWT2      : 1;
  volatile uint32_t SOWT3      : 1;
} stc_crg_csw_tmr_field_t;

typedef struct stc_crg_psw_tmr_field
{
  volatile uint32_t POWT0      : 1;
  volatile uint32_t POWT1      : 1;
  volatile uint32_t POWT2      : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t PINC       : 1;
} stc_crg_psw_tmr_field_t;

typedef struct stc_crg_pll_ctl1_field
{
  volatile uint32_t PLLM0      : 1;
  volatile uint32_t PLLM1      : 1;
  volatile uint32_t PLLM2      : 1;
  volatile uint32_t PLLM3      : 1;
  volatile uint32_t PLLK0      : 1;
  volatile uint32_t PLLK1      : 1;
  volatile uint32_t PLLK2      : 1;
  volatile uint32_t PLLK3      : 1;
} stc_crg_pll_ctl1_field_t;

typedef struct stc_crg_pll_ctl2_field
{
  volatile uint32_t PLLN0      : 1;
  volatile uint32_t PLLN1      : 1;
  volatile uint32_t PLLN2      : 1;
  volatile uint32_t PLLN3      : 1;
  volatile uint32_t PLLN4      : 1;
  volatile uint32_t PLLN5      : 1;
} stc_crg_pll_ctl2_field_t;

typedef struct stc_crg_csv_ctl_field
{
  volatile uint32_t MCSVE      : 1;
  volatile uint32_t SCSVE      : 1;
       uint32_t RESERVED1  : 6;
  volatile uint32_t FCSDE      : 1;
  volatile uint32_t FCSRE      : 1;
       uint32_t RESERVED2  : 2;
  volatile uint32_t FCD0       : 1;
  volatile uint32_t FCD1       : 1;
  volatile uint32_t FCD2       : 1;
} stc_crg_csv_ctl_field_t;

typedef struct stc_crg_csv_str_field
{
  volatile uint32_t MCMF       : 1;
  volatile uint32_t SCMF       : 1;
} stc_crg_csv_str_field_t;

typedef struct stc_crg_dbwdt_ctl_field
{
       uint32_t RESERVED1  : 5;
  volatile uint32_t DPSWBE     : 1;
       uint32_t RESERVED2  : 1;
  volatile uint32_t DPHWBE     : 1;
} stc_crg_dbwdt_ctl_field_t;

typedef struct stc_crg_int_enr_field
{
  volatile uint32_t MCSE       : 1;
  volatile uint32_t SCSE       : 1;
  volatile uint32_t PCSE       : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t FCSE       : 1;
} stc_crg_int_enr_field_t;

typedef struct stc_crg_int_str_field
{
  volatile uint32_t MCSI       : 1;
  volatile uint32_t SCSI       : 1;
  volatile uint32_t PCSI       : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t FCSI       : 1;
} stc_crg_int_str_field_t;

typedef struct stc_crg_int_clr_field
{
  volatile uint32_t MCSC       : 1;
  volatile uint32_t SCSC       : 1;
  volatile uint32_t PCSC       : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t FCSC       : 1;
} stc_crg_int_clr_field_t;



 
 
typedef struct stc_hwwdt_wdg_ctl_field
{
  volatile uint32_t INTEN      : 1;
  volatile uint32_t RESEN      : 1;
} stc_hwwdt_wdg_ctl_field_t;

typedef struct stc_hwwdt_wdg_ris_field
{
  volatile uint32_t RIS        : 1;
} stc_hwwdt_wdg_ris_field_t;



 
 
typedef struct stc_swwdt_wdogcontrol_field
{
  union {
    struct {
      volatile uint32_t INTEN      : 1;
      volatile uint32_t RESEN      : 1;
      volatile uint32_t TWD        : 2;
      volatile uint32_t SPM        : 1;
           uint32_t RESERVED1  : 27;
    };
    struct {
           uint32_t RESERVED2  : 2;
      volatile uint32_t TWD0       : 1;
      volatile uint32_t TWD1       : 1;
           uint32_t RESERVED3  : 28;
    };
  };
} stc_swwdt_wdogcontrol_field_t;

typedef struct stc_swwdt_wdogris_field
{
  volatile uint32_t RIS        : 1;
       uint32_t RESERVED1  : 31;
} stc_swwdt_wdogris_field_t;

typedef struct stc_swwdt_wdogspmc_field
{
  volatile uint32_t TGR        : 1;
       uint32_t RESERVED1  : 31;
} stc_swwdt_wdogspmc_field_t;



 
 
typedef struct stc_dtim_timerXcontrol_field
{
  union {
    struct {
      volatile uint32_t ONESHOT    : 1;
      volatile uint32_t TIMERSIZE  : 1;
      volatile uint32_t TIMERPRE   : 2;
           uint32_t RESERVED1  : 1;
      volatile uint32_t INTENABLE  : 1;
      volatile uint32_t TIMERMODE  : 1;
      volatile uint32_t TIMEREN    : 1;
           uint32_t RESERVED2  : 24;
    };
    struct {
           uint32_t RESERVED3  : 2;
      volatile uint32_t TIMERPRE0  : 1;
      volatile uint32_t TIMERPRE1  : 1;
           uint32_t RESERVED4  : 28;
    };
  };
} stc_dtim_timerXcontrol_field_t;

typedef struct stc_dtim_timerXris_field
{
  volatile uint32_t TIMERXRIS  : 1;
       uint32_t RESERVED1  : 31;
} stc_dtim_timerXris_field_t;

typedef struct stc_dtim_timerXmis_field
{
  volatile uint32_t TIMERXMIS  : 1;
       uint32_t RESERVED1  : 31;
} stc_dtim_timerXmis_field_t;



 
 
typedef struct stc_mft_frt_tcsa0_field
{
  volatile uint16_t CLK0       : 1;
  volatile uint16_t CLK1       : 1;
  volatile uint16_t CLK2       : 1;
  volatile uint16_t CLK3       : 1;
  volatile uint16_t SCLR       : 1;
  volatile uint16_t MODE       : 1;
  volatile uint16_t STOP       : 1;
  volatile uint16_t BFE        : 1;
  volatile uint16_t ICRE       : 1;
  volatile uint16_t ICLR       : 1;
       uint16_t RESERVED1  : 3;
  volatile uint16_t IRQZE      : 1;
  volatile uint16_t IRQZF      : 1;
  volatile uint16_t ECKE       : 1;
} stc_mft_frt_tcsa0_field_t;

typedef struct stc_mft_frt_tcsc0_field
{
  volatile uint16_t MSZI       : 4;
  volatile uint16_t MSPI       : 4;
  volatile uint16_t MSZC       : 4;
  volatile uint16_t MSPC       : 4;
} stc_mft_frt_tcsc0_field_t;

typedef struct stc_mft_frt_tcsa1_field
{
  volatile uint16_t CLK0       : 1;
  volatile uint16_t CLK1       : 1;
  volatile uint16_t CLK2       : 1;
  volatile uint16_t CLK3       : 1;
  volatile uint16_t SCLR       : 1;
  volatile uint16_t MODE       : 1;
  volatile uint16_t STOP       : 1;
  volatile uint16_t BFE        : 1;
  volatile uint16_t ICRE       : 1;
  volatile uint16_t ICLR       : 1;
       uint16_t RESERVED1  : 3;
  volatile uint16_t IRQZE      : 1;
  volatile uint16_t IRQZF      : 1;
  volatile uint16_t ECKE       : 1;
} stc_mft_frt_tcsa1_field_t;

typedef struct stc_mft_frt_tcsc1_field
{
  volatile uint16_t MSZI       : 4;
  volatile uint16_t MSPI       : 4;
  volatile uint16_t MSZC       : 4;
  volatile uint16_t MSPC       : 4;
} stc_mft_frt_tcsc1_field_t;

typedef struct stc_mft_frt_tcsa2_field
{
  volatile uint16_t CLK0       : 1;
  volatile uint16_t CLK1       : 1;
  volatile uint16_t CLK2       : 1;
  volatile uint16_t CLK3       : 1;
  volatile uint16_t SCLR       : 1;
  volatile uint16_t MODE       : 1;
  volatile uint16_t STOP       : 1;
  volatile uint16_t BFE        : 1;
  volatile uint16_t ICRE       : 1;
  volatile uint16_t ICLR       : 1;
       uint16_t RESERVED1  : 3;
  volatile uint16_t IRQZE      : 1;
  volatile uint16_t IRQZF      : 1;
  volatile uint16_t ECKE       : 1;
} stc_mft_frt_tcsa2_field_t;

typedef struct stc_mft_frt_tcsc2_field
{
  volatile uint16_t MSZI       : 4;
  volatile uint16_t MSPI       : 4;
  volatile uint16_t MSZC       : 4;
  volatile uint16_t MSPC       : 4;
} stc_mft_frt_tcsc2_field_t;

typedef struct stc_mft_frt_tcal_field
{
  volatile uint32_t STOP00     : 1;
  volatile uint32_t STOP01     : 1;
  volatile uint32_t STOP02     : 1;
  volatile uint32_t STOP10     : 1;
  volatile uint32_t STOP11     : 1;
  volatile uint32_t STOP12     : 1;
  volatile uint32_t STOP20     : 1;
  volatile uint32_t STOP21     : 1;
  volatile uint32_t STOP22     : 1;
  volatile uint32_t RESERVED1  : 7;
  volatile uint32_t SCLR00     : 1;
  volatile uint32_t SCLR01     : 1;
  volatile uint32_t SCLR02     : 1;
  volatile uint32_t SCLR10     : 1;
  volatile uint32_t SCLR11     : 1;
  volatile uint32_t SCLR12     : 1;
  volatile uint32_t SCLR20     : 1;
  volatile uint32_t SCLR21     : 1;
  volatile uint32_t SCLR22     : 1;
  volatile uint32_t RESERVED2  : 7;
} stc_mft_frt_tcal_field_t;

typedef struct stc_mft_frt_tcsd_field
{
  volatile  uint8_t OFMD1      : 4;
  volatile  uint8_t OFMD2      : 4;
} stc_mft_frt_tcsd_field_t;



 
 
typedef struct stc_mft_ocu_ocsa10_field
{
  volatile  uint8_t CST0       : 1;
  volatile  uint8_t CST1       : 1;
  volatile  uint8_t RESERVED1  : 2;
  volatile  uint8_t IOE0       : 1;
  volatile  uint8_t IOE1       : 1;
  volatile  uint8_t IOP0       : 1;
  volatile  uint8_t IOP1       : 1;
} stc_mft_ocu_ocsa10_field_t;

typedef struct stc_mft_ocu_ocsb10_field
{
  volatile  uint8_t OTD0       : 1;
  volatile  uint8_t OTD1       : 1;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t CMOD       : 1;
        uint8_t RESERVED2  : 2;
  volatile  uint8_t FM4        : 1;
} stc_mft_ocu_ocsb10_field_t;

typedef struct stc_mft_ocu_ocsa32_field
{
  volatile  uint8_t CST0       : 1;
  volatile  uint8_t CST1       : 1;
  volatile  uint8_t RESERVED1  : 2;
  volatile  uint8_t IOE0       : 1;
  volatile  uint8_t IOE1       : 1;
  volatile  uint8_t IOP0       : 1;
  volatile  uint8_t IOP1       : 1;
} stc_mft_ocu_ocsa32_field_t;

typedef struct stc_mft_ocu_ocsb32_field
{
  volatile  uint8_t OTD0       : 1;
  volatile  uint8_t OTD1       : 1;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t CMOD       : 1;
        uint8_t RESERVED2  : 2;
  volatile  uint8_t FM4        : 1;
} stc_mft_ocu_ocsb32_field_t;

typedef struct stc_mft_ocu_ocsa54_field
{
  volatile  uint8_t CST0       : 1;
  volatile  uint8_t CST1       : 1;
  volatile  uint8_t RESERVED1  : 2;
  volatile  uint8_t IOE0       : 1;
  volatile  uint8_t IOE1       : 1;
  volatile  uint8_t IOP0       : 1;
  volatile  uint8_t IOP1       : 1;
} stc_mft_ocu_ocsa54_field_t;

typedef struct stc_mft_ocu_ocsb54_field
{
  volatile  uint8_t OTD0       : 1;
  volatile  uint8_t OTD1       : 1;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t CMOD       : 1;
        uint8_t RESERVED2  : 2;
  volatile  uint8_t FM4        : 1;
} stc_mft_ocu_ocsb54_field_t;

typedef struct stc_mft_ocu_ocsc_field
{
  volatile  uint8_t MOD0       : 1;
  volatile  uint8_t MOD1       : 1;
  volatile  uint8_t MOD2       : 1;
  volatile  uint8_t MOD3       : 1;
  volatile  uint8_t MOD4       : 1;
  volatile  uint8_t MOD5       : 1;
} stc_mft_ocu_ocsc_field_t;

typedef struct stc_mft_ocu_ocfs10_field
{
  volatile  uint8_t FSO00      : 1;
  volatile  uint8_t FSO01      : 1;
  volatile  uint8_t FSO02      : 1;
  volatile  uint8_t FSO03      : 1;
  volatile  uint8_t FSO10      : 1;
  volatile  uint8_t FSO11      : 1;
  volatile  uint8_t FSO12      : 1;
  volatile  uint8_t FSO13      : 1;
} stc_mft_ocu_ocfs10_field_t;

typedef struct stc_mft_ocu_ocfs32_field
{
  volatile  uint8_t FSO00      : 1;
  volatile  uint8_t FSO01      : 1;
  volatile  uint8_t FSO02      : 1;
  volatile  uint8_t FSO03      : 1;
  volatile  uint8_t FSO10      : 1;
  volatile  uint8_t FSO11      : 1;
  volatile  uint8_t FSO12      : 1;
  volatile  uint8_t FSO13      : 1;
} stc_mft_ocu_ocfs32_field_t;

typedef struct stc_mft_ocu_ocfs54_field
{
  volatile  uint8_t FSO00      : 1;
  volatile  uint8_t FSO01      : 1;
  volatile  uint8_t FSO02      : 1;
  volatile  uint8_t FSO03      : 1;
  volatile  uint8_t FSO10      : 1;
  volatile  uint8_t FSO11      : 1;
  volatile  uint8_t FSO12      : 1;
  volatile  uint8_t FSO13      : 1;
} stc_mft_ocu_ocfs54_field_t;

typedef struct stc_mft_ocu_ocsd10_field
{
  volatile uint16_t OCCP0BUFE  : 2;
  volatile uint16_t OCCP1BUFE  : 2;
  volatile uint16_t OCSE0BUFE  : 2;
  volatile uint16_t OCSE1BUFE  : 2;
  volatile uint16_t OPBM0      : 1;
  volatile uint16_t OPBM1      : 1;
  volatile uint16_t OEBM0      : 1;
  volatile uint16_t OEBM1      : 1;
  volatile uint16_t OFEX0      : 1;
  volatile uint16_t OFEX1      : 1;
} stc_mft_ocu_ocsd10_field_t;

typedef struct stc_mft_ocu_ocsd32_field
{
  volatile uint16_t OCCP2BUFE  : 2;
  volatile uint16_t OCCP3BUFE  : 2;
  volatile uint16_t OCSE2BUFE  : 2;
  volatile uint16_t OCSE3BUFE  : 2;
  volatile uint16_t OPBM2      : 1;
  volatile uint16_t OPBM3      : 1;
  volatile uint16_t OEBM2      : 1;
  volatile uint16_t OEBM3      : 1;
  volatile uint16_t OFEX2      : 1;
  volatile uint16_t OFEX3      : 1;
} stc_mft_ocu_ocsd32_field_t;

typedef struct stc_mft_ocu_ocsd54_field
{
  volatile uint16_t OCCP4BUFE  : 2;
  volatile uint16_t OCCP5BUFE  : 2;
  volatile uint16_t OCSE4BUFE  : 2;
  volatile uint16_t OCSE5BUFE  : 2;
  volatile uint16_t OPBM4      : 1;
  volatile uint16_t OPBM5      : 1;
  volatile uint16_t OEBM4      : 1;
  volatile uint16_t OEBM5      : 1;
  volatile uint16_t OFEX4      : 1;
  volatile uint16_t OFEX5      : 1;
} stc_mft_ocu_ocsd54_field_t;

typedef struct stc_mft_ocu_ocse0_field
{
  volatile  uint16_t OCSE      : 16;
} stc_mft_ocu_ocse0_field_t;

typedef struct stc_mft_ocu_ocse1_field
{
  volatile  uint32_t OCSE      : 32;
} stc_mft_ocu_ocse1_field_t;

typedef struct stc_mft_ocu_ocse2_field
{
  volatile  uint16_t OCSE      : 16;
} stc_mft_ocu_ocse2_field_t;

typedef struct stc_mft_ocu_ocse3_field
{
  volatile  uint32_t OCSE      : 32;
} stc_mft_ocu_ocse3_field_t;

typedef struct stc_mft_ocu_ocse4_field
{
  volatile  uint16_t OCSE      : 16;
} stc_mft_ocu_ocse4_field_t;

typedef struct stc_mft_ocu_ocse5_field
{
  volatile  uint32_t OCSE      : 32;
} stc_mft_ocu_ocse5_field_t;



 
 
typedef struct stc_mft_wfg_wfsa10_field
{
  volatile uint16_t DCK0       : 1;
  volatile uint16_t DCK1       : 1;
  volatile uint16_t DCK2       : 1;
  volatile uint16_t TMD        : 3;
  volatile uint16_t GTEN0      : 1;
  volatile uint16_t GTEN1      : 1;
  volatile uint16_t PSEL0      : 1;
  volatile uint16_t PSEL1      : 1;
  volatile uint16_t PGEN0      : 1;
  volatile uint16_t PGEN1      : 1;
  volatile uint16_t DMOD       : 2;
} stc_mft_wfg_wfsa10_field_t;

typedef struct stc_mft_wfg_wfsa32_field
{
  volatile uint16_t DCK0       : 1;
  volatile uint16_t DCK1       : 1;
  volatile uint16_t DCK2       : 1;
  volatile uint16_t TMD        : 3;
  volatile uint16_t GTEN0      : 1;
  volatile uint16_t GTEN1      : 1;
  volatile uint16_t PSEL0      : 1;
  volatile uint16_t PSEL1      : 1;
  volatile uint16_t PGEN0      : 1;
  volatile uint16_t PGEN1      : 1;
  volatile uint16_t DMOD       : 2;
} stc_mft_wfg_wfsa32_field_t;

typedef struct stc_mft_wfg_wfsa54_field
{
  volatile uint16_t DCK0       : 1;
  volatile uint16_t DCK1       : 1;
  volatile uint16_t DCK2       : 1;
  volatile uint16_t TMD        : 3;
  volatile uint16_t GTEN0      : 1;
  volatile uint16_t GTEN1      : 1;
  volatile uint16_t PSEL0      : 1;
  volatile uint16_t PSEL1      : 1;
  volatile uint16_t PGEN0      : 1;
  volatile uint16_t PGEN1      : 1;
  volatile uint16_t DMOD       : 2;
} stc_mft_wfg_wfsa54_field_t;

typedef struct stc_mft_wfg_wfir_field
{
  volatile uint16_t DTIFA      : 1;
  volatile uint16_t DTICA      : 1;
  volatile uint16_t DTIFB      : 1;
  volatile uint16_t DTICB      : 1;
  volatile uint16_t TMIF10     : 1;
  volatile uint16_t TMIC10     : 1;
  volatile uint16_t TMIE10     : 1;
  volatile uint16_t TMIS10     : 1;
  volatile uint16_t TMIF32     : 1;
  volatile uint16_t TMIC32     : 1;
  volatile uint16_t TMIE32     : 1;
  volatile uint16_t TMIS32     : 1;
  volatile uint16_t TMIF54     : 1;
  volatile uint16_t TMIC54     : 1;
  volatile uint16_t TMIE54     : 1;
  volatile uint16_t TMIS54     : 1;
} stc_mft_wfg_wfir_field_t;

typedef struct stc_mft_wfg_nzcl_field
{
  volatile uint16_t DTIEA      : 1;
  volatile uint16_t NWS0       : 1;
  volatile uint16_t NWS1       : 1;
  volatile uint16_t NWS2       : 1;
  volatile uint16_t SDTI       : 1;
  volatile uint16_t DTIEB      : 1;
       uint16_t RESERVED1  : 1;
  volatile uint16_t DHOLD      : 1;
  volatile uint16_t DIMA       : 1;
  volatile uint16_t DIMB       : 1;
       uint16_t RESERVED2  : 2;
  volatile uint16_t WIM10      : 1;
  volatile uint16_t WIM32      : 1;
  volatile uint16_t WIM54      : 1;
       uint16_t RESERVED3  : 1;
} stc_mft_wfg_nzcl_field_t;



 
 
typedef struct stc_mft_icu_icfs10_field
{
  volatile  uint8_t FSI00      : 1;
  volatile  uint8_t FSI01      : 1;
  volatile  uint8_t FSI02      : 1;
  volatile  uint8_t FSI03      : 1;
  volatile  uint8_t FSI10      : 1;
  volatile  uint8_t FSI11      : 1;
  volatile  uint8_t FSI12      : 1;
  volatile  uint8_t FSI13      : 1;
} stc_mft_icu_icfs10_field_t;

typedef struct stc_mft_icu_icfs32_field
{
  volatile  uint8_t FSI00      : 1;
  volatile  uint8_t FSI01      : 1;
  volatile  uint8_t FSI02      : 1;
  volatile  uint8_t FSI03      : 1;
  volatile  uint8_t FSI10      : 1;
  volatile  uint8_t FSI11      : 1;
  volatile  uint8_t FSI12      : 1;
  volatile  uint8_t FSI13      : 1;
} stc_mft_icu_icfs32_field_t;

typedef struct stc_mft_icu_icsa10_field
{
  volatile  uint8_t EG00       : 1;
  volatile  uint8_t EG01       : 1;
  volatile  uint8_t EG10       : 1;
  volatile  uint8_t EG11       : 1;
  volatile  uint8_t ICE0       : 1;
  volatile  uint8_t ICE1       : 1;
  volatile  uint8_t ICP0       : 1;
  volatile  uint8_t ICP1       : 1;
} stc_mft_icu_icsa10_field_t;

typedef struct stc_mft_icu_icsb10_field
{
  volatile  uint8_t IEI0       : 1;
  volatile  uint8_t IEI1       : 1;
} stc_mft_icu_icsb10_field_t;

typedef struct stc_mft_icu_icsa32_field
{
  volatile  uint8_t EG00       : 1;
  volatile  uint8_t EG01       : 1;
  volatile  uint8_t EG10       : 1;
  volatile  uint8_t EG11       : 1;
  volatile  uint8_t ICE0       : 1;
  volatile  uint8_t ICE1       : 1;
  volatile  uint8_t ICP0       : 1;
  volatile  uint8_t ICP1       : 1;
} stc_mft_icu_icsa32_field_t;

typedef struct stc_mft_icu_icsb32_field
{
  volatile  uint8_t IEI0       : 1;
  volatile  uint8_t IEI1       : 1;
} stc_mft_icu_icsb32_field_t;



 
 
typedef struct stc_mft_adcmp_acfs10_field
{
  volatile  uint8_t FSA0       : 4;
  volatile  uint8_t FSA1       : 4;
} stc_mft_adcmp_acfs10_field_t;

typedef struct stc_mft_adcmp_acfs32_field
{
  volatile  uint8_t FSA2       : 4;
  volatile  uint8_t FSA3       : 4;
} stc_mft_adcmp_acfs32_field_t;

typedef struct stc_mft_adcmp_acfs54_field
{
  volatile  uint8_t FSA4       : 4;
  volatile  uint8_t FSA5       : 4;
} stc_mft_adcmp_acfs54_field_t;

typedef struct stc_mft_adcmp_acsa_field
{
  volatile uint16_t CE10       : 2;
  volatile uint16_t CE32       : 2;
  volatile uint16_t CE54       : 2;
       uint16_t RESERVED1  : 2;
  volatile uint16_t SEL10      : 2;
  volatile uint16_t SEL32      : 2;
  volatile uint16_t SEL54      : 2;
} stc_mft_adcmp_acsa_field_t;

typedef struct stc_mft_adcmp_acsc_field
{
  volatile uint8_t BUFE        : 2;
  volatile uint8_t ADSEL       : 3;
  volatile uint8_t APBM        : 1;
       uint8_t RESERVED1   : 2;
} stc_mft_adcmp_acsc_field_t;

typedef struct stc_mft_adcmp_acsd_field
{
  volatile uint8_t AMOD        : 1;
  volatile uint8_t OCUS        : 1;
       uint8_t RESERVED1   : 2;
  volatile uint8_t DE          : 1;
  volatile uint8_t PE          : 1;
  volatile uint8_t UE          : 1;
  volatile uint8_t ZE          : 1;
} stc_mft_adcmp_acsd_field_t;

typedef struct stc_mft_adcmp_acmc_field
{
  volatile uint8_t AMC         : 4;
       uint8_t RESERVED1   : 2;
  volatile uint8_t MZCE        : 1;
  volatile uint8_t MPCE        : 1;
} stc_mft_adcmp_acmc_field_t;



 
typedef struct stc_dacr_field
{
  volatile  uint8_t DAE        : 1;
  volatile  uint8_t DRDY       : 1;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t DAC10      : 1;
  volatile  uint8_t DDAS       : 1;
  volatile  uint8_t RESERVED2  : 2;
} stc_dacr_field_t;

typedef struct stc_dadr_field
{
  volatile  uint16_t DA         : 12;
  volatile  uint16_t RESERVED   : 4;
} stc_dadr_field_t;



 
 
typedef struct stc_mft_ppg_ttcr0_field
{
  volatile  uint8_t STR0       : 1;
  volatile  uint8_t MONI0      : 1;
  volatile  uint8_t CS00       : 1;
  volatile  uint8_t CS01       : 1;
  volatile  uint8_t TRG0O      : 1;
  volatile  uint8_t TRG2O      : 1;
  volatile  uint8_t TRG4O      : 1;
  volatile  uint8_t TRG6O      : 1;
} stc_mft_ppg_ttcr0_field_t;

typedef struct stc_mft_ppg_ttcr1_field
{
  volatile  uint8_t STR1       : 1;
  volatile  uint8_t MONI1      : 1;
  volatile  uint8_t CS10       : 1;
  volatile  uint8_t CS11       : 1;
  volatile  uint8_t TRG1O      : 1;
  volatile  uint8_t TRG3O      : 1;
  volatile  uint8_t TRG5O      : 1;
  volatile  uint8_t TRG7O      : 1;
} stc_mft_ppg_ttcr1_field_t;

typedef struct stc_mft_ppg_ttcr2_field
{
  volatile  uint8_t STR2       : 1;
  volatile  uint8_t MONI2      : 1;
  volatile  uint8_t CS20       : 1;
  volatile  uint8_t CS21       : 1;
  volatile  uint8_t TRG16O     : 1;
  volatile  uint8_t TRG18O     : 1;
  volatile  uint8_t TRG20O     : 1;
  volatile  uint8_t TRG22O     : 1;
} stc_mft_ppg_ttcr2_field_t;

typedef struct stc_mft_ppg_trg_field
{
  volatile uint16_t PEN00      : 1;
  volatile uint16_t PEN01      : 1;
  volatile uint16_t PEN02      : 1;
  volatile uint16_t PEN03      : 1;
  volatile uint16_t PEN04      : 1;
  volatile uint16_t PEN05      : 1;
  volatile uint16_t PEN06      : 1;
  volatile uint16_t PEN07      : 1;
  volatile uint16_t PEN08      : 1;
  volatile uint16_t PEN09      : 1;
  volatile uint16_t PEN10      : 1;
  volatile uint16_t PEN11      : 1;
  volatile uint16_t PEN12      : 1;
  volatile uint16_t PEN13      : 1;
  volatile uint16_t PEN14      : 1;
  volatile uint16_t PEN15      : 1;
} stc_mft_ppg_trg0_field_t;

typedef struct stc_mft_ppg_trg1_field
{
  volatile uint16_t PEN16      : 1;
  volatile uint16_t PEN17      : 1;
  volatile uint16_t PEN18      : 1;
  volatile uint16_t PEN19      : 1;
  volatile uint16_t PEN20      : 1;
  volatile uint16_t PEN21      : 1;
  volatile uint16_t PEN22      : 1;
  volatile uint16_t PEN23      : 1;
} stc_mft_ppg_trg1_field_t;

typedef struct stc_mft_ppg_revc_field
{
  volatile uint16_t REV00      : 1;
  volatile uint16_t REV01      : 1;
  volatile uint16_t REV02      : 1;
  volatile uint16_t REV03      : 1;
  volatile uint16_t REV04      : 1;
  volatile uint16_t REV05      : 1;
  volatile uint16_t REV06      : 1;
  volatile uint16_t REV07      : 1;
  volatile uint16_t REV08      : 1;
  volatile uint16_t REV09      : 1;
  volatile uint16_t REV10      : 1;
  volatile uint16_t REV11      : 1;
  volatile uint16_t REV12      : 1;
  volatile uint16_t REV13      : 1;
  volatile uint16_t REV14      : 1;
  volatile uint16_t REV15      : 1;
} stc_mft_ppg_revc0_field_t;

typedef struct stc_mft_ppg_revc1_field
{
  volatile uint16_t REV16      : 1;
  volatile uint16_t REV17      : 1;
  volatile uint16_t REV18      : 1;
  volatile uint16_t REV19      : 1;
  volatile uint16_t REV20      : 1;
  volatile uint16_t REV21      : 1;
  volatile uint16_t REV22      : 1;
  volatile uint16_t REV23      : 1;
} stc_mft_ppg_revc1_field_t;

typedef struct stc_mft_ppg_ppgc1_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc1_field_t;

typedef struct stc_mft_ppg_ppgc0_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc0_field_t;

typedef struct stc_mft_ppg_ppgc3_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc3_field_t;

typedef struct stc_mft_ppg_ppgc2_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc2_field_t;

typedef struct stc_mft_ppg_gatec0_field
{
  volatile  uint8_t EDGE0      : 1;
  volatile  uint8_t STRG0      : 1;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t EDGE2      : 1;
  volatile  uint8_t STRG2      : 1;
} stc_mft_ppg_gatec0_field_t;

typedef struct stc_mft_ppg_ppgc5_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc5_field_t;

typedef struct stc_mft_ppg_ppgc4_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc4_field_t;

typedef struct stc_mft_ppg_ppgc7_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc7_field_t;

typedef struct stc_mft_ppg_ppgc6_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc6_field_t;

typedef struct stc_mft_ppg_gatec4_field
{
  volatile  uint8_t EDGE4      : 1;
  volatile  uint8_t STRG4      : 1;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t EDGE6      : 1;
  volatile  uint8_t STRG6      : 1;
} stc_mft_ppg_gatec4_field_t;

typedef struct stc_mft_ppg_ppgc9_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc9_field_t;

typedef struct stc_mft_ppg_ppgc8_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc8_field_t;

typedef struct stc_mft_ppg_ppgc11_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc11_field_t;

typedef struct stc_mft_ppg_ppgc10_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc10_field_t;

typedef struct stc_mft_ppg_gatec8_field
{
  volatile  uint8_t EDGE8      : 1;
  volatile  uint8_t STRG8      : 1;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t EDGE10     : 1;
  volatile  uint8_t STRG10     : 1;
} stc_mft_ppg_gatec8_field_t;

typedef struct stc_mft_ppg_ppgc13_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc13_field_t;

typedef struct stc_mft_ppg_ppgc12_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc12_field_t;

typedef struct stc_mft_ppg_ppgc15_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc15_field_t;

typedef struct stc_mft_ppg_ppgc14_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc14_field_t;

typedef struct stc_mft_ppg_gatec12_field
{
  volatile  uint8_t EDGE12     : 1;
  volatile  uint8_t STRG12     : 1;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t EDGE14     : 1;
  volatile  uint8_t STRG14     : 1;
} stc_mft_ppg_gatec12_field_t;

typedef struct stc_mft_ppg_ppgc17_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc17_field_t;

typedef struct stc_mft_ppg_ppgc16_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc16_field_t;

typedef struct stc_mft_ppg_ppgc19_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc19_field_t;

typedef struct stc_mft_ppg_ppgc18_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc18_field_t;

typedef struct stc_mft_ppg_gatec16_field
{
  volatile  uint8_t EDGE16     : 1;
  volatile  uint8_t STRG16     : 1;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t EDGE18     : 1;
  volatile  uint8_t STRG18     : 1;
} stc_mft_ppg_gatec16_field_t;

typedef struct stc_mft_ppg_ppgc21_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc21_field_t;

typedef struct stc_mft_ppg_ppgc20_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc20_field_t;

typedef struct stc_mft_ppg_ppgc23_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc23_field_t;

typedef struct stc_mft_ppg_ppgc22_field
{
  volatile  uint8_t TTRG       : 1;
  volatile  uint8_t MD         : 2;
  volatile  uint8_t PCS0       : 1;
  volatile  uint8_t PCS1       : 1;
  volatile  uint8_t INTM       : 1;
  volatile  uint8_t PUF        : 1;
  volatile  uint8_t PIE        : 1;
} stc_mft_ppg_ppgc22_field_t;

typedef struct stc_mft_ppg_gatec20_field
{
  volatile  uint8_t EDGE20     : 1;
  volatile  uint8_t STRG20     : 1;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t EDGE22     : 1;
  volatile  uint8_t STRG22     : 1;
} stc_mft_ppg_gatec20_field_t;



 
 
typedef struct stc_bt_ppg_tmcr_field
{
  volatile uint16_t STRG       : 1;
  volatile uint16_t CTEN       : 1;
  volatile uint16_t MDSE       : 1;
  volatile uint16_t OSEL       : 1;
  volatile uint16_t FMD0       : 1;
  volatile uint16_t FMD1       : 1;
  volatile uint16_t FMD2       : 1;
       uint16_t RESERVED1  : 1;
  volatile uint16_t EGS0       : 1;
  volatile uint16_t EGS1       : 1;
  volatile uint16_t PMSK       : 1;
  volatile uint16_t RTGEN      : 1;
  volatile uint16_t CKS0       : 1;
  volatile uint16_t CKS1       : 1;
  volatile uint16_t CKS2       : 1;
} stc_bt_ppg_tmcr_field_t;

typedef struct stc_bt_ppg_stc_field
{
  volatile  uint8_t UDIR       : 1;
        uint8_t RESERVED1  : 1;
  volatile  uint8_t TGIR       : 1;
        uint8_t RESERVED2  : 1;
  volatile  uint8_t UDIE       : 1;
        uint8_t RESERVED3  : 1;
  volatile  uint8_t TGIE       : 1;
} stc_bt_ppg_stc_field_t;

typedef struct stc_bt_ppg_tmcr2_field
{
  volatile  uint8_t CKS3       : 1;
} stc_bt_ppg_tmcr2_field_t;



 
 
typedef struct stc_bt_pwm_tmcr_field
{
  volatile uint16_t STRG       : 1;
  volatile uint16_t CTEN       : 1;
  volatile uint16_t MDSE       : 1;
  volatile uint16_t OSEL       : 1;
  volatile uint16_t FMD0       : 1;
  volatile uint16_t FMD1       : 1;
  volatile uint16_t FMD2       : 1;
       uint16_t RESERVED1  : 1;
  volatile uint16_t EGS0       : 1;
  volatile uint16_t EGS1       : 1;
  volatile uint16_t PMSK       : 1;
  volatile uint16_t RTGEN      : 1;
  volatile uint16_t CKS0       : 1;
  volatile uint16_t CKS1       : 1;
  volatile uint16_t CKS2       : 1;
} stc_bt_pwm_tmcr_field_t;

typedef struct stc_bt_pwm_stc_field
{
  volatile  uint8_t UDIR       : 1;
  volatile  uint8_t DTIR       : 1;
  volatile  uint8_t TGIR       : 1;
        uint8_t RESERVED1  : 1;
  volatile  uint8_t UDIE       : 1;
  volatile  uint8_t DTIE       : 1;
  volatile  uint8_t TGIE       : 1;
} stc_bt_pwm_stc_field_t;

typedef struct stc_bt_pwm_tmcr2_field
{
  volatile  uint8_t CKS3       : 1;
} stc_bt_pwm_tmcr2_field_t;



 
 
typedef struct stc_bt_rt_tmcr_field
{
  volatile uint16_t STRG       : 1;
  volatile uint16_t CTEN       : 1;
  volatile uint16_t MDSE       : 1;
  volatile uint16_t OSEL       : 1;
  volatile uint16_t FMD0       : 1;
  volatile uint16_t FMD1       : 1;
  volatile uint16_t FMD2       : 1;
  volatile uint16_t T32        : 1;
  volatile uint16_t EGS0       : 1;
  volatile uint16_t EGS1       : 1;
       uint16_t RESERVED1  : 2;
  volatile uint16_t CKS0       : 1;
  volatile uint16_t CKS1       : 1;
  volatile uint16_t CKS2       : 1;
} stc_bt_rt_tmcr_field_t;

typedef struct stc_bt_rt_stc_field
{
  volatile  uint8_t UDIR       : 1;
        uint8_t RESERVED1  : 1;
  volatile  uint8_t TGIR       : 1;
        uint8_t RESERVED2  : 1;
  volatile  uint8_t UDIE       : 1;
        uint8_t RESERVED3  : 1;
  volatile  uint8_t TGIE       : 1;
} stc_bt_rt_stc_field_t;

typedef struct stc_bt_rt_tmcr2_field
{
  volatile  uint8_t CKS3       : 1;
  volatile  uint8_t RESERVED1  : 6;
  volatile  uint8_t GATE       : 1;
} stc_bt_rt_tmcr2_field_t;



 
 
typedef struct stc_bt_pwc_tmcr_field
{
       uint16_t RESERVED1  : 1;
  volatile uint16_t CTEN       : 1;
  volatile uint16_t MDSE       : 1;
       uint16_t RESERVED2  : 1;
  volatile uint16_t FMD0       : 1;
  volatile uint16_t FMD1       : 1;
  volatile uint16_t FMD2       : 1;
  volatile uint16_t T32        : 1;
  volatile uint16_t EGS0       : 1;
  volatile uint16_t EGS1       : 1;
  volatile uint16_t EGS2       : 1;
       uint16_t RESERVED3  : 1;
  volatile uint16_t CKS0       : 1;
  volatile uint16_t CKS1       : 1;
  volatile uint16_t CKS2       : 1;
} stc_bt_pwc_tmcr_field_t;

typedef struct stc_bt_pwc_stc_field
{
  volatile  uint8_t OVIR       : 1;
        uint8_t RESERVED1  : 1;
  volatile  uint8_t EDIR       : 1;
        uint8_t RESERVED2  : 1;
  volatile  uint8_t OVIE       : 1;
        uint8_t RESERVED3  : 1;
  volatile  uint8_t EDIE       : 1;
  volatile  uint8_t ERR        : 1;
} stc_bt_pwc_stc_field_t;

typedef struct stc_bt_pwc_tmcr2_field
{
  volatile  uint8_t CKS3       : 1;
} stc_bt_pwc_tmcr2_field_t;



 
 
typedef struct stc_btiosel03_btsel0123_field
{
  volatile  uint8_t SEL01_0    : 1;
  volatile  uint8_t SEL01_1    : 1;
  volatile  uint8_t SEL01_2    : 1;
  volatile  uint8_t SEL01_3    : 1;
  volatile  uint8_t SEL23_0    : 1;
  volatile  uint8_t SEL23_1    : 1;
  volatile  uint8_t SEL23_2    : 1;
  volatile  uint8_t SEL23_3    : 1;
} stc_btiosel03_btsel0123_field_t;



 
 
typedef struct stc_btiosel47_btsel4567_field
{
  volatile  uint8_t SEL45_0    : 1;
  volatile  uint8_t SEL45_1    : 1;
  volatile  uint8_t SEL45_2    : 1;
  volatile  uint8_t SEL45_3    : 1;
  volatile  uint8_t SEL67_0    : 1;
  volatile  uint8_t SEL67_1    : 1;
  volatile  uint8_t SEL67_2    : 1;
  volatile  uint8_t SEL67_3    : 1;
} stc_btiosel47_btsel4567_field_t;



 
 
typedef struct stc_btiosel8b_btsel89ab_field
{
  volatile  uint8_t SEL89_0    : 1;
  volatile  uint8_t SEL89_1    : 1;
  volatile  uint8_t SEL89_2    : 1;
  volatile  uint8_t SEL89_3    : 1;
  volatile  uint8_t SELAB_0    : 1;
  volatile  uint8_t SELAB_1    : 1;
  volatile  uint8_t SELAB_2    : 1;
  volatile  uint8_t SELAB_3    : 1;
} stc_btiosel8b_btsel89ab_field_t;



 
 
typedef struct stc_btioselcf_btselcdef_field
{
  volatile  uint8_t SELCD_0    : 1;
  volatile  uint8_t SELCD_1    : 1;
  volatile  uint8_t SELCD_2    : 1;
  volatile  uint8_t SELCD_3    : 1;
  volatile  uint8_t SELEF_0    : 1;
  volatile  uint8_t SELEF_1    : 1;
  volatile  uint8_t SELEF_2    : 1;
  volatile  uint8_t SELEF_3    : 1;
} stc_btioselcf_btselcdef_field_t;



 
 
typedef struct stc_sbssr_btsssr_field
{
  volatile uint16_t SSR0       : 1;
  volatile uint16_t SSR1       : 1;
  volatile uint16_t SSR2       : 1;
  volatile uint16_t SSR3       : 1;
  volatile uint16_t SSR4       : 1;
  volatile uint16_t SSR5       : 1;
  volatile uint16_t SSR6       : 1;
  volatile uint16_t SSR7       : 1;
  volatile uint16_t SSR8       : 1;
  volatile uint16_t SSR9       : 1;
  volatile uint16_t SSR10      : 1;
  volatile uint16_t SSR11      : 1;
  volatile uint16_t SSR12      : 1;
  volatile uint16_t SSR13      : 1;
  volatile uint16_t SSR14      : 1;
  volatile uint16_t SSR15      : 1;
} stc_sbssr_btsssr_field_t;



 
 
typedef struct stc_qprc_qicr_field
{
  volatile uint16_t QPCMIE     : 1;
  volatile uint16_t QPCMF      : 1;
  volatile uint16_t QPRCMIE    : 1;
  volatile uint16_t QPRCMF     : 1;
  volatile uint16_t OUZIE      : 1;
  volatile uint16_t UFDF       : 1;
  volatile uint16_t OFDF       : 1;
  volatile uint16_t ZIIF       : 1;
  volatile uint16_t CDCIE      : 1;
  volatile uint16_t CDCF       : 1;
  volatile uint16_t DIRPC      : 1;
  volatile uint16_t DIROU      : 1;
  volatile uint16_t QPCNRCMIE  : 1;
  volatile uint16_t QPCNRCMF   : 1;
} stc_qprc_qicr_field_t;

typedef struct stc_qprc_qicrl_field
{
  volatile  uint8_t QPCMIE     : 1;
  volatile  uint8_t QPCMF      : 1;
  volatile  uint8_t QPRCMIE    : 1;
  volatile  uint8_t QPRCMF     : 1;
  volatile  uint8_t OUZIE      : 1;
  volatile  uint8_t UFDF       : 1;
  volatile  uint8_t OFDF       : 1;
  volatile  uint8_t ZIIF       : 1;
} stc_qprc_qicrl_field_t;

typedef struct stc_qprc_qicrh_field
{
  volatile  uint8_t CDCIE      : 1;
  volatile  uint8_t CDCF       : 1;
  volatile  uint8_t DIRPC      : 1;
  volatile  uint8_t DIROU      : 1;
  volatile  uint8_t QPCNRCMIE  : 1;
  volatile  uint8_t QPCNRCMF   : 1;
} stc_qprc_qicrh_field_t;

typedef struct stc_qprc_qcr_field
{
  volatile uint16_t PCM0       : 1;
  volatile uint16_t PCM1       : 1;
  volatile uint16_t RCM0       : 1;
  volatile uint16_t RCM1       : 1;
  volatile uint16_t PSTP       : 1;
  volatile uint16_t CGSC       : 1;
  volatile uint16_t RSEL       : 1;
  volatile uint16_t SWAP       : 1;
  volatile uint16_t PCRM0      : 1;
  volatile uint16_t PCRM1      : 1;
  volatile uint16_t AES0       : 1;
  volatile uint16_t AES1       : 1;
  volatile uint16_t BES0       : 1;
  volatile uint16_t BES1       : 1;
  volatile uint16_t CGE0       : 1;
  volatile uint16_t CGE1       : 1;
} stc_qprc_qcr_field_t;

typedef struct stc_qprc_qcrl_field
{
  volatile  uint8_t PCM0       : 1;
  volatile  uint8_t PCM1       : 1;
  volatile  uint8_t RCM0       : 1;
  volatile  uint8_t RCM1       : 1;
  volatile  uint8_t PSTP       : 1;
  volatile  uint8_t CGSC       : 1;
  volatile  uint8_t RSEL       : 1;
  volatile  uint8_t SWAP       : 1;
} stc_qprc_qcrl_field_t;

typedef struct stc_qprc_qcrh_field
{
  volatile  uint8_t PCRM0      : 1;
  volatile  uint8_t PCRM1      : 1;
  volatile  uint8_t AES0       : 1;
  volatile  uint8_t AES1       : 1;
  volatile  uint8_t BES0       : 1;
  volatile  uint8_t BES1       : 1;
  volatile  uint8_t CGE0       : 1;
  volatile  uint8_t CGE1       : 1;
} stc_qprc_qcrh_field_t;

typedef struct stc_qprc_qecr_field
{
  volatile uint16_t ORNGMD     : 1;
  volatile uint16_t ORNGF      : 1;
  volatile uint16_t ORNGIE     : 1;
  volatile uint16_t PEC        : 1;
} stc_qprc_qecr_field_t;



 
 
typedef struct stc_qprc_nf_nfctla_field
{
  volatile uint8_t AINNWS     : 3;
       uint8_t RESERVED1  : 1;
  volatile uint8_t AINLV      : 1;
  volatile uint8_t AINMD      : 1;
} stc_qprc_nf_nfctla_field_t;

typedef struct stc_qprc_nf_nfctlb_field
{
  volatile uint8_t BINNWS     : 3;
       uint8_t RESERVED1  : 1;
  volatile uint8_t BINLV      : 1;
  volatile uint8_t BINMD      : 1;
} stc_qprc_nf_nfctlb_field_t;

typedef struct stc_qprc_nf_nfrctlz_field
{
  volatile uint8_t ZINNWS     : 3;
       uint8_t RESERVED1  : 1;
  volatile uint8_t ZINLV      : 1;
  volatile uint8_t ZINMD      : 1;
} stc_qprc_nf_nfrctlz_field_t;



 
 
typedef struct stc_adc_adsr_field
{
  volatile  uint8_t SCS        : 1;
  volatile  uint8_t PCS        : 1;
  volatile  uint8_t PCNS       : 1;
        uint8_t RESERVED1  : 3;
  volatile  uint8_t FDAS       : 1;
  volatile  uint8_t ADSTP      : 1;
} stc_adc_adsr_field_t;

typedef struct stc_adc_adcr_field
{
  volatile  uint8_t OVRIE      : 1;
  volatile  uint8_t CMPIE      : 1;
  volatile  uint8_t PCIE       : 1;
  volatile  uint8_t SCIE       : 1;
        uint8_t RESERVED1  : 1;
  volatile  uint8_t CMPIF      : 1;
  volatile  uint8_t PCIF       : 1;
  volatile  uint8_t SCIF       : 1;
} stc_adc_adcr_field_t;

typedef struct stc_adc_sfns_field
{
  volatile  uint8_t SFS0       : 1;
  volatile  uint8_t SFS1       : 1;
  volatile  uint8_t SFS2       : 1;
  volatile  uint8_t SFS3       : 1;
} stc_adc_sfns_field_t;

typedef struct stc_adc_sccr_field
{
  volatile  uint8_t SSTR       : 1;
  volatile  uint8_t SHEN       : 1;
  volatile  uint8_t RPT        : 1;
        uint8_t RESERVED1  : 1;
  volatile  uint8_t SFCLR      : 1;
  volatile  uint8_t SOVR       : 1;
  volatile  uint8_t SFUL       : 1;
  volatile  uint8_t SEMP       : 1;
} stc_adc_sccr_field_t;

typedef struct stc_adc_scfd_field
{
  volatile uint32_t SC0        : 1;
  volatile uint32_t SC1        : 1;
  volatile uint32_t SC2        : 1;
  volatile uint32_t SC3        : 1;
  volatile uint32_t SC4        : 1;
       uint32_t RESERVED1  : 3;
  volatile uint32_t RS0        : 1;
  volatile uint32_t RS1        : 1;
       uint32_t RESERVED2  : 2;
  volatile uint32_t INVL       : 1;
       uint32_t RESERVED3  : 7;
  volatile uint32_t SD0        : 1;
  volatile uint32_t SD1        : 1;
  volatile uint32_t SD2        : 1;
  volatile uint32_t SD3        : 1;
  volatile uint32_t SD4        : 1;
  volatile uint32_t SD5        : 1;
  volatile uint32_t SD6        : 1;
  volatile uint32_t SD7        : 1;
  volatile uint32_t SD8        : 1;
  volatile uint32_t SD9        : 1;
  volatile uint32_t SD10       : 1;
  volatile uint32_t SD11       : 1;
} stc_adc_scfd_field_t;

typedef struct stc_adc_scfdl_field
{
  volatile uint16_t SC0        : 1;
  volatile uint16_t SC1        : 1;
  volatile uint16_t SC2        : 1;
  volatile uint16_t SC3        : 1;
  volatile uint16_t SC4        : 1;
       uint16_t RESERVED1  : 3;
  volatile uint16_t RS0        : 1;
  volatile uint16_t RS1        : 1;
       uint16_t RESERVED2  : 2;
  volatile uint16_t INVL       : 1;
} stc_adc_scfdl_field_t;

typedef struct stc_adc_scfdh_field
{
       uint16_t RESERVED1  : 4;
  volatile uint16_t SD0        : 1;
  volatile uint16_t SD1        : 1;
  volatile uint16_t SD2        : 1;
  volatile uint16_t SD3        : 1;
  volatile uint16_t SD4        : 1;
  volatile uint16_t SD5        : 1;
  volatile uint16_t SD6        : 1;
  volatile uint16_t SD7        : 1;
  volatile uint16_t SD8        : 1;
  volatile uint16_t SD9        : 1;
  volatile uint16_t SD10       : 1;
  volatile uint16_t SD11       : 1;
} stc_adc_scfdh_field_t;

typedef struct stc_adc_scis23_field
{
  volatile uint16_t AN16       : 1;
  volatile uint16_t AN17       : 1;
  volatile uint16_t AN18       : 1;
  volatile uint16_t AN19       : 1;
  volatile uint16_t AN20       : 1;
  volatile uint16_t AN21       : 1;
  volatile uint16_t AN22       : 1;
  volatile uint16_t AN23       : 1;
  volatile uint16_t AN24       : 1;
  volatile uint16_t AN25       : 1;
  volatile uint16_t AN26       : 1;
  volatile uint16_t AN27       : 1;
  volatile uint16_t AN28       : 1;
  volatile uint16_t AN29       : 1;
  volatile uint16_t AN30       : 1;
  volatile uint16_t AN31       : 1;
} stc_adc_scis23_field_t;

typedef struct stc_adc_scis2_field
{
  volatile  uint8_t AN16       : 1;
  volatile  uint8_t AN17       : 1;
  volatile  uint8_t AN18       : 1;
  volatile  uint8_t AN19       : 1;
  volatile  uint8_t AN20       : 1;
  volatile  uint8_t AN21       : 1;
  volatile  uint8_t AN22       : 1;
  volatile  uint8_t AN23       : 1;
} stc_adc_scis2_field_t;

typedef struct stc_adc_scis3_field
{
  volatile  uint8_t AN24       : 1;
  volatile  uint8_t AN25       : 1;
  volatile  uint8_t AN26       : 1;
  volatile  uint8_t AN27       : 1;
  volatile  uint8_t AN28       : 1;
  volatile  uint8_t AN29       : 1;
  volatile  uint8_t AN30       : 1;
  volatile  uint8_t AN31       : 1;
} stc_adc_scis3_field_t;

typedef struct stc_adc_scis01_field
{
  volatile uint16_t AN0        : 1;
  volatile uint16_t AN1        : 1;
  volatile uint16_t AN2        : 1;
  volatile uint16_t AN3        : 1;
  volatile uint16_t AN4        : 1;
  volatile uint16_t AN5        : 1;
  volatile uint16_t AN6        : 1;
  volatile uint16_t AN7        : 1;
  volatile uint16_t AN8        : 1;
  volatile uint16_t AN9        : 1;
  volatile uint16_t AN10       : 1;
  volatile uint16_t AN11       : 1;
  volatile uint16_t AN12       : 1;
  volatile uint16_t AN13       : 1;
  volatile uint16_t AN14       : 1;
  volatile uint16_t AN15       : 1;
} stc_adc_scis01_field_t;

typedef struct stc_adc_scis0_field
{
  volatile  uint8_t AN0        : 1;
  volatile  uint8_t AN1        : 1;
  volatile  uint8_t AN2        : 1;
  volatile  uint8_t AN3        : 1;
  volatile  uint8_t AN4        : 1;
  volatile  uint8_t AN5        : 1;
  volatile  uint8_t AN6        : 1;
  volatile  uint8_t AN7        : 1;
} stc_adc_scis0_field_t;

typedef struct stc_adc_scis1_field
{
  volatile  uint8_t AN8        : 1;
  volatile  uint8_t AN9        : 1;
  volatile  uint8_t AN10       : 1;
  volatile  uint8_t AN11       : 1;
  volatile  uint8_t AN12       : 1;
  volatile  uint8_t AN13       : 1;
  volatile  uint8_t AN14       : 1;
  volatile  uint8_t AN15       : 1;
} stc_adc_scis1_field_t;

typedef struct stc_adc_pfns_field
{
  volatile  uint8_t PFS        : 2;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t TEST0      : 1;
  volatile  uint8_t TEST1      : 1;
} stc_adc_pfns_field_t;

typedef struct stc_adc_pccr_field
{
  volatile  uint8_t PSTR       : 1;
  volatile  uint8_t PHEN       : 1;
  volatile  uint8_t PEEN       : 1;
  volatile  uint8_t ESCE       : 1;
  volatile  uint8_t PFCLR      : 1;
  volatile  uint8_t POVR       : 1;
  volatile  uint8_t PFUL       : 1;
  volatile  uint8_t PEMP       : 1;
} stc_adc_pccr_field_t;

typedef struct stc_adc_pcfd_field
{
  volatile uint32_t PC0        : 1;
  volatile uint32_t PC1        : 1;
  volatile uint32_t PC2        : 1;
  volatile uint32_t PC3        : 1;
  volatile uint32_t PC4        : 1;
       uint32_t RESERVED1  : 3;
  volatile uint32_t RS0        : 1;
  volatile uint32_t RS1        : 1;
  volatile uint32_t RS2        : 1;
       uint32_t RESERVED2  : 1;
  volatile uint32_t INVL       : 1;
       uint32_t RESERVED3  : 7;
  volatile uint32_t PD0        : 1;
  volatile uint32_t PD1        : 1;
  volatile uint32_t PD2        : 1;
  volatile uint32_t PD3        : 1;
  volatile uint32_t PD4        : 1;
  volatile uint32_t PD5        : 1;
  volatile uint32_t PD6        : 1;
  volatile uint32_t PD7        : 1;
  volatile uint32_t PD8        : 1;
  volatile uint32_t PD9        : 1;
  volatile uint32_t PD10       : 1;
  volatile uint32_t PD11       : 1;
} stc_adc_pcfd_field_t;

typedef struct stc_adc_pcfdl_field
{
  volatile uint16_t PC0        : 1;
  volatile uint16_t PC1        : 1;
  volatile uint16_t PC2        : 1;
  volatile uint16_t PC3        : 1;
  volatile uint16_t PC4        : 1;
       uint16_t RESERVED1  : 3;
  volatile uint16_t RS0        : 1;
  volatile uint16_t RS1        : 1;
  volatile uint16_t RS2        : 1;
       uint16_t RESERVED2  : 1;
  volatile uint16_t INVL       : 1;
} stc_adc_pcfdl_field_t;

typedef struct stc_adc_pcfdh_field
{
       uint16_t RESERVED1  : 4;
  volatile uint16_t PD0        : 1;
  volatile uint16_t PD1        : 1;
  volatile uint16_t PD2        : 1;
  volatile uint16_t PD3        : 1;
  volatile uint16_t PD4        : 1;
  volatile uint16_t PD5        : 1;
  volatile uint16_t PD6        : 1;
  volatile uint16_t PD7        : 1;
  volatile uint16_t PD8        : 1;
  volatile uint16_t PD9        : 1;
  volatile uint16_t PD10       : 1;
  volatile uint16_t PD11       : 1;
} stc_adc_pcfdh_field_t;

typedef struct stc_adc_pcis_field
{
  volatile  uint8_t P1A        : 3;
  volatile  uint8_t P2A        : 5;
} stc_adc_pcis_field_t;

typedef struct stc_adc_cmpcr_field
{
  volatile  uint8_t CCH        : 5;
  volatile  uint8_t CMD0       : 1;
  volatile  uint8_t CMD1       : 1;
  volatile  uint8_t CMPEN      : 1;
} stc_adc_cmpcr_field_t;

typedef struct stc_adc_cmpd_field
{
       uint16_t RESERVED1  : 6;
  volatile uint16_t CMAD2      : 1;
  volatile uint16_t CMAD3      : 1;
  volatile uint16_t CMAD4      : 1;
  volatile uint16_t CMAD5      : 1;
  volatile uint16_t CMAD6      : 1;
  volatile uint16_t CMAD7      : 1;
  volatile uint16_t CMAD8      : 1;
  volatile uint16_t CMAD9      : 1;
  volatile uint16_t CMAD10     : 1;
  volatile uint16_t CMAD11     : 1;
} stc_adc_cmpd_field_t;

typedef struct stc_adc_adss23_field
{
  volatile uint16_t TS16       : 1;
  volatile uint16_t TS17       : 1;
  volatile uint16_t TS18       : 1;
  volatile uint16_t TS19       : 1;
  volatile uint16_t TS20       : 1;
  volatile uint16_t TS21       : 1;
  volatile uint16_t TS22       : 1;
  volatile uint16_t TS23       : 1;
  volatile uint16_t TS24       : 1;
  volatile uint16_t TS25       : 1;
  volatile uint16_t TS26       : 1;
  volatile uint16_t TS27       : 1;
  volatile uint16_t TS28       : 1;
  volatile uint16_t TS29       : 1;
  volatile uint16_t TS30       : 1;
  volatile uint16_t TS31       : 1;
} stc_adc_adss23_field_t;

typedef struct stc_adc_adss2_field
{
  volatile  uint8_t TS16       : 1;
  volatile  uint8_t TS17       : 1;
  volatile  uint8_t TS18       : 1;
  volatile  uint8_t TS19       : 1;
  volatile  uint8_t TS20       : 1;
  volatile  uint8_t TS21       : 1;
  volatile  uint8_t TS22       : 1;
  volatile  uint8_t TS23       : 1;
} stc_adc_adss2_field_t;

typedef struct stc_adc_adss3_field
{
  volatile  uint8_t TS24       : 1;
  volatile  uint8_t TS25       : 1;
  volatile  uint8_t TS26       : 1;
  volatile  uint8_t TS27       : 1;
  volatile  uint8_t TS28       : 1;
  volatile  uint8_t TS29       : 1;
  volatile  uint8_t TS30       : 1;
  volatile  uint8_t TS31       : 1;
} stc_adc_adss3_field_t;

typedef struct stc_adc_adss01_field
{
  volatile uint16_t TS0        : 1;
  volatile uint16_t TS1        : 1;
  volatile uint16_t TS2        : 1;
  volatile uint16_t TS3        : 1;
  volatile uint16_t TS4        : 1;
  volatile uint16_t TS5        : 1;
  volatile uint16_t TS6        : 1;
  volatile uint16_t TS7        : 1;
  volatile uint16_t TS8        : 1;
  volatile uint16_t TS9        : 1;
  volatile uint16_t TS10       : 1;
  volatile uint16_t TS11       : 1;
  volatile uint16_t TS12       : 1;
  volatile uint16_t TS13       : 1;
  volatile uint16_t TS14       : 1;
  volatile uint16_t TS15       : 1;
} stc_adc_adss01_field_t;

typedef struct stc_adc_adss0_field
{
  volatile  uint8_t TS0        : 1;
  volatile  uint8_t TS1        : 1;
  volatile  uint8_t TS2        : 1;
  volatile  uint8_t TS3        : 1;
  volatile  uint8_t TS4        : 1;
  volatile  uint8_t TS5        : 1;
  volatile  uint8_t TS6        : 1;
  volatile  uint8_t TS7        : 1;
} stc_adc_adss0_field_t;

typedef struct stc_adc_adss1_field
{
  volatile  uint8_t TS8        : 1;
  volatile  uint8_t TS9        : 1;
  volatile  uint8_t TS10       : 1;
  volatile  uint8_t TS11       : 1;
  volatile  uint8_t TS12       : 1;
  volatile  uint8_t TS13       : 1;
  volatile  uint8_t TS14       : 1;
  volatile  uint8_t TS15       : 1;
} stc_adc_adss1_field_t;

typedef struct stc_adc_adst01_field
{
  volatile uint16_t ST10       : 1;
  volatile uint16_t ST11       : 1;
  volatile uint16_t ST12       : 1;
  volatile uint16_t ST13       : 1;
  volatile uint16_t ST14       : 1;
  volatile uint16_t STX10      : 1;
  volatile uint16_t STX11      : 1;
  volatile uint16_t STX12      : 1;
  volatile uint16_t ST00       : 1;
  volatile uint16_t ST01       : 1;
  volatile uint16_t ST02       : 1;
  volatile uint16_t ST03       : 1;
  volatile uint16_t ST04       : 1;
  volatile uint16_t STX00      : 1;
  volatile uint16_t STX01      : 1;
  volatile uint16_t STX02      : 1;
} stc_adc_adst01_field_t;

typedef struct stc_adc_adst1_field
{
  volatile  uint8_t ST1        : 5;
  volatile  uint8_t STX1       : 3;
} stc_adc_adst1_field_t;

typedef struct stc_adc_adst0_field
{
  volatile  uint8_t ST0        : 5;
  volatile  uint8_t STX0       : 3;
} stc_adc_adst0_field_t;

typedef struct stc_adc_adct_field
{
  volatile  uint8_t CT0        : 1;
  volatile  uint8_t CT1        : 1;
  volatile  uint8_t CT2        : 1;
} stc_adc_adct_field_t;

typedef struct stc_adc_prtsl_field
{
  volatile  uint8_t PRTSL0     : 1;
  volatile  uint8_t PRTSL1     : 1;
  volatile  uint8_t PRTSL2     : 1;
  volatile  uint8_t PRTSL3     : 1;
} stc_adc_prtsl_field_t;

typedef struct stc_adc_sctsl_field
{
  volatile  uint8_t SCTSL0     : 1;
  volatile  uint8_t SCTSL1     : 1;
  volatile  uint8_t SCTSL2     : 1;
  volatile  uint8_t SCTSL3     : 1;
} stc_adc_sctsl_field_t;

typedef struct stc_adc_adcen_field
{
  volatile  uint16_t ENBL       : 1;
  volatile  uint16_t READY      : 1;
  volatile  uint16_t RESERVED   : 6;
  volatile  uint16_t ENBLTIME   : 8;
} stc_adc_adcen_field_t;

typedef struct stc_adc_wcmpdh_field
{
        uint16_t RESERVED   : 6;
  volatile  uint16_t CMHD       : 10;
} stc_adc_wcmpdh_field_t;

typedef struct stc_adc_wcmpcr_field
{
        uint8_t  RESERVED   : 2;
  volatile  uint8_t  RCOE       : 1;
  volatile  uint8_t  RCOIE      : 1;
  volatile  uint8_t  RCOIRRS    : 1;
  volatile  uint8_t  RCOCD      : 3;
} stc_adc_wcmpcr_field_t;

typedef struct stc_adc_wcmpdl_field
{
        uint16_t RESERVED   : 6;
  volatile  uint16_t CMLD       : 10;
} stc_adc_wcmpdl_field_t;

typedef struct stc_adc_wcmpsr_field
{
  volatile  uint8_t  WCCH       : 5;
  volatile  uint8_t  WCMD       : 1;
  volatile  uint8_t  RESERVED   : 2;
} stc_adc_wcmpsr_field_t;

typedef struct stc_adc_wcmrcot_field
{
  volatile  uint32_t RCOOF      : 1;
        uint32_t RESERVED   : 31;
} stc_adc_wcmrcot_field_t;

typedef struct stc_adc_wcmrcif_field
{
  volatile  uint32_t RCINT      : 1;
        uint32_t RESERVED   : 31;
} stc_adc_wcmrcif_field_t;



 
 
typedef struct stc_crtrim_mcr_psr_field
{
  volatile  uint8_t CSR        : 3;
} stc_crtrim_mcr_psr_field_t;

typedef struct stc_crtrim_mcr_ftrm_field
{
  volatile uint16_t TRD        :10;
} stc_crtrim_mcr_ftrm_field_t;

typedef struct stc_crtrim_mcr_ttrm_field
{
  volatile  uint8_t TRT        : 5;
} stc_crtrim_mcr_ttrm_field_t;

typedef struct stc_crtrim_mcr_rlr_field
{
  volatile uint32_t TRMLCK     :32;
} stc_crtrim_mcr_rlr_field_t;



 
 
typedef struct stc_exti_enir_field
{
  volatile uint32_t EN0        : 1;
  volatile uint32_t EN1        : 1;
  volatile uint32_t EN2        : 1;
  volatile uint32_t EN3        : 1;
  volatile uint32_t EN4        : 1;
  volatile uint32_t EN5        : 1;
  volatile uint32_t EN6        : 1;
  volatile uint32_t EN7        : 1;
  volatile uint32_t EN8        : 1;
  volatile uint32_t EN9        : 1;
  volatile uint32_t EN10       : 1;
  volatile uint32_t EN11       : 1;
  volatile uint32_t EN12       : 1;
  volatile uint32_t EN13       : 1;
  volatile uint32_t EN14       : 1;
  volatile uint32_t EN15       : 1;
  volatile uint32_t EN16       : 1;
  volatile uint32_t EN17       : 1;
  volatile uint32_t EN18       : 1;
  volatile uint32_t EN19       : 1;
  volatile uint32_t EN20       : 1;
  volatile uint32_t EN21       : 1;
  volatile uint32_t EN22       : 1;
  volatile uint32_t EN23       : 1;
  volatile uint32_t EN24       : 1;
  volatile uint32_t EN25       : 1;
  volatile uint32_t EN26       : 1;
  volatile uint32_t EN27       : 1;
  volatile uint32_t EN28       : 1;
  volatile uint32_t EN29       : 1;
  volatile uint32_t EN30       : 1;
  volatile uint32_t EN31       : 1;
} stc_exti_enir_field_t;

typedef struct stc_exti_eirr_field
{
  volatile uint32_t ER0        : 1;
  volatile uint32_t ER1        : 1;
  volatile uint32_t ER2        : 1;
  volatile uint32_t ER3        : 1;
  volatile uint32_t ER4        : 1;
  volatile uint32_t ER5        : 1;
  volatile uint32_t ER6        : 1;
  volatile uint32_t ER7        : 1;
  volatile uint32_t ER8        : 1;
  volatile uint32_t ER9        : 1;
  volatile uint32_t ER10       : 1;
  volatile uint32_t ER11       : 1;
  volatile uint32_t ER12       : 1;
  volatile uint32_t ER13       : 1;
  volatile uint32_t ER14       : 1;
  volatile uint32_t ER15       : 1;
  volatile uint32_t ER16       : 1;
  volatile uint32_t ER17       : 1;
  volatile uint32_t ER18       : 1;
  volatile uint32_t ER19       : 1;
  volatile uint32_t ER20       : 1;
  volatile uint32_t ER21       : 1;
  volatile uint32_t ER22       : 1;
  volatile uint32_t ER23       : 1;
  volatile uint32_t ER24       : 1;
  volatile uint32_t ER25       : 1;
  volatile uint32_t ER26       : 1;
  volatile uint32_t ER27       : 1;
  volatile uint32_t ER28       : 1;
  volatile uint32_t ER29       : 1;
  volatile uint32_t ER30       : 1;
  volatile uint32_t ER31       : 1;
} stc_exti_eirr_field_t;

typedef struct stc_exti_eicl_field
{
  volatile uint32_t ECL0       : 1;
  volatile uint32_t ECL1       : 1;
  volatile uint32_t ECL2       : 1;
  volatile uint32_t ECL3       : 1;
  volatile uint32_t ECL4       : 1;
  volatile uint32_t ECL5       : 1;
  volatile uint32_t ECL6       : 1;
  volatile uint32_t ECL7       : 1;
  volatile uint32_t ECL8       : 1;
  volatile uint32_t ECL9       : 1;
  volatile uint32_t ECL10      : 1;
  volatile uint32_t ECL11      : 1;
  volatile uint32_t ECL12      : 1;
  volatile uint32_t ECL13      : 1;
  volatile uint32_t ECL14      : 1;
  volatile uint32_t ECL15      : 1;
  volatile uint32_t ECL16      : 1;
  volatile uint32_t ECL17      : 1;
  volatile uint32_t ECL18      : 1;
  volatile uint32_t ECL19      : 1;
  volatile uint32_t ECL20      : 1;
  volatile uint32_t ECL21      : 1;
  volatile uint32_t ECL22      : 1;
  volatile uint32_t ECL23      : 1;
  volatile uint32_t ECL24      : 1;
  volatile uint32_t ECL25      : 1;
  volatile uint32_t ECL26      : 1;
  volatile uint32_t ECL27      : 1;
  volatile uint32_t ECL28      : 1;
  volatile uint32_t ECL29      : 1;
  volatile uint32_t ECL30      : 1;
  volatile uint32_t ECL31      : 1;
} stc_exti_eicl_field_t;

typedef struct stc_exti_elvr_field
{
  volatile uint32_t LA0        : 1;
  volatile uint32_t LB0        : 1;
  volatile uint32_t LA1        : 1;
  volatile uint32_t LB1        : 1;
  volatile uint32_t LA2        : 1;
  volatile uint32_t LB2        : 1;
  volatile uint32_t LA3        : 1;
  volatile uint32_t LB3        : 1;
  volatile uint32_t LA4        : 1;
  volatile uint32_t LB4        : 1;
  volatile uint32_t LA5        : 1;
  volatile uint32_t LB5        : 1;
  volatile uint32_t LA6        : 1;
  volatile uint32_t LB6        : 1;
  volatile uint32_t LA7        : 1;
  volatile uint32_t LB7        : 1;
  volatile uint32_t LA8        : 1;
  volatile uint32_t LB8        : 1;
  volatile uint32_t LA9        : 1;
  volatile uint32_t LB9        : 1;
  volatile uint32_t LA10       : 1;
  volatile uint32_t LB10       : 1;
  volatile uint32_t LA11       : 1;
  volatile uint32_t LB11       : 1;
  volatile uint32_t LA12       : 1;
  volatile uint32_t LB12       : 1;
  volatile uint32_t LA13       : 1;
  volatile uint32_t LB13       : 1;
  volatile uint32_t LA14       : 1;
  volatile uint32_t LB14       : 1;
  volatile uint32_t LA15       : 1;
  volatile uint32_t LB15       : 1;
} stc_exti_elvr_field_t;

typedef struct stc_exti_elvr1_field
{
  volatile uint32_t LA16       : 1;
  volatile uint32_t LB16       : 1;
  volatile uint32_t LA17       : 1;
  volatile uint32_t LB17       : 1;
  volatile uint32_t LA18       : 1;
  volatile uint32_t LB18       : 1;
  volatile uint32_t LA19       : 1;
  volatile uint32_t LB19       : 1;
  volatile uint32_t LA20       : 1;
  volatile uint32_t LB20       : 1;
  volatile uint32_t LA21       : 1;
  volatile uint32_t LB21       : 1;
  volatile uint32_t LA22       : 1;
  volatile uint32_t LB22       : 1;
  volatile uint32_t LA23       : 1;
  volatile uint32_t LB23       : 1;
  volatile uint32_t LA24       : 1;
  volatile uint32_t LB24       : 1;
  volatile uint32_t LA25       : 1;
  volatile uint32_t LB25       : 1;
  volatile uint32_t LA26       : 1;
  volatile uint32_t LB26       : 1;
  volatile uint32_t LA27       : 1;
  volatile uint32_t LB27       : 1;
  volatile uint32_t LA28       : 1;
  volatile uint32_t LB28       : 1;
  volatile uint32_t LA29       : 1;
  volatile uint32_t LB29       : 1;
  volatile uint32_t LA30       : 1;
  volatile uint32_t LB30       : 1;
  volatile uint32_t LA31       : 1;
  volatile uint32_t LB31       : 1;
} stc_exti_elvr1_field_t;

typedef struct stc_exti_nmirr_field
{
  volatile  uint8_t NR         : 1;
} stc_exti_nmirr_field_t;

typedef struct stc_exti_nmicl_field
{
  volatile  uint8_t NCL        : 1;
} stc_exti_nmicl_field_t;



 
 
typedef struct stc_intreq_drqsel_field
{
  volatile uint32_t USBEP1     : 1;
  volatile uint32_t USBEP2     : 1;
  volatile uint32_t USBEP3     : 1;
  volatile uint32_t USBEP4     : 1;
  volatile uint32_t USBEP5     : 1;
  volatile uint32_t ADCSCAN0   : 1;
  volatile uint32_t ADCSCAN1   : 1;
  volatile uint32_t ADCSCAN2   : 1;
  volatile uint32_t IRQ0BT0    : 1;
  volatile uint32_t IRQ0BT2    : 1;
  volatile uint32_t IRQ0BT4    : 1;
  volatile uint32_t IRQ0BT6    : 1;
  volatile uint32_t MFS0RX     : 1;
  volatile uint32_t MFS0TX     : 1;
  volatile uint32_t MFS1RX     : 1;
  volatile uint32_t MFS1TX     : 1;
  volatile uint32_t MFS2RX     : 1;
  volatile uint32_t MFS2TX     : 1;
  volatile uint32_t MFS3RX     : 1;
  volatile uint32_t MFS3TX     : 1;
  volatile uint32_t MFS4RX     : 1;
  volatile uint32_t MFS4TX     : 1;
  volatile uint32_t MFS5RX     : 1;
  volatile uint32_t MFS5TX     : 1;
  volatile uint32_t MFS6RX     : 1;
  volatile uint32_t MFS6TX     : 1;
  volatile uint32_t MFS7RX     : 1;
  volatile uint32_t MFS7TX     : 1;
  volatile uint32_t EXINT0     : 1;
  volatile uint32_t EXINT1     : 1;
  volatile uint32_t EXINT2     : 1;
  volatile uint32_t EXINT3     : 1;
} stc_intreq_drqsel_field_t;

typedef struct stc_intreq_oddpks_field
{
  volatile  uint8_t ODDPKS0    : 1;
  volatile  uint8_t ODDPKS1    : 1;
  volatile  uint8_t ODDPKS2    : 1;
  volatile  uint8_t ODDPKS3    : 1;
  volatile  uint8_t ODDPKS4    : 1;
} stc_intreq_oddpks_field_t;

typedef struct stc_intreq_oddpks1_field
{
  volatile  uint8_t ODDPKS10   : 1;
  volatile  uint8_t ODDPKS11   : 1;
  volatile  uint8_t ODDPKS12   : 1;
  volatile  uint8_t ODDPKS13   : 1;
  volatile  uint8_t ODDPKS14   : 1;
} stc_intreq_oddpks1_field_t;

typedef struct stc_intreq_irq003sel_field
{
  volatile uint32_t SELIRQ     : 8;
       uint32_t RESERVED1  : 8;
  volatile uint32_t SELBIT     : 8;
} stc_intreq_irq003sel_field_t;

typedef struct stc_intreq_irq004sel_field
{
  volatile uint32_t SELIRQ     : 8;
       uint32_t RESERVED1  : 8;
  volatile uint32_t SELBIT     : 8;
} stc_intreq_irq004sel_field_t;

typedef struct stc_intreq_irq005sel_field
{
  volatile uint32_t SELIRQ     : 8;
       uint32_t RESERVED1  : 8;
  volatile uint32_t SELBIT     : 8;
} stc_intreq_irq005sel_field_t;

typedef struct stc_intreq_irq006sel_field
{
  volatile uint32_t SELIRQ     : 8;
       uint32_t RESERVED1  : 8;
  volatile uint32_t SELBIT     : 8;
} stc_intreq_irq006sel_field_t;

typedef struct stc_intreq_irq007sel_field
{
  volatile uint32_t SELIRQ     : 8;
       uint32_t RESERVED1  : 8;
  volatile uint32_t SELBIT     : 8;
} stc_intreq_irq007sel_field_t;

typedef struct stc_intreq_irq008sel_field
{
  volatile uint32_t SELIRQ     : 8;
       uint32_t RESERVED1  : 8;
  volatile uint32_t SELBIT     : 8;
} stc_intreq_irq008sel_field_t;

typedef struct stc_intreq_irq009sel_field
{
  volatile uint32_t SELIRQ     : 8;
       uint32_t RESERVED1  : 8;
  volatile uint32_t SELBIT     : 8;
} stc_intreq_irq009sel_field_t;

typedef struct stc_intreq_irq010sel_field
{
  volatile uint32_t SELIRQ     : 8;
       uint32_t RESERVED1  : 8;
  volatile uint32_t SELBIT     : 8;
} stc_intreq_irq010sel_field_t;

typedef struct stc_intreq_exc02mon_field
{
  volatile uint32_t NMI        : 1;
  volatile uint32_t HWINT      : 1;
} stc_intreq_exc02mon_field_t;

typedef struct stc_intreq_irq000mon_field
{
  volatile uint32_t FCSINT     : 1;
} stc_intreq_irq000mon_field_t;

typedef struct stc_intreq_irq001mon_field
{
  volatile uint32_t SWWDTINT   : 1;
} stc_intreq_irq001mon_field_t;

typedef struct stc_intreq_irq002mon_field
{
  volatile uint32_t LVDINT     : 1;
} stc_intreq_irq002mon_field_t;

typedef struct stc_intreq_irq003mon_field
{
  volatile uint32_t IRQBIT0    : 1;
  volatile uint32_t IRQBIT1    : 1;
  volatile uint32_t IRQBIT2    : 1;
  volatile uint32_t IRQBIT3    : 1;
  volatile uint32_t IRQBIT4    : 1;
  volatile uint32_t IRQBIT5    : 1;
  volatile uint32_t IRQBIT6    : 1;
  volatile uint32_t IRQBIT7    : 1;
} stc_intreq_irq003mon_field_t;

typedef struct stc_intreq_irq004mon_field
{
  volatile uint32_t IRQBIT0    : 1;
  volatile uint32_t IRQBIT1    : 1;
  volatile uint32_t IRQBIT2    : 1;
  volatile uint32_t IRQBIT3    : 1;
  volatile uint32_t IRQBIT4    : 1;
  volatile uint32_t IRQBIT5    : 1;
  volatile uint32_t IRQBIT6    : 1;
  volatile uint32_t IRQBIT7    : 1;
} stc_intreq_irq004mon_field_t;

typedef struct stc_intreq_irq005mon_field
{
  volatile uint32_t IRQBIT0    : 1;
  volatile uint32_t IRQBIT1    : 1;
  volatile uint32_t IRQBIT2    : 1;
  volatile uint32_t IRQBIT3    : 1;
  volatile uint32_t IRQBIT4    : 1;
  volatile uint32_t IRQBIT5    : 1;
  volatile uint32_t IRQBIT6    : 1;
  volatile uint32_t IRQBIT7    : 1;
} stc_intreq_irq005mon_field_t;

typedef struct stc_intreq_irq006mon_field
{
  volatile uint32_t IRQBIT0    : 1;
  volatile uint32_t IRQBIT1    : 1;
  volatile uint32_t IRQBIT2    : 1;
  volatile uint32_t IRQBIT3    : 1;
  volatile uint32_t IRQBIT4    : 1;
  volatile uint32_t IRQBIT5    : 1;
  volatile uint32_t IRQBIT6    : 1;
  volatile uint32_t IRQBIT7    : 1;
} stc_intreq_irq006mon_field_t;

typedef struct stc_intreq_irq007mon_field
{
  volatile uint32_t IRQBIT0    : 1;
  volatile uint32_t IRQBIT1    : 1;
  volatile uint32_t IRQBIT2    : 1;
  volatile uint32_t IRQBIT3    : 1;
  volatile uint32_t IRQBIT4    : 1;
  volatile uint32_t IRQBIT5    : 1;
  volatile uint32_t IRQBIT6    : 1;
  volatile uint32_t IRQBIT7    : 1;
} stc_intreq_irq007mon_field_t;

typedef struct stc_intreq_irq008mon_field
{
  volatile uint32_t IRQBIT0    : 1;
  volatile uint32_t IRQBIT1    : 1;
  volatile uint32_t IRQBIT2    : 1;
  volatile uint32_t IRQBIT3    : 1;
  volatile uint32_t IRQBIT4    : 1;
  volatile uint32_t IRQBIT5    : 1;
  volatile uint32_t IRQBIT6    : 1;
  volatile uint32_t IRQBIT7    : 1;
} stc_intreq_irq008mon_field_t;

typedef struct stc_intreq_irq009mon_field
{
  volatile uint32_t IRQBIT0    : 1;
  volatile uint32_t IRQBIT1    : 1;
  volatile uint32_t IRQBIT2    : 1;
  volatile uint32_t IRQBIT3    : 1;
  volatile uint32_t IRQBIT4    : 1;
  volatile uint32_t IRQBIT5    : 1;
  volatile uint32_t IRQBIT6    : 1;
  volatile uint32_t IRQBIT7    : 1;
} stc_intreq_irq009mon_field_t;

typedef struct stc_intreq_irq010mon_field
{
  volatile uint32_t IRQBIT0    : 1;
  volatile uint32_t IRQBIT1    : 1;
  volatile uint32_t IRQBIT2    : 1;
  volatile uint32_t IRQBIT3    : 1;
  volatile uint32_t IRQBIT4    : 1;
  volatile uint32_t IRQBIT5    : 1;
  volatile uint32_t IRQBIT6    : 1;
  volatile uint32_t IRQBIT7    : 1;
} stc_intreq_irq010mon_field_t;

typedef struct stc_intreq_irq011mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq011mon_field_t;

typedef struct stc_intreq_irq012mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq012mon_field_t;

typedef struct stc_intreq_irq013mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq013mon_field_t;

typedef struct stc_intreq_irq014mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq014mon_field_t;

typedef struct stc_intreq_irq015mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq015mon_field_t;

typedef struct stc_intreq_irq016mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq016mon_field_t;

typedef struct stc_intreq_irq017mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq017mon_field_t;

typedef struct stc_intreq_irq018mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq018mon_field_t;

typedef struct stc_intreq_irq019mon_field
{
  volatile uint32_t QUDINT0    : 1;
  volatile uint32_t QUDINT1    : 1;
  volatile uint32_t QUDINT2    : 1;
  volatile uint32_t QUDINT3    : 1;
  volatile uint32_t QUDINT4    : 1;
  volatile uint32_t QUDINT5    : 1;
} stc_intreq_irq019mon_field_t;

typedef struct stc_intreq_irq020mon_field
{
  volatile uint32_t QUDINT0    : 1;
  volatile uint32_t QUDINT1    : 1;
  volatile uint32_t QUDINT2    : 1;
  volatile uint32_t QUDINT3    : 1;
  volatile uint32_t QUDINT4    : 1;
  volatile uint32_t QUDINT5    : 1;
} stc_intreq_irq020mon_field_t;

typedef struct stc_intreq_irq021mon_field
{
  volatile uint32_t WAVEINT0   : 1;
  volatile uint32_t WAVEINT1   : 1;
  volatile uint32_t WAVEINT2   : 1;
  volatile uint32_t WAVEINT3   : 1;
} stc_intreq_irq021mon_field_t;

typedef struct stc_intreq_irq022mon_field
{
  volatile uint32_t WAVEINT0   : 1;
  volatile uint32_t WAVEINT1   : 1;
  volatile uint32_t WAVEINT2   : 1;
  volatile uint32_t WAVEINT3   : 1;
} stc_intreq_irq022mon_field_t;

typedef struct stc_intreq_irq023mon_field
{
  volatile uint32_t WAVEINT0   : 1;
  volatile uint32_t WAVEINT1   : 1;
  volatile uint32_t WAVEINT2   : 1;
  volatile uint32_t WAVEINT3   : 1;
} stc_intreq_irq023mon_field_t;

typedef struct stc_intreq_irq024mon_field
{
  volatile uint32_t FRT_PEAK_INT0: 1;
  volatile uint32_t FRT_PEAK_INT1: 1;
  volatile uint32_t FRT_PEAK_INT2: 1;
} stc_intreq_irq024mon_field_t;

typedef struct stc_intreq_irq025mon_field
{
  volatile uint32_t FRT_ZERO_INT0: 1;
  volatile uint32_t FRT_ZERO_INT1: 1;
  volatile uint32_t FRT_ZERO_INT2: 1;
} stc_intreq_irq025mon_field_t;

typedef struct stc_intreq_irq026mon_field
{
  volatile uint32_t ICUINT0    : 1;
  volatile uint32_t ICUINT1    : 1;
  volatile uint32_t ICUINT2    : 1;
  volatile uint32_t ICUINT3    : 1;
} stc_intreq_irq026mon_field_t;

typedef struct stc_intreq_irq027mon_field
{
  volatile uint32_t OCUINT0    : 1;
  volatile uint32_t OCUINT1    : 1;
  volatile uint32_t OCUINT2    : 1;
  volatile uint32_t OCUINT3    : 1;
  volatile uint32_t OCUINT4    : 1;
  volatile uint32_t OCUINT5    : 1;
} stc_intreq_irq027mon_field_t;

typedef struct stc_intreq_irq028mon_field
{
  volatile uint32_t FRT_PEAK_INT0: 1;
  volatile uint32_t FRT_PEAK_INT1: 1;
  volatile uint32_t FRT_PEAK_INT2: 1;
} stc_intreq_irq028mon_field_t;

typedef struct stc_intreq_irq029mon_field
{
  volatile uint32_t FRT_ZERO_INT0: 1;
  volatile uint32_t FRT_ZERO_INT1: 1;
  volatile uint32_t FRT_ZERO_INT2: 1;
} stc_intreq_irq029mon_field_t;

typedef struct stc_intreq_irq030mon_field
{
  volatile uint32_t ICUINT0    : 1;
  volatile uint32_t ICUINT1    : 1;
  volatile uint32_t ICUINT2    : 1;
  volatile uint32_t ICUINT3    : 1;
} stc_intreq_irq030mon_field_t;

typedef struct stc_intreq_irq031mon_field
{
  volatile uint32_t OCUINT0    : 1;
  volatile uint32_t OCUINT1    : 1;
  volatile uint32_t OCUINT2    : 1;
  volatile uint32_t OCUINT3    : 1;
  volatile uint32_t OCUINT4    : 1;
  volatile uint32_t OCUINT5    : 1;
} stc_intreq_irq031mon_field_t;

typedef struct stc_intreq_irq032mon_field
{
  volatile uint32_t FRT_PEAK_INT0: 1;
  volatile uint32_t FRT_PEAK_INT1: 1;
  volatile uint32_t FRT_PEAK_INT2: 1;
} stc_intreq_irq032mon_field_t;

typedef struct stc_intreq_irq033mon_field
{
  volatile uint32_t FRT_ZERO_INT0: 1;
  volatile uint32_t FRT_ZERO_INT1: 1;
  volatile uint32_t FRT_ZERO_INT2: 1;
} stc_intreq_irq033mon_field_t;

typedef struct stc_intreq_irq034mon_field
{
  volatile uint32_t ICUINT0    : 1;
  volatile uint32_t ICUINT1    : 1;
  volatile uint32_t ICUINT2    : 1;
  volatile uint32_t ICUINT3    : 1;
} stc_intreq_irq034mon_field_t;

typedef struct stc_intreq_irq035mon_field
{
  volatile uint32_t OCUINT0    : 1;
  volatile uint32_t OCUINT1    : 1;
  volatile uint32_t OCUINT2    : 1;
  volatile uint32_t OCUINT3    : 1;
  volatile uint32_t OCUINT4    : 1;
  volatile uint32_t OCUINT5    : 1;
} stc_intreq_irq035mon_field_t;

typedef struct stc_intreq_irq036mon_field
{
  volatile uint32_t PPGINT0    : 1;
  volatile uint32_t PPGINT1    : 1;
  volatile uint32_t PPGINT2    : 1;
} stc_intreq_irq036mon_field_t;

typedef struct stc_intreq_irq037mon_field
{
  volatile uint32_t PPGINT0    : 1;
  volatile uint32_t PPGINT1    : 1;
  volatile uint32_t PPGINT2    : 1;
} stc_intreq_irq037mon_field_t;

typedef struct stc_intreq_irq038mon_field
{
  volatile uint32_t PPGINT0    : 1;
  volatile uint32_t PPGINT1    : 1;
  volatile uint32_t PPGINT2    : 1;
} stc_intreq_irq038mon_field_t;

typedef struct stc_intreq_irq039mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
} stc_intreq_irq039mon_field_t;

typedef struct stc_intreq_irq040mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
} stc_intreq_irq040mon_field_t;

typedef struct stc_intreq_irq041mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
} stc_intreq_irq041mon_field_t;

typedef struct stc_intreq_irq042mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
} stc_intreq_irq042mon_field_t;

typedef struct stc_intreq_irq043mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
} stc_intreq_irq043mon_field_t;

typedef struct stc_intreq_irq044mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
} stc_intreq_irq044mon_field_t;

typedef struct stc_intreq_irq045mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
} stc_intreq_irq045mon_field_t;

typedef struct stc_intreq_irq046mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
} stc_intreq_irq046mon_field_t;

typedef struct stc_intreq_irq047mon_field
{
  volatile uint32_t TIMINT1    : 1;
  volatile uint32_t TIMINT2    : 1;
} stc_intreq_irq047mon_field_t;

typedef struct stc_intreq_irq048mon_field
{
  volatile uint32_t WCINT      : 1;
} stc_intreq_irq048mon_field_t;

typedef struct stc_intreq_irq049mon_field
{
  volatile uint32_t BMEMCS     : 1;
} stc_intreq_irq049mon_field_t;

typedef struct stc_intreq_irq050mon_field
{
  volatile uint32_t RTCINT     : 1;
} stc_intreq_irq050mon_field_t;

typedef struct stc_intreq_irq051mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq051mon_field_t;

typedef struct stc_intreq_irq052mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq052mon_field_t;

typedef struct stc_intreq_irq053mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq053mon_field_t;

typedef struct stc_intreq_irq054mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq054mon_field_t;

typedef struct stc_intreq_irq055mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq055mon_field_t;

typedef struct stc_intreq_irq056mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq056mon_field_t;

typedef struct stc_intreq_irq057mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq057mon_field_t;

typedef struct stc_intreq_irq058mon_field
{
  volatile uint32_t EXTINT     : 1;
} stc_intreq_irq058mon_field_t;

typedef struct stc_intreq_irq059mon_field
{
  volatile uint32_t MOSCINT    : 1;
  volatile uint32_t SOSCINT    : 1;
  volatile uint32_t MPLLINT    : 1;
  volatile uint32_t UPLLINT    : 1;
  volatile uint32_t IPLLINT    : 1;
} stc_intreq_irq059mon_field_t;

typedef struct stc_intreq_irq060mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq060mon_field_t;

typedef struct stc_intreq_irq061mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq061mon_field_t;

typedef struct stc_intreq_irq062mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq062mon_field_t;

typedef struct stc_intreq_irq063mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq063mon_field_t;

typedef struct stc_intreq_irq064mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq064mon_field_t;

typedef struct stc_intreq_irq065mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq065mon_field_t;

typedef struct stc_intreq_irq066mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq066mon_field_t;

typedef struct stc_intreq_irq067mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq067mon_field_t;

typedef struct stc_intreq_irq068mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq068mon_field_t;

typedef struct stc_intreq_irq069mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq069mon_field_t;

typedef struct stc_intreq_irq070mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq070mon_field_t;

typedef struct stc_intreq_irq071mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq071mon_field_t;

typedef struct stc_intreq_irq072mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq072mon_field_t;

typedef struct stc_intreq_irq073mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq073mon_field_t;

typedef struct stc_intreq_irq074mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq074mon_field_t;

typedef struct stc_intreq_irq075mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq075mon_field_t;

typedef struct stc_intreq_irq076mon_field
{
  volatile uint32_t ADCINT0    : 1;
  volatile uint32_t ADCINT1    : 1;
  volatile uint32_t ADCINT2    : 1;
  volatile uint32_t ADCINT3    : 1;
  volatile uint32_t ADCINT4    : 1;
} stc_intreq_irq076mon_field_t;

typedef struct stc_intreq_irq077mon_field
{
  volatile uint32_t ADCINT0    : 1;
  volatile uint32_t ADCINT1    : 1;
  volatile uint32_t ADCINT2    : 1;
  volatile uint32_t ADCINT3    : 1;
  volatile uint32_t ADCINT4    : 1;
} stc_intreq_irq077mon_field_t;

typedef struct stc_intreq_irq078mon_field
{
  volatile uint32_t USB_DRQ_INT0: 1;
  volatile uint32_t USB_DRQ_INT1: 1;
  volatile uint32_t USB_DRQ_INT2: 1;
  volatile uint32_t USB_DRQ_INT3: 1;
  volatile uint32_t USB_DRQ_INT4: 1;
} stc_intreq_irq078mon_field_t;

typedef struct stc_intreq_irq079mon_field
{
  volatile uint32_t USB_INT0   : 1;
  volatile uint32_t USB_INT1   : 1;
  volatile uint32_t USB_INT2   : 1;
  volatile uint32_t USB_INT3   : 1;
  volatile uint32_t USB_INT4   : 1;
  volatile uint32_t USB_INT5   : 1;
} stc_intreq_irq079mon_field_t;

typedef struct stc_intreq_irq080mon_field
{
  volatile uint32_t CANINT     : 1;
} stc_intreq_irq080mon_field_t;

typedef struct stc_intreq_irq081mon_field
{
  volatile uint32_t CANINT     : 1;
  volatile uint32_t CANDEINT   : 1;
  volatile uint32_t CANSEINT   : 1;
  volatile uint32_t CAN0INT    : 1;
  volatile uint32_t CAN1INT    : 1;
} stc_intreq_irq081mon_field_t;

typedef struct stc_intreq_irq082mon_field
{
  volatile uint32_t MACSBD     : 1;
  volatile uint32_t MACPMT     : 1;
  volatile uint32_t MACLPI     : 1;
} stc_intreq_irq082mon_field_t;

typedef struct stc_intreq_irq083mon_field
{
  volatile uint32_t DMACINT    : 1;
} stc_intreq_irq083mon_field_t;

typedef struct stc_intreq_irq084mon_field
{
  volatile uint32_t DMACINT    : 1;
} stc_intreq_irq084mon_field_t;

typedef struct stc_intreq_irq085mon_field
{
  volatile uint32_t DMACINT    : 1;
} stc_intreq_irq085mon_field_t;

typedef struct stc_intreq_irq086mon_field
{
  volatile uint32_t DMACINT    : 1;
} stc_intreq_irq086mon_field_t;

typedef struct stc_intreq_irq087mon_field
{
  volatile uint32_t DMACINT    : 1;
} stc_intreq_irq087mon_field_t;

typedef struct stc_intreq_irq088mon_field
{
  volatile uint32_t DMACINT    : 1;
} stc_intreq_irq088mon_field_t;

typedef struct stc_intreq_irq089mon_field
{
  volatile uint32_t DMACINT    : 1;
} stc_intreq_irq089mon_field_t;

typedef struct stc_intreq_irq090mon_field
{
  volatile uint32_t DMACINT    : 1;
} stc_intreq_irq090mon_field_t;

typedef struct stc_intreq_irq091mon_field
{
  volatile uint32_t DSTCINT0   : 1;
  volatile uint32_t DSTCINT1   : 1;
} stc_intreq_irq091mon_field_t;

typedef struct stc_intreq_irq092mon_field
{
  volatile uint32_t EXTINT0    : 1;
  volatile uint32_t EXTINT1    : 1;
  volatile uint32_t EXTINT2    : 1;
  volatile uint32_t EXTINT3    : 1;
} stc_intreq_irq092mon_field_t;

typedef struct stc_intreq_irq093mon_field
{
  volatile uint32_t EXTINT0    : 1;
  volatile uint32_t EXTINT1    : 1;
  volatile uint32_t EXTINT2    : 1;
  volatile uint32_t EXTINT3    : 1;
} stc_intreq_irq093mon_field_t;

typedef struct stc_intreq_irq094mon_field
{
  volatile uint32_t EXTINT0    : 1;
  volatile uint32_t EXTINT1    : 1;
  volatile uint32_t EXTINT2    : 1;
  volatile uint32_t EXTINT3    : 1;
} stc_intreq_irq094mon_field_t;

typedef struct stc_intreq_irq095mon_field
{
  volatile uint32_t EXTINT0    : 1;
  volatile uint32_t EXTINT1    : 1;
  volatile uint32_t EXTINT2    : 1;
  volatile uint32_t EXTINT3    : 1;
} stc_intreq_irq095mon_field_t;

typedef struct stc_intreq_irq096mon_field
{
  volatile uint32_t QUDINT0    : 1;
  volatile uint32_t QUDINT1    : 1;
  volatile uint32_t QUDINT2    : 1;
  volatile uint32_t QUDINT3    : 1;
  volatile uint32_t QUDINT4    : 1;
  volatile uint32_t QUDINT5    : 1;
} stc_intreq_irq096mon_field_t;

typedef struct stc_intreq_irq097mon_field
{
  volatile uint32_t QUDINT0    : 1;
  volatile uint32_t QUDINT1    : 1;
  volatile uint32_t QUDINT2    : 1;
  volatile uint32_t QUDINT3    : 1;
  volatile uint32_t QUDINT4    : 1;
  volatile uint32_t QUDINT5    : 1;
} stc_intreq_irq097mon_field_t;

typedef struct stc_intreq_irq098mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
} stc_intreq_irq098mon_field_t;

typedef struct stc_intreq_irq099mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
} stc_intreq_irq099mon_field_t;

typedef struct stc_intreq_irq100mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
} stc_intreq_irq100mon_field_t;

typedef struct stc_intreq_irq101mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
} stc_intreq_irq101mon_field_t;

typedef struct stc_intreq_irq102mon_field
{
  volatile uint32_t BTINT0     : 1;
  volatile uint32_t BTINT1     : 1;
  volatile uint32_t BTINT2     : 1;
  volatile uint32_t BTINT3     : 1;
  volatile uint32_t BTINT4     : 1;
  volatile uint32_t BTINT5     : 1;
  volatile uint32_t BTINT6     : 1;
  volatile uint32_t BTINT7     : 1;
} stc_intreq_irq102mon_field_t;

typedef struct stc_intreq_irq103mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq103mon_field_t;

typedef struct stc_intreq_irq104mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq104mon_field_t;

typedef struct stc_intreq_irq105mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq105mon_field_t;

typedef struct stc_intreq_irq106mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq106mon_field_t;

typedef struct stc_intreq_irq107mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq107mon_field_t;

typedef struct stc_intreq_irq108mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq108mon_field_t;

typedef struct stc_intreq_irq109mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq109mon_field_t;

typedef struct stc_intreq_irq110mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq110mon_field_t;

typedef struct stc_intreq_irq111mon_field
{
  volatile uint32_t ADCINT0    : 1;
  volatile uint32_t ADCINT1    : 1;
  volatile uint32_t ADCINT2    : 1;
  volatile uint32_t ADCINT3    : 1;
  volatile uint32_t ADCINT4    : 1;
} stc_intreq_irq111mon_field_t;

typedef struct stc_intreq_irq112mon_field
{
  volatile uint32_t I2SDINT0   : 1;
  volatile uint32_t I2SDINT1   : 1;
  volatile uint32_t QSPIDINT0  : 1;
  volatile uint32_t QSPIDINT1  : 1;
  volatile uint32_t PCRCDINT   : 1;
  volatile uint32_t CANDINT    : 1;
} stc_intreq_irq112mon_field_t;

typedef struct stc_intreq_irq113mon_field
{
  volatile uint32_t USB_DRQ_INT0: 1;
  volatile uint32_t USB_DRQ_INT1: 1;
  volatile uint32_t USB_DRQ_INT2: 1;
  volatile uint32_t USB_DRQ_INT3: 1;
  volatile uint32_t USB_DRQ_INT4: 1;
  volatile uint32_t RCEC0INT   : 1;
} stc_intreq_irq113mon_field_t;

typedef struct stc_intreq_irq114mon_field
{
  volatile uint32_t USB_INT0   : 1;
  volatile uint32_t USB_INT1   : 1;
  volatile uint32_t USB_INT2   : 1;
  volatile uint32_t USB_INT3   : 1;
  volatile uint32_t USB_INT4   : 1;
  volatile uint32_t USB_INT5   : 1;
  volatile uint32_t RCEC1INT   : 1;
} stc_intreq_irq114mon_field_t;

typedef struct stc_intreq_irq115mon_field
{
  volatile uint32_t QSPIINT0   : 1;
  volatile uint32_t QSPIINT1   : 1;
  volatile uint32_t QSPIINT2   : 1;
} stc_intreq_irq115mon_field_t;

typedef struct stc_intreq_irq117mon_field
{
  volatile uint32_t I2SINT     : 1;
  volatile uint32_t PRGCRC     : 1;
} stc_intreq_irq117mon_field_t;

typedef struct stc_intreq_irq118mon_field
{
  volatile uint32_t SDINT0     : 1;
  volatile uint32_t SDINT1     : 1;
} stc_intreq_irq118mon_field_t;

typedef struct stc_intreq_irq119mon_field
{
  volatile uint32_t FLINT      : 1;
} stc_intreq_irq119mon_field_t;

typedef struct stc_intreq_irq120mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq120mon_field_t;

typedef struct stc_intreq_irq121mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq121mon_field_t;

typedef struct stc_intreq_irq122mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq122mon_field_t;

typedef struct stc_intreq_irq123mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq123mon_field_t;

typedef struct stc_intreq_irq124mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq124mon_field_t;

typedef struct stc_intreq_irq125mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq125mon_field_t;

typedef struct stc_intreq_irq126mon_field
{
  volatile uint32_t MFSRINT    : 1;
} stc_intreq_irq126mon_field_t;

typedef struct stc_intreq_irq127mon_field
{
  volatile uint32_t MFSINT0    : 1;
  volatile uint32_t MFSINT1    : 1;
} stc_intreq_irq127mon_field_t;



 
typedef struct stc_irqsel_field
{
  volatile uint32_t SELIRQ    : 8;
       uint32_t RESERVED0 : 8;
  volatile uint32_t SELBIT    : 8;
       uint32_t RESERVED1 : 8;
} stc_irqsel_field_t;



 
 
typedef struct stc_hdmicec_txctrl_field
{
  volatile  uint8_t TXEN       : 1;
        uint8_t RESERVED1  : 1;
  volatile  uint8_t START      : 1;
  volatile  uint8_t EOM        : 1;
  volatile  uint8_t ITSTEN     : 1;
  volatile  uint8_t IBREN      : 1;
} stc_hdmicec_txctrl_field_t;

typedef struct stc_hdmicec_txdata_field
{
  union {
    struct {
      volatile  uint8_t TXDATA     : 8;
    };
    struct {
      volatile  uint8_t TXDATA0    : 1;
      volatile  uint8_t TXDATA1    : 1;
      volatile  uint8_t TXDATA2    : 1;
      volatile  uint8_t TXDATA3    : 1;
      volatile  uint8_t TXDATA4    : 1;
      volatile  uint8_t TXDATA5    : 1;
      volatile  uint8_t TXDATA6    : 1;
      volatile  uint8_t TXDATA7    : 1;
    };
  };
} stc_hdmicec_txdata_field_t;

typedef struct stc_hdmicec_txsts_field
{
  volatile  uint8_t ACKSV      : 1;
        uint8_t RESERVED1  : 3;
  volatile  uint8_t ITST       : 1;
  volatile  uint8_t IBR        : 1;
} stc_hdmicec_txsts_field_t;

typedef struct stc_hdmicec_sfree_field
{
  union {
    struct {
      volatile  uint8_t SFREE      : 4;
            uint8_t RESERVED1  : 4;
    };
    struct {
      volatile  uint8_t SFREE0     : 1;
      volatile  uint8_t SFREE1     : 1;
      volatile  uint8_t SFREE2     : 1;
      volatile  uint8_t SFREE3     : 1;
            uint8_t RESERVED2  : 4;
    };
  };
} stc_hdmicec_sfree_field_t;

typedef struct stc_hdmicec_rcst_field
{
  volatile  uint8_t OVF        : 1;
  volatile  uint8_t EOM        : 1;
  volatile  uint8_t ACK        : 1;
  volatile  uint8_t ST         : 1;
  volatile  uint8_t OVFSEL     : 1;
  volatile  uint8_t OVFIE      : 1;
  volatile  uint8_t ACKIE      : 1;
  volatile  uint8_t STIE       : 1;
} stc_hdmicec_rcst_field_t;

typedef struct stc_hdmicec_rccr_field
{
  volatile  uint8_t EN         : 1;
  volatile  uint8_t MOD        : 2;
  volatile  uint8_t ADRCE      : 1;
        uint8_t RESERVED2  : 3;
  volatile  uint8_t THSEL      : 1;
} stc_hdmicec_rccr_field_t;

typedef struct stc_hdmicec_rcckd_field
{
  union {
    struct {
      volatile uint16_t CKDIV      : 12;
      volatile uint16_t CKSEL      : 1;
           uint16_t RESERVED1  : 3;
    };
    struct {
      volatile uint16_t CKDIV0     : 1;
      volatile uint16_t CKDIV1     : 1;
      volatile uint16_t CKDIV2     : 1;
      volatile uint16_t CKDIV3     : 1;
      volatile uint16_t CKDIV4     : 1;
      volatile uint16_t CKDIV5     : 1;
      volatile uint16_t CKDIV6     : 1;
      volatile uint16_t CKDIV7     : 1;
      volatile uint16_t CKDIV8     : 1;
      volatile uint16_t CKDIV9     : 1;
      volatile uint16_t CKDIV10    : 1;
      volatile uint16_t CKDIV11    : 1;
           uint16_t RESERVED2  : 4;
    };
  };
} stc_hdmicec_rcckd_field_t;

typedef struct stc_hdmicec_rcrc_field
{
  volatile  uint8_t RC         : 1;
        uint8_t RESERVED1  : 3;
  volatile  uint8_t RCIE       : 1;
} stc_hdmicec_rcrc_field_t;

typedef struct stc_hdmicec_rcle_field
{
  volatile  uint8_t LES        : 1;
  volatile  uint8_t LEL        : 1;
        uint8_t RESERVED1  : 1;
  volatile  uint8_t EPE        : 1;
  volatile  uint8_t LESE       : 1;
  volatile  uint8_t LELE       : 1;
  volatile  uint8_t LESIE      : 1;
  volatile  uint8_t LELIE      : 1;
} stc_hdmicec_rcle_field_t;



 
 
typedef struct stc_dstc_hwdesp_field
{
  volatile uint32_t CHANNEL    : 8;
       uint32_t RESERVED1  : 8;
  volatile uint32_t HWDESP     : 14;
       uint32_t RESERVED2  : 2;
} stc_dstc_hwdesp_field_t;

typedef struct stc_dstc_cfg_field
{
  volatile uint8_t  SWINTE     : 1;
  volatile uint8_t  ERINTE     : 1;
  volatile uint8_t  RBDIS      : 1;
  volatile uint8_t  ESTE       : 1;
  volatile uint8_t  SWPR       : 3;
       uint8_t  RESERVED   : 1;
} stc_dstc_cfg_field_t;

typedef struct stc_dstc_swtr_field
{
  volatile uint16_t SWDESP     : 14;
  volatile uint16_t SWREQ      : 1;
  volatile uint16_t SWST       : 1;
} stc_dstc_swtr_field_t;

typedef struct stc_dstc_moners_field
{
  volatile uint32_t EST        : 3;
  volatile uint32_t DER        : 1;
  volatile uint32_t ESTOP      : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t EHS        : 1;
  volatile uint32_t RESERVED2  : 1;
  volatile uint32_t ECH        : 8;
  volatile uint32_t EDESP      : 14;
       uint32_t RESERVED3  : 2;
} stc_dstc_moners_field_t;



 
 
typedef struct stc_gpio_pfr0_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
       uint32_t RESERVED1  : 3;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
} stc_gpio_pfr0_field_t;

typedef struct stc_gpio_pfr1_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pfr1_field_t;

typedef struct stc_gpio_pfr2_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
} stc_gpio_pfr2_field_t;

typedef struct stc_gpio_pfr3_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pfr3_field_t;

typedef struct stc_gpio_pfr4_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pfr4_field_t;

typedef struct stc_gpio_pfr5_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pfr5_field_t;

typedef struct stc_gpio_pfr6_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pfr6_field_t;

typedef struct stc_gpio_pfr7_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pfr7_field_t;

typedef struct stc_gpio_pfr8_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_pfr8_field_t;

typedef struct stc_gpio_pfr9_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
} stc_gpio_pfr9_field_t;

typedef struct stc_gpio_pfra_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pfra_field_t;

typedef struct stc_gpio_pfrb_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pfrb_field_t;

typedef struct stc_gpio_pfrc_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pfrc_field_t;

typedef struct stc_gpio_pfrd_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
} stc_gpio_pfrd_field_t;

typedef struct stc_gpio_pfre_field
{
  volatile uint32_t P0         : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_pfre_field_t;

typedef struct stc_gpio_pfrf_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
} stc_gpio_pfrf_field_t;

typedef struct stc_gpio_pcr0_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
       uint32_t RESERVED1  : 3;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
} stc_gpio_pcr0_field_t;

typedef struct stc_gpio_pcr1_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pcr1_field_t;

typedef struct stc_gpio_pcr2_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
} stc_gpio_pcr2_field_t;

typedef struct stc_gpio_pcr3_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pcr3_field_t;

typedef struct stc_gpio_pcr4_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pcr4_field_t;

typedef struct stc_gpio_pcr5_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pcr5_field_t;

typedef struct stc_gpio_pcr6_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pcr6_field_t;

typedef struct stc_gpio_pcr7_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pcr7_field_t;

typedef struct stc_gpio_pcr8_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_pcr8_field_t;

typedef struct stc_gpio_pcr9_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
} stc_gpio_pcr9_field_t;

typedef struct stc_gpio_pcra_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pcra_field_t;

typedef struct stc_gpio_pcrb_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pcrb_field_t;

typedef struct stc_gpio_pcrc_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pcrc_field_t;

typedef struct stc_gpio_pcrd_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
} stc_gpio_pcrd_field_t;

typedef struct stc_gpio_pcre_field
{
  volatile uint32_t P0         : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_pcre_field_t;

typedef struct stc_gpio_pcrf_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
} stc_gpio_pcrf_field_t;

typedef struct stc_gpio_ddr0_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_ddr0_field_t;

typedef struct stc_gpio_ddr1_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_ddr1_field_t;

typedef struct stc_gpio_ddr2_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
} stc_gpio_ddr2_field_t;

typedef struct stc_gpio_ddr3_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_ddr3_field_t;

typedef struct stc_gpio_ddr4_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_ddr4_field_t;

typedef struct stc_gpio_ddr5_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_ddr5_field_t;

typedef struct stc_gpio_ddr6_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_ddr6_field_t;

typedef struct stc_gpio_ddr7_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_ddr7_field_t;

typedef struct stc_gpio_ddr8_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_ddr8_field_t;

typedef struct stc_gpio_ddr9_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
} stc_gpio_ddr9_field_t;

typedef struct stc_gpio_ddra_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_ddra_field_t;

typedef struct stc_gpio_ddrb_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_ddrb_field_t;

typedef struct stc_gpio_ddrc_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_ddrc_field_t;

typedef struct stc_gpio_ddrd_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
} stc_gpio_ddrd_field_t;

typedef struct stc_gpio_ddre_field
{
  volatile uint32_t P0         : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_ddre_field_t;

typedef struct stc_gpio_ddrf_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
} stc_gpio_ddrf_field_t;

typedef struct stc_gpio_pdir0_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdir0_field_t;

typedef struct stc_gpio_pdir1_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdir1_field_t;

typedef struct stc_gpio_pdir2_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
} stc_gpio_pdir2_field_t;

typedef struct stc_gpio_pdir3_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdir3_field_t;

typedef struct stc_gpio_pdir4_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdir4_field_t;

typedef struct stc_gpio_pdir5_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdir5_field_t;

typedef struct stc_gpio_pdir6_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdir6_field_t;

typedef struct stc_gpio_pdir7_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdir7_field_t;

typedef struct stc_gpio_pdir8_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_pdir8_field_t;

typedef struct stc_gpio_pdir9_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
} stc_gpio_pdir9_field_t;

typedef struct stc_gpio_pdira_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdira_field_t;

typedef struct stc_gpio_pdirb_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdirb_field_t;

typedef struct stc_gpio_pdirc_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdirc_field_t;

typedef struct stc_gpio_pdird_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
} stc_gpio_pdird_field_t;

typedef struct stc_gpio_pdire_field
{
  volatile uint32_t P0         : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_pdire_field_t;

typedef struct stc_gpio_pdirf_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
} stc_gpio_pdirf_field_t;

typedef struct stc_gpio_pdor0_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdor0_field_t;

typedef struct stc_gpio_pdor1_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdor1_field_t;

typedef struct stc_gpio_pdor2_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
} stc_gpio_pdor2_field_t;

typedef struct stc_gpio_pdor3_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdor3_field_t;

typedef struct stc_gpio_pdor4_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdor4_field_t;

typedef struct stc_gpio_pdor5_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdor5_field_t;

typedef struct stc_gpio_pdor6_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdor6_field_t;

typedef struct stc_gpio_pdor7_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdor7_field_t;

typedef struct stc_gpio_pdor8_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_pdor8_field_t;

typedef struct stc_gpio_pdor9_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
} stc_gpio_pdor9_field_t;

typedef struct stc_gpio_pdora_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdora_field_t;

typedef struct stc_gpio_pdorb_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdorb_field_t;

typedef struct stc_gpio_pdorc_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdorc_field_t;

typedef struct stc_gpio_pdord_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
} stc_gpio_pdord_field_t;

typedef struct stc_gpio_pdore_field
{
  volatile uint32_t P0         : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_pdore_field_t;

typedef struct stc_gpio_pdorf_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
} stc_gpio_pdorf_field_t;

typedef struct stc_gpio_ade_field
{
  volatile uint32_t AN00       : 1;
  volatile uint32_t AN01       : 1;
  volatile uint32_t AN02       : 1;
  volatile uint32_t AN03       : 1;
  volatile uint32_t AN04       : 1;
  volatile uint32_t AN05       : 1;
  volatile uint32_t AN06       : 1;
  volatile uint32_t AN07       : 1;
  volatile uint32_t AN08       : 1;
  volatile uint32_t AN09       : 1;
  volatile uint32_t AN10       : 1;
  volatile uint32_t AN11       : 1;
  volatile uint32_t AN12       : 1;
  volatile uint32_t AN13       : 1;
  volatile uint32_t AN14       : 1;
  volatile uint32_t AN15       : 1;
  volatile uint32_t AN16       : 1;
  volatile uint32_t AN17       : 1;
  volatile uint32_t AN18       : 1;
  volatile uint32_t AN19       : 1;
  volatile uint32_t AN20       : 1;
  volatile uint32_t AN21       : 1;
  volatile uint32_t AN22       : 1;
  volatile uint32_t AN23       : 1;
  volatile uint32_t AN24       : 1;
  volatile uint32_t AN25       : 1;
  volatile uint32_t AN26       : 1;
  volatile uint32_t AN27       : 1;
  volatile uint32_t AN28       : 1;
  volatile uint32_t AN29       : 1;
  volatile uint32_t AN30       : 1;
  volatile uint32_t AN31       : 1;
} stc_gpio_ade_field_t;

typedef struct stc_gpio_spsr_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t MAINXC     : 2;
  volatile uint32_t USB0C      : 1;
  volatile uint32_t USB1C      : 1;
} stc_gpio_spsr_field_t;

typedef struct stc_gpio_epfr00_field
{
  volatile uint32_t NMIS       : 1;
  volatile uint32_t CROUTE     : 2;
       uint32_t RESERVED1  : 1;
  volatile uint32_t RTCCOE     : 2;
  volatile uint32_t SUBOUTE    : 2;
       uint32_t RESERVED2  : 1;
  volatile uint32_t USBP0E     : 1;
       uint32_t RESERVED3  : 3;
  volatile uint32_t USBP1E     : 1;
       uint32_t RESERVED4  : 2;
  volatile uint32_t JTAGEN0B   : 1;
  volatile uint32_t JTAGEN1S   : 1;
       uint32_t RESERVED5  : 6;
  volatile uint32_t TRC0E      : 1;
  volatile uint32_t TRC1E      : 1;
  volatile uint32_t TRC2E      : 1;
  volatile uint32_t TRC3E      : 1;
} stc_gpio_epfr00_field_t;

typedef struct stc_gpio_epfr01_field
{
  volatile uint32_t RTO00E     : 2;
  volatile uint32_t RTO01E     : 2;
  volatile uint32_t RTO02E     : 2;
  volatile uint32_t RTO03E     : 2;
  volatile uint32_t RTO04E     : 2;
  volatile uint32_t RTO05E     : 2;
  volatile uint32_t DTTI0C     : 1;
       uint32_t RESERVED1  : 3;
  volatile uint32_t DTTI0S     : 2;
  volatile uint32_t FRCK0S     : 2;
  volatile uint32_t IC00S      : 3;
  volatile uint32_t IC01S      : 3;
  volatile uint32_t IC02S      : 3;
  volatile uint32_t IC03S      : 3;
} stc_gpio_epfr01_field_t;

typedef struct stc_gpio_epfr02_field
{
  volatile uint32_t RTO10E     : 2;
  volatile uint32_t RTO11E     : 2;
  volatile uint32_t RTO12E     : 2;
  volatile uint32_t RTO13E     : 2;
  volatile uint32_t RTO14E     : 2;
  volatile uint32_t RTO15E     : 2;
  volatile uint32_t DTTI1C     : 1;
       uint32_t RESERVED1  : 3;
  volatile uint32_t DTTI1S     : 2;
  volatile uint32_t FRCK1S     : 2;
  volatile uint32_t IC10S      : 3;
  volatile uint32_t IC11S      : 3;
  volatile uint32_t IC12S      : 3;
  volatile uint32_t IC13S      : 3;
} stc_gpio_epfr02_field_t;

typedef struct stc_gpio_epfr03_field
{
  volatile uint32_t RTO20E     : 2;
  volatile uint32_t RTO21E     : 2;
  volatile uint32_t RTO22E     : 2;
  volatile uint32_t RTO23E     : 2;
  volatile uint32_t RTO24E     : 2;
  volatile uint32_t RTO25E     : 2;
  volatile uint32_t DTTI2C     : 1;
       uint32_t RESERVED1  : 3;
  volatile uint32_t DTTI2S     : 2;
  volatile uint32_t FRCK2S     : 2;
  volatile uint32_t IC20S      : 3;
  volatile uint32_t IC21S      : 3;
  volatile uint32_t IC22S      : 3;
  volatile uint32_t IC23S      : 3;
} stc_gpio_epfr03_field_t;

typedef struct stc_gpio_epfr04_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t TIOA0E     : 2;
  volatile uint32_t TIOB0S     : 3;
       uint32_t RESERVED2  : 1;
  volatile uint32_t TIOA1S     : 2;
  volatile uint32_t TIOA1E     : 2;
  volatile uint32_t TIOB1S     : 2;
       uint32_t RESERVED3  : 4;
  volatile uint32_t TIOA2E     : 2;
  volatile uint32_t TIOB2S     : 2;
       uint32_t RESERVED4  : 2;
  volatile uint32_t TIOA3S     : 2;
  volatile uint32_t TIOA3E     : 2;
  volatile uint32_t TIOB3S     : 2;
} stc_gpio_epfr04_field_t;

typedef struct stc_gpio_epfr05_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t TIOA4E     : 2;
  volatile uint32_t TIOB4S     : 2;
       uint32_t RESERVED2  : 2;
  volatile uint32_t TIOA5S     : 2;
  volatile uint32_t TIOA5E     : 2;
  volatile uint32_t TIOB5S     : 2;
       uint32_t RESERVED3  : 4;
  volatile uint32_t TIOA6E     : 2;
  volatile uint32_t TIOB6S     : 2;
       uint32_t RESERVED4  : 2;
  volatile uint32_t TIOA7S     : 2;
  volatile uint32_t TIOA7E     : 2;
  volatile uint32_t TIOB7S     : 2;
} stc_gpio_epfr05_field_t;

typedef struct stc_gpio_epfr06_field
{
  volatile uint32_t EINT00S    : 2;
  volatile uint32_t EINT01S    : 2;
  volatile uint32_t EINT02S    : 2;
  volatile uint32_t EINT03S    : 2;
  volatile uint32_t EINT04S    : 2;
  volatile uint32_t EINT05S    : 2;
  volatile uint32_t EINT06S    : 2;
  volatile uint32_t EINT07S    : 2;
  volatile uint32_t EINT08S    : 2;
  volatile uint32_t EINT09S    : 2;
  volatile uint32_t EINT10S    : 2;
  volatile uint32_t EINT11S    : 2;
  volatile uint32_t EINT12S    : 2;
  volatile uint32_t EINT13S    : 2;
  volatile uint32_t EINT14S    : 2;
  volatile uint32_t EINT15S    : 2;
} stc_gpio_epfr06_field_t;

typedef struct stc_gpio_epfr07_field
{
       uint32_t RESERVED1  : 4;
  volatile uint32_t SIN0S      : 2;
  volatile uint32_t SOT0B      : 2;
  volatile uint32_t SCK0B      : 2;
  volatile uint32_t SIN1S      : 2;
  volatile uint32_t SOT1B      : 2;
  volatile uint32_t SCK1B      : 2;
  volatile uint32_t SIN2S      : 2;
  volatile uint32_t SOT2B      : 2;
  volatile uint32_t SCK2B      : 2;
  volatile uint32_t SIN3S      : 2;
  volatile uint32_t SOT3B      : 2;
  volatile uint32_t SCK3B      : 2;
} stc_gpio_epfr07_field_t;

typedef struct stc_gpio_epfr08_field
{
  volatile uint32_t RTS4E      : 2;
  volatile uint32_t CTS4S      : 2;
  volatile uint32_t SIN4S      : 2;
  volatile uint32_t SOT4B      : 2;
  volatile uint32_t SCK4B      : 2;
  volatile uint32_t SIN5S      : 2;
  volatile uint32_t SOT5B      : 2;
  volatile uint32_t SCK5B      : 2;
  volatile uint32_t SIN6S      : 2;
  volatile uint32_t SOT6B      : 2;
  volatile uint32_t SCK6B      : 2;
  volatile uint32_t SIN7S      : 2;
  volatile uint32_t SOT7B      : 2;
  volatile uint32_t SCK7B      : 2;
  volatile uint32_t RTS5E      : 2;
  volatile uint32_t CTS5S      : 2;
} stc_gpio_epfr08_field_t;

typedef struct stc_gpio_epfr09_field
{
  volatile uint32_t QAIN0S     : 2;
  volatile uint32_t QBIN0S     : 2;
  volatile uint32_t QZIN0S     : 2;
  volatile uint32_t QAIN1S     : 2;
  volatile uint32_t QBIN1S     : 2;
  volatile uint32_t QZIN1S     : 2;
  volatile uint32_t ADTRG0S    : 4;
  volatile uint32_t ADTRG1S    : 4;
  volatile uint32_t ADTRG2S    : 4;
  volatile uint32_t CRX0S      : 2;
  volatile uint32_t CTX0E      : 2;
  volatile uint32_t CRX1S      : 2;
  volatile uint32_t CTX1E      : 2;
} stc_gpio_epfr09_field_t;

typedef struct stc_gpio_epfr10_field
{
  volatile uint32_t UEDEFB     : 1;
  volatile uint32_t UEDTHB     : 1;
  volatile uint32_t UECLKE     : 1;
  volatile uint32_t UEWEXE     : 1;
  volatile uint32_t UEDQME     : 1;
  volatile uint32_t UEOEXE     : 1;
  volatile uint32_t UEFLSE     : 1;
  volatile uint32_t UECS1E     : 1;
  volatile uint32_t UECS2E     : 1;
  volatile uint32_t UECS3E     : 1;
  volatile uint32_t UECS4E     : 1;
  volatile uint32_t UECS5E     : 1;
  volatile uint32_t UECS6E     : 1;
  volatile uint32_t UECS7E     : 1;
  volatile uint32_t UEAOOE     : 1;
  volatile uint32_t UEA08E     : 1;
  volatile uint32_t UEA09E     : 1;
  volatile uint32_t UEA10E     : 1;
  volatile uint32_t UEA11E     : 1;
  volatile uint32_t UEA12E     : 1;
  volatile uint32_t UEA13E     : 1;
  volatile uint32_t UEA14E     : 1;
  volatile uint32_t UEA15E     : 1;
  volatile uint32_t UEA16E     : 1;
  volatile uint32_t UEA17E     : 1;
  volatile uint32_t UEA18E     : 1;
  volatile uint32_t UEA19E     : 1;
  volatile uint32_t UEA20E     : 1;
  volatile uint32_t UEA21E     : 1;
  volatile uint32_t UEA22E     : 1;
  volatile uint32_t UEA23E     : 1;
  volatile uint32_t UEA24E     : 1;
} stc_gpio_epfr10_field_t;

typedef struct stc_gpio_epfr11_field
{
  volatile uint32_t UEALEE     : 1;
  volatile uint32_t UECS0E     : 1;
  volatile uint32_t UEA01E     : 1;
  volatile uint32_t UEA02E     : 1;
  volatile uint32_t UEA03E     : 1;
  volatile uint32_t UEA04E     : 1;
  volatile uint32_t UEA05E     : 1;
  volatile uint32_t UEA06E     : 1;
  volatile uint32_t UEA07E     : 1;
  volatile uint32_t UED00B     : 1;
  volatile uint32_t UED01B     : 1;
  volatile uint32_t UED02B     : 1;
  volatile uint32_t UED03B     : 1;
  volatile uint32_t UED04B     : 1;
  volatile uint32_t UED05B     : 1;
  volatile uint32_t UED06B     : 1;
  volatile uint32_t UED07B     : 1;
  volatile uint32_t UED08B     : 1;
  volatile uint32_t UED09B     : 1;
  volatile uint32_t UED10B     : 1;
  volatile uint32_t UED11B     : 1;
  volatile uint32_t UED12B     : 1;
  volatile uint32_t UED13B     : 1;
  volatile uint32_t UED14B     : 1;
  volatile uint32_t UED15B     : 1;
  volatile uint32_t UERLC      : 1;
} stc_gpio_epfr11_field_t;

typedef struct stc_gpio_epfr12_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t TIOA8E     : 2;
  volatile uint32_t TIOB8S     : 2;
       uint32_t RESERVED2  : 2;
  volatile uint32_t TIOA9S     : 2;
  volatile uint32_t TIOA9E     : 2;
  volatile uint32_t TIOB9S     : 2;
       uint32_t RESERVED3  : 4;
  volatile uint32_t TIOA10E    : 2;
  volatile uint32_t TIOB10S    : 2;
       uint32_t RESERVED4  : 2;
  volatile uint32_t TIOA11S    : 2;
  volatile uint32_t TIOA11E    : 2;
  volatile uint32_t TIOB11S    : 2;
} stc_gpio_epfr12_field_t;

typedef struct stc_gpio_epfr13_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t TIOA12E    : 2;
  volatile uint32_t TIOB12S    : 2;
       uint32_t RESERVED2  : 2;
  volatile uint32_t TIOA13S    : 2;
  volatile uint32_t TIOA13E    : 2;
  volatile uint32_t TIOB13S    : 2;
       uint32_t RESERVED3  : 4;
  volatile uint32_t TIOA14E    : 2;
  volatile uint32_t TIOB14S    : 2;
       uint32_t RESERVED4  : 2;
  volatile uint32_t TIOA15S    : 2;
  volatile uint32_t TIOA15E    : 2;
  volatile uint32_t TIOB15S    : 2;
} stc_gpio_epfr13_field_t;

typedef struct stc_gpio_epfr14_field
{
  volatile uint32_t QAIN2S     : 2;
  volatile uint32_t QBIN2S     : 2;
  volatile uint32_t QZIN2S     : 2;
       uint32_t RESERVED1  : 12;
  volatile uint32_t E_TD0E     : 1;
  volatile uint32_t E_TD1E     : 1;
  volatile uint32_t E_TE0E     : 1;
  volatile uint32_t E_TE1E     : 1;
  volatile uint32_t E_MC0E     : 1;
  volatile uint32_t E_MC1B     : 1;
  volatile uint32_t E_MD0B     : 1;
  volatile uint32_t E_MD1B     : 1;
  volatile uint32_t E_CKE      : 1;
  volatile uint32_t E_PSE      : 1;
  volatile uint32_t E_SPLC     : 2;
} stc_gpio_epfr14_field_t;

typedef struct stc_gpio_epfr15_field
{
  volatile uint32_t EINT16S    : 2;
  volatile uint32_t EINT17S    : 2;
  volatile uint32_t EINT18S    : 2;
  volatile uint32_t EINT19S    : 2;
  volatile uint32_t EINT20S    : 2;
  volatile uint32_t EINT21S    : 2;
  volatile uint32_t EINT22S    : 2;
  volatile uint32_t EINT23S    : 2;
  volatile uint32_t EINT24S    : 2;
  volatile uint32_t EINT25S    : 2;
  volatile uint32_t EINT26S    : 2;
  volatile uint32_t EINT27S    : 2;
  volatile uint32_t EINT28S    : 2;
  volatile uint32_t EINT29S    : 2;
  volatile uint32_t EINT30S    : 2;
  volatile uint32_t EINT31S    : 2;
} stc_gpio_epfr15_field_t;

typedef struct stc_gpio_epfr16_field
{
  volatile uint32_t SCS6B      : 2;
  volatile uint32_t SCS7B      : 2;
  volatile uint32_t SIN8S      : 2;
  volatile uint32_t SOT8B      : 2;
  volatile uint32_t SCK8B      : 2;
  volatile uint32_t SIN9S      : 2;
  volatile uint32_t SOT9B      : 2;
  volatile uint32_t SCK9B      : 2;
  volatile uint32_t SIN10S     : 2;
  volatile uint32_t SOT10B     : 2;
  volatile uint32_t SCK10B     : 2;
  volatile uint32_t SIN11S     : 2;
  volatile uint32_t SOT11B     : 2;
  volatile uint32_t SCK11B     : 2;
  volatile uint32_t SFMPAC     : 1;
  volatile uint32_t SFMPBC     : 1;
} stc_gpio_epfr16_field_t;

typedef struct stc_gpio_epfr17_field
{
       uint32_t RESERVED1  : 4;
  volatile uint32_t SIN12S     : 2;
  volatile uint32_t SOT12B     : 2;
  volatile uint32_t SCK12B     : 2;
  volatile uint32_t SIN13S     : 2;
  volatile uint32_t SOT13B     : 2;
  volatile uint32_t SCK13B     : 2;
  volatile uint32_t SIN14S     : 2;
  volatile uint32_t SOT14B     : 2;
  volatile uint32_t SCK14B     : 2;
  volatile uint32_t SIN15S     : 2;
  volatile uint32_t SOT15B     : 2;
  volatile uint32_t SCK15B     : 2;
} stc_gpio_epfr17_field_t;

typedef struct stc_gpio_epfr18_field
{
  volatile uint32_t CECR0B     : 2;
  volatile uint32_t CECR1B     : 2;
  volatile uint32_t QAIN3S     : 2;
  volatile uint32_t QBIN3S     : 2;
  volatile uint32_t QZIN3S     : 2;
       uint32_t RESERVED1  : 4;
  volatile uint32_t SDCLKE     : 2;
  volatile uint32_t SDCMDB     : 2;
  volatile uint32_t SDDATA0B   : 2;
  volatile uint32_t SDDATA1B   : 2;
  volatile uint32_t SDDATA2B   : 2;
  volatile uint32_t SDDATA3B   : 2;
  volatile uint32_t SDCDS      : 2;
  volatile uint32_t SDWPS      : 2;
} stc_gpio_epfr18_field_t;

typedef struct stc_gpio_epfr20_field
{
  volatile uint32_t UESMCKE    : 1;
  volatile uint32_t UESMCEE    : 1;
  volatile uint32_t UERASE     : 1;
  volatile uint32_t UECASE     : 1;
  volatile uint32_t UEDWEXE    : 1;
  volatile uint32_t UECSXE     : 1;
  volatile uint32_t UEDQM2E    : 1;
  volatile uint32_t UEDQM3E    : 1;
  volatile uint32_t UEDTHHB    : 1;
  volatile uint32_t UED16B     : 1;
  volatile uint32_t UED17B     : 1;
  volatile uint32_t UED18B     : 1;
  volatile uint32_t UED19B     : 1;
  volatile uint32_t UED20B     : 1;
  volatile uint32_t UED21B     : 1;
  volatile uint32_t UED22B     : 1;
  volatile uint32_t UED23B     : 1;
  volatile uint32_t UED24B     : 1;
  volatile uint32_t UED25B     : 1;
  volatile uint32_t UED26B     : 1;
  volatile uint32_t UED27B     : 1;
  volatile uint32_t UED28B     : 1;
  volatile uint32_t UED29B     : 1;
  volatile uint32_t UED30B     : 1;
  volatile uint32_t UED31B     : 1;
} stc_gpio_epfr20_field_t;

typedef struct stc_gpio_epfr23_field
{
  volatile uint32_t SCS60E     : 2;
  volatile uint32_t SCS61E     : 2;
  volatile uint32_t SCS62E     : 2;
  volatile uint32_t SCS63E     : 2;
  volatile uint32_t SCS70E     : 2;
  volatile uint32_t SCS71E     : 2;
  volatile uint32_t SCS72E     : 2;
  volatile uint32_t SCS73E     : 2;
} stc_gpio_epfr23_field_t;

typedef struct stc_gpio_epfr24_field
{
  volatile uint32_t I2SM4_MCLK0S: 2;
  volatile uint32_t I2SM4_MCLK0E: 2;
  volatile uint32_t I2SM4_SCK0B: 2;
  volatile uint32_t I2SM4_WS0B : 2;
  volatile uint32_t I2SM4_SDI0S: 2;
  volatile uint32_t I2SM4_SDO0E: 2;
} stc_gpio_epfr24_field_t;

typedef struct stc_gpio_epfr25_field
{
  volatile uint32_t MCRX2S     : 2;
  volatile uint32_t MCTX2E     : 2;
} stc_gpio_epfr25_field_t;

typedef struct stc_gpio_epfr26_field
{
  volatile uint32_t Q_SCKE     : 2;
  volatile uint32_t Q_CS0E     : 2;
  volatile uint32_t Q_CS1E     : 2;
  volatile uint32_t Q_CS2E     : 2;
  volatile uint32_t Q_CS3E     : 2;
  volatile uint32_t Q_IO0B     : 2;
  volatile uint32_t Q_IO1B     : 2;
  volatile uint32_t Q_IO2B     : 2;
  volatile uint32_t Q_IO3B     : 2;
} stc_gpio_epfr26_field_t;

typedef struct stc_gpio_pzr0_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pzr0_field_t;

typedef struct stc_gpio_pzr1_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pzr1_field_t;

typedef struct stc_gpio_pzr2_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
} stc_gpio_pzr2_field_t;

typedef struct stc_gpio_pzr3_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pzr3_field_t;

typedef struct stc_gpio_pzr4_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pzr4_field_t;

typedef struct stc_gpio_pzr5_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pzr5_field_t;

typedef struct stc_gpio_pzr6_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pzr6_field_t;

typedef struct stc_gpio_pzr7_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pzr7_field_t;

typedef struct stc_gpio_pzr8_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_pzr8_field_t;

typedef struct stc_gpio_pzr9_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
} stc_gpio_pzr9_field_t;

typedef struct stc_gpio_pzra_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pzra_field_t;

typedef struct stc_gpio_pzrb_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pzrb_field_t;

typedef struct stc_gpio_pzrc_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pzrc_field_t;

typedef struct stc_gpio_pzrd_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
} stc_gpio_pzrd_field_t;

typedef struct stc_gpio_pzre_field
{
  volatile uint32_t P0         : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_pzre_field_t;

typedef struct stc_gpio_pzrf_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
} stc_gpio_pzrf_field_t;

typedef struct stc_gpio_pdsr0_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdsr0_field_t;

typedef struct stc_gpio_pdsr1_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdsr1_field_t;

typedef struct stc_gpio_pdsr2_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
} stc_gpio_pdsr2_field_t;

typedef struct stc_gpio_pdsr3_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdsr3_field_t;

typedef struct stc_gpio_pdsr4_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdsr4_field_t;

typedef struct stc_gpio_pdsr5_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdsr5_field_t;

typedef struct stc_gpio_pdsr6_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdsr6_field_t;

typedef struct stc_gpio_pdsr7_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
} stc_gpio_pdsr7_field_t;

typedef struct stc_gpio_pdsr8_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_pdsr8_field_t;

typedef struct stc_gpio_pdsr9_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
} stc_gpio_pdsr9_field_t;

typedef struct stc_gpio_pdsra_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdsra_field_t;

typedef struct stc_gpio_pdsrb_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdsrb_field_t;

typedef struct stc_gpio_pdsrc_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
  volatile uint32_t PD         : 1;
  volatile uint32_t PE         : 1;
  volatile uint32_t PF         : 1;
} stc_gpio_pdsrc_field_t;

typedef struct stc_gpio_pdsrd_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
} stc_gpio_pdsrd_field_t;

typedef struct stc_gpio_pdsre_field
{
  volatile uint32_t P0         : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
} stc_gpio_pdsre_field_t;

typedef struct stc_gpio_pdsrf_field
{
  volatile uint32_t P0         : 1;
  volatile uint32_t P1         : 1;
  volatile uint32_t P2         : 1;
  volatile uint32_t P3         : 1;
  volatile uint32_t P4         : 1;
  volatile uint32_t P5         : 1;
  volatile uint32_t P6         : 1;
  volatile uint32_t P7         : 1;
  volatile uint32_t P8         : 1;
  volatile uint32_t P9         : 1;
  volatile uint32_t PA         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t PC         : 1;
} stc_gpio_pdsrf_field_t;



 
 
typedef struct stc_lvd_lvd_ctl_field
{
  union {
    struct {
            uint8_t RESERVED1  : 2;
      volatile  uint8_t SVHI       : 5;
      volatile  uint8_t LVDIE      : 1;
    };
    struct {
            uint8_t RESERVED3  : 2;
      volatile  uint8_t SVHI0      : 1;
      volatile  uint8_t SVHI1      : 1;
      volatile  uint8_t SVHI2      : 1;
      volatile  uint8_t SVHI3      : 1;
      volatile  uint8_t SVHI4      : 1;
            uint8_t RESERVED4  : 1;
    };
  };
} stc_lvd_lvd_ctl_field_t;

typedef struct stc_lvd_lvd_str_field
{
        uint8_t RESERVED1  : 7;
  volatile  uint8_t LVDIR      : 1;
} stc_lvd_lvd_str_field_t;

typedef struct stc_lvd_lvd_clr_field
{
        uint8_t RESERVED1  : 7;
  volatile  uint8_t LVDCL      : 1;
} stc_lvd_lvd_clr_field_t;

typedef struct stc_lvd_lvd_str2_field
{
        uint8_t RESERVED1  : 6;
  volatile  uint8_t LVDRRDY    : 1;
  volatile  uint8_t LVDIRDY    : 1;
} stc_lvd_lvd_str2_field_t;



 
 
typedef struct stc_ds_rck_ctl_field
{
        uint8_t RESERVED1  : 1;
  volatile  uint8_t CECCKE     : 1;
} stc_ds_rck_ctl_field_t;

typedef struct stc_ds_pmd_ctl_field
{
  volatile  uint8_t RTCE       : 1;
} stc_ds_pmd_ctl_field_t;

typedef struct stc_ds_wrfsr_field
{
  volatile  uint8_t WINITX     : 1;
  volatile  uint8_t WLVDH      : 1;
} stc_ds_wrfsr_field_t;

typedef struct stc_ds_wifsr_field
{
  volatile uint16_t WRTCI      : 1;
  volatile uint16_t WLVDI      : 1;
  volatile uint16_t WUI0       : 1;
  volatile uint16_t WUI1       : 1;
  volatile uint16_t WUI2       : 1;
  volatile uint16_t WUI3       : 1;
  volatile uint16_t WUI4       : 1;
  volatile uint16_t WUI5       : 1;
} stc_ds_wifsr_field_t;

typedef struct stc_ds_wier_field
{
  volatile uint16_t WRTCE      : 1;
  volatile uint16_t WLVDE      : 1;
       uint16_t RESERVED2  : 1;
  volatile uint16_t WUI1E      : 1;
  volatile uint16_t WUI2E      : 1;
  volatile uint16_t WUI3E      : 1;
  volatile uint16_t WUI4E      : 1;
  volatile uint16_t WUI5E      : 1;
} stc_ds_wier_field_t;

typedef struct stc_ds_wilvr_field
{
  volatile  uint8_t WUI1LV     : 1;
  volatile  uint8_t WUI2LV     : 1;
  volatile  uint8_t WUI3LV     : 1;
  volatile  uint8_t WUI4LV     : 1;
  volatile  uint8_t WUI5LV     : 1;
} stc_ds_wilvr_field_t;

typedef struct stc_ds_dsramr_field
{
  volatile  uint8_t SRAMR      : 2;
} stc_ds_dsramr_field_t;



 
 
typedef struct stc_usbethernetclk_uccr_field
{
  volatile  uint8_t UCEN0      : 1;
  volatile  uint8_t UCSEL0     : 1;
  volatile  uint8_t UCSEL1     : 1;
  volatile  uint8_t UCEN1      : 1;
  volatile  uint8_t ECEN       : 1;
  volatile  uint8_t ECSEL0     : 1;
  volatile  uint8_t ECSEL1     : 1;
} stc_usbethernetclk_uccr_field_t;

typedef struct stc_usbethernetclk_upcr1_field
{
  volatile  uint8_t UPLLEN     : 1;
  volatile  uint8_t UPINC      : 1;
} stc_usbethernetclk_upcr1_field_t;

typedef struct stc_usbethernetclk_upcr2_field
{
  volatile  uint8_t UPOWT0     : 1;
  volatile  uint8_t UPOWT1     : 1;
  volatile  uint8_t UPOWT2     : 1;
} stc_usbethernetclk_upcr2_field_t;

typedef struct stc_usbethernetclk_upcr3_field
{
  volatile  uint8_t UPLLK0     : 1;
  volatile  uint8_t UPLLK1     : 1;
  volatile  uint8_t UPLLK2     : 1;
  volatile  uint8_t UPLLK3     : 1;
  volatile  uint8_t UPLLK4     : 1;
} stc_usbethernetclk_upcr3_field_t;

typedef struct stc_usbethernetclk_upcr4_field
{
  volatile  uint8_t UPLLN0     : 1;
  volatile  uint8_t UPLLN1     : 1;
  volatile  uint8_t UPLLN2     : 1;
  volatile  uint8_t UPLLN3     : 1;
  volatile  uint8_t UPLLN4     : 1;
  volatile  uint8_t UPLLN5     : 1;
  volatile  uint8_t UPLLN6     : 1;
} stc_usbethernetclk_upcr4_field_t;

typedef struct stc_usbethernetclk_up_str_field
{
  volatile  uint8_t UPRDY      : 1;
} stc_usbethernetclk_up_str_field_t;

typedef struct stc_usbethernetclk_upint_enr_field
{
  volatile  uint8_t UPCSE      : 1;
} stc_usbethernetclk_upint_enr_field_t;

typedef struct stc_usbethernetclk_upint_clr_field
{
  volatile  uint8_t UPCSC      : 1;
} stc_usbethernetclk_upint_clr_field_t;

typedef struct stc_usbethernetclk_upint_str_field
{
  volatile  uint8_t UPCSI      : 1;
} stc_usbethernetclk_upint_str_field_t;

typedef struct stc_usbethernetclk_upcr5_field
{
  volatile  uint8_t UPLLM0     : 1;
  volatile  uint8_t UPLLM1     : 1;
  volatile  uint8_t UPLLM2     : 1;
  volatile  uint8_t UPLLM3     : 1;
} stc_usbethernetclk_upcr5_field_t;

typedef struct stc_usbethernetclk_upcr6_field
{
  volatile  uint8_t UBSR0      : 1;
  volatile  uint8_t UBSR1      : 1;
  volatile  uint8_t UBSR2      : 1;
  volatile  uint8_t UBSR3      : 1;
} stc_usbethernetclk_upcr6_field_t;

typedef struct stc_usbethernetclk_upcr7_field
{
  volatile  uint8_t EPLLEN     : 1;
} stc_usbethernetclk_upcr7_field_t;

typedef struct stc_usbethernetclk_usben0_field
{
  volatile  uint8_t USBEN0     : 1;
} stc_usbethernetclk_usben0_field_t;

typedef struct stc_usbethernetclk_usben1_field
{
  volatile  uint8_t USBEN1     : 1;
} stc_usbethernetclk_usben1_field_t;




 
 
typedef struct stc_usbclk_uccr_field
{
  volatile  uint8_t UCEN       : 1;
  volatile  uint8_t UCSEL      : 1;
} stc_usbclk_uccr_field_t;

typedef struct stc_usbclk_upcr1_field
{
  volatile  uint8_t UPLLEN     : 1;
  volatile  uint8_t UPINC      : 1;
} stc_usbclk_upcr1_field_t;

typedef struct stc_usbclk_upcr2_field
{
  volatile  uint8_t UPOWT0     : 1;
  volatile  uint8_t UPOWT1     : 1;
  volatile  uint8_t UPOWT2     : 1;
} stc_usbclk_upcr2_field_t;

typedef struct stc_usbclk_upcr3_field
{
  volatile  uint8_t UPLLK0     : 1;
  volatile  uint8_t UPLLK1     : 1;
  volatile  uint8_t UPLLK2     : 1;
  volatile  uint8_t UPLLK3     : 1;
  volatile  uint8_t UPLLK4     : 1;
} stc_usbclk_upcr3_field_t;

typedef struct stc_usbclk_upcr4_field
{
  volatile  uint8_t UPLLN0     : 1;
  volatile  uint8_t UPLLN1     : 1;
  volatile  uint8_t UPLLN2     : 1;
  volatile  uint8_t UPLLN3     : 1;
  volatile  uint8_t UPLLN4     : 1;
} stc_usbclk_upcr4_field_t;

typedef struct stc_usbclk_up_str_field
{
  volatile  uint8_t UPRDY      : 1;
} stc_usbclk_up_str_field_t;

typedef struct stc_usbclk_upint_enr_field
{
  volatile  uint8_t UPCSE      : 1;
} stc_usbclk_upint_enr_field_t;

typedef struct stc_usbclk_upint_clr_field
{
  volatile  uint8_t UPCSC      : 1;
} stc_usbclk_upint_clr_field_t;

typedef struct stc_usbclk_upint_str_field
{
  volatile  uint8_t UPCSI      : 1;
} stc_usbclk_upint_str_field_t;

typedef struct stc_usbclk_usben_field
{
  volatile  uint8_t USBEN      : 1;
} stc_usbclk_usben_field_t;



 
 
typedef struct stc_canpre_canpre_field
{
  volatile  uint8_t CANPRE0    : 1;
  volatile  uint8_t CANPRE1    : 1;
  volatile  uint8_t CANPRE2    : 1;
  volatile  uint8_t CANPRE3    : 1;
} stc_canpre_canpre_field_t;



 
 
typedef struct stc_mfs_smr_field
{
  union {
    struct {
      volatile  uint8_t SOE        : 1;  
            uint8_t RESERVED1  : 1;
      volatile  uint8_t BDS        : 1;  
      volatile  uint8_t SBL        : 1;  
      volatile  uint8_t WUCR       : 1;  
      volatile  uint8_t MD         : 3;  
    };
    struct {
            uint8_t RESERVED2  : 1;
      volatile  uint8_t SCKE       : 1;  
            uint8_t RESERVED3  : 1;
      volatile  uint8_t SCINV      : 1;  
            uint8_t RESERVED4  : 4;
    };
    struct {
            uint8_t RESERVED5  : 2;
      volatile  uint8_t TIE        : 1;  
      volatile  uint8_t RIE        : 1;  
            uint8_t RESERVED6  : 4;
    };
  };
} stc_mfs_smr_field_t;

typedef struct stc_mfs_scr_field
{
  union {
    struct {
      volatile  uint8_t TXE        : 1;  
      volatile  uint8_t RXE        : 1;  
      volatile  uint8_t TBIE       : 1;  
      volatile  uint8_t TIE        : 1;  
      volatile  uint8_t RIE        : 1;  
            uint8_t RESERVED1  : 2;
      volatile  uint8_t UPCL       : 1;  
    };
    struct {
            uint8_t RESERVED2  : 5;
      volatile  uint8_t SPI        : 1;  
      volatile  uint8_t MS         : 1;  
            uint8_t RESERVED3  : 1;
    };
    struct {
            uint8_t RESERVED4  : 5;
      volatile  uint8_t LBR        : 1;  
            uint8_t RESERVED5  : 2;
    };
  };
} stc_mfs_scr_field_t;

typedef struct stc_mfs_escr_field
{
  union {
    struct {
      volatile  uint8_t L          : 3;  
      volatile  uint8_t P          : 1;  
      volatile  uint8_t PEN        : 1;  
      volatile  uint8_t INV        : 1;  
      volatile  uint8_t ESBL       : 1;  
      volatile  uint8_t FLWEN      : 1;  
    };
    struct {
      volatile  uint8_t L0         : 1;  
      volatile  uint8_t L1         : 1;  
      volatile  uint8_t L2         : 1;  
      volatile  uint8_t WT         : 2;  
      volatile  uint8_t CSFE       : 1;  
      volatile  uint8_t L3         : 1;  
      volatile  uint8_t SOP        : 1;  
    };
    struct {
            uint8_t RESERVED3  : 3;
      volatile  uint8_t WT0        : 1;  
      volatile  uint8_t WT1        : 1;  
            uint8_t RESERVED4  : 3;
    };
    struct {
      volatile  uint8_t DEL        : 2;  
      volatile  uint8_t LBL        : 2;  
      volatile  uint8_t LBIE       : 1;  
            uint8_t RESERVED5  : 3;
    };
    struct {
      volatile  uint8_t DEL0       : 1;  
      volatile  uint8_t DEL1       : 1;  
      volatile  uint8_t LBL0       : 1;  
      volatile  uint8_t LBL1       : 1;  
            uint8_t RESERVED6  : 4;
    };
  };
} stc_mfs_escr_field_t;

typedef struct stc_mfs_ssr_field
{
  union {
    struct {
      volatile  uint8_t TBI        : 1;  
      volatile  uint8_t TDRE       : 1;  
      volatile  uint8_t RDRF       : 1;  
      volatile  uint8_t ORE        : 1;  
      volatile  uint8_t FRE        : 1;  
      volatile  uint8_t PE         : 1;  
            uint8_t RESERVED1  : 1;
      volatile  uint8_t REC        : 1;  
    };
    struct {
            uint8_t RESERVED2  : 4;
      volatile  uint8_t AWC        : 1;  
            uint8_t RESERVED3  : 3;
    };
    struct {
            uint8_t RESERVED4  : 5;
      volatile  uint8_t LBD        : 1;  
            uint8_t RESERVED5  : 2;
    };
    struct {
            uint8_t RESERVED6  : 4;
      volatile  uint8_t TBIE       : 1;  
      volatile  uint8_t DMA        : 1;  
      volatile  uint8_t TSET       : 1;  
            uint8_t RESERVED7  : 1;
    };
  };
} stc_mfs_ssr_field_t;

typedef struct stc_mfs_bgr_field
{
       uint16_t RESERVED1  : 15;
  volatile uint16_t EXT        : 1;
} stc_mfs_bgr_field_t;

typedef struct stc_mfs_bgr1_field
{
        uint8_t RESERVED1  : 7;
  volatile  uint8_t EXT        : 1;
} stc_mfs_bgr1_field_t;

typedef struct stc_mfs_fcr_field
{
  volatile uint16_t FE1        : 1;
  volatile uint16_t FE2        : 1;
  volatile uint16_t FCL1       : 1;
  volatile uint16_t FCL2       : 1;
  volatile uint16_t FSET       : 1;
  volatile uint16_t FLD        : 1;
  volatile uint16_t FLST       : 1;
       uint16_t RESERVED1  : 1;
  volatile uint16_t FSEL       : 1;
  volatile uint16_t FTIE       : 1;
  volatile uint16_t FDRQ       : 1;
  volatile uint16_t FRIIE      : 1;
  volatile uint16_t FLSTE      : 1;
       uint16_t RESERVED2  : 1;
  volatile uint16_t FTST0      : 1;
  volatile uint16_t FTST1      : 1;
} stc_mfs_fcr_field_t;

typedef struct stc_mfs_fcr0_field
{
  volatile  uint8_t FE1        : 1;
  volatile  uint8_t FE2        : 1;
  volatile  uint8_t FCL1       : 1;
  volatile  uint8_t FCL2       : 1;
  volatile  uint8_t FSET       : 1;
  volatile  uint8_t FLD        : 1;
  volatile  uint8_t FLST       : 1;
        uint8_t RESERVED1  : 1;
} stc_mfs_fcr0_field_t;

typedef struct stc_mfs_fcr1_field
{
  volatile  uint8_t FSEL       : 1;
  volatile  uint8_t FTIE       : 1;
  volatile  uint8_t FDRQ       : 1;
  volatile  uint8_t FRIIE      : 1;
  volatile  uint8_t FLSTE      : 1;
        uint8_t RESERVED1  : 1;
  volatile  uint8_t FTST0      : 1;
  volatile  uint8_t FTST1      : 1;
} stc_mfs_fcr1_field_t;

typedef struct stc_mfs_fbyte_field
{
  volatile uint16_t FD0        : 1;
  volatile uint16_t FD1        : 1;
  volatile uint16_t FD2        : 1;
  volatile uint16_t FD3        : 1;
  volatile uint16_t FD4        : 1;
  volatile uint16_t FD5        : 1;
  volatile uint16_t FD6        : 1;
  volatile uint16_t FD7        : 1;
  volatile uint16_t FD8        : 1;
  volatile uint16_t FD9        : 1;
  volatile uint16_t FD10       : 1;
  volatile uint16_t FD11       : 1;
  volatile uint16_t FD12       : 1;
  volatile uint16_t FD13       : 1;
  volatile uint16_t FD14       : 1;
  volatile uint16_t FD15       : 1;
} stc_mfs_fbyte_field_t;

typedef struct stc_mfs_fbyte1_field
{
  volatile  uint8_t FD0        : 1;
  volatile  uint8_t FD1        : 1;
  volatile  uint8_t FD2        : 1;
  volatile  uint8_t FD3        : 1;
  volatile  uint8_t FD4        : 1;
  volatile  uint8_t FD5        : 1;
  volatile  uint8_t FD6        : 1;
  volatile  uint8_t FD7        : 1;
} stc_mfs_fbyte1_field_t;

typedef struct stc_mfs_fbyte2_field
{
  volatile  uint8_t FD8        : 1;
  volatile  uint8_t FD9        : 1;
  volatile  uint8_t FD10       : 1;
  volatile  uint8_t FD11       : 1;
  volatile  uint8_t FD12       : 1;
  volatile  uint8_t FD13       : 1;
  volatile  uint8_t FD14       : 1;
  volatile  uint8_t FD15       : 1;
} stc_mfs_fbyte2_field_t;



 
 
typedef struct stc_mfs_uart_rdr_field
{
       uint16_t RESERVED1  : 8;
  volatile uint16_t AD         : 1;
       uint16_t RESERVED2  : 7;
} stc_mfs_uart_rdr_field_t;

typedef struct stc_mfs_uart_tdr_field
{
       uint16_t RESERVED1  : 8;
  volatile uint16_t AD         : 1;
       uint16_t RESERVED2  : 7;
} stc_mfs_uart_tdr_field_t;



 
 
typedef struct stc_mfs_csio_scstr10_field
{
  volatile uint16_t CSHD0      : 1;
  volatile uint16_t CSHD1      : 1;
  volatile uint16_t CSHD2      : 1;
  volatile uint16_t CSHD3      : 1;
  volatile uint16_t CSHD4      : 1;
  volatile uint16_t CSHD5      : 1;
  volatile uint16_t CSHD6      : 1;
  volatile uint16_t CSHD7      : 1;
  volatile uint16_t CSSU0      : 1;
  volatile uint16_t CSSU1      : 1;
  volatile uint16_t CSSU2      : 1;
  volatile uint16_t CSSU3      : 1;
  volatile uint16_t CSSU4      : 1;
  volatile uint16_t CSSU5      : 1;
  volatile uint16_t CSSU6      : 1;
  volatile uint16_t CSSU7      : 1;
} stc_mfs_csio_scstr10_field_t;

typedef struct stc_mfs_csio_scstr0_field
{
  volatile  uint8_t CSHD0      : 1;
  volatile  uint8_t CSHD1      : 1;
  volatile  uint8_t CSHD2      : 1;
  volatile  uint8_t CSHD3      : 1;
  volatile  uint8_t CSHD4      : 1;
  volatile  uint8_t CSHD5      : 1;
  volatile  uint8_t CSHD6      : 1;
  volatile  uint8_t CSHD7      : 1;
} stc_mfs_csio_scstr0_field_t;

typedef struct stc_mfs_csio_scstr1_field
{
  volatile  uint8_t CSSU0      : 1;
  volatile  uint8_t CSSU1      : 1;
  volatile  uint8_t CSSU2      : 1;
  volatile  uint8_t CSSU3      : 1;
  volatile  uint8_t CSSU4      : 1;
  volatile  uint8_t CSSU5      : 1;
  volatile  uint8_t CSSU6      : 1;
  volatile  uint8_t CSSU7      : 1;
} stc_mfs_csio_scstr1_field_t;

typedef struct stc_mfs_csio_scstr32_field
{
  volatile uint16_t CSDS0      : 1;
  volatile uint16_t CSDS1      : 1;
  volatile uint16_t CSDS2      : 1;
  volatile uint16_t CSDS3      : 1;
  volatile uint16_t CSDS4      : 1;
  volatile uint16_t CSDS5      : 1;
  volatile uint16_t CSDS6      : 1;
  volatile uint16_t CSDS7      : 1;
  volatile uint16_t CSDS8      : 1;
  volatile uint16_t CSDS9      : 1;
  volatile uint16_t CSDS10     : 1;
  volatile uint16_t CSDS11     : 1;
  volatile uint16_t CSDS12     : 1;
  volatile uint16_t CSDS13     : 1;
  volatile uint16_t CSDS14     : 1;
  volatile uint16_t CSDS15     : 1;
} stc_mfs_csio_scstr32_field_t;

typedef struct stc_mfs_csio_scstr2_field
{
  volatile  uint8_t CSDS0      : 1;
  volatile  uint8_t CSDS1      : 1;
  volatile  uint8_t CSDS2      : 1;
  volatile  uint8_t CSDS3      : 1;
  volatile  uint8_t CSDS4      : 1;
  volatile  uint8_t CSDS5      : 1;
  volatile  uint8_t CSDS6      : 1;
  volatile  uint8_t CSDS7      : 1;
} stc_mfs_csio_scstr2_field_t;

typedef struct stc_mfs_csio_scstr3_field
{
  volatile  uint8_t CSDS8      : 1;
  volatile  uint8_t CSDS9      : 1;
  volatile  uint8_t CSDS10     : 1;
  volatile  uint8_t CSDS11     : 1;
  volatile  uint8_t CSDS12     : 1;
  volatile  uint8_t CSDS13     : 1;
  volatile  uint8_t CSDS14     : 1;
  volatile  uint8_t CSDS15     : 1;
} stc_mfs_csio_scstr3_field_t;

typedef struct stc_mfs_csio_sacsr_field
{
  volatile uint16_t TMRE       : 1;
  volatile uint16_t TDIV       : 4;
       uint16_t RESERVED1  : 1;
  volatile uint16_t TSYNE      : 1;
  volatile uint16_t TINTE      : 1;
  volatile uint16_t TINT       : 1;
       uint16_t RESERVED2  : 2;
  volatile uint16_t CSE        : 1;
  volatile uint16_t CSEIE      : 1;
  volatile uint16_t TBEEN      : 1;
       uint16_t RESERVED3  : 2;
} stc_mfs_csio_sacsr_field_t;

typedef struct stc_mfs_csio_sacsr0_field
{
  volatile  uint8_t TMRE       : 1;
  volatile  uint8_t TDIV       : 4;
        uint8_t RESERVED1  : 1;
  volatile  uint8_t TSYNE      : 1;
  volatile  uint8_t TINTE      : 1;
} stc_mfs_csio_sacsr0_field_t;

typedef struct stc_mfs_csio_sacsr1_field
{
  volatile  uint8_t TINT       : 1;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t CSE        : 1;
  volatile  uint8_t CSEIE      : 1;
  volatile  uint8_t TBEEN      : 1;
        uint8_t RESERVED2  : 2;
} stc_mfs_csio_sacsr1_field_t;

typedef struct stc_mfs_csio_stmr_field
{
  volatile uint16_t TM0        : 1;
  volatile uint16_t TM1        : 1;
  volatile uint16_t TM2        : 1;
  volatile uint16_t TM3        : 1;
  volatile uint16_t TM4        : 1;
  volatile uint16_t TM5        : 1;
  volatile uint16_t TM6        : 1;
  volatile uint16_t TM7        : 1;
  volatile uint16_t TM8        : 1;
  volatile uint16_t TM9        : 1;
  volatile uint16_t TM10       : 1;
  volatile uint16_t TM11       : 1;
  volatile uint16_t TM12       : 1;
  volatile uint16_t TM13       : 1;
  volatile uint16_t TM14       : 1;
  volatile uint16_t TM15       : 1;
} stc_mfs_csio_stmr_field_t;

typedef struct stc_mfs_csio_stmr0_field
{
  volatile  uint8_t TM0        : 1;
  volatile  uint8_t TM1        : 1;
  volatile  uint8_t TM2        : 1;
  volatile  uint8_t TM3        : 1;
  volatile  uint8_t TM4        : 1;
  volatile  uint8_t TM5        : 1;
  volatile  uint8_t TM6        : 1;
  volatile  uint8_t TM7        : 1;
} stc_mfs_csio_stmr0_field_t;

typedef struct stc_mfs_csio_stmr1_field
{
  volatile  uint8_t TM8        : 1;
  volatile  uint8_t TM9        : 1;
  volatile  uint8_t TM10       : 1;
  volatile  uint8_t TM11       : 1;
  volatile  uint8_t TM12       : 1;
  volatile  uint8_t TM13       : 1;
  volatile  uint8_t TM14       : 1;
  volatile  uint8_t TM15       : 1;
} stc_mfs_csio_stmr1_field_t;

typedef struct stc_mfs_csio_stmcr_field
{
  volatile uint16_t TC0        : 1;
  volatile uint16_t TC1        : 1;
  volatile uint16_t TC2        : 1;
  volatile uint16_t TC3        : 1;
  volatile uint16_t TC4        : 1;
  volatile uint16_t TC5        : 1;
  volatile uint16_t TC6        : 1;
  volatile uint16_t TC7        : 1;
  volatile uint16_t TC8        : 1;
  volatile uint16_t TC9        : 1;
  volatile uint16_t TC10       : 1;
  volatile uint16_t TC11       : 1;
  volatile uint16_t TC12       : 1;
  volatile uint16_t TC13       : 1;
  volatile uint16_t TC14       : 1;
  volatile uint16_t TC15       : 1;
} stc_mfs_csio_stmcr_field_t;

typedef struct stc_mfs_csio_stmcr0_field
{
  volatile  uint8_t TC0        : 1;
  volatile  uint8_t TC1        : 1;
  volatile  uint8_t TC2        : 1;
  volatile  uint8_t TC3        : 1;
  volatile  uint8_t TC4        : 1;
  volatile  uint8_t TC5        : 1;
  volatile  uint8_t TC6        : 1;
  volatile  uint8_t TC7        : 1;
} stc_mfs_csio_stmcr0_field_t;

typedef struct stc_mfs_csio_stmcr1_field
{
  volatile  uint8_t TC8        : 1;
  volatile  uint8_t TC9        : 1;
  volatile  uint8_t TC10       : 1;
  volatile  uint8_t TC11       : 1;
  volatile  uint8_t TC12       : 1;
  volatile  uint8_t TC13       : 1;
  volatile  uint8_t TC14       : 1;
  volatile  uint8_t TC15       : 1;
} stc_mfs_csio_stmcr1_field_t;

typedef struct stc_mfs_csio_scscr_field
{
  volatile uint16_t CSOE       : 1;
  volatile uint16_t CSEN0      : 1;
  volatile uint16_t CSEN1      : 1;
  volatile uint16_t CSEN2      : 1;
  volatile uint16_t CSEN3      : 1;
  volatile uint16_t CSLVL      : 1;
  volatile uint16_t CDIV       : 3;
  volatile uint16_t SCAM       : 1;
  volatile uint16_t SCD        : 2;
  volatile uint16_t SED        : 2;
  volatile uint16_t SST        : 2;
} stc_mfs_csio_scscr_field_t;

typedef struct stc_mfs_csio_scsfr0_field
{
  volatile  uint8_t CS1L       : 4;
  volatile  uint8_t CS1SPI     : 1;
  volatile  uint8_t CS1SCINV   : 1;
  volatile  uint8_t CS1CSLVL   : 1;
} stc_mfs_csio_scsfr0_field_t;

typedef struct stc_mfs_csio_scsfr1_field
{
  volatile  uint8_t CS2L       : 4;
  volatile  uint8_t CS2SPI     : 1;
  volatile  uint8_t CS2SCINV   : 1;
  volatile  uint8_t CS2CSLVL   : 1;
} stc_mfs_csio_scsfr1_field_t;

typedef struct stc_mfs_csio_scsfr2_field
{
  volatile  uint8_t CS3L       : 4;
  volatile  uint8_t CS3SPI     : 1;
  volatile  uint8_t CS3SCINV   : 1;
  volatile  uint8_t CS3CSLVL   : 1;
} stc_mfs_csio_scsfr2_field_t;



 
 
typedef struct stc_mfs_i2c_ibcr_field
{
  volatile  uint8_t INT        : 1;
  volatile  uint8_t BER        : 1;
  volatile  uint8_t INTE       : 1;
  volatile  uint8_t CNDE       : 1;
  volatile  uint8_t WSEL       : 1;
  volatile  uint8_t ACKE       : 1;
  volatile  uint8_t ACT_SCC    : 1;
  volatile  uint8_t MSS        : 1;
} stc_mfs_i2c_ibcr_field_t;

typedef struct stc_mfs_i2c_ibsr_field
{
  volatile  uint8_t BB         : 1;
  volatile  uint8_t SPC        : 1;
  volatile  uint8_t RSC        : 1;
  volatile  uint8_t AL         : 1;
  volatile  uint8_t TRX        : 1;
  volatile  uint8_t RSA        : 1;
  volatile  uint8_t RACK       : 1;
  volatile  uint8_t FBT        : 1;
} stc_mfs_i2c_ibsr_field_t;

typedef struct stc_mfs_i2c_isba_field
{
  union {
    struct {
      volatile  uint8_t SA         : 7;
      volatile  uint8_t SAEN       : 1;
    };
    struct {
      volatile  uint8_t SA0        : 1;
      volatile  uint8_t SA1        : 1;
      volatile  uint8_t SA2        : 1;
      volatile  uint8_t SA3        : 1;
      volatile  uint8_t SA4        : 1;
      volatile  uint8_t SA5        : 1;
      volatile  uint8_t SA6        : 1;
            uint8_t RESERVED1  : 1;
    };
  };
} stc_mfs_i2c_isba_field_t;

typedef struct stc_mfs_i2c_ismk_field
{
  union {
    struct {
      volatile  uint8_t SM         : 7;
      volatile  uint8_t EN         : 1;
    };
    struct {
      volatile  uint8_t SM0        : 1;
      volatile  uint8_t SM1        : 1;
      volatile  uint8_t SM2        : 1;
      volatile  uint8_t SM3        : 1;
      volatile  uint8_t SM4        : 1;
      volatile  uint8_t SM5        : 1;
      volatile  uint8_t SM6        : 1;
            uint8_t RESERVED1  : 1;
    };
  };
} stc_mfs_i2c_ismk_field_t;

typedef struct stc_mfs_i2c_nfcr_field
{
  volatile  uint8_t NFT        : 5;
        uint8_t RESERVED1  : 3;
} stc_mfs_i2c_nfcr_field_t;

typedef struct stc_mfs_i2c_eibcr_field
{
  volatile  uint8_t BEC        : 1;
  volatile  uint8_t SOCE       : 1;
  volatile  uint8_t SCLC       : 1;
  volatile  uint8_t SDAC       : 1;
  volatile  uint8_t SCLS       : 1;
  volatile  uint8_t SDAS       : 1;
        uint8_t RESERVED1  : 2;
} stc_mfs_i2c_eibcr_field_t;



 
 
typedef struct stc_crc_crccr_field
{
  volatile  uint8_t INIT       : 1;
  volatile  uint8_t CRC32      : 1;
  volatile  uint8_t LTLEND     : 1;
  volatile  uint8_t LSBFST     : 1;
  volatile  uint8_t CRCLTE     : 1;
  volatile  uint8_t CRCLSF     : 1;
  volatile  uint8_t FXOR       : 1;
} stc_crc_crccr_field_t;



 
 
typedef struct stc_wc_wcrd_field
{
  volatile  uint8_t CTR0       : 1;
  volatile  uint8_t CTR1       : 1;
  volatile  uint8_t CTR2       : 1;
  volatile  uint8_t CTR3       : 1;
  volatile  uint8_t CTR4       : 1;
  volatile  uint8_t CTR5       : 1;
} stc_wc_wcrd_field_t;

typedef struct stc_wc_wcrl_field
{
  volatile  uint8_t RLC0       : 1;
  volatile  uint8_t RLC1       : 1;
  volatile  uint8_t RLC2       : 1;
  volatile  uint8_t RLC3       : 1;
  volatile  uint8_t RLC4       : 1;
  volatile  uint8_t RLC5       : 1;
} stc_wc_wcrl_field_t;

typedef struct stc_wc_wccr_field
{
  volatile  uint8_t WCIF       : 1;
  volatile  uint8_t WCIE       : 1;
  volatile  uint8_t CS0        : 1;
  volatile  uint8_t CS1        : 1;
        uint8_t RESERVED1  : 2;
  volatile  uint8_t WCOP       : 1;
  volatile  uint8_t WCEN       : 1;
} stc_wc_wccr_field_t;

typedef struct stc_wc_clk_sel_field
{
  volatile uint16_t SEL_IN     : 2;
       uint16_t RESERVED1  : 6;
  volatile uint16_t SEL_OUT    : 3;
} stc_wc_clk_sel_field_t;

typedef struct stc_wc_clk_en_field
{
  volatile  uint8_t CLK_EN     : 1;
  volatile  uint8_t CLK_EN_R   : 1;
} stc_wc_clk_en_field_t;



 
 
 
typedef struct stc_rtc_wtcr10_field
{
  volatile  uint8_t ST         : 1;
        uint8_t RESERVED1  : 1;
  volatile  uint8_t RUN        : 1;
  volatile  uint8_t SRST       : 1;
  volatile  uint8_t SCST       : 1;
  volatile  uint8_t SCRST      : 1;
  volatile  uint8_t BUSY       : 1;
  volatile  uint8_t TRANS      : 1;
} stc_rtc_wtcr10_field_t;

typedef struct stc_rtc_wtcr11_field
{
  volatile  uint8_t MIEN       : 1;
  volatile  uint8_t HEN        : 1;
  volatile  uint8_t DEN        : 1;
  volatile  uint8_t MOEN       : 1;
  volatile  uint8_t YEN        : 1;
        uint8_t RESERVED1  : 3;
} stc_rtc_wtcr11_field_t;

typedef struct stc_rtc_wtcr12_field
{
  volatile  uint8_t INTSSI     : 1;
  volatile  uint8_t INTSI      : 1;
  volatile  uint8_t INTMI      : 1;
  volatile  uint8_t INTHI      : 1;
  volatile  uint8_t INTTMI     : 1;
  volatile  uint8_t INTALI     : 1;
  volatile  uint8_t INTERI     : 1;
  volatile  uint8_t INTCRI     : 1;
} stc_rtc_wtcr12_field_t;

typedef struct stc_rtc_wtcr13_field
{
  volatile  uint8_t INTSSIE    : 1;
  volatile  uint8_t INTSIE     : 1;
  volatile  uint8_t INTMIE     : 1;
  volatile  uint8_t INTHIE     : 1;
  volatile  uint8_t INTTMIE    : 1;
  volatile  uint8_t INTALIE    : 1;
  volatile  uint8_t INTERIE    : 1;
  volatile  uint8_t INTCRIE    : 1;
} stc_rtc_wtcr13_field_t;

typedef struct stc_rtc_wtcr20_field
{
  volatile  uint8_t CREAD      : 1;
  volatile  uint8_t CWRITE     : 1;
  volatile  uint8_t BREAD      : 1;
  volatile  uint8_t BWRITE     : 1;
  volatile  uint8_t PREAD      : 1;
  volatile  uint8_t PWRITE     : 1;
        uint8_t RESERVED1  : 2;
} stc_rtc_wtcr20_field_t;

typedef struct stc_rtc_wtcr21_field
{
  volatile  uint8_t TMST       : 1;
  volatile  uint8_t TMEN       : 1;
  volatile  uint8_t TMRUN      : 1;
        uint8_t RESERVED1  : 5;
} stc_rtc_wtcr21_field_t;

typedef struct stc_rtc_wtsr_field
{
  union {
    struct {
      volatile  uint8_t S          : 4;
      volatile  uint8_t TS         : 3;
            uint8_t RESERVED1  : 1;
    };
    struct {
      volatile  uint8_t S0         : 1;
      volatile  uint8_t S1         : 1;
      volatile  uint8_t S2         : 1;
      volatile  uint8_t S3         : 1;
      volatile  uint8_t TS0        : 1;
      volatile  uint8_t TS1        : 1;
      volatile  uint8_t TS2        : 1;
            uint8_t RESERVED2  : 1;
    };
  };
} stc_rtc_wtsr_field_t;

typedef struct stc_rtc_wtmir_field
{
  union {
    struct {
      volatile  uint8_t MI         : 4;
      volatile  uint8_t TMI        : 3;
            uint8_t RESERVED1  : 1;
    };
    struct {
      volatile  uint8_t MI0        : 1;
      volatile  uint8_t MI1        : 1;
      volatile  uint8_t MI2        : 1;
      volatile  uint8_t MI3        : 1;
      volatile  uint8_t TMI0       : 1;
      volatile  uint8_t TMI1       : 1;
      volatile  uint8_t TMI2       : 1;
            uint8_t RESERVED2  : 1;
    };
  };
} stc_rtc_wtmir_field_t;

typedef struct stc_rtc_wthr_field
{
  union {
    struct {
      volatile  uint8_t H          : 4;
      volatile  uint8_t TH         : 2;
            uint8_t RESERVED1  : 2;
    };
    struct {
      volatile  uint8_t H0         : 1;
      volatile  uint8_t H1         : 1;
      volatile  uint8_t H2         : 1;
      volatile  uint8_t H3         : 1;
      volatile  uint8_t TH0        : 1;
      volatile  uint8_t TH1        : 1;
            uint8_t RESERVED2  : 2;
    };
  };
} stc_rtc_wthr_field_t;

typedef struct stc_rtc_wtdr_field
{
  union {
    struct {
      volatile  uint8_t D          : 4;
      volatile  uint8_t TD         : 2;
            uint8_t RESERVED1  : 2;
    };
    struct {
      volatile  uint8_t D0         : 1;
      volatile  uint8_t D1         : 1;
      volatile  uint8_t D2         : 1;
      volatile  uint8_t D3         : 1;
      volatile  uint8_t TD0        : 1;
      volatile  uint8_t TD1        : 1;
            uint8_t RESERVED2  : 2;
    };
  };
} stc_rtc_wtdr_field_t;

typedef struct stc_rtc_wtdw_field
{
  union {
    struct {
      volatile  uint8_t DW         : 3;
            uint8_t RESERVED1  : 5;
    };
    struct {
      volatile  uint8_t DW0        : 1;
      volatile  uint8_t DW1        : 1;
      volatile  uint8_t DW2        : 1;
            uint8_t RESERVED2  : 5;
    };
  };
} stc_rtc_wtdw_field_t;

typedef struct stc_rtc_wtmor_field
{
  union {
    struct {
      volatile  uint8_t MO         : 4;
      volatile  uint8_t TMO        : 1;
            uint8_t RESERVED1  : 3;
    };
    struct {
      volatile  uint8_t MO0        : 1;
      volatile  uint8_t MO1        : 1;
      volatile  uint8_t MO2        : 1;
      volatile  uint8_t MO3        : 1;
            uint8_t RESERVED2  : 4;
    };
  };
} stc_rtc_wtmor_field_t;

typedef struct stc_rtc_wtyr_field
{
  union {
    struct {
      volatile  uint8_t Y          : 4;
      volatile  uint8_t TY         : 4;
    };
    struct {
      volatile  uint8_t Y0         : 1;
      volatile  uint8_t Y1         : 1;
      volatile  uint8_t Y2         : 1;
      volatile  uint8_t Y3         : 1;
      volatile  uint8_t TY0        : 1;
      volatile  uint8_t TY1        : 1;
      volatile  uint8_t TY2        : 1;
      volatile  uint8_t TY3        : 1;
    };
  };
} stc_rtc_wtyr_field_t;

typedef struct stc_rtc_almir_field
{
  union {
    struct {
      volatile  uint8_t AMI        : 4;
      volatile  uint8_t TAMI       : 3;
            uint8_t RESERVED1  : 1;
    };
    struct {
      volatile  uint8_t AMI0       : 1;
      volatile  uint8_t AMI1       : 1;
      volatile  uint8_t AMI2       : 1;
      volatile  uint8_t AMI3       : 1;
      volatile  uint8_t TAMI0      : 1;
      volatile  uint8_t TAMI1      : 1;
      volatile  uint8_t TAMI2      : 1;
            uint8_t RESERVED2  : 1;
    };
  };
} stc_rtc_almir_field_t;

typedef struct stc_rtc_alhr_field
{
  union {
    struct {
      volatile  uint8_t AH         : 4;
      volatile  uint8_t TAH        : 2;
            uint8_t RESERVED1  : 2;
    };
    struct {
      volatile  uint8_t AH0        : 1;
      volatile  uint8_t AH1        : 1;
      volatile  uint8_t AH2        : 1;
      volatile  uint8_t AH3        : 1;
      volatile  uint8_t TAH0       : 1;
      volatile  uint8_t TAH1       : 1;
            uint8_t RESERVED2  : 2;
    };
  };
} stc_rtc_alhr_field_t;

typedef struct stc_rtc_aldr_field
{
  union {
    struct {
      volatile  uint8_t AD         : 4;
      volatile  uint8_t TAD        : 2;
            uint8_t RESERVED1  : 2;
    };
    struct {
      volatile  uint8_t AD0        : 1;
      volatile  uint8_t AD1        : 1;
      volatile  uint8_t AD2        : 1;
      volatile  uint8_t AD3        : 1;
      volatile  uint8_t TAD0       : 1;
      volatile  uint8_t TAD1       : 1;
            uint8_t RESERVED2  : 2;
    };
  };
} stc_rtc_aldr_field_t;

typedef struct stc_rtc_almor_field
{
  union {
    struct {
      volatile  uint8_t AMO        : 4;
      volatile  uint8_t TAMO       : 1;
            uint8_t RESERVED1  : 3;
    };
    struct {
      volatile  uint8_t AMO0       : 1;
      volatile  uint8_t AMO1       : 1;
      volatile  uint8_t AMO2       : 1;
      volatile  uint8_t AMO3       : 1;
            uint8_t RESERVED2  : 4;
    };
  };
} stc_rtc_almor_field_t;

typedef struct stc_rtc_alyr_field
{
  union {
    struct {
      volatile  uint8_t AY         : 4;
      volatile  uint8_t TAY        : 4;
    };
    struct {
      volatile  uint8_t AY0        : 1;
      volatile  uint8_t AY1        : 1;
      volatile  uint8_t AY2        : 1;
      volatile  uint8_t AY3        : 1;
      volatile  uint8_t TAY0       : 1;
      volatile  uint8_t TAY1       : 1;
      volatile  uint8_t TAY2       : 1;
      volatile  uint8_t TAY3       : 1;
    };
  };
} stc_rtc_alyr_field_t;

typedef struct stc_rtc_wttr0_field
{
  volatile  uint8_t TM0        : 1;
  volatile  uint8_t TM1        : 1;
  volatile  uint8_t TM2        : 1;
  volatile  uint8_t TM3        : 1;
  volatile  uint8_t TM4        : 1;
  volatile  uint8_t TM5        : 1;
  volatile  uint8_t TM6        : 1;
  volatile  uint8_t TM7        : 1;
} stc_rtc_wttr0_field_t;

typedef struct stc_rtc_wttr1_field
{
  volatile  uint8_t TM8        : 1;
  volatile  uint8_t TM9        : 1;
  volatile  uint8_t TM10       : 1;
  volatile  uint8_t TM11       : 1;
  volatile  uint8_t TM12       : 1;
  volatile  uint8_t TM13       : 1;
  volatile  uint8_t TM14       : 1;
  volatile  uint8_t TM15       : 1;
} stc_rtc_wttr1_field_t;

typedef struct stc_rtc_wttr2_field
{
  volatile  uint8_t TM16       : 1;
  volatile  uint8_t TM17       : 1;
        uint8_t RESERVED1  : 6;
} stc_rtc_wttr2_field_t;

 
typedef struct stc_rtc_wtcal1_field
{
  union {
    struct {
      volatile  uint8_t WTCAL1     : 2;
            uint8_t RESERVED1  : 6;
    };
    struct {
      volatile  uint8_t WTCAL10    : 1;
      volatile  uint8_t WTCAL11    : 1;
            uint8_t RESERVED2  : 6;
    };
  };
} stc_rtc_wtcal1_field_t;

typedef struct stc_rtc_wtcalen_field
{
  volatile  uint8_t WTCALEN    : 1;
        uint8_t RESERVED1  : 7;
} stc_rtc_wtcalen_field_t;

typedef struct stc_rtc_wtdiv_field
{
  union {
    struct {
      volatile  uint8_t WTDIV      : 4;
            uint8_t RESERVED1  : 4;
    };
    struct {
      volatile  uint8_t WTDIV0     : 1;
      volatile  uint8_t WTDIV1     : 1;
      volatile  uint8_t WTDIV2     : 1;
      volatile  uint8_t WTDIV3     : 1;
            uint8_t RESERVED2  : 4;
    };
  };
} stc_rtc_wtdiv_field_t;

typedef struct stc_rtc_wtdiven_field
{
  volatile  uint8_t WTDIVEN    : 1;
  volatile  uint8_t WTDIVRDY   : 1;
        uint8_t RESERVED1  : 6;
} stc_rtc_wtdiven_field_t;

typedef struct stc_rtc_wtcalprd_field
{
  union {
    struct {
      volatile  uint8_t WTCALPRD   : 6;
            uint8_t RESERVED1  : 2;
    };
    struct {
      volatile  uint8_t WTCALPRD0  : 1;
      volatile  uint8_t WTCALPRD1  : 1;
      volatile  uint8_t WTCALPRD2  : 1;
      volatile  uint8_t WTCALPRD3  : 1;
      volatile  uint8_t WTCALPRD4  : 1;
      volatile  uint8_t WTCALPRD5  : 1;
            uint8_t RESERVED2  : 2;
    };
  };
} stc_rtc_wtcalprd_field_t;

typedef struct stc_rtc_wtcosel_field
{
  volatile  uint8_t WTCOSEL    : 1;
  volatile  uint8_t WTDIVRDY   : 7;
} stc_rtc_wtcosel_field_t;

 
typedef struct stc_rtc_vb_clkdiv_field
{
  volatile  uint8_t DIV        : 8;
} stc_rtc_vb_clkdiv_field_t;

typedef struct stc_rtc_wtosccnt_field
{
  volatile  uint8_t SOSCEX     : 1;
  volatile  uint8_t SOSCNTL    : 1;
} stc_rtc_wtosccnt_field_t;

typedef struct stc_rtc_boost_field
{
  volatile  uint8_t BOOST      : 2;
} stc_rtc_boost_field_t;

typedef struct stc_rtc_ewkup_field
{
  volatile  uint8_t WUP0       : 1;
} stc_rtc_ewkup_field_t;

typedef struct stc_rtc_vdet_field
{
        uint8_t RESERVED0  : 7;
  volatile  uint8_t PON        : 1;
} stc_rtc_vdet_field_t;

typedef struct stc_rtc_hibrst_field
{
  volatile  uint8_t HIBRST     : 1;
} stc_rtc_hibrst_field_t;

typedef struct stc_rtc_vbpfr_field
{
  volatile  uint8_t VPFR0      : 1;
  volatile  uint8_t VPFR1      : 1;
  volatile  uint8_t VPFR2      : 1;
  volatile  uint8_t VPFR3      : 1;
  volatile  uint8_t SPSR0      : 1;
  volatile  uint8_t SPSR1      : 1;
} stc_rtc_vbpfr_field_t;

typedef struct stc_rtc_vbpcr_field
{
  volatile  uint8_t VPCR0      : 1;
  volatile  uint8_t VPCR1      : 1;
  volatile  uint8_t VPCR2      : 1;
  volatile  uint8_t VPCR3      : 1;
} stc_rtc_vbpcr_field_t;

typedef struct stc_rtc_vbddr_field
{
  volatile  uint8_t VDDR0      : 1;
  volatile  uint8_t VDDR1      : 1;
  volatile  uint8_t VDDR2      : 1;
  volatile  uint8_t VDDR3      : 1;
} stc_rtc_vbddr_field_t;

typedef struct stc_rtc_vbdir_field
{
  volatile  uint8_t VDIR0      : 1;
  volatile  uint8_t VDIR1      : 1;
  volatile  uint8_t VDIR2      : 1;
  volatile  uint8_t VDIR3      : 1;
} stc_rtc_vbdir_field_t;

typedef struct stc_rtc_vbdor_field
{
  volatile  uint8_t VDOR0      : 1;
  volatile  uint8_t VDOR1      : 1;
  volatile  uint8_t VDOR2      : 1;
  volatile  uint8_t VDOR3      : 1;
} stc_rtc_vbdor_field_t;

typedef struct stc_rtc_vbpzr_field
{
  volatile  uint8_t VPZR0      : 1;
  volatile  uint8_t VPZR1      : 1;
} stc_rtc_vbpzr_field_t;



 
 
typedef struct stc_lcr_lcr_prsld_field
{
  volatile  uint8_t LCR_PRSLD  : 6;
} stc_lcr_lcr_prsld_field_t;



 
 
typedef struct stc_clk_gating_cken0_field
{
  volatile uint32_t MFSCK0     : 1;
  volatile uint32_t MFSCK1     : 1;
  volatile uint32_t MFSCK2     : 1;
  volatile uint32_t MFSCK3     : 1;
  volatile uint32_t MFSCK4     : 1;
  volatile uint32_t MFSCK5     : 1;
  volatile uint32_t MFSCK6     : 1;
  volatile uint32_t MFSCK7     : 1;
  volatile uint32_t MFSCK8     : 1;
  volatile uint32_t MFSCK9     : 1;
  volatile uint32_t MFSCK10    : 1;
  volatile uint32_t MFSCK11    : 1;
  volatile uint32_t MFSCK12    : 1;
  volatile uint32_t MFSCK13    : 1;
  volatile uint32_t MFSCK14    : 1;
  volatile uint32_t MFSCK15    : 1;
  volatile uint32_t ADCCK0     : 1;
  volatile uint32_t ADCCK1     : 1;
  volatile uint32_t ADCCK2     : 1;
  volatile uint32_t ADCCK3     : 1;
       uint32_t RESERVED1  : 4;
  volatile uint32_t DMACK      : 1;
       uint32_t RESERVED2  : 1;
  volatile uint32_t EXBCK      : 1;
       uint32_t RESERVED3  : 1;
  volatile uint32_t GIOCK      : 1;
} stc_clk_gating_cken0_field_t;

typedef struct stc_clk_gating_mrst0_field
{
  volatile uint32_t MFSRST0    : 1;
  volatile uint32_t MFSRST1    : 1;
  volatile uint32_t MFSRST2    : 1;
  volatile uint32_t MFSRST3    : 1;
  volatile uint32_t MFSRST4    : 1;
  volatile uint32_t MFSRST5    : 1;
  volatile uint32_t MFSRST6    : 1;
  volatile uint32_t MFSRST7    : 1;
  volatile uint32_t MFSRST8    : 1;
  volatile uint32_t MFSRST9    : 1;
  volatile uint32_t MFSRST10   : 1;
  volatile uint32_t MFSRST11   : 1;
  volatile uint32_t MFSRST12   : 1;
  volatile uint32_t MFSRST13   : 1;
  volatile uint32_t MFSRST14   : 1;
  volatile uint32_t MFSRST15   : 1;
  volatile uint32_t ADCRST0    : 1;
  volatile uint32_t ADCRST1    : 1;
  volatile uint32_t ADCRST2    : 1;
  volatile uint32_t ADCRST3    : 1;
       uint32_t RESERVED1  : 4;
  volatile uint32_t DMARST     : 1;
       uint32_t RESERVED2  : 1;
  volatile uint32_t EXBRST     : 1;
} stc_clk_gating_mrst0_field_t;

typedef struct stc_clk_gating_cken1_field
{
  volatile uint32_t BTMCK0     : 1;
  volatile uint32_t BTMCK1     : 1;
  volatile uint32_t BTMCK2     : 1;
  volatile uint32_t BTMCK3     : 1;
       uint32_t RESERVED1  : 4;
  volatile uint32_t MFTCK0     : 1;
  volatile uint32_t MFTCK1     : 1;
  volatile uint32_t MFTCK2     : 1;
  volatile uint32_t MFTCK3     : 1;
       uint32_t RESERVED2  : 4;
  volatile uint32_t QDUCK0     : 1;
  volatile uint32_t QDUCK1     : 1;
  volatile uint32_t QDUCK2     : 1;
  volatile uint32_t QDUCK3     : 1;
} stc_clk_gating_cken1_field_t;

typedef struct stc_clk_gating_mrst1_field
{
  volatile uint32_t BTMRST0    : 1;
  volatile uint32_t BTMRST1    : 1;
  volatile uint32_t BTMRST2    : 1;
  volatile uint32_t BTMRST3    : 1;
       uint32_t RESERVED1  : 4;
  volatile uint32_t MFTRST0    : 1;
  volatile uint32_t MFTRST1    : 1;
  volatile uint32_t MFTRST2    : 1;
  volatile uint32_t MFTRST3    : 1;
       uint32_t RESERVED2  : 4;
  volatile uint32_t QDURST0    : 1;
  volatile uint32_t QDURST1    : 1;
  volatile uint32_t QDURST2    : 1;
  volatile uint32_t QDURST3    : 1;
} stc_clk_gating_mrst1_field_t;

typedef struct stc_clk_gating_cken2_field
{
  volatile uint32_t USBCK0     : 1;
  volatile uint32_t USBCK1     : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t CANCK0     : 1;
  volatile uint32_t CANCK1     : 1;
  volatile uint32_t CANCK2     : 1;
       uint32_t RESERVED2  : 1;
  volatile uint32_t SDCCK      : 1;
       uint32_t RESERVED3  : 7;
  volatile uint32_t I2SCK0     : 1;
  volatile uint32_t I2SCK1     : 1;
       uint32_t RESERVED4  : 2;
  volatile uint32_t PCRCCK     : 1;
       uint32_t RESERVED5  : 3;
  volatile uint32_t CECCK0     : 1;
  volatile uint32_t CECCK1     : 1;
       uint32_t RESERVED6  : 2;
  volatile uint32_t QSPICK     : 1;
} stc_clk_gating_cken2_field_t;

typedef struct stc_clk_gating_mrst2_field
{
  volatile uint32_t USBRST0    : 1;
  volatile uint32_t USBRST1    : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t CANRST0    : 1;
  volatile uint32_t CANRST1    : 1;
  volatile uint32_t CANRST2    : 1;
       uint32_t RESERVED2  : 1;
  volatile uint32_t SDCRST     : 1;
       uint32_t RESERVED3  : 7;
  volatile uint32_t I2SRST0    : 1;
  volatile uint32_t I2SRST1    : 1;
       uint32_t RESERVED4  : 2;
  volatile uint32_t PCRCRST    : 1;
       uint32_t RESERVED5  : 3;
  volatile uint32_t CECRST0    : 1;
  volatile uint32_t CECRST1    : 1;
       uint32_t RESERVED6  : 2;
  volatile uint32_t QSPIRST    : 1;
} stc_clk_gating_mrst2_field_t;



 
 
typedef struct stc_i2spre_iccr_field
{
  volatile uint32_t ICEN       : 1;
  volatile uint32_t ICSEL      : 1;
} stc_i2spre_iccr_field_t;

typedef struct stc_i2spre_ipcr1_field
{
  volatile uint32_t IPLLEN     : 1;
} stc_i2spre_ipcr1_field_t;

typedef struct stc_i2spre_ipcr2_field
{
  volatile uint32_t IPOWT      : 3;
} stc_i2spre_ipcr2_field_t;

typedef struct stc_i2spre_ipcr3_field
{
  volatile uint32_t IPLLK      : 5;
} stc_i2spre_ipcr3_field_t;

typedef struct stc_i2spre_ipcr4_field
{
  volatile uint32_t IPLLN      : 7;
} stc_i2spre_ipcr4_field_t;

typedef struct stc_i2spre_ip_str_field
{
  volatile uint32_t IPRDY      : 1;
} stc_i2spre_ip_str_field_t;

typedef struct stc_i2spre_ipint_enr_field
{
  volatile uint32_t IPCSE      : 1;
} stc_i2spre_ipint_enr_field_t;

typedef struct stc_i2spre_ipint_clr_field
{
  volatile uint32_t IPCSC      : 1;
} stc_i2spre_ipint_clr_field_t;

typedef struct stc_i2spre_ipint_str_field
{
  volatile uint32_t IPCSI      : 1;
} stc_i2spre_ipint_str_field_t;

typedef struct stc_i2spre_ipcr5_field
{
  volatile uint32_t IPLLM      : 7;
} stc_i2spre_ipcr5_field_t;



 
 
typedef struct stc_exbus_mode_field
{
  volatile uint32_t WDTH       : 2;
  volatile uint32_t RBMON      : 1;
  volatile uint32_t WEOFF      : 1;
  volatile uint32_t NAND       : 1;
  volatile uint32_t PAGE       : 1;
  volatile uint32_t RDY        : 1;
  volatile uint32_t SHRTDOUT   : 1;
  volatile uint32_t MPXMODE    : 1;
  volatile uint32_t ALEINV     : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t MPXDOFF    : 1;
  volatile uint32_t MPXCSOF    : 1;
  volatile uint32_t MOEXEUP    : 1;
       uint32_t RESERVED2  : 18;
} stc_exbus_mode_field_t;

typedef struct stc_exbus_tim_field
{
  volatile uint32_t RACC       : 4;
  volatile uint32_t RADC       : 4;
  volatile uint32_t FRADC      : 4;
  volatile uint32_t RIDLC      : 4;
  volatile uint32_t WACC       : 4;
  volatile uint32_t WADC       : 4;
  volatile uint32_t WWEC       : 4;
  volatile uint32_t WIDLC      : 4;
} stc_exbus_tim_field_t;

typedef struct stc_exbus_area_field
{
  volatile uint32_t ADDR       : 8;
       uint32_t RESERVED1  : 8;
  volatile uint32_t MASK       : 7;
       uint32_t RESERVED2  : 9;
} stc_exbus_area_field_t;

typedef struct stc_exbus_atim_field
{
  volatile uint32_t ALC        : 4;
  volatile uint32_t ALES       : 4;
  volatile uint32_t ALEW       : 4;
       uint32_t RESERVED0  : 20;
} stc_exbus_atim_field_t;

typedef struct stc_exbus_sdmode_field
{
  volatile uint32_t SDON       : 1;
  volatile uint32_t PDON       : 1;
  volatile uint32_t ROFF       : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t CASEL      : 2;
       uint32_t RESERVED2  : 2;
  volatile uint32_t RASEL      : 4;
  volatile uint32_t BASEL      : 4;
  volatile uint32_t MSDCLKOFF  : 1;
       uint32_t RESERVED3  : 15;
} stc_exbus_sdmode_field_t;

typedef struct stc_exbus_reftim_field
{
  volatile uint32_t REFC       : 16;
  volatile uint32_t NREF       : 8;
  volatile uint32_t PREF       : 1;
       uint32_t RESERVED0  : 7;
} stc_exbus_reftim_field_t;

typedef struct stc_exbus_pwrdwn_field
{
  volatile uint32_t PDC        : 16;
       uint32_t RESERVED0  : 16;
} stc_exbus_pwrdwn_field_t;

typedef struct stc_exbus_sdtim_field
{
  volatile uint32_t CL         : 2;
       uint32_t RESERVED1  : 2;
  volatile uint32_t TRC        : 4;
  volatile uint32_t TRP        : 4;
  volatile uint32_t TRCD       : 4;
  volatile uint32_t TRAS       : 4;
  volatile uint32_t TREFC      : 4;
  volatile uint32_t TDPL       : 2;
       uint32_t RESERVED2  : 5;
  volatile uint32_t BOFF       : 1;
} stc_exbus_sdtim_field_t;

typedef struct stc_exbus_sdcmd_field
{
  volatile uint32_t SDAD       : 16;
  volatile uint32_t SDWE       : 1;
  volatile uint32_t SDCAS      : 1;
  volatile uint32_t SDRAS      : 1;
  volatile uint32_t SDCS       : 1;
  volatile uint32_t SDCKE      : 1;
       uint32_t RESERVED1  : 10;
  volatile uint32_t PEND       : 1;
} stc_exbus_sdcmd_field_t;

typedef struct stc_exbus_memcerr_field
{
  volatile uint32_t SFER       : 1;
  volatile uint32_t SDER       : 1;
  volatile uint32_t SFION      : 1;
  volatile uint32_t SDION      : 1;
       uint32_t RESERVED0  : 28;
} stc_exbus_memcerr_field_t;

typedef struct stc_exbus_dclkr_field
{
  volatile uint32_t MDIV       : 4;
  volatile uint32_t MCLKON     : 1;
       uint32_t RESERVED0  : 27;
} stc_exbus_dclkr_field_t;

typedef struct stc_exbus_est_field
{
  volatile uint32_t WERR       : 1;
       uint32_t RESERVED0  : 31;
} stc_exbus_est_field_t;

typedef struct stc_exbus_wead_field
{
  volatile uint32_t ADDR       : 32;
} stc_exbus_wead_field_t;

typedef struct stc_exbus_esclr_field
{
  volatile uint32_t WERRCLR    : 1;
       uint32_t RESERVED0  : 31;
} stc_exbus_esclr_field_t;

typedef struct stc_exbus_amode_field
{
  volatile uint32_t WAEN       : 1;
       uint32_t RESERVED0  : 31;
} stc_exbus_amode_field_t;



 
 
typedef struct stc_usb_hcnt_field
{
  volatile uint16_t HOST       : 1;
  volatile uint16_t URST       : 1;
  volatile uint16_t SOFIRE     : 1;
  volatile uint16_t DIRE       : 1;
  volatile uint16_t CNNIRE     : 1;
  volatile uint16_t CMPIRE     : 1;
  volatile uint16_t URIRE      : 1;
  volatile uint16_t RWKIRE     : 1;
  volatile uint16_t RETRY      : 1;
  volatile uint16_t CANCEL     : 1;
  volatile uint16_t SOFSTEP    : 1;
} stc_usb_hcnt_field_t;

typedef struct stc_usb_hcnt0_field
{
  volatile  uint8_t HOST       : 1;
  volatile  uint8_t URST       : 1;
  volatile  uint8_t SOFIRE     : 1;
  volatile  uint8_t DIRE       : 1;
  volatile  uint8_t CNNIRE     : 1;
  volatile  uint8_t CMPIRE     : 1;
  volatile  uint8_t URIRE      : 1;
  volatile  uint8_t RWKIRE     : 1;
} stc_usb_hcnt0_field_t;

typedef struct stc_usb_hcnt1_field
{
  volatile  uint8_t RETRY      : 1;
  volatile  uint8_t CANCEL     : 1;
  volatile  uint8_t SOFSTEP    : 1;
} stc_usb_hcnt1_field_t;

typedef struct stc_usb_hirq_field
{
  volatile  uint8_t SOFIRQ     : 1;
  volatile  uint8_t DIRQ       : 1;
  volatile  uint8_t CNNIRQ     : 1;
  volatile  uint8_t CMPIRQ     : 1;
  volatile  uint8_t URIRQ      : 1;
  volatile  uint8_t RWKIRQ     : 1;
        uint8_t RESERVED1  : 1;
  volatile  uint8_t TCAN       : 1;
} stc_usb_hirq_field_t;

typedef struct stc_usb_herr_field
{
  volatile  uint8_t HS0        : 1;
  volatile  uint8_t HS1        : 1;
  volatile  uint8_t STUFF      : 1;
  volatile  uint8_t TGERR      : 1;
  volatile  uint8_t CRC        : 1;
  volatile  uint8_t TOUT       : 1;
  volatile  uint8_t RERR       : 1;
  volatile  uint8_t LSTOF      : 1;
} stc_usb_herr_field_t;

typedef struct stc_usb_hstate_field
{
  volatile  uint8_t CSTAT      : 1;
  volatile  uint8_t TMODE      : 1;
  volatile  uint8_t SUSP       : 1;
  volatile  uint8_t SOFBUSY    : 1;
  volatile  uint8_t CLKSEL     : 1;
  volatile  uint8_t ALIVE      : 1;
} stc_usb_hstate_field_t;

typedef struct stc_usb_hfcomp_field
{
  volatile  uint8_t FRAMECOMP0 : 1;
  volatile  uint8_t FRAMECOMP1 : 1;
  volatile  uint8_t FRAMECOMP2 : 1;
  volatile  uint8_t FRAMECOMP3 : 1;
  volatile  uint8_t FRAMECOMP4 : 1;
  volatile  uint8_t FRAMECOMP5 : 1;
  volatile  uint8_t FRAMECOMP6 : 1;
  volatile  uint8_t FRAMECOMP7 : 1;
} stc_usb_hfcomp_field_t;

typedef struct stc_usb_hrtimer_field
{
  volatile uint16_t RTIMER0    : 1;
  volatile uint16_t RTIMER1    : 1;
  volatile uint16_t RTIMER2    : 1;
  volatile uint16_t RTIMER3    : 1;
  volatile uint16_t RTIMER4    : 1;
  volatile uint16_t RTIMER5    : 1;
  volatile uint16_t RTIMER6    : 1;
  volatile uint16_t RTIMER7    : 1;
  volatile uint16_t RTIMER8    : 1;
  volatile uint16_t RTIMER9    : 1;
  volatile uint16_t RTIMER10   : 1;
  volatile uint16_t RTIMER11   : 1;
  volatile uint16_t RTIMER12   : 1;
  volatile uint16_t RTIMER13   : 1;
  volatile uint16_t RTIMER14   : 1;
  volatile uint16_t RTIMER15   : 1;
} stc_usb_hrtimer_field_t;

typedef struct stc_usb_hrtimer0_field
{
  volatile  uint8_t RTIMER00   : 1;
  volatile  uint8_t RTIMER01   : 1;
  volatile  uint8_t RTIMER02   : 1;
  volatile  uint8_t RTIMER03   : 1;
  volatile  uint8_t RTIMER04   : 1;
  volatile  uint8_t RTIMER05   : 1;
  volatile  uint8_t RTIMER06   : 1;
  volatile  uint8_t RTIMER07   : 1;
} stc_usb_hrtimer0_field_t;

typedef struct stc_usb_hrtimer1_field
{
  volatile  uint8_t RTIMER10   : 1;
  volatile  uint8_t RTIMER11   : 1;
  volatile  uint8_t RTIMER12   : 1;
  volatile  uint8_t RTIMER13   : 1;
  volatile  uint8_t RTIMER14   : 1;
  volatile  uint8_t RTIMER15   : 1;
  volatile  uint8_t RTIMER16   : 1;
  volatile  uint8_t RTIMER17   : 1;
} stc_usb_hrtimer1_field_t;

typedef struct stc_usb_hrtimer2_field
{
  volatile  uint8_t RTIMER20   : 1;
  volatile  uint8_t RTIMER21   : 1;
  volatile  uint8_t RTIMER22   : 1;
} stc_usb_hrtimer2_field_t;

typedef struct stc_usb_hadr_field
{
  volatile  uint8_t ADDRESS0   : 1;
  volatile  uint8_t ADDRESS1   : 1;
  volatile  uint8_t ADDRESS2   : 1;
  volatile  uint8_t ADDRESS3   : 1;
  volatile  uint8_t ADDRESS4   : 1;
  volatile  uint8_t ADDRESS5   : 1;
  volatile  uint8_t ADDRESS6   : 1;
} stc_usb_hadr_field_t;

typedef struct stc_usb_heof_field
{
  volatile uint16_t EOF0       : 1;
  volatile uint16_t EOF1       : 1;
  volatile uint16_t EOF2       : 1;
  volatile uint16_t EOF3       : 1;
  volatile uint16_t EOF4       : 1;
  volatile uint16_t EOF5       : 1;
  volatile uint16_t EOF6       : 1;
  volatile uint16_t EOF7       : 1;
  volatile uint16_t EOF8       : 1;
  volatile uint16_t EOF9       : 1;
  volatile uint16_t EOF10      : 1;
  volatile uint16_t EOF11      : 1;
  volatile uint16_t EOF12      : 1;
  volatile uint16_t EOF13      : 1;
  volatile uint16_t EOF14      : 1;
  volatile uint16_t EOF15      : 1;
} stc_usb_heof_field_t;

typedef struct stc_usb_heof0_field
{
  volatile  uint8_t EOF00      : 1;
  volatile  uint8_t EOF01      : 1;
  volatile  uint8_t EOF02      : 1;
  volatile  uint8_t EOF03      : 1;
  volatile  uint8_t EOF04      : 1;
  volatile  uint8_t EOF05      : 1;
  volatile  uint8_t EOF06      : 1;
  volatile  uint8_t EOF07      : 1;
} stc_usb_heof0_field_t;

typedef struct stc_usb_heof1_field
{
  volatile  uint8_t EOF10      : 1;
  volatile  uint8_t EOF11      : 1;
  volatile  uint8_t EOF12      : 1;
  volatile  uint8_t EOF13      : 1;
  volatile  uint8_t EOF14      : 1;
  volatile  uint8_t EOF15      : 1;
} stc_usb_heof1_field_t;

typedef struct stc_usb_hframe_field
{
  volatile uint16_t FRAME0     : 1;
  volatile uint16_t FRAME1     : 1;
  volatile uint16_t FRAME2     : 1;
  volatile uint16_t FRAME3     : 1;
  volatile uint16_t FRAME4     : 1;
  volatile uint16_t FRAME5     : 1;
  volatile uint16_t FRAME6     : 1;
  volatile uint16_t FRAME7     : 1;
  volatile uint16_t FRAME8     : 1;
  volatile uint16_t FRAME9     : 1;
  volatile uint16_t FRAME10    : 1;
} stc_usb_hframe_field_t;

typedef struct stc_usb_hframe0_field
{
  volatile  uint8_t FRAME00    : 1;
  volatile  uint8_t FRAME01    : 1;
  volatile  uint8_t FRAME02    : 1;
  volatile  uint8_t FRAME03    : 1;
  volatile  uint8_t FRAME04    : 1;
  volatile  uint8_t FRAME05    : 1;
  volatile  uint8_t FRAME06    : 1;
  volatile  uint8_t FRAME07    : 1;
} stc_usb_hframe0_field_t;

typedef struct stc_usb_hframe1_field
{
  volatile  uint8_t FRAME10    : 1;
  volatile  uint8_t FRAME11    : 1;
  volatile  uint8_t FRAME12    : 1;
  volatile  uint8_t FRAME13    : 1;
} stc_usb_hframe1_field_t;

typedef struct stc_usb_htoken_field
{
  volatile  uint8_t ENDPT0     : 1;
  volatile  uint8_t ENDPT1     : 1;
  volatile  uint8_t ENDPT2     : 1;
  volatile  uint8_t ENDPT3     : 1;
  volatile  uint8_t TKNEN0     : 1;
  volatile  uint8_t TKNEN1     : 1;
  volatile  uint8_t TKNEN2     : 1;
  volatile  uint8_t TGGL       : 1;
} stc_usb_htoken_field_t;

typedef struct stc_usb_udcc_field
{
  volatile uint16_t PWC        : 1;
  volatile uint16_t RFBK       : 1;
       uint16_t RESERVED1  : 1;
  volatile uint16_t STALCLREN  : 1;
  volatile uint16_t USTP       : 1;
  volatile uint16_t HCONX      : 1;
  volatile uint16_t RESUM      : 1;
  volatile uint16_t RST        : 1;
} stc_usb_udcc_field_t;

typedef struct stc_usb_ep0c_field
{
  volatile uint16_t PKS00      : 1;
  volatile uint16_t PKS01      : 1;
  volatile uint16_t PKS02      : 1;
  volatile uint16_t PKS03      : 1;
  volatile uint16_t PKS04      : 1;
  volatile uint16_t PKS05      : 1;
  volatile uint16_t PKS06      : 1;
       uint16_t RESERVED1  : 2;
  volatile uint16_t STAL       : 1;
} stc_usb_ep0c_field_t;

typedef struct stc_usb_ep1c_field
{
  volatile uint16_t PKS10      : 1;
  volatile uint16_t PKS11      : 1;
  volatile uint16_t PKS12      : 1;
  volatile uint16_t PKS13      : 1;
  volatile uint16_t PKS14      : 1;
  volatile uint16_t PKS15      : 1;
  volatile uint16_t PKS16      : 1;
  volatile uint16_t PKS17      : 1;
  volatile uint16_t PKS18      : 1;
  volatile uint16_t STAL       : 1;
  volatile uint16_t NULE       : 1;
  volatile uint16_t DMAE       : 1;
  volatile uint16_t DIR        : 1;
  volatile uint16_t TYPE0      : 1;
  volatile uint16_t TYPE1      : 1;
  volatile uint16_t EPEN       : 1;
} stc_usb_ep1c_field_t;

typedef struct stc_usb_ep2c_field
{
  volatile uint16_t PKS20      : 1;
  volatile uint16_t PKS21      : 1;
  volatile uint16_t PKS22      : 1;
  volatile uint16_t PKS23      : 1;
  volatile uint16_t PKS24      : 1;
  volatile uint16_t PKS25      : 1;
  volatile uint16_t PKS26      : 1;
       uint16_t RESERVED1  : 2;
  volatile uint16_t STAL       : 1;
  volatile uint16_t NULE       : 1;
  volatile uint16_t DMAE       : 1;
  volatile uint16_t DIR        : 1;
  volatile uint16_t TYPE0      : 1;
  volatile uint16_t TYPE1      : 1;
  volatile uint16_t EPEN       : 1;
} stc_usb_ep2c_field_t;

typedef struct stc_usb_ep3c_field
{
  volatile uint16_t PKS30      : 1;
  volatile uint16_t PKS31      : 1;
  volatile uint16_t PKS32      : 1;
  volatile uint16_t PKS33      : 1;
  volatile uint16_t PKS34      : 1;
  volatile uint16_t PKS35      : 1;
  volatile uint16_t PKS36      : 1;
       uint16_t RESERVED1  : 2;
  volatile uint16_t STAL       : 1;
  volatile uint16_t NULE       : 1;
  volatile uint16_t DMAE       : 1;
  volatile uint16_t DIR        : 1;
  volatile uint16_t TYPE0      : 1;
  volatile uint16_t TYPE1      : 1;
  volatile uint16_t EPEN       : 1;
} stc_usb_ep3c_field_t;

typedef struct stc_usb_ep4c_field
{
  volatile uint16_t PKS40      : 1;
  volatile uint16_t PKS41      : 1;
  volatile uint16_t PKS42      : 1;
  volatile uint16_t PKS43      : 1;
  volatile uint16_t PKS44      : 1;
  volatile uint16_t PKS45      : 1;
  volatile uint16_t PKS46      : 1;
       uint16_t RESERVED1  : 2;
  volatile uint16_t STAL       : 1;
  volatile uint16_t NULE       : 1;
  volatile uint16_t DMAE       : 1;
  volatile uint16_t DIR        : 1;
  volatile uint16_t TYPE0      : 1;
  volatile uint16_t TYPE1      : 1;
  volatile uint16_t EPEN       : 1;
} stc_usb_ep4c_field_t;

typedef struct stc_usb_ep5c_field
{
  volatile uint16_t PKS50      : 1;
  volatile uint16_t PKS51      : 1;
  volatile uint16_t PKS52      : 1;
  volatile uint16_t PKS53      : 1;
  volatile uint16_t PKS54      : 1;
  volatile uint16_t PKS55      : 1;
  volatile uint16_t PKS56      : 1;
       uint16_t RESERVED1  : 2;
  volatile uint16_t STAL       : 1;
  volatile uint16_t NULE       : 1;
  volatile uint16_t DMAE       : 1;
  volatile uint16_t DIR        : 1;
  volatile uint16_t TYPE0      : 1;
  volatile uint16_t TYPE1      : 1;
  volatile uint16_t EPEN       : 1;
} stc_usb_ep5c_field_t;

typedef struct stc_usb_tmsp_field
{
  volatile uint16_t TMSP0      : 1;
  volatile uint16_t TMSP1      : 1;
  volatile uint16_t TMSP2      : 1;
  volatile uint16_t TMSP3      : 1;
  volatile uint16_t TMSP4      : 1;
  volatile uint16_t TMSP5      : 1;
  volatile uint16_t TMSP6      : 1;
  volatile uint16_t TMSP7      : 1;
  volatile uint16_t TMSP8      : 1;
  volatile uint16_t TMSP9      : 1;
  volatile uint16_t TMSP10     : 1;
} stc_usb_tmsp_field_t;

typedef struct stc_usb_udcs_field
{
  volatile  uint8_t CONF       : 1;
  volatile  uint8_t SETP       : 1;
  volatile  uint8_t WKUP       : 1;
  volatile  uint8_t BRST       : 1;
  volatile  uint8_t SOF        : 1;
  volatile  uint8_t SUSP       : 1;
} stc_usb_udcs_field_t;

typedef struct stc_usb_udcie_field
{
  volatile  uint8_t CONFIE     : 1;
  volatile  uint8_t CONFN      : 1;
  volatile  uint8_t WKUPIE     : 1;
  volatile  uint8_t BRSTIE     : 1;
  volatile  uint8_t SOFIE      : 1;
  volatile  uint8_t SUSPIE     : 1;
} stc_usb_udcie_field_t;

typedef struct stc_usb_ep0is_field
{
       uint16_t RESERVED1  : 10;
  volatile uint16_t DRQI       : 1;
       uint16_t RESERVED2  : 3;
  volatile uint16_t DRQIIE     : 1;
  volatile uint16_t BFINI      : 1;
} stc_usb_ep0is_field_t;

typedef struct stc_usb_ep0os_field
{
  volatile uint16_t SIZE0      : 1;
  volatile uint16_t SIZE1      : 1;
  volatile uint16_t SIZE2      : 1;
  volatile uint16_t SIZE3      : 1;
  volatile uint16_t SIZE4      : 1;
  volatile uint16_t SIZE5      : 1;
  volatile uint16_t SIZE6      : 1;
       uint16_t RESERVED1  : 2;
  volatile uint16_t SPK        : 1;
  volatile uint16_t DRQO       : 1;
       uint16_t RESERVED2  : 2;
  volatile uint16_t SPKIE      : 1;
  volatile uint16_t DRQOIE     : 1;
  volatile uint16_t BFINI      : 1;
} stc_usb_ep0os_field_t;

typedef struct stc_usb_ep1s_field
{
  volatile uint16_t SIZE10     : 1;
  volatile uint16_t SIZE11     : 1;
  volatile uint16_t SIZE12     : 1;
  volatile uint16_t SIZE13     : 1;
  volatile uint16_t SIZE14     : 1;
  volatile uint16_t SIZE15     : 1;
  volatile uint16_t SIZE16     : 1;
  volatile uint16_t SIZE17     : 1;
  volatile uint16_t SIZE18     : 1;
  volatile uint16_t SPK        : 1;
  volatile uint16_t DRQ        : 1;
  volatile uint16_t BUSY       : 1;
       uint16_t RESERVED1  : 1;
  volatile uint16_t SPKIE      : 1;
  volatile uint16_t DRQIE      : 1;
  volatile uint16_t BFINI      : 1;
} stc_usb_ep1s_field_t;

typedef struct stc_usb_ep2s_field
{
  volatile uint16_t SIZE20     : 1;
  volatile uint16_t SIZE21     : 1;
  volatile uint16_t SIZE22     : 1;
  volatile uint16_t SIZE23     : 1;
  volatile uint16_t SIZE24     : 1;
  volatile uint16_t SIZE25     : 1;
  volatile uint16_t SIZE26     : 1;
       uint16_t RESERVED1  : 2;
  volatile uint16_t SPK        : 1;
  volatile uint16_t DRQ        : 1;
  volatile uint16_t BUSY       : 1;
       uint16_t RESERVED2  : 1;
  volatile uint16_t SPKIE      : 1;
  volatile uint16_t DRQIE      : 1;
  volatile uint16_t BFINI      : 1;
} stc_usb_ep2s_field_t;

typedef struct stc_usb_ep4s_field
{
  volatile uint16_t SIZE40     : 1;
  volatile uint16_t SIZE41     : 1;
  volatile uint16_t SIZE42     : 1;
  volatile uint16_t SIZE43     : 1;
  volatile uint16_t SIZE44     : 1;
  volatile uint16_t SIZE45     : 1;
  volatile uint16_t SIZE46     : 1;
       uint16_t RESERVED1  : 2;
  volatile uint16_t SPK        : 1;
  volatile uint16_t DRQ        : 1;
  volatile uint16_t BUSY       : 1;
       uint16_t RESERVED2  : 1;
  volatile uint16_t SPKIE      : 1;
  volatile uint16_t DRQIE      : 1;
  volatile uint16_t BFINI      : 1;
} stc_usb_ep4s_field_t;

typedef struct stc_usb_ep5s_field
{
  volatile uint16_t SIZE50     : 1;
  volatile uint16_t SIZE51     : 1;
  volatile uint16_t SIZE52     : 1;
  volatile uint16_t SIZE53     : 1;
  volatile uint16_t SIZE54     : 1;
  volatile uint16_t SIZE55     : 1;
  volatile uint16_t SIZE56     : 1;
       uint16_t RESERVED1  : 2;
  volatile uint16_t SPK        : 1;
  volatile uint16_t DRQ        : 1;
  volatile uint16_t BUSY       : 1;
       uint16_t RESERVED2  : 1;
  volatile uint16_t SPKIE      : 1;
  volatile uint16_t DRQIE      : 1;
  volatile uint16_t BFINI      : 1;
} stc_usb_ep5s_field_t;



 
 
typedef struct stc_dmac_dmacr_field
{
       uint32_t RESERVED1  : 24;
  volatile uint32_t DH0        : 1;
  volatile uint32_t DH1        : 1;
  volatile uint32_t DH2        : 1;
  volatile uint32_t DH3        : 1;
  volatile uint32_t PR         : 1;
       uint32_t RESERVED2  : 1;
  volatile uint32_t DS         : 1;
  volatile uint32_t DE         : 1;
} stc_dmac_dmacr_field_t;

typedef struct stc_dmac_dmaca0_field
{
  volatile uint32_t TC         : 16;
  volatile uint32_t BC         : 4;
       uint32_t RESERVED1  : 3;
  volatile uint32_t IS         : 6;
  volatile uint32_t ST         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t EB         : 1;
} stc_dmac_dmaca0_field_t;

typedef struct stc_dmac_dmacb0_field
{
  volatile uint32_t EM         : 1;
       uint32_t RESERVED1  : 15;
  volatile uint32_t SS         : 3;
  volatile uint32_t CI         : 1;
  volatile uint32_t EI         : 1;
  volatile uint32_t RD         : 1;
  volatile uint32_t RS         : 1;
  volatile uint32_t RC         : 1;
  volatile uint32_t FD         : 1;
  volatile uint32_t FS         : 1;
  volatile uint32_t TW         : 2;
  volatile uint32_t MS         : 2;
} stc_dmac_dmacb0_field_t;

typedef struct stc_dmac_dmaca1_field
{
  volatile uint32_t TC         : 16;
  volatile uint32_t BC         : 4;
       uint32_t RESERVED1  : 3;
  volatile uint32_t IS         : 6;
  volatile uint32_t ST         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t EB         : 1;
} stc_dmac_dmaca1_field_t;

typedef struct stc_dmac_dmacb1_field
{
  volatile uint32_t EM         : 1;
       uint32_t RESERVED1  : 15;
  volatile uint32_t SS         : 3;
  volatile uint32_t CI         : 1;
  volatile uint32_t EI         : 1;
  volatile uint32_t RD         : 1;
  volatile uint32_t RS         : 1;
  volatile uint32_t RC         : 1;
  volatile uint32_t FD         : 1;
  volatile uint32_t FS         : 1;
  volatile uint32_t TW         : 2;
  volatile uint32_t MS         : 2;
} stc_dmac_dmacb1_field_t;

typedef struct stc_dmac_dmaca2_field
{
  volatile uint32_t TC         : 16;
  volatile uint32_t BC         : 4;
       uint32_t RESERVED1  : 3;
  volatile uint32_t IS         : 6;
  volatile uint32_t ST         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t EB         : 1;
} stc_dmac_dmaca2_field_t;

typedef struct stc_dmac_dmacb2_field
{
  volatile uint32_t EM         : 1;
       uint32_t RESERVED1  : 15;
  volatile uint32_t SS         : 3;
  volatile uint32_t CI         : 1;
  volatile uint32_t EI         : 1;
  volatile uint32_t RD         : 1;
  volatile uint32_t RS         : 1;
  volatile uint32_t RC         : 1;
  volatile uint32_t FD         : 1;
  volatile uint32_t FS         : 1;
  volatile uint32_t TW         : 2;
  volatile uint32_t MS         : 2;
} stc_dmac_dmacb2_field_t;

typedef struct stc_dmac_dmaca3_field
{
  volatile uint32_t TC         : 16;
  volatile uint32_t BC         : 4;
       uint32_t RESERVED1  : 3;
  volatile uint32_t IS         : 6;
  volatile uint32_t ST         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t EB         : 1;
} stc_dmac_dmaca3_field_t;

typedef struct stc_dmac_dmacb3_field
{
  volatile uint32_t EM         : 1;
       uint32_t RESERVED1  : 15;
  volatile uint32_t SS         : 3;
  volatile uint32_t CI         : 1;
  volatile uint32_t EI         : 1;
  volatile uint32_t RD         : 1;
  volatile uint32_t RS         : 1;
  volatile uint32_t RC         : 1;
  volatile uint32_t FD         : 1;
  volatile uint32_t TW         : 2;
  volatile uint32_t MS         : 2;
} stc_dmac_dmacb3_field_t;

typedef struct stc_dmac_dmaca4_field
{
  volatile uint32_t TC         : 16;
  volatile uint32_t BC         : 4;
       uint32_t RESERVED1  : 3;
  volatile uint32_t IS         : 6;
  volatile uint32_t ST         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t EB         : 1;
} stc_dmac_dmaca4_field_t;

typedef struct stc_dmac_dmacb4_field
{
  volatile uint32_t EM         : 1;
       uint32_t RESERVED1  : 15;
  volatile uint32_t SS         : 3;
  volatile uint32_t CI         : 1;
  volatile uint32_t EI         : 1;
  volatile uint32_t RD         : 1;
  volatile uint32_t RS         : 1;
  volatile uint32_t RC         : 1;
  volatile uint32_t FD         : 1;
  volatile uint32_t FS         : 1;
  volatile uint32_t TW         : 2;
  volatile uint32_t MS         : 2;
} stc_dmac_dmacb4_field_t;

typedef struct stc_dmac_dmaca5_field
{
  volatile uint32_t TC         : 16;
  volatile uint32_t BC         : 4;
       uint32_t RESERVED1  : 3;
  volatile uint32_t IS         : 6;
  volatile uint32_t ST         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t EB         : 1;
} stc_dmac_dmaca5_field_t;

typedef struct stc_dmac_dmacb5_field
{
  volatile uint32_t EM         : 1;
       uint32_t RESERVED1  : 15;
  volatile uint32_t SS         : 3;
  volatile uint32_t CI         : 1;
  volatile uint32_t EI         : 1;
  volatile uint32_t RD         : 1;
  volatile uint32_t RS         : 1;
  volatile uint32_t RC         : 1;
  volatile uint32_t FD         : 1;
  volatile uint32_t FS         : 1;
  volatile uint32_t TW         : 2;
  volatile uint32_t MS         : 2;
} stc_dmac_dmacb5_field_t;

typedef struct stc_dmac_dmaca6_field
{
  volatile uint32_t TC         : 16;
  volatile uint32_t BC         : 4;
       uint32_t RESERVED1  : 3;
  volatile uint32_t IS         : 6;
  volatile uint32_t ST         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t EB         : 1;
} stc_dmac_dmaca6_field_t;

typedef struct stc_dmac_dmacb6_field
{
  volatile uint32_t EM         : 1;
       uint32_t RESERVED1  : 15;
  volatile uint32_t SS         : 3;
  volatile uint32_t CI         : 1;
  volatile uint32_t EI         : 1;
  volatile uint32_t RD         : 1;
  volatile uint32_t RS         : 1;
  volatile uint32_t RC         : 1;
  volatile uint32_t FD         : 1;
  volatile uint32_t FS         : 1;
  volatile uint32_t TW         : 2;
  volatile uint32_t MS         : 2;
} stc_dmac_dmacb6_field_t;

typedef struct stc_dmac_dmaca7_field
{
  volatile uint32_t TC         : 16;
  volatile uint32_t BC         : 4;
       uint32_t RESERVED1  : 3;
  volatile uint32_t IS         : 6;
  volatile uint32_t ST         : 1;
  volatile uint32_t PB         : 1;
  volatile uint32_t EB         : 1;
} stc_dmac_dmaca7_field_t;

typedef struct stc_dmac_dmacb7_field
{
  volatile uint32_t EM         : 1;
       uint32_t RESERVED1  : 15;
  volatile uint32_t SS         : 3;
  volatile uint32_t CI         : 1;
  volatile uint32_t EI         : 1;
  volatile uint32_t RD         : 1;
  volatile uint32_t RS         : 1;
  volatile uint32_t RC         : 1;
  volatile uint32_t FD         : 1;
  volatile uint32_t FS         : 1;
  volatile uint32_t TW         : 2;
  volatile uint32_t MS         : 2;
} stc_dmac_dmacb7_field_t;



 
 
typedef struct stc_can_ctrlr_field
{
  volatile uint16_t INIT       : 1;
  volatile uint16_t IE         : 1;
  volatile uint16_t SIE        : 1;
  volatile uint16_t EIE        : 1;
       uint16_t RESERVED1  : 1;
  volatile uint16_t DAR        : 1;
  volatile uint16_t CCE        : 1;
  volatile uint16_t TEST       : 1;
} stc_can_ctrlr_field_t;

typedef struct stc_can_statr_field
{
  volatile uint16_t LEC        : 3;
  volatile uint16_t TXOK       : 1;
  volatile uint16_t RXOK       : 1;
  volatile uint16_t EPASS      : 1;
  volatile uint16_t EWARN      : 1;
  volatile uint16_t BOFF       : 1;
} stc_can_statr_field_t;

typedef struct stc_can_errcnt_field
{
  volatile uint16_t TEC0       : 1;
  volatile uint16_t TEC1       : 1;
  volatile uint16_t TEC2       : 1;
  volatile uint16_t TEC3       : 1;
  volatile uint16_t TEC4       : 1;
  volatile uint16_t TEC5       : 1;
  volatile uint16_t TEC6       : 1;
  volatile uint16_t TEC7       : 1;
  volatile uint16_t REC0       : 1;
  volatile uint16_t REC1       : 1;
  volatile uint16_t REC2       : 1;
  volatile uint16_t REC3       : 1;
  volatile uint16_t REC4       : 1;
  volatile uint16_t REC5       : 1;
  volatile uint16_t REC6       : 1;
  volatile uint16_t RP         : 1;
} stc_can_errcnt_field_t;

typedef struct stc_can_btr_field
{
  volatile uint16_t BRP        : 6;
  volatile uint16_t SJW        : 2;
  volatile uint16_t TSEG1      : 4;
  volatile uint16_t TSEG2      : 3;
} stc_can_btr_field_t;

typedef struct stc_can_intr_field
{
  volatile uint16_t INTID0     : 1;
  volatile uint16_t INTID1     : 1;
  volatile uint16_t INTID2     : 1;
  volatile uint16_t INTID3     : 1;
  volatile uint16_t INTID4     : 1;
  volatile uint16_t INTID5     : 1;
  volatile uint16_t INTID6     : 1;
  volatile uint16_t INTID7     : 1;
  volatile uint16_t INTID8     : 1;
  volatile uint16_t INTID9     : 1;
  volatile uint16_t INTID10    : 1;
  volatile uint16_t INTID11    : 1;
  volatile uint16_t INTID12    : 1;
  volatile uint16_t INTID13    : 1;
  volatile uint16_t INTID14    : 1;
  volatile uint16_t INTID15    : 1;
} stc_can_intr_field_t;

typedef struct stc_can_testr_field
{
       uint16_t RESERVED1  : 2;
  volatile uint16_t BASIC      : 1;
  volatile uint16_t SILENT     : 1;
  volatile uint16_t LBACK      : 1;
  volatile uint16_t TX0        : 1;
  volatile uint16_t TX1        : 1;
  volatile uint16_t RX         : 1;
} stc_can_testr_field_t;

typedef struct stc_can_brper_field
{
  volatile uint16_t BRPE0      : 1;
  volatile uint16_t BRPE1      : 1;
  volatile uint16_t BRPE2      : 1;
  volatile uint16_t BRPE3      : 1;
} stc_can_brper_field_t;

typedef struct stc_can_if1creq_field
{
       uint16_t RESERVED1  : 15;
  volatile uint16_t BUSY       : 1;
} stc_can_if1creq_field_t;

typedef struct stc_can_if1cmsk_field
{
  volatile uint16_t DATAB      : 1;
  volatile uint16_t DATAA      : 1;
  volatile uint16_t NEWDAT     : 1;
  volatile uint16_t CIP        : 1;
  volatile uint16_t CONTROL    : 1;
  volatile uint16_t ARB        : 1;
  volatile uint16_t MASK       : 1;
  volatile uint16_t WRRD       : 1;
} stc_can_if1cmsk_field_t;

typedef struct stc_can_if1msk_field
{
  volatile uint32_t MSK        : 29;
       uint32_t RESERVED1  : 1;
  volatile uint32_t MDIR       : 1;
  volatile uint32_t MXTD       : 1;
} stc_can_if1msk_field_t;

typedef struct stc_can_if1msk2_field
{
       uint16_t RESERVED1  : 14;
  volatile uint16_t MDIR       : 1;
  volatile uint16_t MXTD       : 1;
} stc_can_if1msk2_field_t;

typedef struct stc_can_if1arb_field
{
  volatile uint32_t ID         : 29;
  volatile uint32_t DIR        : 1;
  volatile uint32_t XTD        : 1;
  volatile uint32_t MSGVAL     : 1;
} stc_can_if1arb_field_t;

typedef struct stc_can_if1arb2_field
{
       uint16_t RESERVED1  : 13;
  volatile uint16_t DIR        : 1;
  volatile uint16_t XTD        : 1;
  volatile uint16_t MSGVAL     : 1;
} stc_can_if1arb2_field_t;

typedef struct stc_can_if1mctr_field
{
  volatile uint16_t DLC        : 4;
       uint16_t RESERVED1  : 3;
  volatile uint16_t EOB        : 1;
  volatile uint16_t TXRQST     : 1;
  volatile uint16_t RMTEN      : 1;
  volatile uint16_t RXIE       : 1;
  volatile uint16_t TXIE       : 1;
  volatile uint16_t UMASK      : 1;
  volatile uint16_t INTPND     : 1;
  volatile uint16_t MSGLST     : 1;
  volatile uint16_t NEWDAT     : 1;
} stc_can_if1mctr_field_t;

typedef struct stc_can_if2creq_field
{
       uint16_t RESERVED1  : 15;
  volatile uint16_t BUSY       : 1;
} stc_can_if2creq_field_t;

typedef struct stc_can_if2cmsk_field
{
  volatile uint16_t DATAB      : 1;
  volatile uint16_t DATAA      : 1;
  volatile uint16_t NEWDAT     : 1;
  volatile uint16_t CIP        : 1;
  volatile uint16_t CONTROL    : 1;
  volatile uint16_t ARB        : 1;
  volatile uint16_t MASK       : 1;
  volatile uint16_t WRRD       : 1;
} stc_can_if2cmsk_field_t;

typedef struct stc_can_if2msk_field
{
       uint32_t RESERVED1  : 30;
  volatile uint32_t MDIR       : 1;
  volatile uint32_t MXTD       : 1;
} stc_can_if2msk_field_t;

typedef struct stc_can_if2msk2_field
{
       uint16_t RESERVED1  : 14;
  volatile uint16_t MDIR       : 1;
  volatile uint16_t MXTD       : 1;
} stc_can_if2msk2_field_t;

typedef struct stc_can_if2arb2_field
{
       uint16_t RESERVED1  : 13;
  volatile uint16_t DIR        : 1;
  volatile uint16_t XTD        : 1;
  volatile uint16_t MSGVAL     : 1;
} stc_can_if2arb2_field_t;

typedef struct stc_can_if2mctr_field
{
  volatile uint16_t DLC        : 4;
       uint16_t RESERVED1  : 3;
  volatile uint16_t EOB        : 1;
  volatile uint16_t TXRQST     : 1;
  volatile uint16_t RMTEN      : 1;
  volatile uint16_t RXIE       : 1;
  volatile uint16_t TXIE       : 1;
  volatile uint16_t UMASK      : 1;
  volatile uint16_t INTPND     : 1;
  volatile uint16_t MSGLST     : 1;
  volatile uint16_t NEWDAT     : 1;
} stc_can_if2mctr_field_t;

typedef struct stc_can_treqr_field
{
  volatile uint32_t TXRQST1    : 1;
  volatile uint32_t TXRQST2    : 1;
  volatile uint32_t TXRQST3    : 1;
  volatile uint32_t TXRQST4    : 1;
  volatile uint32_t TXRQST5    : 1;
  volatile uint32_t TXRQST6    : 1;
  volatile uint32_t TXRQST7    : 1;
  volatile uint32_t TXRQST8    : 1;
  volatile uint32_t TXRQST9    : 1;
  volatile uint32_t TXRQST10   : 1;
  volatile uint32_t TXRQST11   : 1;
  volatile uint32_t TXRQST12   : 1;
  volatile uint32_t TXRQST13   : 1;
  volatile uint32_t TXRQST14   : 1;
  volatile uint32_t TXRQST15   : 1;
  volatile uint32_t TXRQST16   : 1;
  volatile uint32_t TXRQST17   : 1;
  volatile uint32_t TXRQST18   : 1;
  volatile uint32_t TXRQST19   : 1;
  volatile uint32_t TXRQST20   : 1;
  volatile uint32_t TXRQST21   : 1;
  volatile uint32_t TXRQST22   : 1;
  volatile uint32_t TXRQST23   : 1;
  volatile uint32_t TXRQST24   : 1;
  volatile uint32_t TXRQST25   : 1;
  volatile uint32_t TXRQST26   : 1;
  volatile uint32_t TXRQST27   : 1;
  volatile uint32_t TXRQST28   : 1;
  volatile uint32_t TXRQST29   : 1;
  volatile uint32_t TXRQST30   : 1;
  volatile uint32_t TXRQST31   : 1;
  volatile uint32_t TXRQST32   : 1;
} stc_can_treqr_field_t;

typedef struct stc_can_treqr1_field
{
  volatile uint16_t TXRQST1    : 1;
  volatile uint16_t TXRQST2    : 1;
  volatile uint16_t TXRQST3    : 1;
  volatile uint16_t TXRQST4    : 1;
  volatile uint16_t TXRQST5    : 1;
  volatile uint16_t TXRQST6    : 1;
  volatile uint16_t TXRQST7    : 1;
  volatile uint16_t TXRQST8    : 1;
  volatile uint16_t TXRQST9    : 1;
  volatile uint16_t TXRQST10   : 1;
  volatile uint16_t TXRQST11   : 1;
  volatile uint16_t TXRQST12   : 1;
  volatile uint16_t TXRQST13   : 1;
  volatile uint16_t TXRQST14   : 1;
  volatile uint16_t TXRQST15   : 1;
  volatile uint16_t TXRQST16   : 1;
} stc_can_treqr1_field_t;

typedef struct stc_can_treqr2_field
{
  volatile uint16_t TXRQST17   : 1;
  volatile uint16_t TXRQST18   : 1;
  volatile uint16_t TXRQST19   : 1;
  volatile uint16_t TXRQST20   : 1;
  volatile uint16_t TXRQST21   : 1;
  volatile uint16_t TXRQST22   : 1;
  volatile uint16_t TXRQST23   : 1;
  volatile uint16_t TXRQST24   : 1;
  volatile uint16_t TXRQST25   : 1;
  volatile uint16_t TXRQST26   : 1;
  volatile uint16_t TXRQST27   : 1;
  volatile uint16_t TXRQST28   : 1;
  volatile uint16_t TXRQST29   : 1;
  volatile uint16_t TXRQST30   : 1;
  volatile uint16_t TXRQST31   : 1;
  volatile uint16_t TXRQST32   : 1;
} stc_can_treqr2_field_t;

typedef struct stc_can_newdt_field
{
  volatile uint32_t NEWDAT1    : 1;
  volatile uint32_t NEWDAT2    : 1;
  volatile uint32_t NEWDAT3    : 1;
  volatile uint32_t NEWDAT4    : 1;
  volatile uint32_t NEWDAT5    : 1;
  volatile uint32_t NEWDAT6    : 1;
  volatile uint32_t NEWDAT7    : 1;
  volatile uint32_t NEWDAT8    : 1;
  volatile uint32_t NEWDAT9    : 1;
  volatile uint32_t NEWDAT10   : 1;
  volatile uint32_t NEWDAT11   : 1;
  volatile uint32_t NEWDAT12   : 1;
  volatile uint32_t NEWDAT13   : 1;
  volatile uint32_t NEWDAT14   : 1;
  volatile uint32_t NEWDAT15   : 1;
  volatile uint32_t NEWDAT16   : 1;
  volatile uint32_t NEWDAT17   : 1;
  volatile uint32_t NEWDAT18   : 1;
  volatile uint32_t NEWDAT19   : 1;
  volatile uint32_t NEWDAT20   : 1;
  volatile uint32_t NEWDAT21   : 1;
  volatile uint32_t NEWDAT22   : 1;
  volatile uint32_t NEWDAT23   : 1;
  volatile uint32_t NEWDAT24   : 1;
  volatile uint32_t NEWDAT25   : 1;
  volatile uint32_t NEWDAT26   : 1;
  volatile uint32_t NEWDAT27   : 1;
  volatile uint32_t NEWDAT28   : 1;
  volatile uint32_t NEWDAT29   : 1;
  volatile uint32_t NEWDAT30   : 1;
  volatile uint32_t NEWDAT31   : 1;
  volatile uint32_t NEWDAT32   : 1;
} stc_can_newdt_field_t;

typedef struct stc_can_newdt1_field
{
  volatile uint16_t NEWDAT1    : 1;
  volatile uint16_t NEWDAT2    : 1;
  volatile uint16_t NEWDAT3    : 1;
  volatile uint16_t NEWDAT4    : 1;
  volatile uint16_t NEWDAT5    : 1;
  volatile uint16_t NEWDAT6    : 1;
  volatile uint16_t NEWDAT7    : 1;
  volatile uint16_t NEWDAT8    : 1;
  volatile uint16_t NEWDAT9    : 1;
  volatile uint16_t NEWDAT10   : 1;
  volatile uint16_t NEWDAT11   : 1;
  volatile uint16_t NEWDAT12   : 1;
  volatile uint16_t NEWDAT13   : 1;
  volatile uint16_t NEWDAT14   : 1;
  volatile uint16_t NEWDAT15   : 1;
  volatile uint16_t NEWDAT16   : 1;
} stc_can_newdt1_field_t;

typedef struct stc_can_intpnd_field
{
  volatile uint32_t INTPND1    : 1;
  volatile uint32_t INTPND2    : 1;
  volatile uint32_t INTPND3    : 1;
  volatile uint32_t INTPND4    : 1;
  volatile uint32_t INTPND5    : 1;
  volatile uint32_t INTPND6    : 1;
  volatile uint32_t INTPND7    : 1;
  volatile uint32_t INTPND8    : 1;
  volatile uint32_t INTPND9    : 1;
  volatile uint32_t INTPND10   : 1;
  volatile uint32_t INTPND11   : 1;
  volatile uint32_t INTPND12   : 1;
  volatile uint32_t INTPND13   : 1;
  volatile uint32_t INTPND14   : 1;
  volatile uint32_t INTPND15   : 1;
  volatile uint32_t INTPND16   : 1;
  volatile uint32_t INTPND17   : 1;
  volatile uint32_t INTPND18   : 1;
  volatile uint32_t INTPND19   : 1;
  volatile uint32_t INTPND20   : 1;
  volatile uint32_t INTPND21   : 1;
  volatile uint32_t INTPND22   : 1;
  volatile uint32_t INTPND23   : 1;
  volatile uint32_t INTPND24   : 1;
  volatile uint32_t INTPND25   : 1;
  volatile uint32_t INTPND26   : 1;
  volatile uint32_t INTPND27   : 1;
  volatile uint32_t INTPND28   : 1;
  volatile uint32_t INTPND29   : 1;
  volatile uint32_t INTPND30   : 1;
  volatile uint32_t INTPND31   : 1;
  volatile uint32_t INTPND32   : 1;
} stc_can_intpnd_field_t;

typedef struct stc_can_intpnd1_field
{
  volatile uint16_t INTPND1    : 1;
  volatile uint16_t INTPND2    : 1;
  volatile uint16_t INTPND3    : 1;
  volatile uint16_t INTPND4    : 1;
  volatile uint16_t INTPND5    : 1;
  volatile uint16_t INTPND6    : 1;
  volatile uint16_t INTPND7    : 1;
  volatile uint16_t INTPND8    : 1;
  volatile uint16_t INTPND9    : 1;
  volatile uint16_t INTPND10   : 1;
  volatile uint16_t INTPND11   : 1;
  volatile uint16_t INTPND12   : 1;
  volatile uint16_t INTPND13   : 1;
  volatile uint16_t INTPND14   : 1;
  volatile uint16_t INTPND15   : 1;
  volatile uint16_t INTPND16   : 1;
} stc_can_intpnd1_field_t;

typedef struct stc_can_intpnd2_field
{
  volatile uint16_t INTPND17   : 1;
  volatile uint16_t INTPND18   : 1;
  volatile uint16_t INTPND19   : 1;
  volatile uint16_t INTPND20   : 1;
  volatile uint16_t INTPND21   : 1;
  volatile uint16_t INTPND22   : 1;
  volatile uint16_t INTPND23   : 1;
  volatile uint16_t INTPND24   : 1;
  volatile uint16_t INTPND25   : 1;
  volatile uint16_t INTPND26   : 1;
  volatile uint16_t INTPND27   : 1;
  volatile uint16_t INTPND28   : 1;
  volatile uint16_t INTPND29   : 1;
  volatile uint16_t INTPND30   : 1;
  volatile uint16_t INTPND31   : 1;
  volatile uint16_t INTPND32   : 1;
} stc_can_intpnd2_field_t;

typedef struct stc_can_msgval_field
{
  volatile uint32_t MSGVAL1    : 1;
  volatile uint32_t MSGVAL2    : 1;
  volatile uint32_t MSGVAL3    : 1;
  volatile uint32_t MSGVAL4    : 1;
  volatile uint32_t MSGVAL5    : 1;
  volatile uint32_t MSGVAL6    : 1;
  volatile uint32_t MSGVAL7    : 1;
  volatile uint32_t MSGVAL8    : 1;
  volatile uint32_t MSGVAL9    : 1;
  volatile uint32_t MSGVAL10   : 1;
  volatile uint32_t MSGVAL11   : 1;
  volatile uint32_t MSGVAL12   : 1;
  volatile uint32_t MSGVAL13   : 1;
  volatile uint32_t MSGVAL14   : 1;
  volatile uint32_t MSGVAL15   : 1;
  volatile uint32_t MSGVAL16   : 1;
  volatile uint32_t MSGVAL17   : 1;
  volatile uint32_t MSGVAL18   : 1;
  volatile uint32_t MSGVAL19   : 1;
  volatile uint32_t MSGVAL20   : 1;
  volatile uint32_t MSGVAL21   : 1;
  volatile uint32_t MSGVAL22   : 1;
  volatile uint32_t MSGVAL23   : 1;
  volatile uint32_t MSGVAL24   : 1;
  volatile uint32_t MSGVAL25   : 1;
  volatile uint32_t MSGVAL26   : 1;
  volatile uint32_t MSGVAL27   : 1;
  volatile uint32_t MSGVAL28   : 1;
  volatile uint32_t MSGVAL29   : 1;
  volatile uint32_t MSGVAL30   : 1;
  volatile uint32_t MSGVAL31   : 1;
  volatile uint32_t MSGVAL32   : 1;
} stc_can_msgval_field_t;

typedef struct stc_can_msgval1_field
{
  volatile uint16_t MSGVAL1    : 1;
  volatile uint16_t MSGVAL2    : 1;
  volatile uint16_t MSGVAL3    : 1;
  volatile uint16_t MSGVAL4    : 1;
  volatile uint16_t MSGVAL5    : 1;
  volatile uint16_t MSGVAL6    : 1;
  volatile uint16_t MSGVAL7    : 1;
  volatile uint16_t MSGVAL8    : 1;
  volatile uint16_t MSGVAL9    : 1;
  volatile uint16_t MSGVAL10   : 1;
  volatile uint16_t MSGVAL11   : 1;
  volatile uint16_t MSGVAL12   : 1;
  volatile uint16_t MSGVAL13   : 1;
  volatile uint16_t MSGVAL14   : 1;
  volatile uint16_t MSGVAL15   : 1;
  volatile uint16_t MSGVAL16   : 1;
} stc_can_msgval1_field_t;

typedef struct stc_can_msgval2_field
{
  volatile uint16_t MSGVAL17   : 1;
  volatile uint16_t MSGVAL18   : 1;
  volatile uint16_t MSGVAL19   : 1;
  volatile uint16_t MSGVAL20   : 1;
  volatile uint16_t MSGVAL21   : 1;
  volatile uint16_t MSGVAL22   : 1;
  volatile uint16_t MSGVAL23   : 1;
  volatile uint16_t MSGVAL24   : 1;
  volatile uint16_t MSGVAL25   : 1;
  volatile uint16_t MSGVAL26   : 1;
  volatile uint16_t MSGVAL27   : 1;
  volatile uint16_t MSGVAL28   : 1;
  volatile uint16_t MSGVAL29   : 1;
  volatile uint16_t MSGVAL30   : 1;
  volatile uint16_t MSGVAL31   : 1;
  volatile uint16_t MSGVAL32   : 1;
} stc_can_msgval2_field_t;



 
 
typedef struct stc_ethernet_mac_mcr_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t RE         : 1;
  volatile uint32_t TE         : 1;
  volatile uint32_t DC         : 1;
  volatile uint32_t BL         : 2;
  volatile uint32_t ACS        : 1;
  volatile uint32_t LUD        : 1;
  volatile uint32_t DR         : 1;
  volatile uint32_t IPC        : 1;
  volatile uint32_t DM         : 1;
  volatile uint32_t LM         : 1;
  volatile uint32_t DO         : 1;
  volatile uint32_t FES        : 1;
  volatile uint32_t PS         : 1;
  volatile uint32_t DCRS       : 1;
  volatile uint32_t IFG        : 3;
  volatile uint32_t JE         : 1;
  volatile uint32_t BE         : 1;
  volatile uint32_t JD         : 1;
  volatile uint32_t WD         : 1;
  volatile uint32_t TC         : 1;
  volatile uint32_t CST        : 1;
} stc_ethernet_mac_mcr_field_t;

typedef struct stc_ethernet_mac_mffr_field
{
  volatile uint32_t PR         : 1;
  volatile uint32_t HUC        : 1;
  volatile uint32_t HMC        : 1;
  volatile uint32_t DAIF       : 1;
  volatile uint32_t PM         : 1;
  volatile uint32_t DB         : 1;
  volatile uint32_t PCF        : 2;
  volatile uint32_t SAIF       : 1;
  volatile uint32_t SAF        : 1;
  volatile uint32_t HPF        : 1;
       uint32_t RESERVED1  : 20;
  volatile uint32_t RA         : 1;
} stc_ethernet_mac_mffr_field_t;

typedef struct stc_ethernet_mac_mhtrh_field
{
  volatile uint32_t HTH        : 32;
} stc_ethernet_mac_mhtrh_field_t;

typedef struct stc_ethernet_mac_mhtrl_field
{
  volatile uint32_t HTL        : 32;
} stc_ethernet_mac_mhtrl_field_t;

typedef struct stc_ethernet_mac_gar_field
{
  volatile uint32_t GB         : 1;
  volatile uint32_t GW         : 1;
  volatile uint32_t CR         : 4;
  volatile uint32_t GR         : 5;
  volatile uint32_t PA         : 5;
} stc_ethernet_mac_gar_field_t;

typedef struct stc_ethernet_mac_gdr_field
{
  volatile uint32_t GD         : 16;
} stc_ethernet_mac_gdr_field_t;

typedef struct stc_ethernet_mac_fcr_field
{
  volatile uint32_t FCB_BPA    : 1;
  volatile uint32_t TFE        : 1;
  volatile uint32_t RFE        : 1;
  volatile uint32_t UP         : 1;
  volatile uint32_t PLT        : 2;
       uint32_t RESERVED1  : 1;
  volatile uint32_t DZPQ       : 1;
       uint32_t RESERVED2  : 8;
  volatile uint32_t PT         : 16;
} stc_ethernet_mac_fcr_field_t;

typedef struct stc_ethernet_mac_vtr_field
{
  volatile uint32_t VL         : 16;
  volatile uint32_t ETV        : 1;
} stc_ethernet_mac_vtr_field_t;

typedef struct stc_ethernet_mac_rwffr_field
{
  volatile uint32_t RWFFR      : 32;
} stc_ethernet_mac_rwffr_field_t;

typedef struct stc_ethernet_mac_pmtr_field
{
  volatile uint32_t PD         : 1;
  volatile uint32_t MPE        : 1;
  volatile uint32_t WFE        : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t MPR        : 1;
  volatile uint32_t WPR        : 1;
       uint32_t RESERVED2  : 2;
  volatile uint32_t GU         : 1;
       uint32_t RESERVED3  : 21;
  volatile uint32_t RWFFRPR    : 1;
} stc_ethernet_mac_pmtr_field_t;

typedef struct stc_ethernet_mac_lpicsr_field
{
  volatile uint32_t TLPIEN     : 1;
  volatile uint32_t TLPIEX     : 1;
  volatile uint32_t RLPIEN     : 1;
  volatile uint32_t RLPIEX     : 1;
       uint32_t RESERVED1  : 4;
  volatile uint32_t TLPIST     : 1;
  volatile uint32_t RLPIST     : 1;
       uint32_t RESERVED2  : 6;
  volatile uint32_t LPIEN      : 1;
  volatile uint32_t PLS        : 1;
  volatile uint32_t PLSEN      : 1;
  volatile uint32_t LPITXA     : 1;
} stc_ethernet_mac_lpicsr_field_t;

typedef struct stc_ethernet_mac_lpitcr_field
{
  volatile uint32_t TWT        : 16;
  volatile uint32_t LIT        : 10;
} stc_ethernet_mac_lpitcr_field_t;

typedef struct stc_ethernet_mac_isr_field
{
  volatile uint32_t RGIS       : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t PIS        : 1;
  volatile uint32_t MIS        : 1;
  volatile uint32_t RIS        : 1;
  volatile uint32_t TIS        : 1;
  volatile uint32_t COIS       : 1;
       uint32_t RESERVED2  : 1;
  volatile uint32_t TSIS       : 1;
  volatile uint32_t LPIIS      : 1;
} stc_ethernet_mac_isr_field_t;

typedef struct stc_ethernet_mac_imr_field
{
  volatile uint32_t RGIM       : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t PIM        : 1;
       uint32_t RESERVED2  : 5;
  volatile uint32_t TSIM       : 1;
  volatile uint32_t LPIIM      : 1;
} stc_ethernet_mac_imr_field_t;

typedef struct stc_ethernet_mac_mar0h_field
{
  volatile uint32_t A0         : 16;
       uint32_t RESERVED1  : 15;
  volatile uint32_t MO         : 1;
} stc_ethernet_mac_mar0h_field_t;

typedef struct stc_ethernet_mac_mar0l_field
{
  volatile uint32_t A0         : 32;
} stc_ethernet_mac_mar0l_field_t;

typedef struct stc_ethernet_mac_marh_field
{
  volatile uint32_t A          : 16;
       uint32_t RESERVED1  : 8;
  volatile uint32_t MBC        : 6;
  volatile uint32_t SA         : 1;
  volatile uint32_t AE         : 1;
} stc_ethernet_mac_marh_field_t;

typedef struct stc_ethernet_mac_marl_field
{
  volatile uint32_t A          : 32;
} stc_ethernet_mac_marl_field_t;

typedef struct stc_ethernet_mac_rgsr_field
{
  volatile uint32_t LM         : 1;
  volatile uint32_t LSP        : 2;
  volatile uint32_t LS         : 1;
} stc_ethernet_mac_rgsr_field_t;

typedef struct stc_ethernet_mac_tscr_field
{
  volatile uint32_t TSE        : 1;
  volatile uint32_t TFCU       : 1;
  volatile uint32_t TSI        : 1;
  volatile uint32_t TSU        : 1;
  volatile uint32_t TITE       : 1;
  volatile uint32_t TARU       : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t TSEA       : 1;
  volatile uint32_t TSDB       : 1;
  volatile uint32_t TSV2E      : 1;
  volatile uint32_t TETSP      : 1;
  volatile uint32_t TSIP6E     : 1;
  volatile uint32_t TSIP4E     : 1;
  volatile uint32_t TETSEM     : 1;
  volatile uint32_t TSMRM      : 1;
  volatile uint32_t TSPS       : 2;
  volatile uint32_t TSENMF     : 1;
       uint32_t RESERVED2  : 5;
  volatile uint32_t ATSFC      : 1;
} stc_ethernet_mac_tscr_field_t;

typedef struct stc_ethernet_mac_ssir_field
{
  volatile uint32_t SSINC      : 8;
} stc_ethernet_mac_ssir_field_t;

typedef struct stc_ethernet_mac_stsr_field
{
  volatile uint32_t TSS        : 32;
} stc_ethernet_mac_stsr_field_t;

typedef struct stc_ethernet_mac_stnr_field
{
  volatile uint32_t TSSS       : 31;
} stc_ethernet_mac_stnr_field_t;

typedef struct stc_ethernet_mac_stsur_field
{
  volatile uint32_t TSS        : 32;
} stc_ethernet_mac_stsur_field_t;

typedef struct stc_ethernet_mac_stnur_field
{
  volatile uint32_t TSSS       : 31;
  volatile uint32_t ADDSUB     : 1;
} stc_ethernet_mac_stnur_field_t;

typedef struct stc_ethernet_mac_tsar_field
{
  volatile uint32_t TSAR       : 32;
} stc_ethernet_mac_tsar_field_t;

typedef struct stc_ethernet_mac_ttsr_field
{
  volatile uint32_t TSTR       : 32;
} stc_ethernet_mac_ttsr_field_t;

typedef struct stc_ethernet_mac_ttnr_field
{
  volatile uint32_t TSTR       : 31;
} stc_ethernet_mac_ttnr_field_t;

typedef struct stc_ethernet_mac_sthwsr_field
{
  volatile uint32_t TSHWR      : 16;
} stc_ethernet_mac_sthwsr_field_t;

typedef struct stc_ethernet_mac_tsr_field
{
  volatile uint32_t TSSOVF     : 1;
  volatile uint32_t TSTART     : 1;
  volatile uint32_t ATSTS      : 1;
  volatile uint32_t TRGTER     : 1;
       uint32_t RESERVED1  : 20;
  volatile uint32_t ATSSTM     : 1;
  volatile uint32_t ATSNS      : 3;
} stc_ethernet_mac_tsr_field_t;

typedef struct stc_ethernet_mac_ppscr_field
{
  volatile uint32_t PPSCTRL    : 4;
} stc_ethernet_mac_ppscr_field_t;

typedef struct stc_ethernet_mac_atnr_field
{
  volatile uint32_t ATN        : 31;
} stc_ethernet_mac_atnr_field_t;

typedef struct stc_ethernet_mac_atsr_field
{
  volatile uint32_t ATS        : 32;
} stc_ethernet_mac_atsr_field_t;

typedef struct stc_ethernet_mac_bmr_field
{
  volatile uint32_t SWR        : 1;
  volatile uint32_t DA         : 1;
  volatile uint32_t DSL        : 5;
  volatile uint32_t ATDS       : 1;
  volatile uint32_t PBL        : 6;
  volatile uint32_t PR         : 2;
  volatile uint32_t FB         : 1;
  volatile uint32_t RPBL       : 6;
  volatile uint32_t USP        : 1;
  volatile uint32_t _8XPBL     : 1;
  volatile uint32_t AAL        : 1;
  volatile uint32_t MB         : 1;
  volatile uint32_t TXPR       : 1;
} stc_ethernet_mac_bmr_field_t;

typedef struct stc_ethernet_mac_tpdr_field
{
  volatile uint32_t TPD        : 32;
} stc_ethernet_mac_tpdr_field_t;

typedef struct stc_ethernet_mac_rpdr_field
{
  volatile uint32_t RPD        : 32;
} stc_ethernet_mac_rpdr_field_t;

typedef struct stc_ethernet_mac_rdlar_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t SRL        : 30;
} stc_ethernet_mac_rdlar_field_t;

typedef struct stc_ethernet_mac_tdlar_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t STL        : 30;
} stc_ethernet_mac_tdlar_field_t;

typedef struct stc_ethernet_mac_sr_field
{
  volatile uint32_t TI         : 1;
  volatile uint32_t TPS        : 1;
  volatile uint32_t TU         : 1;
  volatile uint32_t TJT        : 1;
  volatile uint32_t OVF        : 1;
  volatile uint32_t UNF        : 1;
  volatile uint32_t RI         : 1;
  volatile uint32_t RU         : 1;
  volatile uint32_t RPS        : 1;
  volatile uint32_t RWT        : 1;
  volatile uint32_t ETI        : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t FBI        : 1;
  volatile uint32_t ERI        : 1;
  volatile uint32_t AIS        : 1;
  volatile uint32_t NIS        : 1;
  volatile uint32_t RS         : 3;
  volatile uint32_t TS         : 3;
  volatile uint32_t EB         : 3;
  volatile uint32_t GLI        : 1;
  volatile uint32_t GMI        : 1;
  volatile uint32_t GPI        : 1;
  volatile uint32_t TTI        : 1;
  volatile uint32_t GLPII      : 1;
} stc_ethernet_mac_sr_field_t;

typedef struct stc_ethernet_mac_omr_field
{
       uint32_t RESERVED1  : 1;
  volatile uint32_t SR         : 1;
  volatile uint32_t OSF        : 1;
  volatile uint32_t RTC        : 2;
       uint32_t RESERVED2  : 1;
  volatile uint32_t FUF        : 1;
  volatile uint32_t FEF        : 1;
       uint32_t RESERVED3  : 5;
  volatile uint32_t ST         : 1;
  volatile uint32_t TTC        : 3;
       uint32_t RESERVED4  : 3;
  volatile uint32_t FTF        : 1;
  volatile uint32_t TSF        : 1;
       uint32_t RESERVED5  : 2;
  volatile uint32_t DFF        : 1;
  volatile uint32_t RSF        : 1;
  volatile uint32_t DT         : 1;
} stc_ethernet_mac_omr_field_t;

typedef struct stc_ethernet_mac_ier_field
{
  volatile uint32_t TIE        : 1;
  volatile uint32_t TSE        : 1;
  volatile uint32_t TUE        : 1;
  volatile uint32_t TJE        : 1;
  volatile uint32_t OVE        : 1;
  volatile uint32_t UNE        : 1;
  volatile uint32_t RIE        : 1;
  volatile uint32_t RUE        : 1;
  volatile uint32_t RSE        : 1;
  volatile uint32_t RWE        : 1;
  volatile uint32_t ETE        : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t FBE        : 1;
  volatile uint32_t ERE        : 1;
  volatile uint32_t AIE        : 1;
  volatile uint32_t NIE        : 1;
} stc_ethernet_mac_ier_field_t;

typedef struct stc_ethernet_mac_mfbocr_field
{
  volatile uint32_t NMFH       : 16;
  volatile uint32_t ONMFH      : 1;
  volatile uint32_t NMFF       : 11;
  volatile uint32_t ONMFF      : 1;
} stc_ethernet_mac_mfbocr_field_t;

typedef struct stc_ethernet_mac_riwtr_field
{
  volatile uint32_t RIWT       : 8;
} stc_ethernet_mac_riwtr_field_t;

typedef struct stc_ethernet_mac_ahbsr_field
{
  volatile uint32_t AHBS       : 1;
} stc_ethernet_mac_ahbsr_field_t;

typedef struct stc_ethernet_mac_chtdr_field
{
  volatile uint32_t HTDAP      : 32;
} stc_ethernet_mac_chtdr_field_t;

typedef struct stc_ethernet_mac_chrdr_field
{
  volatile uint32_t HRDAP      : 32;
} stc_ethernet_mac_chrdr_field_t;

typedef struct stc_ethernet_mac_chtbar_field
{
  volatile uint32_t HTBAR      : 32;
} stc_ethernet_mac_chtbar_field_t;

typedef struct stc_ethernet_mac_chrbar_field
{
  volatile uint32_t HRBAR      : 32;
} stc_ethernet_mac_chrbar_field_t;



 
 
typedef struct stc_ethernet_control_eth_mode_field
{
  volatile uint32_t IFMODE     : 1;
       uint32_t RESERVED1  : 7;
  volatile uint32_t RST0       : 1;
  volatile uint32_t RST1       : 1;
       uint32_t RESERVED2  : 18;
  volatile uint32_t PPSSEL     : 1;
} stc_ethernet_control_eth_mode_field_t;

typedef struct stc_ethernet_control_eth_clkg_field
{
  volatile uint32_t MACEN      : 2;
} stc_ethernet_control_eth_clkg_field_t;



 
 
typedef struct stc_i2s_rxfdat_field
{
  volatile uint32_t RXDATA     : 32;
} stc_i2s_rxfdat_field_t;

typedef struct stc_i2s_txfdat_field
{
  volatile uint32_t TXDATA     : 32;
} stc_i2s_txfdat_field_t;

typedef struct stc_i2s_cntreg_field
{
  volatile uint32_t FSPL       : 1;
  volatile uint32_t FSLN       : 1;
  volatile uint32_t FSPH       : 1;
  volatile uint32_t CPOL       : 1;
  volatile uint32_t SMPL       : 1;
  volatile uint32_t RXDIS      : 1;
  volatile uint32_t TXDIS      : 1;
  volatile uint32_t MLSB       : 1;
  volatile uint32_t FRUN       : 1;
  volatile uint32_t BEXT       : 1;
  volatile uint32_t ECKM       : 1;
  volatile uint32_t RHLL       : 1;
  volatile uint32_t SBFN       : 1;
  volatile uint32_t MSMD       : 1;
  volatile uint32_t MSKB       : 1;
       uint32_t RESERVED1  : 1;
  volatile uint32_t OVHD       : 10;
  volatile uint32_t CKRT       : 6;
} stc_i2s_cntreg_field_t;

typedef struct stc_i2s_mcr0reg_field
{
  volatile uint32_t S0WDL      : 5;
  volatile uint32_t S0CHL      : 5;
  volatile uint32_t S0CHN      : 5;
       uint32_t RESERVED1  : 1;
  volatile uint32_t S1WDL      : 5;
  volatile uint32_t S1CHL      : 5;
  volatile uint32_t S1CHN      : 5;
} stc_i2s_mcr0reg_field_t;

typedef struct stc_i2s_mcr1reg_field
{
  volatile uint32_t S0CH00     : 1;
  volatile uint32_t S0CH01     : 1;
  volatile uint32_t S0CH02     : 1;
  volatile uint32_t S0CH03     : 1;
  volatile uint32_t S0CH04     : 1;
  volatile uint32_t S0CH05     : 1;
  volatile uint32_t S0CH06     : 1;
  volatile uint32_t S0CH07     : 1;
  volatile uint32_t S0CH08     : 1;
  volatile uint32_t S0CH09     : 1;
  volatile uint32_t S0CH10     : 1;
  volatile uint32_t S0CH11     : 1;
  volatile uint32_t S0CH12     : 1;
  volatile uint32_t S0CH13     : 1;
  volatile uint32_t S0CH14     : 1;
  volatile uint32_t S0CH15     : 1;
  volatile uint32_t S0CH16     : 1;
  volatile uint32_t S0CH17     : 1;
  volatile uint32_t S0CH18     : 1;
  volatile uint32_t S0CH19     : 1;
  volatile uint32_t S0CH20     : 1;
  volatile uint32_t S0CH21     : 1;
  volatile uint32_t S0CH22     : 1;
  volatile uint32_t S0CH23     : 1;
  volatile uint32_t S0CH24     : 1;
  volatile uint32_t S0CH25     : 1;
  volatile uint32_t S0CH26     : 1;
  volatile uint32_t S0CH27     : 1;
  volatile uint32_t S0CH28     : 1;
  volatile uint32_t S0CH29     : 1;
  volatile uint32_t S0CH30     : 1;
  volatile uint32_t S0CH31     : 1;
} stc_i2s_mcr1reg_field_t;

typedef struct stc_i2s_mcr2reg_field
{
  volatile uint32_t S1CH00     : 1;
  volatile uint32_t S1CH01     : 1;
  volatile uint32_t S1CH02     : 1;
  volatile uint32_t S1CH03     : 1;
  volatile uint32_t S1CH04     : 1;
  volatile uint32_t S1CH05     : 1;
  volatile uint32_t S1CH06     : 1;
  volatile uint32_t S1CH07     : 1;
  volatile uint32_t S1CH08     : 1;
  volatile uint32_t S1CH09     : 1;
  volatile uint32_t S1CH10     : 1;
  volatile uint32_t S1CH11     : 1;
  volatile uint32_t S1CH12     : 1;
  volatile uint32_t S1CH13     : 1;
  volatile uint32_t S1CH14     : 1;
  volatile uint32_t S1CH15     : 1;
  volatile uint32_t S1CH16     : 1;
  volatile uint32_t S1CH17     : 1;
  volatile uint32_t S1CH18     : 1;
  volatile uint32_t S1CH19     : 1;
  volatile uint32_t S1CH20     : 1;
  volatile uint32_t S1CH21     : 1;
  volatile uint32_t S1CH22     : 1;
  volatile uint32_t S1CH23     : 1;
  volatile uint32_t S1CH24     : 1;
  volatile uint32_t S1CH25     : 1;
  volatile uint32_t S1CH26     : 1;
  volatile uint32_t S1CH27     : 1;
  volatile uint32_t S1CH28     : 1;
  volatile uint32_t S1CH29     : 1;
  volatile uint32_t S1CH30     : 1;
  volatile uint32_t S1CH31     : 1;
} stc_i2s_mcr2reg_field_t;

typedef struct stc_i2s_oprreg_field
{
  volatile uint32_t START      : 1;
       uint32_t RESERVED1  : 15;
  volatile uint32_t TXENB      : 1;
       uint32_t RESERVED2  : 7;
  volatile uint32_t RXENB      : 1;
} stc_i2s_oprreg_field_t;

typedef struct stc_i2s_srst_field
{
  volatile uint32_t SRST       : 1;
} stc_i2s_srst_field_t;

typedef struct stc_i2s_intcnt_field
{
  volatile uint32_t RFTH       : 4;
  volatile uint32_t RPTMR      : 2;
       uint32_t RESERVED1  : 2;
  volatile uint32_t TFTH       : 4;
       uint32_t RESERVED2  : 4;
  volatile uint32_t RXFIM      : 1;
  volatile uint32_t RXFDM      : 1;
  volatile uint32_t EOPM       : 1;
  volatile uint32_t RXOVM      : 1;
  volatile uint32_t RXUDM      : 1;
  volatile uint32_t RBERM      : 1;
       uint32_t RESERVED3  : 2;
  volatile uint32_t TXFIM      : 1;
  volatile uint32_t TXFDM      : 1;
  volatile uint32_t TXOVM      : 1;
  volatile uint32_t TXUD0M     : 1;
  volatile uint32_t FERRM      : 1;
  volatile uint32_t TBERM      : 1;
  volatile uint32_t TXUD1M     : 1;
} stc_i2s_intcnt_field_t;

typedef struct stc_i2s_status_field
{
  volatile uint32_t RXNUM      : 8;
  volatile uint32_t TXNUM      : 8;
  volatile uint32_t RXFI       : 1;
  volatile uint32_t TXFI       : 1;
  volatile uint32_t BSY        : 1;
  volatile uint32_t EOPI       : 1;
       uint32_t RESERVED1  : 4;
  volatile uint32_t RXOVR      : 1;
  volatile uint32_t RXUDR      : 1;
  volatile uint32_t TXOVR      : 1;
  volatile uint32_t TXUDR0     : 1;
  volatile uint32_t TXUDR1     : 1;
  volatile uint32_t FERR       : 1;
  volatile uint32_t RBERR      : 1;
  volatile uint32_t TBERR      : 1;
} stc_i2s_status_field_t;

typedef struct stc_i2s_dmaact_field
{
  volatile uint32_t RDMACT     : 1;
       uint32_t RESERVED1  : 7;
  volatile uint32_t RL1E0      : 1;
       uint32_t RESERVED2  : 7;
  volatile uint32_t TDMACT     : 1;
       uint32_t RESERVED3  : 7;
  volatile uint32_t TL1E0      : 1;
} stc_i2s_dmaact_field_t;

typedef struct stc_i2s_tstreg_field
{
  volatile uint32_t LBMD       : 1;
} stc_i2s_tstreg_field_t;



 
 
typedef struct stc_sdif_sbsize_field
{
  volatile uint16_t TRSFBLCKSZ : 12;
  volatile uint16_t HSDMABUFBD : 3;
       uint16_t RESERVED1  : 1;
} stc_sdif_sbsize_field_t;

typedef struct stc_sdif_strsfmd_field
{
  volatile uint16_t DMAEN      : 1;
  volatile uint16_t BLCKCNTEN  : 1;
  volatile uint16_t AUTOCMDEN  : 2;
  volatile uint16_t DTTRSFDIR  : 1;
  volatile uint16_t BLCKCNTSEL : 1;
} stc_sdif_strsfmd_field_t;

typedef struct stc_sdif_scmmd_field
{
  volatile uint16_t RESPTYPE   : 2;
       uint16_t RESERVED1  : 1;
  volatile uint16_t CMDCRCCHKE : 1;
  volatile uint16_t CMDIDXCHKE : 1;
  volatile uint16_t DATPRESSEL : 1;
  volatile uint16_t CMDTYPE    : 2;
  volatile uint16_t CMDINDEX   : 6;
} stc_sdif_scmmd_field_t;

typedef struct stc_sdif_sprstat_field
{
  volatile uint32_t CMDINH     : 1;
  volatile uint32_t CMDDATINH : 1;
  volatile uint32_t DATLNACT   : 1;
  volatile uint32_t RETUNEREQ  : 1;
       uint32_t RESERVED1  : 4;
  volatile uint32_t WRTRSFACT  : 1;
  volatile uint32_t RDTRSFACT  : 1;
  volatile uint32_t BUFWREN    : 1;
  volatile uint32_t BUFRDEN    : 1;
       uint32_t RESERVED2  : 4;
  volatile uint32_t CARDINS    : 1;
  volatile uint32_t CARDSTB    : 1;
  volatile uint32_t CARDDET    : 1;
  volatile uint32_t WPPINLVL   : 1;
  volatile uint32_t LNSGNLVL   : 4;
  volatile uint32_t CMDLNSGN   : 1;
       uint32_t RESERVED3  : 7;
} stc_sdif_sprstat_field_t;

typedef struct stc_sdif_shctl1_field
{
  volatile uint8_t LEDCTRL     : 1;
  volatile uint8_t DATAWIDTH   : 1;
  volatile uint8_t HIGHSPDEN   : 1;
  volatile uint8_t DMASEL      : 2;
  volatile uint8_t EXTDTWIDTH  : 1;
  volatile uint8_t CDTSTLVL    : 1;
  volatile uint8_t CDSGNSEL    : 1;
} stc_sdif_shctl1_field_t;

typedef struct stc_sdif_spwrctl_field
{
  volatile uint8_t SDBUSPWR    : 1;
  volatile uint8_t SDBUSVLSEL  : 3;
       uint8_t RESERVED1   : 4;
} stc_sdif_spwrctl_field_t;

typedef struct stc_sdif_sblkgpctl_field
{
  volatile uint8_t BLCKGSTPREQ : 1;
  volatile uint8_t CONTREQ     : 1;
  volatile uint8_t RDWAITCTL   : 1;
  volatile uint8_t BLCKGAPINT  : 1;
       uint8_t RESERVED1   : 4;
} stc_sdif_sblkgpctl_field_t;

typedef struct stc_sdif_swkupctl_field
{
  volatile uint8_t WKUPEVNTEN0 : 1;
  volatile uint8_t WKUPEVNTEN1 : 1;
  volatile uint8_t WKUPEVNTEN2 : 1;
       uint8_t RESERVED1   : 5;
} stc_sdif_swkupctl_field_t;

typedef struct stc_sdif_sclkctl_field
{
  volatile uint16_t INTLCLCKEN : 1;
  volatile uint16_t INTLCLCKST : 1;
  volatile uint16_t SDCLCKEN   : 1;
       uint16_t RESERVED1  : 2;
  volatile uint16_t CLCKGENSEL : 1;
  volatile uint16_t UPSDCLKSEL : 2;
  volatile uint16_t SDCLKSEL   : 8;
} stc_sdif_sclkctl_field_t;

typedef struct stc_sdif_stoctl_field
{
  volatile uint8_t DTTMOUTVAL : 4;
       uint8_t RESERVED1  : 4;
} stc_sdif_stoctl_field_t;

typedef struct stc_sdif_ssrst_field
{
  volatile uint8_t SWRSTALL   : 1;
  volatile uint8_t SWRSTCMDLN : 1;
  volatile uint8_t SWRSTDATLN : 1;
       uint8_t RESERVED1  : 5;
} stc_sdif_ssrst_field_t;

typedef struct stc_sdif_snintst_field
{
  volatile uint16_t CMDCMPLT  : 1;
  volatile uint16_t TRSFCMPLT : 1;
  volatile uint16_t BLCKGEVNT : 1;
  volatile uint16_t DMAINT    : 1;
  volatile uint16_t BUFWRRDY  : 1;
  volatile uint16_t BUFRDRDY  : 1;
  volatile uint16_t CARDINS   : 1;
  volatile uint16_t CARDRMV   : 1;
  volatile uint16_t CARDINT   : 1;
  volatile uint16_t INT_A     : 1;
  volatile uint16_t INT_B     : 1;
  volatile uint16_t INT_C     : 1;
  volatile uint16_t RETUNEEVT : 1;
       uint16_t RESERVED1 : 2;
  volatile uint16_t ERRORINT  : 1;
} stc_sdif_snintst_field_t;

typedef struct stc_sdif_seintst_field
{
  volatile uint16_t CMDTOERR  : 1;
  volatile uint16_t CMDCRCERR : 1;
  volatile uint16_t CMDEBERR  : 1;
  volatile uint16_t CMDIDXERR : 1;
  volatile uint16_t DTTOERR   : 1;
  volatile uint16_t DTEBERR   : 1;
  volatile uint16_t DTCRCERR  : 1;
  volatile uint16_t CRTLMTERR : 1;
  volatile uint16_t ACMD12ERR : 1;
  volatile uint16_t ADMAERR   : 1;
  volatile uint16_t TUNINGERR : 1;
       uint16_t RESERVED1 : 1;
  volatile uint16_t BTACKERR  : 1;
  volatile uint16_t ACMD19ERR : 1;
  volatile uint16_t AHBMSTERR : 1;
       uint16_t RESERVED2 : 1;
} stc_sdif_seintst_field_t;

typedef struct stc_sdif_snintste_field
{
  volatile uint16_t CMDCMPLTS : 1;
  volatile uint16_t TRSFCMPLTS: 1;
  volatile uint16_t BLCKGEVNTS: 1;
  volatile uint16_t DMAINTS   : 1;
  volatile uint16_t BUFWRRDYS : 1;
  volatile uint16_t BUFRDRDYS : 1;
  volatile uint16_t CARDINSS  : 1;
  volatile uint16_t CARDRMVS  : 1;
  volatile uint16_t CARDINTS  : 1;
  volatile uint16_t INT_AS    : 1;
  volatile uint16_t INT_BS    : 1;
  volatile uint16_t INT_CS    : 1;
  volatile uint16_t RETUNEEVTS: 1;
       uint16_t RESERVED1 : 3;
} stc_sdif_snintste_field_t;

typedef struct stc_sdif_seintste_field
{
  volatile uint16_t CMDTOERRS : 1;
  volatile uint16_t CMDCRCERRS: 1;
  volatile uint16_t CMDEBERRS : 1;
  volatile uint16_t CMDIDXERRS: 1;
  volatile uint16_t DTTOERRS  : 1;
  volatile uint16_t DTEBERRS  : 1;
  volatile uint16_t DTCRCERRS : 1;
  volatile uint16_t CRTLMTERRS: 1;
  volatile uint16_t ACMD12ERRS: 1;
  volatile uint16_t ADMAERRS  : 1;
  volatile uint16_t TUNINGERRS: 1;
       uint16_t RESERVED1 : 1;
  volatile uint16_t BTACKERRS : 1;
  volatile uint16_t ACMD19ERRS: 1;
  volatile uint16_t AHBMSTERRS: 1;
       uint16_t RESERVED2 : 1;
} stc_sdif_seintste_field_t;

typedef struct stc_sdif_snintsge_field
{
  volatile uint16_t CMDCMPLTG : 1;
  volatile uint16_t TRSFCMPLTG: 1;
  volatile uint16_t BLCKGEVNTG: 1;
  volatile uint16_t DMAINTG   : 1;
  volatile uint16_t BUFWRRDYG : 1;
  volatile uint16_t BUFRDRDYG : 1;
  volatile uint16_t CARDINSG  : 1;
  volatile uint16_t CARDRMVG  : 1;
  volatile uint16_t CARDINTG  : 1;
  volatile uint16_t INT_AG    : 1;
  volatile uint16_t INT_BG    : 1;
  volatile uint16_t INT_CG    : 1;
  volatile uint16_t RETUNEEVTG: 1;
       uint16_t RESERVED1 : 3;
} stc_sdif_snintsge_field_t;

typedef struct stc_sdif_seintsge_field
{
  volatile uint16_t CMDTOERRG : 1;
  volatile uint16_t CMDCRCERRG: 1;
  volatile uint16_t CMDEBERRG : 1;
  volatile uint16_t CMDIDXERRG: 1;
  volatile uint16_t DTTOERRG  : 1;
  volatile uint16_t DTEBERRG  : 1;
  volatile uint16_t DTCRCERRG : 1;
  volatile uint16_t CRTLMTERRG: 1;
  volatile uint16_t ACMD12ERRG: 1;
  volatile uint16_t ADMAERRG  : 1;
  volatile uint16_t TUNINGERRG: 1;
       uint16_t RESERVED1 : 1;
  volatile uint16_t BTACKERRG : 1;
  volatile uint16_t ACMD19ERRG: 1;
  volatile uint16_t AHBMSTERRG: 1;
       uint16_t RESERVED2 : 1;
} stc_sdif_seintsge_field_t;

typedef struct stc_sdif_sacmdest_field
{
  volatile uint16_t ACMD12NOEX: 1;
  volatile uint16_t ACMDTOERR : 1;
  volatile uint16_t ACMDCRCERR: 1;
  volatile uint16_t ACMDEBERR : 1;
  volatile uint16_t ACMDIDXERR: 1;
       uint16_t RESERVED1 : 2;
  volatile uint16_t CMDND12ERR: 1;
       uint16_t RESERVED2 : 8;
} stc_sdif_sacmdest_field_t;

typedef struct stc_sdif_shctl2_field
{
  volatile uint16_t UHSMDSEL  : 3;
  volatile uint16_t V18SGNEN  : 1;
  volatile uint16_t DRVSEL    : 2;
  volatile uint16_t DOTUING   : 1;
  volatile uint16_t SMPCLKSEK : 1;
       uint16_t RESERVED1 : 6;
  volatile uint16_t ASYINTEN  : 1;
  volatile uint16_t PREVALEN  : 1;
} stc_sdif_shctl2_field_t;

typedef struct stc_sdif_capblty0_field
{
  volatile uint16_t TOCLKFREQ : 6;
       uint16_t RESERVED1 : 1;
  volatile uint16_t TOCLKUNIT : 1;
  volatile uint16_t SDBASECLK : 8;
} stc_sdif_capblty0_field_t;

typedef struct stc_sdif_capblty1_field
{
  volatile uint16_t MAXBLCKLEN: 2;
  volatile uint16_t EMBD8BIT  : 1;
  volatile uint16_t ADMA2SPT  : 1;
       uint16_t RESERVED1 : 1;
  volatile uint16_t HGHSPDSPT : 1;
  volatile uint16_t SDMASPT   : 1;
  volatile uint16_t LWPWRSPT  : 1;
  volatile uint16_t V33SPT    : 1;
  volatile uint16_t V30SPT    : 1;
  volatile uint16_t V18SPT    : 1;
       uint16_t RESERVED2 : 1;
  volatile uint16_t BUS64SPT  : 1;
  volatile uint16_t ASYINTSPT : 1;
  volatile uint16_t STOPTYPE  : 2;
} stc_sdif_capblty1_field_t;

typedef struct stc_sdif_capblty2_field
{
  volatile uint16_t SDR50SPT  : 1;
  volatile uint16_t SDR104SPT : 1;
  volatile uint16_t DDR50SPT  : 1;
       uint16_t RESERVED1 : 1;
  volatile uint16_t DRVTPASPT : 1;
  volatile uint16_t DRVTPBSPT : 1;
  volatile uint16_t DRVTPCSPT : 1;
       uint16_t RESERVED2 : 1;
  volatile uint16_t TMCNTRETN : 4;
       uint16_t RESERVED3 : 1;
  volatile uint16_t USETNSDR50: 1;
  volatile uint16_t RETNMODE  : 2;
} stc_sdif_capblty2_field_t;

typedef struct stc_sdif_capblty3_field
{
  volatile uint16_t CLKMULTPL : 8;
       uint16_t RESERVED1 : 8;
} stc_sdif_capblty3_field_t;

typedef struct stc_sdif_mxccapy0_field
{
  volatile uint16_t V33MAXCUR : 8;
  volatile uint16_t V30MAXCUR : 8;
} stc_sdif_mxccapy0_field_t;

typedef struct stc_sdif_mxccapy1_field
{
  volatile uint16_t V18MAXCUR : 8;
       uint16_t RESERVED1 : 8;
} stc_sdif_mxccapy1_field_t;

typedef struct stc_sdif_mxccapy2_field
{
       uint16_t RESERVED1 : 16;
} stc_sdif_mxccapy2_field_t;

typedef struct stc_sdif_mxccapy3_field
{
       uint16_t RESERVED1 : 16;
} stc_sdif_mxccapy3_field_t;

typedef struct stc_sdif_feacest_field
{
  volatile uint16_t FEVNT12ND : 1;
  volatile uint16_t FEVNTTO   : 1;
  volatile uint16_t FEVNTCRC  : 1;
  volatile uint16_t FEVNTEB   : 1;
  volatile uint16_t FEVNTIDX  : 1;
       uint16_t RESERVED1 : 2;
  volatile uint16_t FEVNTCMD12: 1;
       uint16_t RESERVED2 : 8;
} stc_sdif_feacest_field_t;

typedef struct stc_sdif_sfeeist_field
{
  volatile uint16_t FETOERR   : 1;
  volatile uint16_t FECRCERR  : 1;
  volatile uint16_t FEEBERR   : 1;
  volatile uint16_t FEIDXERR  : 1;
  volatile uint16_t FEDTOTERR : 1;
  volatile uint16_t FEDTCRCERR: 1;
  volatile uint16_t FEDTEBERR : 1;
  volatile uint16_t FECRLTERR : 1;
  volatile uint16_t FEA12ERR  : 1;
  volatile uint16_t FEADMAERR : 1;
  volatile uint16_t FETUNEERR : 1;
       uint16_t RESERVED1 : 1;
  volatile uint16_t FEACKERR  : 1;
  volatile uint16_t FEA19ERR  : 1;
  volatile uint16_t FEAHBMSERR: 1;
       uint16_t RESERVED2 : 1;
} stc_sdif_sfeeist_field_t;

typedef struct stc_sdif_admaest_field
{
  volatile uint8_t ADMAERRS  : 2;
  volatile uint8_t ADMALENME : 1;
       uint8_t RESERVED1 : 5;
} stc_sdif_admaest_field_t;

typedef struct stc_sdif_sadsa0_field
{
  volatile uint16_t ADR1500   : 16;
} stc_sdif_sadsa0_field_t;

typedef struct stc_sdif_sadsa1_field
{
  volatile uint16_t ADR3116   : 16;
} stc_sdif_sadsa1_field_t;

typedef struct stc_sdif_sadsa2_field
{
  volatile uint16_t ADR4732   : 16;
} stc_sdif_sadsa2_field_t;

typedef struct stc_sdif_sadsa3_field
{
  volatile uint16_t ADR6348   : 16;
} stc_sdif_sadsa3_field_t;

typedef struct stc_sdif_sprval0_field
{
  volatile uint16_t SCFSELVAL : 10;
  volatile uint16_t CGSELVAL  : 1;
       uint16_t RESERVED1 : 2;
  volatile uint16_t DSSELVAL  : 2;
} stc_sdif_sprval0_field_t;

typedef struct stc_sdif_sprval1_field
{
  volatile uint16_t SCFSELVAL : 10;
  volatile uint16_t CGSELVAL  : 1;
       uint16_t RESERVED1 : 2;
  volatile uint16_t DSSELVAL  : 2;
} stc_sdif_sprval1_field_t;

typedef struct stc_sdif_sprval2_field
{
  volatile uint16_t SCFSELVAL : 10;
  volatile uint16_t CGSELVAL  : 1;
       uint16_t RESERVED1 : 2;
  volatile uint16_t DSSELVAL  : 2;
} stc_sdif_sprval2_field_t;

typedef struct stc_sdif_sprval3_field
{
  volatile uint16_t SCFSELVAL : 10;
  volatile uint16_t CGSELVAL  : 1;
       uint16_t RESERVED1 : 2;
  volatile uint16_t DSSELVAL  : 2;
} stc_sdif_sprval3_field_t;

typedef struct stc_sdif_sprval4_field
{
  volatile uint16_t SCFSELVAL : 10;
  volatile uint16_t CGSELVAL  : 1;
       uint16_t RESERVED1 : 2;
  volatile uint16_t DSSELVAL  : 2;
} stc_sdif_sprval4_field_t;

typedef struct stc_sdif_sprval5_field
{
  volatile uint16_t SCFSELVAL : 10;
  volatile uint16_t CGSELVAL  : 1;
       uint16_t RESERVED1 : 2;
  volatile uint16_t DSSELVAL  : 2;
} stc_sdif_sprval5_field_t;

typedef struct stc_sdif_sprval6_field
{
  volatile uint16_t SCFSELVAL : 10;
  volatile uint16_t CGSELVAL  : 1;
       uint16_t RESERVED1 : 2;
  volatile uint16_t DSSELVAL  : 2;
} stc_sdif_sprval6_field_t;

typedef struct stc_sdif_sprval7_field
{
  volatile uint16_t SCFSELVAL : 10;
  volatile uint16_t CGSELVAL  : 1;
       uint16_t RESERVED1 : 2;
  volatile uint16_t DSSELVAL  : 2;
} stc_sdif_sprval7_field_t;

typedef struct stc_sdif_sshbctll_field
{
  volatile uint16_t CLCKPIN   : 3;
       uint16_t RESERVED1 : 1;
  volatile uint16_t INTINPIN  : 2;
       uint16_t RESERVED2 : 2;
  volatile uint16_t BUSWDPRST : 7;
       uint16_t RESERVED3 : 1;
} stc_sdif_sshbctll_field_t;

typedef struct stc_sdif_sshbctlh_field
{
  volatile uint16_t CLCKPINSEL: 3;
       uint16_t RESERVED1 : 1;
  volatile uint16_t INTPINSEL : 3;
       uint16_t RESERVED2 : 1;
  volatile uint16_t BEPWRCTL  : 7;
       uint16_t RESERVED3 : 1;
} stc_sdif_sshbctlh_field_t;


typedef struct stc_sdif_sslist_field
{
  volatile uint16_t SLOTINTSGN: 8;
       uint16_t RESERVED1 : 8;
} stc_sdif_sslist_field_t;

typedef struct stc_sdif_shctlv_field
{
  volatile uint16_t SPECVERNUM: 8;
  volatile uint16_t VNDVERNUM : 8;
} stc_sdif_shctlv_field_t;

typedef struct stc_sdif_ahbcfgl_field
{
  volatile uint16_t INCRSEL   : 3;
  volatile uint16_t SINEN     : 1;
  volatile uint16_t BSLOCK    : 1;
  volatile uint16_t BSLOCKSEL : 1;
  volatile uint16_t ENDIANSEL : 1;
       uint16_t RESERVED1 : 9;
} stc_sdif_ahbcfgl_field_t;

typedef struct stc_sdif_ahbcfgh_field
{
       uint16_t RESERVED1 : 16;
} stc_sdif_ahbcfgh_field_t;

typedef struct stc_sdif_spwswcl_field
{
  volatile uint16_t ATPWRSWEN : 1;
  volatile uint16_t IOREGSEL  : 1;
       uint16_t RESERVED1 : 14;
} stc_sdif_spwswcl_field_t;

typedef struct stc_sdif_spwswch_field
{
       uint16_t RESERVED1 : 16;
} stc_sdif_spwswch_field_t;

typedef struct stc_sdif_stunsetl_field
{
  volatile uint16_t TNPTSEL   : 8;
  volatile uint16_t TNPHSELEN : 1;
  volatile uint16_t TNERRBDSEL: 1;
  volatile uint16_t RETNTAPSEL: 1;
  volatile uint16_t RETNRNGSEL: 2;
       uint16_t RESERVED1 : 3;
} stc_sdif_stunsetl_field_t;

typedef struct stc_sdif_stunseth_field
{
  volatile uint16_t CMDCFCHKDS: 1;
       uint16_t RESERVED1 : 7;
  volatile uint16_t DTOTCNTVAL: 4;
       uint16_t RESERVED2 : 4;
} stc_sdif_stunseth_field_t;

typedef struct stc_sdif_stunstl_field
{
  volatile uint16_t REP8TNRSLT: 8;
  volatile uint16_t REP3TNRSLT: 3;
       uint16_t RESERVED1 : 5;
} stc_sdif_stunstl_field_t;

typedef struct stc_sdif_stunsth_field
{
  volatile uint16_t PRSTTNPNT : 8;
       uint16_t RESERVED1 : 8;
} stc_sdif_stunsth_field_t;

typedef struct stc_sdif_pswistl_field
{
  volatile uint16_t INT5MS    : 1;
  volatile uint16_t INT1MS    : 1;
       uint16_t RESERVED1 : 14;
} stc_sdif_pswistl_field_t;

typedef struct stc_sdif_pswisth_field
{
       uint16_t RESERVED1 : 16;
} stc_sdif_pswisth_field_t;


typedef struct stc_sdif_pswistel_field
{
  volatile uint16_t INT5MSSTS : 1;
  volatile uint16_t INT1MSSTS : 1;
       uint16_t RESERVED1 : 14;
} stc_sdif_pswistel_field_t;

typedef struct stc_sdif_pswisteh_field
{
       uint16_t RESERVED1 : 16;
} stc_sdif_pswisteh_field_t;

typedef struct stc_sdif_pswisgel_field
{
  volatile uint16_t INT5MSSGEN: 1;
  volatile uint16_t INT1MSSGEN: 1;
       uint16_t RESERVED1 : 14;
} stc_sdif_pswisgel_field_t;

typedef struct stc_sdif_pswisgeh_field
{
       uint16_t RESERVED1 : 16;
} stc_sdif_pswisgeh_field_t;

typedef struct stc_sdif_mmcsdcl_field
{
  volatile uint16_t LCKRSTESD : 1;
  volatile uint16_t RSTMMC    : 1;
  volatile uint16_t VCCCTLMMC : 1;
  volatile uint16_t VCCQCTLMMC: 1;
       uint16_t RESERVED1 : 4;
  volatile uint16_t MMCDDRSEL : 1;
  volatile uint16_t CMDDATDLY : 1;
       uint16_t RESERVED2 : 6;
} stc_sdif_mmcsdcl_field_t;

typedef struct stc_sdif_mmcsdch_field
{
  volatile uint16_t BTACKENMMC: 1;
  volatile uint16_t BTABTENMMC: 1;
  volatile uint16_t BTMDENMMC : 1;
       uint16_t RESERVED1 : 13;
} stc_sdif_mmcsdch_field_t;

typedef struct stc_sdif_mcwirqc0_field
{
  volatile uint16_t WTIRQEN   : 1;
  volatile uint16_t WTIRQST   : 1;
       uint16_t RESERVED1 : 14;
} stc_sdif_mcwirqc0_field_t;

typedef struct stc_sdif_mcwirqc1_field
{
  volatile uint16_t WTIRQCNCLR: 16;
} stc_sdif_mcwirqc1_field_t;

typedef struct stc_sdif_mcwirqc2_field
{
  volatile uint16_t WTIRQCNCLR: 16;
} stc_sdif_mcwirqc2_field_t;

typedef struct stc_sdif_mcwirqc3_field
{
  volatile uint16_t WTIRQCNCLR: 16;
} stc_sdif_mcwirqc3_field_t;

typedef struct stc_sdif_mcrpckbl_field
{
  volatile uint16_t CHECKBIT1 : 7;
  volatile uint16_t CHECKBIT2 : 6;
       uint16_t RESERVED1 : 3;
} stc_sdif_mcrpckbl_field_t;

typedef struct stc_sdif_mcrpckbh_field
{
       uint16_t RESERVED1 : 16;
} stc_sdif_mcrpckbh_field_t;

typedef struct stc_sdif_scdetecs_field
{
       uint16_t RESERVED1 : 8;
  volatile uint16_t CDDEBTCVAL: 4;
       uint16_t RESERVED2 : 4;
} stc_sdif_scdetecs_field_t;



 
 
typedef struct stc_canfd_crel_field
{
  volatile uint32_t DAY        : 8;
  volatile uint32_t MON        : 8;
  volatile uint32_t YEAR       : 4;
  volatile uint32_t SUBSTEP    : 4;
  volatile uint32_t STEP       : 4;
  volatile uint32_t REL        : 4;
} stc_canfd_crel_field_t;

typedef struct stc_canfd_endn_field
{
  volatile uint32_t ETV        : 32;
} stc_canfd_endn_field_t;

typedef struct stc_canfd_fbtp_field
{
  volatile uint32_t FSJW       : 2;
       uint32_t RESERVED1  : 2;
  volatile uint32_t FTSEG2     : 3;
       uint32_t RESERVED2  : 1;
  volatile uint32_t FTSEG1     : 4;
       uint32_t RESERVED3  : 4;
  volatile uint32_t FBRP       : 5;
       uint32_t RESERVED4  : 2;
  volatile uint32_t TDC        : 1;
  volatile uint32_t TDCO       : 5;
} stc_canfd_fbtp_field_t;

typedef struct stc_canfd_test_field
{
       uint32_t RESERVED1  : 4;
  volatile uint32_t LBCK       : 1;
  volatile uint32_t TX         : 2;
  volatile uint32_t RX         : 1;
  volatile uint32_t TDCV       : 6;
} stc_canfd_test_field_t;

typedef struct stc_canfd_rwd_field
{
  volatile uint32_t WDC        : 8;
  volatile uint32_t WDV        : 8;
} stc_canfd_rwd_field_t;

typedef struct stc_canfd_cccr_field
{
  volatile uint32_t INIT       : 1;
  volatile uint32_t CCE        : 1;
  volatile uint32_t ASM        : 1;
  volatile uint32_t CSA        : 1;
  volatile uint32_t CSR        : 1;
  volatile uint32_t MON        : 1;
  volatile uint32_t DAR        : 1;
  volatile uint32_t TEST       : 1;
  volatile uint32_t CME        : 2;
  volatile uint32_t CMR        : 2;
  volatile uint32_t FDO        : 1;
  volatile uint32_t FDBS       : 1;
  volatile uint32_t TXP        : 1;
} stc_canfd_cccr_field_t;

typedef struct stc_canfd_btp_field
{
  volatile uint32_t SJW        : 4;
  volatile uint32_t TSEG2      : 4;
  volatile uint32_t TSEG1      : 6;
       uint32_t RESERVED1  : 2;
  volatile uint32_t BRP        : 10;
} stc_canfd_btp_field_t;

typedef struct stc_canfd_tscc_field
{
  volatile uint32_t TSS        : 2;
       uint32_t RESERVED1  : 14;
  volatile uint32_t TCP        : 4;
} stc_canfd_tscc_field_t;

typedef struct stc_canfd_tscv_field
{
  volatile uint32_t TSC        : 16;
} stc_canfd_tscv_field_t;

typedef struct stc_canfd_tocc_field
{
  volatile uint32_t ETOC       : 1;
  volatile uint32_t TOS        : 2;
       uint32_t RESERVED1  : 13;
  volatile uint32_t TOP        : 16;
} stc_canfd_tocc_field_t;

typedef struct stc_canfd_tocv_field
{
  volatile uint32_t TOC        : 16;
} stc_canfd_tocv_field_t;

typedef struct stc_canfd_ecr_field
{
  volatile uint32_t TEC        : 8;
  volatile uint32_t REC        : 7;
  volatile uint32_t RP         : 1;
  volatile uint32_t CEL        : 8;
} stc_canfd_ecr_field_t;

typedef struct stc_canfd_psr_field
{
  volatile uint32_t LEC        : 3;
  volatile uint32_t ACT        : 2;
  volatile uint32_t EP         : 1;
  volatile uint32_t EW         : 1;
  volatile uint32_t BO         : 1;
  volatile uint32_t FLEC       : 3;
  volatile uint32_t RESI       : 1;
  volatile uint32_t RBRS       : 1;
  volatile uint32_t REDL       : 1;
} stc_canfd_psr_field_t;

typedef struct stc_canfd_ir_field
{
  volatile uint32_t RF0N       : 1;
  volatile uint32_t RF0W       : 1;
  volatile uint32_t RF0F       : 1;
  volatile uint32_t RF0L       : 1;
  volatile uint32_t RF1N       : 1;
  volatile uint32_t RF1W       : 1;
  volatile uint32_t RF1F       : 1;
  volatile uint32_t RF1L       : 1;
  volatile uint32_t HPM        : 1;
  volatile uint32_t TC         : 1;
  volatile uint32_t TCF        : 1;
  volatile uint32_t TFE        : 1;
  volatile uint32_t TEFN       : 1;
  volatile uint32_t TEFW       : 1;
  volatile uint32_t TEFF       : 1;
  volatile uint32_t TEFL       : 1;
  volatile uint32_t TSW        : 1;
  volatile uint32_t MRAF       : 1;
  volatile uint32_t TOO        : 1;
  volatile uint32_t DRX        : 1;
  volatile uint32_t BEC        : 1;
  volatile uint32_t BEU        : 1;
  volatile uint32_t ELO        : 1;
  volatile uint32_t EP         : 1;
  volatile uint32_t EW         : 1;
  volatile uint32_t BO         : 1;
  volatile uint32_t WDI        : 1;
  volatile uint32_t CRCE       : 1;
  volatile uint32_t BE         : 1;
  volatile uint32_t ACKE       : 1;
  volatile uint32_t FOE        : 1;
  volatile uint32_t STE        : 1;
} stc_canfd_ir_field_t;

typedef struct stc_canfd_ie_field
{
  volatile uint32_t RF0NE      : 1;
  volatile uint32_t RF0WE      : 1;
  volatile uint32_t RF0FE      : 1;
  volatile uint32_t RF0LE      : 1;
  volatile uint32_t RF1NE      : 1;
  volatile uint32_t RF1WE      : 1;
  volatile uint32_t RF1FE      : 1;
  volatile uint32_t RF1LE      : 1;
  volatile uint32_t HPME       : 1;
  volatile uint32_t TCE        : 1;
  volatile uint32_t TCFE       : 1;
  volatile uint32_t TFEE       : 1;
  volatile uint32_t TEFNE      : 1;
  volatile uint32_t TEFWE      : 1;
  volatile uint32_t TEFFE      : 1;
  volatile uint32_t TEFLE      : 1;
  volatile uint32_t TSWE       : 1;
  volatile uint32_t MRAFE      : 1;
  volatile uint32_t TOOE       : 1;
  volatile uint32_t DRXE       : 1;
  volatile uint32_t BECE       : 1;
  volatile uint32_t BEUE       : 1;
  volatile uint32_t ELOE       : 1;
  volatile uint32_t EPE        : 1;
  volatile uint32_t EWE        : 1;
  volatile uint32_t BOE        : 1;
  volatile uint32_t WDIE       : 1;
  volatile uint32_t CRCEE      : 1;
  volatile uint32_t BEE        : 1;
  volatile uint32_t ACKEE      : 1;
  volatile uint32_t FOEE       : 1;
  volatile uint32_t STEE       : 1;
} stc_canfd_ie_field_t;

typedef struct stc_canfd_ils_field
{
  volatile uint32_t RF0NL      : 1;
  volatile uint32_t RF0WL      : 1;
  volatile uint32_t RF0FL      : 1;
  volatile uint32_t RF0LL      : 1;
  volatile uint32_t RF1NL      : 1;
  volatile uint32_t RF1WL      : 1;
  volatile uint32_t RF1FL      : 1;
  volatile uint32_t RF1LL      : 1;
  volatile uint32_t HPML       : 1;
  volatile uint32_t TCL        : 1;
  volatile uint32_t TCFL       : 1;
  volatile uint32_t TFEL       : 1;
  volatile uint32_t TEFNL      : 1;
  volatile uint32_t TEFWL      : 1;
  volatile uint32_t TEFFL      : 1;
  volatile uint32_t TEFLL      : 1;
  volatile uint32_t TSWL       : 1;
  volatile uint32_t MRAFL      : 1;
  volatile uint32_t TOOL       : 1;
  volatile uint32_t DRXL       : 1;
  volatile uint32_t BECL       : 1;
  volatile uint32_t BEUL       : 1;
  volatile uint32_t ELOL       : 1;
  volatile uint32_t EPL        : 1;
  volatile uint32_t EWL        : 1;
  volatile uint32_t BOL        : 1;
  volatile uint32_t WDIL       : 1;
  volatile uint32_t CRCEL      : 1;
  volatile uint32_t BEL        : 1;
  volatile uint32_t ACKEL      : 1;
  volatile uint32_t FOEL       : 1;
  volatile uint32_t STEL       : 1;
} stc_canfd_ils_field_t;

typedef struct stc_canfd_ile_field
{
  volatile uint32_t EINT0      : 1;
  volatile uint32_t EINT1      : 1;
} stc_canfd_ile_field_t;

typedef struct stc_canfd_gfc_field
{
  volatile uint32_t RRFE       : 1;
  volatile uint32_t RRFS       : 1;
  volatile uint32_t ANFE       : 2;
  volatile uint32_t ANFS       : 2;
} stc_canfd_gfc_field_t;

typedef struct stc_canfd_sidfc_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t FLSSA      : 14;
  volatile uint32_t LSS        : 8;
} stc_canfd_sidfc_field_t;

typedef struct stc_canfd_xidfc_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t FLESA      : 14;
  volatile uint32_t LSE        : 7;
} stc_canfd_xidfc_field_t;

typedef struct stc_canfd_xidam_field
{
  volatile uint32_t EIDM       : 29;
} stc_canfd_xidam_field_t;

typedef struct stc_canfd_hpms_field
{
  volatile uint32_t BIDX       : 6;
  volatile uint32_t MSI        : 2;
  volatile uint32_t FIDX       : 7;
  volatile uint32_t FLST       : 1;
} stc_canfd_hpms_field_t;

typedef struct stc_canfd_ndat1_field
{
  volatile uint32_t ND0        : 1;
  volatile uint32_t ND1        : 1;
  volatile uint32_t ND2        : 1;
  volatile uint32_t ND3        : 1;
  volatile uint32_t ND4        : 1;
  volatile uint32_t ND5        : 1;
  volatile uint32_t ND6        : 1;
  volatile uint32_t ND7        : 1;
  volatile uint32_t ND8        : 1;
  volatile uint32_t ND9        : 1;
  volatile uint32_t ND10       : 1;
  volatile uint32_t ND11       : 1;
  volatile uint32_t ND12       : 1;
  volatile uint32_t ND13       : 1;
  volatile uint32_t ND14       : 1;
  volatile uint32_t ND15       : 1;
  volatile uint32_t ND16       : 1;
  volatile uint32_t ND17       : 1;
  volatile uint32_t ND18       : 1;
  volatile uint32_t ND19       : 1;
  volatile uint32_t ND20       : 1;
  volatile uint32_t ND21       : 1;
  volatile uint32_t ND22       : 1;
  volatile uint32_t ND23       : 1;
  volatile uint32_t ND24       : 1;
  volatile uint32_t ND25       : 1;
  volatile uint32_t ND26       : 1;
  volatile uint32_t ND27       : 1;
  volatile uint32_t ND28       : 1;
  volatile uint32_t ND29       : 1;
  volatile uint32_t ND30       : 1;
  volatile uint32_t ND31       : 1;
} stc_canfd_ndat1_field_t;

typedef struct stc_canfd_ndat2_field
{
  volatile uint32_t ND32       : 1;
  volatile uint32_t ND33       : 1;
  volatile uint32_t ND34       : 1;
  volatile uint32_t ND35       : 1;
  volatile uint32_t ND36       : 1;
  volatile uint32_t ND37       : 1;
  volatile uint32_t ND38       : 1;
  volatile uint32_t ND39       : 1;
  volatile uint32_t ND40       : 1;
  volatile uint32_t ND41       : 1;
  volatile uint32_t ND42       : 1;
  volatile uint32_t ND43       : 1;
  volatile uint32_t ND44       : 1;
  volatile uint32_t ND45       : 1;
  volatile uint32_t ND46       : 1;
  volatile uint32_t ND47       : 1;
  volatile uint32_t ND48       : 1;
  volatile uint32_t ND49       : 1;
  volatile uint32_t ND50       : 1;
  volatile uint32_t ND51       : 1;
  volatile uint32_t ND52       : 1;
  volatile uint32_t ND53       : 1;
  volatile uint32_t ND54       : 1;
  volatile uint32_t ND55       : 1;
  volatile uint32_t ND56       : 1;
  volatile uint32_t ND57       : 1;
  volatile uint32_t ND58       : 1;
  volatile uint32_t ND59       : 1;
  volatile uint32_t ND60       : 1;
  volatile uint32_t ND61       : 1;
  volatile uint32_t ND62       : 1;
  volatile uint32_t ND63       : 1;
} stc_canfd_ndat2_field_t;

typedef struct stc_canfd_rxf0c_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t F0SA       : 14;
  volatile uint32_t F0S        : 7;
       uint32_t RESERVED2  : 1;
  volatile uint32_t F0WM       : 7;
  volatile uint32_t F0OM       : 1;
} stc_canfd_rxf0c_field_t;

typedef struct stc_canfd_rxf0s_field
{
  volatile uint32_t F0FL       : 7;
       uint32_t RESERVED1  : 1;
  volatile uint32_t F0GI       : 6;
       uint32_t RESERVED2  : 2;
  volatile uint32_t F0PI       : 6;
       uint32_t RESERVED3  : 2;
  volatile uint32_t F0F        : 1;
  volatile uint32_t RF0L       : 1;
} stc_canfd_rxf0s_field_t;

typedef struct stc_canfd_rxf0a_field
{
  volatile uint32_t F0AI       : 6;
} stc_canfd_rxf0a_field_t;

typedef struct stc_canfd_rxbc_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t RBSA       : 14;
} stc_canfd_rxbc_field_t;

typedef struct stc_canfd_rxf1c_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t F1SA       : 14;
  volatile uint32_t F1S        : 7;
       uint32_t RESERVED2  : 1;
  volatile uint32_t F1WM       : 7;
  volatile uint32_t F1OM       : 1;
} stc_canfd_rxf1c_field_t;

typedef struct stc_canfd_rxf1s_field
{
  volatile uint32_t F1FL       : 7;
       uint32_t RESERVED1  : 1;
  volatile uint32_t F1GI       : 6;
       uint32_t RESERVED2  : 2;
  volatile uint32_t F1PI       : 6;
       uint32_t RESERVED3  : 2;
  volatile uint32_t F1F        : 1;
  volatile uint32_t RF1L       : 1;
       uint32_t RESERVED4  : 4;
  volatile uint32_t DMS        : 2;
} stc_canfd_rxf1s_field_t;

typedef struct stc_canfd_rxf1a_field
{
  volatile uint32_t F1AI       : 6;
} stc_canfd_rxf1a_field_t;

typedef struct stc_canfd_rxesc_field
{
  volatile uint32_t F0DS       : 3;
       uint32_t RESERVED1  : 1;
  volatile uint32_t F1DS       : 3;
       uint32_t RESERVED2  : 1;
  volatile uint32_t RBDS       : 3;
} stc_canfd_rxesc_field_t;

typedef struct stc_canfd_txbc_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t TBSA       : 14;
  volatile uint32_t NDTB       : 6;
       uint32_t RESERVED2  : 2;
  volatile uint32_t TFQS       : 6;
  volatile uint32_t TFQM       : 1;
} stc_canfd_txbc_field_t;

typedef struct stc_canfd_txfqs_field
{
  volatile uint32_t TFFL       : 6;
       uint32_t RESERVED1  : 2;
  volatile uint32_t TFGI       : 5;
       uint32_t RESERVED2  : 3;
  volatile uint32_t TFQPI      : 5;
  volatile uint32_t TFQF       : 1;
} stc_canfd_txfqs_field_t;

typedef struct stc_canfd_txesc_field
{
  volatile uint32_t TBDS       : 3;
} stc_canfd_txesc_field_t;

typedef struct stc_canfd_txbrp_field
{
  volatile uint32_t TRP0       : 1;
  volatile uint32_t TRP1       : 1;
  volatile uint32_t TRP2       : 1;
  volatile uint32_t TRP3       : 1;
  volatile uint32_t TRP4       : 1;
  volatile uint32_t TRP5       : 1;
  volatile uint32_t TRP6       : 1;
  volatile uint32_t TRP7       : 1;
  volatile uint32_t TRP8       : 1;
  volatile uint32_t TRP9       : 1;
  volatile uint32_t TRP10      : 1;
  volatile uint32_t TRP11      : 1;
  volatile uint32_t TRP12      : 1;
  volatile uint32_t TRP13      : 1;
  volatile uint32_t TRP14      : 1;
  volatile uint32_t TRP15      : 1;
  volatile uint32_t TRP16      : 1;
  volatile uint32_t TRP17      : 1;
  volatile uint32_t TRP18      : 1;
  volatile uint32_t TRP19      : 1;
  volatile uint32_t TRP20      : 1;
  volatile uint32_t TRP21      : 1;
  volatile uint32_t TRP22      : 1;
  volatile uint32_t TRP23      : 1;
  volatile uint32_t TRP24      : 1;
  volatile uint32_t TRP25      : 1;
  volatile uint32_t TRP26      : 1;
  volatile uint32_t TRP27      : 1;
  volatile uint32_t TRP28      : 1;
  volatile uint32_t TRP29      : 1;
  volatile uint32_t TRP30      : 1;
  volatile uint32_t TRP31      : 1;
} stc_canfd_txbrp_field_t;

typedef struct stc_canfd_txbar_field
{
  volatile uint32_t AR0        : 1;
  volatile uint32_t AR1        : 1;
  volatile uint32_t AR2        : 1;
  volatile uint32_t AR3        : 1;
  volatile uint32_t AR4        : 1;
  volatile uint32_t AR5        : 1;
  volatile uint32_t AR6        : 1;
  volatile uint32_t AR7        : 1;
  volatile uint32_t AR8        : 1;
  volatile uint32_t AR9        : 1;
  volatile uint32_t AR10       : 1;
  volatile uint32_t AR11       : 1;
  volatile uint32_t AR12       : 1;
  volatile uint32_t AR13       : 1;
  volatile uint32_t AR14       : 1;
  volatile uint32_t AR15       : 1;
  volatile uint32_t AR16       : 1;
  volatile uint32_t AR17       : 1;
  volatile uint32_t AR18       : 1;
  volatile uint32_t AR19       : 1;
  volatile uint32_t AR20       : 1;
  volatile uint32_t AR21       : 1;
  volatile uint32_t AR22       : 1;
  volatile uint32_t AR23       : 1;
  volatile uint32_t AR24       : 1;
  volatile uint32_t AR25       : 1;
  volatile uint32_t AR26       : 1;
  volatile uint32_t AR27       : 1;
  volatile uint32_t AR28       : 1;
  volatile uint32_t AR29       : 1;
  volatile uint32_t AR30       : 1;
  volatile uint32_t AR31       : 1;
} stc_canfd_txbar_field_t;

typedef struct stc_canfd_txbcr_field
{
  volatile uint32_t CR0        : 1;
  volatile uint32_t CR1        : 1;
  volatile uint32_t CR2        : 1;
  volatile uint32_t CR3        : 1;
  volatile uint32_t CR4        : 1;
  volatile uint32_t CR5        : 1;
  volatile uint32_t CR6        : 1;
  volatile uint32_t CR7        : 1;
  volatile uint32_t CR8        : 1;
  volatile uint32_t CR9        : 1;
  volatile uint32_t CR10       : 1;
  volatile uint32_t CR11       : 1;
  volatile uint32_t CR12       : 1;
  volatile uint32_t CR13       : 1;
  volatile uint32_t CR14       : 1;
  volatile uint32_t CR15       : 1;
  volatile uint32_t CR16       : 1;
  volatile uint32_t CR17       : 1;
  volatile uint32_t CR18       : 1;
  volatile uint32_t CR19       : 1;
  volatile uint32_t CR20       : 1;
  volatile uint32_t CR21       : 1;
  volatile uint32_t CR22       : 1;
  volatile uint32_t CR23       : 1;
  volatile uint32_t CR24       : 1;
  volatile uint32_t CR25       : 1;
  volatile uint32_t CR26       : 1;
  volatile uint32_t CR27       : 1;
  volatile uint32_t CR28       : 1;
  volatile uint32_t CR29       : 1;
  volatile uint32_t CR30       : 1;
  volatile uint32_t CR31       : 1;
} stc_canfd_txbcr_field_t;

typedef struct stc_canfd_txbto_field
{
  volatile uint32_t TO0        : 1;
  volatile uint32_t TO1        : 1;
  volatile uint32_t TO2        : 1;
  volatile uint32_t TO3        : 1;
  volatile uint32_t TO4        : 1;
  volatile uint32_t TO5        : 1;
  volatile uint32_t TO6        : 1;
  volatile uint32_t TO7        : 1;
  volatile uint32_t TO8        : 1;
  volatile uint32_t TO9        : 1;
  volatile uint32_t TO10       : 1;
  volatile uint32_t TO11       : 1;
  volatile uint32_t TO12       : 1;
  volatile uint32_t TO13       : 1;
  volatile uint32_t TO14       : 1;
  volatile uint32_t TO15       : 1;
  volatile uint32_t TO16       : 1;
  volatile uint32_t TO17       : 1;
  volatile uint32_t TO18       : 1;
  volatile uint32_t TO19       : 1;
  volatile uint32_t TO20       : 1;
  volatile uint32_t TO21       : 1;
  volatile uint32_t TO22       : 1;
  volatile uint32_t TO23       : 1;
  volatile uint32_t TO24       : 1;
  volatile uint32_t TO25       : 1;
  volatile uint32_t TO26       : 1;
  volatile uint32_t TO27       : 1;
  volatile uint32_t TO28       : 1;
  volatile uint32_t TO29       : 1;
  volatile uint32_t TO30       : 1;
  volatile uint32_t TO31       : 1;
} stc_canfd_txbto_field_t;

typedef struct stc_canfd_txbcf_field
{
  volatile uint32_t CF0        : 1;
  volatile uint32_t CF1        : 1;
  volatile uint32_t CF2        : 1;
  volatile uint32_t CF3        : 1;
  volatile uint32_t CF4        : 1;
  volatile uint32_t CF5        : 1;
  volatile uint32_t CF6        : 1;
  volatile uint32_t CF7        : 1;
  volatile uint32_t CF8        : 1;
  volatile uint32_t CF9        : 1;
  volatile uint32_t CF10       : 1;
  volatile uint32_t CF11       : 1;
  volatile uint32_t CF12       : 1;
  volatile uint32_t CF13       : 1;
  volatile uint32_t CF14       : 1;
  volatile uint32_t CF15       : 1;
  volatile uint32_t CF16       : 1;
  volatile uint32_t CF17       : 1;
  volatile uint32_t CF18       : 1;
  volatile uint32_t CF19       : 1;
  volatile uint32_t CF20       : 1;
  volatile uint32_t CF21       : 1;
  volatile uint32_t CF22       : 1;
  volatile uint32_t CF23       : 1;
  volatile uint32_t CF24       : 1;
  volatile uint32_t CF25       : 1;
  volatile uint32_t CF26       : 1;
  volatile uint32_t CF27       : 1;
  volatile uint32_t CF28       : 1;
  volatile uint32_t CF29       : 1;
  volatile uint32_t CF30       : 1;
  volatile uint32_t CF31       : 1;
} stc_canfd_txbcf_field_t;

typedef struct stc_canfd_txbtie_field
{
  volatile uint32_t TIE0       : 1;
  volatile uint32_t TIE1       : 1;
  volatile uint32_t TIE2       : 1;
  volatile uint32_t TIE3       : 1;
  volatile uint32_t TIE4       : 1;
  volatile uint32_t TIE5       : 1;
  volatile uint32_t TIE6       : 1;
  volatile uint32_t TIE7       : 1;
  volatile uint32_t TIE8       : 1;
  volatile uint32_t TIE9       : 1;
  volatile uint32_t TIE10      : 1;
  volatile uint32_t TIE11      : 1;
  volatile uint32_t TIE12      : 1;
  volatile uint32_t TIE13      : 1;
  volatile uint32_t TIE14      : 1;
  volatile uint32_t TIE15      : 1;
  volatile uint32_t TIE16      : 1;
  volatile uint32_t TIE17      : 1;
  volatile uint32_t TIE18      : 1;
  volatile uint32_t TIE19      : 1;
  volatile uint32_t TIE20      : 1;
  volatile uint32_t TIE21      : 1;
  volatile uint32_t TIE22      : 1;
  volatile uint32_t TIE23      : 1;
  volatile uint32_t TIE24      : 1;
  volatile uint32_t TIE25      : 1;
  volatile uint32_t TIE26      : 1;
  volatile uint32_t TIE27      : 1;
  volatile uint32_t TIE28      : 1;
  volatile uint32_t TIE29      : 1;
  volatile uint32_t TIE30      : 1;
  volatile uint32_t TIE31      : 1;
} stc_canfd_txbtie_field_t;

typedef struct stc_canfd_txbcie_field
{
  volatile uint32_t CFIE0      : 1;
  volatile uint32_t CFIE1      : 1;
  volatile uint32_t CFIE2      : 1;
  volatile uint32_t CFIE3      : 1;
  volatile uint32_t CFIE4      : 1;
  volatile uint32_t CFIE5      : 1;
  volatile uint32_t CFIE6      : 1;
  volatile uint32_t CFIE7      : 1;
  volatile uint32_t CFIE8      : 1;
  volatile uint32_t CFIE9      : 1;
  volatile uint32_t CFIE10     : 1;
  volatile uint32_t CFIE11     : 1;
  volatile uint32_t CFIE12     : 1;
  volatile uint32_t CFIE13     : 1;
  volatile uint32_t CFIE14     : 1;
  volatile uint32_t CFIE15     : 1;
  volatile uint32_t CFIE16     : 1;
  volatile uint32_t CFIE17     : 1;
  volatile uint32_t CFIE18     : 1;
  volatile uint32_t CFIE19     : 1;
  volatile uint32_t CFIE20     : 1;
  volatile uint32_t CFIE21     : 1;
  volatile uint32_t CFIE22     : 1;
  volatile uint32_t CFIE23     : 1;
  volatile uint32_t CFIE24     : 1;
  volatile uint32_t CFIE25     : 1;
  volatile uint32_t CFIE26     : 1;
  volatile uint32_t CFIE27     : 1;
  volatile uint32_t CFIE28     : 1;
  volatile uint32_t CFIE29     : 1;
  volatile uint32_t CFIE30     : 1;
  volatile uint32_t CFIE31     : 1;
} stc_canfd_txbcie_field_t;

typedef struct stc_canfd_txefc_field
{
       uint32_t RESERVED1  : 2;
  volatile uint32_t EFSA       : 14;
  volatile uint32_t EFS        : 6;
       uint32_t RESERVED2  : 2;
  volatile uint32_t EFWM       : 6;
} stc_canfd_txefc_field_t;

typedef struct stc_canfd_txfs_field
{
  volatile uint32_t EFFL       : 6;
       uint32_t RESERVED1  : 2;
  volatile uint32_t EFGI       : 5;
       uint32_t RESERVED2  : 3;
  volatile uint32_t EFPI       : 5;
       uint32_t RESERVED3  : 3;
  volatile uint32_t EFF        : 1;
  volatile uint32_t TEFL       : 1;
} stc_canfd_txfs_field_t;

typedef struct stc_canfd_txfa_field
{
  volatile uint32_t EFAI       : 5;
} stc_canfd_txfa_field_t;

typedef struct stc_canfd_fdecr_field
{
  volatile  uint8_t SEIE       : 1;
  volatile  uint8_t DEIE       : 1;
  volatile  uint8_t CEREN      : 1;
  volatile  uint8_t CEIV       : 1;
} stc_canfd_fdecr_field_t;

typedef struct stc_canfd_fdesr_field
{
  volatile  uint8_t SEI        : 1;
  volatile  uint8_t DEI        : 1;
} stc_canfd_fdesr_field_t;

typedef struct stc_canfd_fdsear_field
{
  volatile uint16_t SRA        : 16;
} stc_canfd_fdsear_field_t;

typedef struct stc_canfd_fdescr_field
{
  volatile  uint8_t SEIC       : 1;
  volatile  uint8_t DEIC       : 1;
} stc_canfd_fdescr_field_t;

typedef struct stc_canfd_fddear_field
{
  volatile uint16_t DRA        : 16;
} stc_canfd_fddear_field_t;

typedef struct stc_canfd_tscntr_field
{
  volatile uint16_t CCLR       : 1;
} stc_canfd_tscntr_field_t;

typedef struct stc_canfd_tsmdr_field
{
  volatile uint16_t CNTEN      : 1;
} stc_canfd_tsmdr_field_t;

typedef struct stc_canfd_tsdivr_field
{
  volatile uint32_t CDIV       : 16;
} stc_canfd_tsdivr_field_t;

typedef struct stc_canfd_tscdtr_field
{
  volatile uint16_t CNT        : 16;
} stc_canfd_tscdtr_field_t;

typedef struct stc_canfd_tscpclr_field
{
  volatile uint16_t CMP        : 16;
} stc_canfd_tscpclr_field_t;



 
 
typedef struct stc_pcrc_prgcrc_cfg_field
{
  volatile uint32_t CIRQCLR    : 1;
       uint32_t RESERVED0  : 7;
  volatile uint32_t FO         : 2;
  volatile uint32_t FI         : 2;
       uint32_t RESERVED1  : 4;
  volatile uint32_t TEST       : 6;
  volatile uint32_t SZ         : 2;
  volatile uint32_t CIRQ       : 1;
  volatile uint32_t CIEN       : 1;
  volatile uint32_t CDEN       : 1;
       uint32_t RESERVED2  : 1;
  volatile uint32_t LOCK       : 1;
} stc_pcrc_prgcrc_cfg_field_t;



 
 
typedef struct stc_hsspi_mctrl_field
{
  volatile uint32_t MEN        : 1;
  volatile uint32_t CSEN       : 1;
       uint32_t RESERVED1  : 2;
  volatile uint32_t MES        : 1;
  volatile uint32_t SYNCON     : 1;
} stc_hsspi_mctrl_field_t;

typedef struct stc_hsspi_pcc0_field
{
  volatile uint32_t CPHA       : 1;
  volatile uint32_t CPOL       : 1;
  volatile uint32_t ACES       : 1;
  volatile uint32_t RTM        : 1;
  volatile uint32_t SSPOL      : 1;
  volatile uint32_t SS2CD      : 2;
  volatile uint32_t SDIR       : 1;
  volatile uint32_t SENDIAN    : 1;
  volatile uint32_t CDRS       : 7;
  volatile uint32_t SAFESYNC   : 1;
  volatile uint32_t WRDSEL     : 4;
  volatile uint32_t RDDSEL     : 2;
} stc_hsspi_pcc0_field_t;

typedef struct stc_hsspi_pcc1_field
{
  volatile uint32_t CPHA       : 1;
  volatile uint32_t CPOL       : 1;
  volatile uint32_t ACES       : 1;
  volatile uint32_t RTM        : 1;
  volatile uint32_t SSPOL      : 1;
  volatile uint32_t SS2CD      : 2;
  volatile uint32_t SDIR       : 1;
  volatile uint32_t SENDIAN    : 1;
  volatile uint32_t CDRS       : 7;
  volatile uint32_t SAFESYNC   : 1;
  volatile uint32_t WRDSEL     : 4;
  volatile uint32_t RDDSEL     : 2;
} stc_hsspi_pcc1_field_t;

typedef struct stc_hsspi_pcc2_field
{
  volatile uint32_t CPHA       : 1;
  volatile uint32_t CPOL       : 1;
  volatile uint32_t ACES       : 1;
  volatile uint32_t RTM        : 1;
  volatile uint32_t SSPOL      : 1;
  volatile uint32_t SS2CD      : 2;
  volatile uint32_t SDIR       : 1;
  volatile uint32_t SENDIAN    : 1;
  volatile uint32_t CDRS       : 7;
  volatile uint32_t SAFESYNC   : 1;
  volatile uint32_t WRDSEL     : 4;
  volatile uint32_t RDDSEL     : 2;
} stc_hsspi_pcc2_field_t;

typedef struct stc_hsspi_pcc3_field
{
  volatile uint32_t CPHA       : 1;
  volatile uint32_t CPOL       : 1;
  volatile uint32_t ACES       : 1;
  volatile uint32_t RTM        : 1;
  volatile uint32_t SSPOL      : 1;
  volatile uint32_t SS2CD      : 2;
  volatile uint32_t SDIR       : 1;
  volatile uint32_t SENDIAN    : 1;
  volatile uint32_t CDRS       : 7;
  volatile uint32_t SAFESYNC   : 1;
  volatile uint32_t WRDSEL     : 4;
  volatile uint32_t RDDSEL     : 2;
} stc_hsspi_pcc3_field_t;

typedef struct stc_hsspi_txf_field
{
  volatile uint32_t TFFS       : 1;
  volatile uint32_t TFES       : 1;
  volatile uint32_t TFOS       : 1;
  volatile uint32_t TFUS       : 1;
  volatile uint32_t TFLETS     : 1;
  volatile uint32_t TFMTS      : 1;
  volatile uint32_t TSSRS      : 1;
} stc_hsspi_txf_field_t;

typedef struct stc_hsspi_txe_field
{
  volatile uint32_t TFFE       : 1;
  volatile uint32_t TFEE       : 1;
  volatile uint32_t TFOE       : 1;
  volatile uint32_t TFUE       : 1;
  volatile uint32_t TFLETE     : 1;
  volatile uint32_t TFMTE      : 1;
  volatile uint32_t TSSRE      : 1;
} stc_hsspi_txe_field_t;

typedef struct stc_hsspi_txc_field
{
  volatile uint32_t TFFC       : 1;
  volatile uint32_t TFEC       : 1;
  volatile uint32_t TFOC       : 1;
  volatile uint32_t TFUC       : 1;
  volatile uint32_t TFLETC     : 1;
  volatile uint32_t TFMTC      : 1;
  volatile uint32_t TSSRC      : 1;
} stc_hsspi_txc_field_t;

typedef struct stc_hsspi_rxf_field
{
  volatile uint32_t RFFS       : 1;
  volatile uint32_t RFES       : 1;
  volatile uint32_t RFOS       : 1;
  volatile uint32_t RFUS       : 1;
  volatile uint32_t RFLETS     : 1;
  volatile uint32_t RFMTS      : 1;
  volatile uint32_t RSSRS      : 1;
} stc_hsspi_rxf_field_t;

typedef struct stc_hsspi_rxe_field
{
  volatile uint32_t RFFE       : 1;
  volatile uint32_t RFEE       : 1;
  volatile uint32_t RFOE       : 1;
  volatile uint32_t RFUE       : 1;
  volatile uint32_t RFLETE     : 1;
  volatile uint32_t RFMTE      : 1;
  volatile uint32_t RSSRE      : 1;
} stc_hsspi_rxe_field_t;

typedef struct stc_hsspi_rxc_field
{
  volatile uint32_t RFFC       : 1;
  volatile uint32_t RFEC       : 1;
  volatile uint32_t RFOC       : 1;
  volatile uint32_t RFUC       : 1;
  volatile uint32_t RFLETC     : 1;
  volatile uint32_t RFMTC      : 1;
  volatile uint32_t RSSRC      : 1;
} stc_hsspi_rxc_field_t;

typedef struct stc_hsspi_faultf_field
{
  volatile uint32_t UMAFS      : 1;
  volatile uint32_t WAFS       : 1;
  volatile uint32_t PVFS       : 1;
  volatile uint32_t DWCBSFS    : 1;
  volatile uint32_t DRCBSFS    : 1;
} stc_hsspi_faultf_field_t;

typedef struct stc_hsspi_faultc_field
{
  volatile uint32_t UMAFC      : 1;
  volatile uint32_t WAFC       : 1;
  volatile uint32_t PVFC       : 1;
  volatile uint32_t DWCBSFC    : 1;
  volatile uint32_t DRCBSFC    : 1;
} stc_hsspi_faultc_field_t;

typedef struct stc_hsspi_dmcfg_field
{
        uint8_t RESERVED1  : 1;
  volatile  uint8_t SSDC       : 1;
} stc_hsspi_dmcfg_field_t;

typedef struct stc_hsspi_dmdmaen_field
{
  volatile  uint8_t RXDMAEN    : 1;
  volatile  uint8_t TXDMAEN    : 1;
} stc_hsspi_dmdmaen_field_t;

typedef struct stc_hsspi_dmstart_field
{
  volatile  uint8_t START      : 1;
} stc_hsspi_dmstart_field_t;

typedef struct stc_hsspi_dmstop_field
{
  volatile  uint8_t STOP       : 1;
} stc_hsspi_dmstop_field_t;

typedef struct stc_hsspi_dmpsel_field
{
  volatile  uint8_t PSEL       : 2;
} stc_hsspi_dmpsel_field_t;

typedef struct stc_hsspi_dmtrp_field
{
  volatile  uint8_t TRP        : 4;
} stc_hsspi_dmtrp_field_t;

typedef struct stc_hsspi_dmbcc_field
{
  volatile uint16_t BCC        : 16;
} stc_hsspi_dmbcc_field_t;

typedef struct stc_hsspi_dmbcs_field
{
  volatile uint16_t BCS        : 16;
} stc_hsspi_dmbcs_field_t;

typedef struct stc_hsspi_dmstatus_field
{
  volatile uint32_t RXACTIVE   : 1;
  volatile uint32_t TXACTIVE   : 1;
       uint32_t RESERVED1  : 6;
  volatile uint32_t RXFLEVEL   : 5;
       uint32_t RESERVED2  : 3;
  volatile uint32_t TXFLEVEL   : 5;
} stc_hsspi_dmstatus_field_t;

typedef struct stc_hsspi_fifocfg_field
{
  volatile uint32_t RXFTH      : 4;
  volatile uint32_t TXFTH      : 4;
  volatile uint32_t FWIDTH     : 2;
  volatile uint32_t TXCTRL     : 1;
  volatile uint32_t RXFLSH     : 1;
  volatile uint32_t TXFLSH     : 1;
} stc_hsspi_fifocfg_field_t;

typedef struct stc_hsspi_txfifo_field
{
  volatile uint32_t TXDATA     : 32;
} stc_hsspi_txfifo_field_t;

typedef struct stc_hsspi_rxfifo_field
{
  volatile uint32_t RXDATA     : 32;
} stc_hsspi_rxfifo_field_t;

typedef struct stc_hsspi_cscfg_field
{
  volatile uint32_t SRAM       : 1;
  volatile uint32_t MBM        : 2;
       uint32_t RESERVED1  : 5;
  volatile uint32_t SSEL0EN    : 1;
  volatile uint32_t SSEL1EN    : 1;
  volatile uint32_t SSEL2EN    : 1;
  volatile uint32_t SSEL3EN    : 1;
       uint32_t RESERVED2  : 4;
  volatile uint32_t MSEL       : 4;
} stc_hsspi_cscfg_field_t;

typedef struct stc_hsspi_csitime_field
{
  volatile uint32_t ITIME      : 16;
} stc_hsspi_csitime_field_t;

typedef struct stc_hsspi_csaext_field
{
       uint32_t RESERVED1  : 13;
  volatile uint32_t AEXT       : 19;
} stc_hsspi_csaext_field_t;

typedef struct stc_hsspi_rdcsdc_field
{
  volatile uint16_t DEC        : 1;
  volatile uint16_t TRP        : 2;
  volatile uint16_t CONT       : 1;
       uint16_t RESERVED1  : 4;
  volatile uint16_t RDCSDATA   : 8;
} stc_hsspi_rdcsdc_field_t;

typedef struct stc_hsspi_wrcsdc_field
{
  volatile uint16_t DEC        : 1;
  volatile uint16_t TRP        : 2;
  volatile uint16_t CONT       : 1;
       uint16_t RESERVED1  : 4;
  volatile uint16_t WRCSDATA   : 8;
} stc_hsspi_wrcsdc_field_t;

typedef struct stc_hsspi_mid_field
{
  volatile uint32_t MID        : 32;
} stc_hsspi_mid_field_t;

typedef struct stc_hsspi_qdclkr_field
{
  volatile  uint8_t QHDIV      : 4;
} stc_hsspi_qdclkr_field_t;

typedef struct stc_hsspi_dbcnt_field
{
  volatile  uint8_t RXDBEN     : 1;
  volatile  uint8_t TXDBEN     : 1;
} stc_hsspi_dbcnt_field_t;



 



 
 
typedef struct
{
  union {
    volatile uint32_t FASZR;
    stc_flash_if_faszr_field_t FASZR_f;
  };
  union {
    volatile uint32_t FRWTR;
    stc_flash_if_frwtr_field_t FRWTR_f;
  };
  union {
    volatile uint32_t FSTR;
    stc_flash_if_fstr_field_t FSTR_f;
  };
        uint8_t RESERVED1[4];
  union {
    volatile uint32_t FSYNDN;
    stc_flash_if_fsyndn_field_t FSYNDN_f;
  };
  union {
    volatile uint32_t FBFCR;
    stc_flash_if_fbfcr_field_t FBFCR_f;
  };
        uint8_t RESERVED2[8];
  union {
    volatile uint32_t FICR;
    stc_flash_if_ficr_field_t FICR_f;
  };
  union {
    volatile uint32_t FISR;
    stc_flash_if_fisr_field_t FISR_f;
  };
  union {
    volatile uint32_t FICLR;
    stc_flash_if_ficlr_field_t FICLR_f;
  };
        uint8_t RESERVED3[4];
  union {
    volatile uint32_t DFCTRLR;
    stc_flash_if_dfctrlr_field_t DFCTRLR_f;
  };
        uint8_t RESERVED4[204];
  union {
    volatile uint32_t CRTRMM;
    stc_flash_if_crtrmm_field_t CRTRMM_f;
  };
        uint8_t RESERVED5[12];
  union {
    volatile uint32_t FGPDM1;
    stc_flash_if_fgpdm1_field_t FGPDM1_f;
  };
  union {
    volatile uint32_t FGPDM2;
    stc_flash_if_fgpdm2_field_t FGPDM2_f;
  };
  union {
    volatile uint32_t FGPDM3;
    stc_flash_if_fgpdm3_field_t FGPDM3_f;
  };
  union {
    volatile uint32_t FGPDM4;
    stc_flash_if_fgpdm4_field_t FGPDM4_f;
  };
}FM4_FLASH_IF_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t DFASZR;
    stc_dualflash_if_dfaszr_field_t DFASZR_f;
  };
  union {
    volatile uint32_t DFRWTR;
    stc_dualflash_if_dfrwtr_field_t DFRWTR_f;
  };
  union {
    volatile uint32_t DFSTR;
    stc_dualflash_if_dfstr_field_t DFSTR_f;
  };
}FM4_DUALFLASH_IF_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t UIDR0;
    stc_unique_id_uidr0_field_t UIDR0_f;
  };
  union {
    volatile uint32_t UIDR1;
    stc_unique_id_uidr1_field_t UIDR1_f;
  };
}FM4_UNIQUE_ID_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t FERRAD;
    stc_ecc_capture_ferrad_field_t FERRAD_f;
  };
}FM4_ECC_CAPTURE_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t SCM_CTL;
    stc_crg_scm_ctl_field_t SCM_CTL_f;
  };
  union {
    volatile uint32_t SCM_STR;
    stc_crg_scm_str_field_t SCM_STR_f;
  };
  volatile uint32_t STB_CTL;
  union {
    volatile uint32_t RST_STR;
    stc_crg_rst_str_field_t RST_STR_f;
  };
  union {
    volatile uint32_t BSC_PSR;
    stc_crg_bsc_psr_field_t BSC_PSR_f;
  };
  union {
    volatile uint32_t APBC0_PSR;
    stc_crg_apbc0_psr_field_t APBC0_PSR_f;
  };
  union {
    volatile uint32_t APBC1_PSR;
    stc_crg_apbc1_psr_field_t APBC1_PSR_f;
  };
  union {
    volatile uint32_t APBC2_PSR;
    stc_crg_apbc2_psr_field_t APBC2_PSR_f;
  };
  union {
    volatile uint32_t SWC_PSR;
    stc_crg_swc_psr_field_t SWC_PSR_f;
  };
        uint8_t RESERVED7[4];
  union {
    volatile uint32_t TTC_PSR;
    stc_crg_ttc_psr_field_t TTC_PSR_f;
  };
        uint8_t RESERVED8[4];
  union {
    volatile uint32_t CSW_TMR;
    stc_crg_csw_tmr_field_t CSW_TMR_f;
  };
  union {
    volatile uint32_t PSW_TMR;
    stc_crg_psw_tmr_field_t PSW_TMR_f;
  };
  union {
    volatile uint32_t PLL_CTL1;
    stc_crg_pll_ctl1_field_t PLL_CTL1_f;
  };
  union {
    volatile uint32_t PLL_CTL2;
    stc_crg_pll_ctl2_field_t PLL_CTL2_f;
  };
  union {
    volatile uint32_t CSV_CTL;
    stc_crg_csv_ctl_field_t CSV_CTL_f;
  };
  union {
    volatile uint32_t CSV_STR;
    stc_crg_csv_str_field_t CSV_STR_f;
  };
  volatile uint32_t FCSWH_CTL;
  volatile uint32_t FCSWL_CTL;
  volatile uint32_t FCSWD_CTL;
  union {
    volatile uint32_t DBWDT_CTL;
    stc_crg_dbwdt_ctl_field_t DBWDT_CTL_f;
  };
        uint8_t RESERVED18[8];
  union {
    volatile uint32_t INT_ENR;
    stc_crg_int_enr_field_t INT_ENR_f;
  };
  union {
    volatile uint32_t INT_STR;
    stc_crg_int_str_field_t INT_STR_f;
  };
  union {
    volatile  uint8_t INT_CLR;
    stc_crg_int_clr_field_t INT_CLR_f;
  };
}FM4_CRG_TypeDef;



 
 
typedef struct
{
  volatile uint32_t WDG_LDR;
  volatile uint32_t WDG_VLR;
  union {
    volatile uint32_t WDG_CTL;
    stc_hwwdt_wdg_ctl_field_t WDG_CTL_f;
  };
  volatile uint32_t WDG_ICL;
  union {
    volatile uint32_t WDG_RIS;
    stc_hwwdt_wdg_ris_field_t WDG_RIS_f;
  };
        uint8_t RESERVED2[3052];
  volatile uint32_t WDG_LCK;
}FM4_HWWDT_TypeDef;



 
 
typedef struct
{
  volatile uint32_t WDOGLOAD;
  volatile uint32_t WDOGVALUE;
  union {
    volatile uint32_t                 WDOGCONTROL;
    stc_swwdt_wdogcontrol_field_t WDOGCONTROL_f;
  };
  volatile uint32_t WDOGINTCLR;
  union {
    volatile uint32_t             WDOGRIS;
    stc_swwdt_wdogris_field_t WDOGRIS_f;
  };
        uint8_t RESERVED1[4];
  union {
    volatile uint32_t              WDOGSPMC;
    stc_swwdt_wdogspmc_field_t WDOGSPMC_f;
  };
        uint8_t RESERVED2[3044];
  volatile uint32_t WDOGLOCK;
}FM4_SWWDT_TypeDef;



 
 
typedef struct
{
  volatile uint32_t TIMERXLOAD;
  volatile uint32_t TIMERXVALUE;
  union {
    volatile uint32_t                  TIMERXCONTROL;
    stc_dtim_timerXcontrol_field_t TIMERXCONTROL_f;
  };
  volatile uint32_t TIMERXINTCLR;
  union {
    volatile uint32_t              TIMERXRIS;
    stc_dtim_timerXris_field_t TIMERXRIS_f;
  };
  union {
    volatile uint32_t              TIMERXMIS;
    stc_dtim_timerXmis_field_t TIMERXMIS_f;
  };
  volatile uint32_t TIMERXBGLOAD;
        uint8_t RESERVED0[4];
}FM4_DTIM_TypeDef;



 
 
typedef struct
{
        uint8_t RESERVED0[66];
  volatile uint16_t TCCP0;
        uint8_t RESERVED1[2];
  volatile uint16_t TCDT0;
  union {
    volatile uint16_t TCSA0;
    stc_mft_frt_tcsa0_field_t TCSA0_f;
  };
  union {
    volatile uint16_t TCSC0;
    stc_mft_frt_tcsc0_field_t TCSC0_f;
  };
        uint8_t RESERVED2[2];
  volatile uint16_t TCCP1;
        uint8_t RESERVED3[2];
  volatile uint16_t TCDT1;
  union {
    volatile uint16_t TCSA1;
    stc_mft_frt_tcsa1_field_t TCSA1_f;
  };
  union {
    volatile uint16_t TCSC1;
    stc_mft_frt_tcsc1_field_t TCSC1_f;
  };
        uint8_t RESERVED4[2];
  volatile uint16_t TCCP2;
        uint8_t RESERVED5[2];
  volatile uint16_t TCDT2;
  union {
    volatile uint16_t TCSA2;
    stc_mft_frt_tcsa2_field_t TCSA2_f;
  };
  union {
    volatile uint16_t TCSC2;
    stc_mft_frt_tcsc2_field_t TCSC2_f;
  };
  union {
    volatile uint32_t TCAL;
    stc_mft_frt_tcal_field_t TCAL_f;
  };
        uint8_t RESERVED6[132];
  union {
    volatile uint32_t TCSD;
    stc_mft_frt_tcsd_field_t TCSD_f;
  };
}FM4_MFT_FRT_TypeDef;



 
 
typedef struct
{
        uint8_t RESERVED0[2];
  volatile uint16_t OCCP0;
        uint8_t RESERVED1[2];
  volatile uint16_t OCCP1;
        uint8_t RESERVED2[2];
  volatile uint16_t OCCP2;
        uint8_t RESERVED3[2];
  volatile uint16_t OCCP3;
        uint8_t RESERVED4[2];
  volatile uint16_t OCCP4;
        uint8_t RESERVED5[2];
  volatile uint16_t OCCP5;
  union {
    volatile  uint8_t OCSA10;
    stc_mft_ocu_ocsa10_field_t OCSA10_f;
  };
  union {
    volatile  uint8_t OCSB10;
    stc_mft_ocu_ocsb10_field_t OCSB10_f;
  };
  union {
    volatile uint16_t OCSD10;
    stc_mft_ocu_ocsd10_field_t OCSD10_f;
  };
  union {
    volatile  uint8_t OCSA32;
    stc_mft_ocu_ocsa32_field_t OCSA32_f;
  };
  union {
    volatile  uint8_t OCSB32;
    stc_mft_ocu_ocsb32_field_t OCSB32_f;
  };
  union {
    volatile uint16_t OCSD32;
    stc_mft_ocu_ocsd32_field_t OCSD32_f;
  };
  union {
    volatile  uint8_t OCSA54;
    stc_mft_ocu_ocsa54_field_t OCSA54_f;
  };
  union {
    volatile  uint8_t OCSB54;
    stc_mft_ocu_ocsb54_field_t OCSB54_f;
  };
  union {
    volatile uint16_t OCSD54;
    stc_mft_ocu_ocsd54_field_t OCSD54_f;
  };
        uint8_t RESERVED8[1];
  union {
    volatile  uint8_t OCSC;
    stc_mft_ocu_ocsc_field_t OCSC_f;
  };
        uint8_t RESERVED9[2];
  union {
    volatile  uint16_t OCSE0;
    stc_mft_ocu_ocse0_field_t OCSE0_f;
  };
        uint8_t RESERVED10[2];
  union {
    volatile  uint32_t OCSE1;
    stc_mft_ocu_ocse1_field_t OCSE1_f;
  };
  union {
    volatile  uint16_t OCSE2;
    stc_mft_ocu_ocse2_field_t OCSE2_f;
  };
        uint8_t RESERVED11[2];
  union {
    volatile  uint32_t OCSE3;
    stc_mft_ocu_ocse3_field_t OCSE3_f;
  };
  union {
    volatile  uint16_t OCSE4;
    stc_mft_ocu_ocse4_field_t OCSE4_f;
  };
        uint8_t RESERVED12[2];
  union {
    volatile  uint32_t OCSE5;
    stc_mft_ocu_ocse5_field_t OCSE5_f;
  };
        uint8_t RESERVED13[40];
  union {
    volatile  uint8_t OCFS10;
    stc_mft_ocu_ocfs10_field_t OCFS10_f;
  };
  union {
    volatile  uint8_t OCFS32;
    stc_mft_ocu_ocfs32_field_t OCFS32_f;
  };
  union {
    volatile  uint8_t OCFS54;
    stc_mft_ocu_ocfs54_field_t OCFS54_f;
  };
}FM4_MFT_OCU_TypeDef;



 
 
typedef struct
{
        uint8_t RESERVED0[142];
  volatile uint16_t WFTF10;
  volatile uint16_t WFTA10;
  volatile uint16_t WFTB10;
        uint8_t RESERVED1[2];
  volatile uint16_t WFTF32;
  volatile uint16_t WFTA32;
  volatile uint16_t WFTB32;
        uint8_t RESERVED2[2];
  volatile uint16_t WFTF54;
  volatile uint16_t WFTA54;
  volatile uint16_t WFTB54;
  union {
    volatile uint16_t WFSA10;
    stc_mft_wfg_wfsa10_field_t WFSA10_f;
  };
        uint8_t RESERVED3[2];
  union {
    volatile uint16_t WFSA32;
    stc_mft_wfg_wfsa32_field_t WFSA32_f;
  };
        uint8_t RESERVED4[2];
  union {
    volatile uint16_t WFSA54;
    stc_mft_wfg_wfsa54_field_t WFSA54_f;
  };
        uint8_t RESERVED5[2];
  union {
    volatile uint16_t WFIR;
    stc_mft_wfg_wfir_field_t WFIR_f;
  };
        uint8_t RESERVED6[2];
  union {
    volatile uint16_t NZCL;
    stc_mft_wfg_nzcl_field_t NZCL_f;
  };
}FM4_MFT_WFG_TypeDef;



 
 
typedef struct
{
        uint8_t RESERVED0[108];
  union {
    volatile  uint8_t ICFS10;
    stc_mft_icu_icfs10_field_t ICFS10_f;
  };
  union {
    volatile  uint8_t ICFS32;
    stc_mft_icu_icfs32_field_t ICFS32_f;
  };
        uint8_t RESERVED1[8];
  volatile uint16_t ICCP0;
        uint8_t RESERVED2[2];
  volatile uint16_t ICCP1;
        uint8_t RESERVED3[2];
  volatile uint16_t ICCP2;
        uint8_t RESERVED4[2];
  volatile uint16_t ICCP3;
  union {
    volatile  uint8_t ICSA10;
    stc_mft_icu_icsa10_field_t ICSA10_f;
  };
  union {
    volatile  uint8_t ICSB10;
    stc_mft_icu_icsb10_field_t ICSB10_f;
  };
        uint8_t RESERVED6[2];
  union {
    volatile  uint8_t ICSA32;
    stc_mft_icu_icsa32_field_t ICSA32_f;
  };
  union {
    volatile  uint8_t ICSB32;
    stc_mft_icu_icsb32_field_t ICSB32_f;
  };
}FM4_MFT_ICU_TypeDef;



 
 
typedef struct
{
        uint8_t RESERVED0[112];
  union {
    volatile  uint8_t ACFS10;
    stc_mft_adcmp_acfs10_field_t ACFS10_f;
  };
  union {
    volatile  uint8_t ACFS32;
    stc_mft_adcmp_acfs32_field_t ACFS32_f;
  };
  union {
    volatile  uint8_t ACFS54;
    stc_mft_adcmp_acfs54_field_t ACFS54_f;
  };
        uint8_t RESERVED1[71];
  volatile uint16_t ACMP0;
        uint8_t RESERVED2[2];
  volatile uint16_t ACMP1;
        uint8_t RESERVED3[2];
  volatile uint16_t ACMP2;
        uint8_t RESERVED4[2];
  volatile uint16_t ACMP3;
        uint8_t RESERVED5[2];
  volatile uint16_t ACMP4;
        uint8_t RESERVED6[2];
  volatile uint16_t ACMP5;
  union {
    volatile  uint16_t ACSA;
    stc_mft_adcmp_acsa_field_t ACSA_f;
  };
        uint8_t RESERVED7[2];
  union {
    volatile  uint8_t ACSC0;
    stc_mft_adcmp_acsc_field_t ACSC0_f;
  };
  union {
    volatile  uint8_t ACSD0;
    stc_mft_adcmp_acsd_field_t ACSD0_f;
  };
  union {
    volatile  uint8_t ACMC0;
    stc_mft_adcmp_acmc_field_t ACMC0_f;
  };
        uint8_t RESERVED8[1];
  union {
    volatile  uint8_t ACSC1;
    stc_mft_adcmp_acsc_field_t ACSC1_f;
  };
  union {
    volatile  uint8_t ACSD1;
    stc_mft_adcmp_acsd_field_t ACSD1_f;
  };
  union {
    volatile  uint8_t ACMC1;
    stc_mft_adcmp_acmc_field_t ACMC1_f;
  };
        uint8_t RESERVED9[1];
  union {
    volatile  uint8_t ACSC2;
    stc_mft_adcmp_acsc_field_t ACSC2_f;
  };
  union {
    volatile  uint8_t ACSD2;
    stc_mft_adcmp_acsd_field_t ACSD2_f;
  };
  union {
    volatile  uint8_t ACMC2;
    stc_mft_adcmp_acmc_field_t ACMC2_f;
  };
        uint8_t RESERVED10[1];
  union {
    volatile  uint8_t ACSC3;
    stc_mft_adcmp_acsc_field_t ACSC3_f;
  };
  union {
    volatile  uint8_t ACSD3;
    stc_mft_adcmp_acsd_field_t ACSD3_f;
  };
  union {
    volatile  uint8_t ACMC3;
    stc_mft_adcmp_acmc_field_t ACMC3_f;
  };
        uint8_t RESERVED11[1];
  union {
    volatile  uint8_t ACSC4;
    stc_mft_adcmp_acsc_field_t ACSC4_f;
  };
  union {
    volatile  uint8_t ACSD4;
    stc_mft_adcmp_acsd_field_t ACSD4_f;
  };
  union {
    volatile  uint8_t ACMC4;
    stc_mft_adcmp_acmc_field_t ACMC4_f;
  };
        uint8_t RESERVED12[1];
  union {
    volatile  uint8_t ACSC5;
    stc_mft_adcmp_acsc_field_t ACSC5_f;
  };
  union {
    volatile  uint8_t ACSD5;
    stc_mft_adcmp_acsd_field_t ACSD5_f;
  };
  union {
    volatile  uint8_t ACMC5;
    stc_mft_adcmp_acmc_field_t ACMC5_f;
  };
        uint8_t RESERVED13[1];
}FM4_MFT_ADCMP_TypeDef;



 
 
typedef struct
{
        uint8_t RESERVED0;
  union {
    volatile  uint8_t TTCR0;
    stc_mft_ppg_ttcr0_field_t TTCR0_f;
  };
        uint8_t RESERVED1[2];
  volatile  uint8_t TSTPR0;
        uint8_t RESERVED3[4];
  volatile  uint8_t COMP0;
        uint8_t RESERVED4[2];
  volatile  uint8_t COMP2;
        uint8_t RESERVED5[4];
  volatile  uint8_t COMP4;
        uint8_t RESERVED6[2];
  volatile  uint8_t COMP6;
        uint8_t RESERVED7[12];
  union {
    volatile  uint8_t TTCR1;
    stc_mft_ppg_ttcr1_field_t TTCR1_f;
  };
        uint8_t RESERVED8[2];
  volatile  uint8_t TSTPR1;
        uint8_t RESERVED9[4];
  volatile  uint8_t COMP1;
        uint8_t RESERVED10[2];
  volatile  uint8_t COMP3;
        uint8_t RESERVED11[4];
  volatile  uint8_t COMP5;
        uint8_t RESERVED12[2];
  volatile  uint8_t COMP7;
        uint8_t RESERVED13[12];
  union {
    volatile  uint8_t TTCR2;
    stc_mft_ppg_ttcr2_field_t TTCR2_f;
  };
        uint8_t RESERVED14[2];
  volatile  uint8_t TSTPR2;
        uint8_t RESERVED15[4];
  volatile  uint8_t COMP8;
        uint8_t RESERVED16[2];
  volatile  uint8_t COMP10;
        uint8_t RESERVED17[4];
  volatile  uint8_t COMP12;
        uint8_t RESERVED18[2];
  volatile  uint8_t COMP14;
        uint8_t RESERVED19[171];
  union {
    volatile uint16_t TRG0;
    stc_mft_ppg_trg0_field_t TRG0_f;
  };
        uint8_t RESERVED20[2];
  union {
    volatile uint16_t REVC0;
    stc_mft_ppg_revc0_field_t REVC0_f;
  };
        uint8_t RESERVED21[58];
  union {
    volatile uint16_t TRG1;
    stc_mft_ppg_trg1_field_t TRG1_f;
  };
        uint8_t RESERVED22[2];
  union {
    volatile uint16_t REVC1;
    stc_mft_ppg_revc1_field_t REVC1_f;
  };
        uint8_t RESERVED23[186];
  union {
    volatile  uint8_t PPGC1;
    stc_mft_ppg_ppgc1_field_t PPGC1_f;
  };
  union {
    volatile  uint8_t PPGC0;
    stc_mft_ppg_ppgc0_field_t PPGC0_f;
  };
        uint8_t RESERVED24[2];
  union {
    volatile  uint8_t PPGC3;
    stc_mft_ppg_ppgc3_field_t PPGC3_f;
  };
  union {
    volatile  uint8_t PPGC2;
    stc_mft_ppg_ppgc2_field_t PPGC2_f;
  };
        uint8_t RESERVED25[2];
  union {
    volatile uint16_t PRL0;
    struct {
      volatile  uint8_t PRLL0;
      volatile  uint8_t PRLH0;
    };
  };
        uint8_t RESERVED26[2];
  union {
    volatile uint16_t PRL1;
    struct {
      volatile  uint8_t PRLL1;
      volatile  uint8_t PRLH1;
    };
  };
        uint8_t RESERVED27[2];
  union {
    volatile uint16_t PRL2;
    struct {
      volatile  uint8_t PRLL2;
      volatile  uint8_t PRLH2;
    };
  };
        uint8_t RESERVED28[2];
  union {
    volatile uint16_t PRL3;
    struct {
      volatile  uint8_t PRLL3;
      volatile  uint8_t PRLH3;
    };
  };
        uint8_t RESERVED29[2];
  union {
    volatile  uint8_t GATEC0;
    stc_mft_ppg_gatec0_field_t GATEC0_f;
  };
        uint8_t RESERVED30[39];
  union {
    volatile  uint8_t PPGC5;
    stc_mft_ppg_ppgc5_field_t PPGC5_f;
  };
  union {
    volatile  uint8_t PPGC4;
    stc_mft_ppg_ppgc4_field_t PPGC4_f;
  };
        uint8_t RESERVED31[2];
  union {
    volatile  uint8_t PPGC7;
    stc_mft_ppg_ppgc7_field_t PPGC7_f;
  };
  union {
    volatile  uint8_t PPGC6;
    stc_mft_ppg_ppgc6_field_t PPGC6_f;
  };
        uint8_t RESERVED32[2];
  union {
    volatile uint16_t PRL4;
    struct {
      volatile  uint8_t PRLL4;
      volatile  uint8_t PRLH4;
    };
  };
        uint8_t RESERVED33[2];
  union {
    volatile uint16_t PRL5;
    struct {
      volatile  uint8_t PRLL5;
      volatile  uint8_t PRLH5;
    };
  };
        uint8_t RESERVED34[2];
  union {
    volatile uint16_t PRL6;
    struct {
      volatile  uint8_t PRLL6;
      volatile  uint8_t PRLH6;
    };
  };
        uint8_t RESERVED35[2];
  union {
    volatile uint16_t PRL7;
    struct {
      volatile  uint8_t PRLL7;
      volatile  uint8_t PRLH7;
    };
  };
        uint8_t RESERVED36[2];
  union {
    volatile  uint8_t GATEC4;
    stc_mft_ppg_gatec4_field_t GATEC4_f;
  };
        uint8_t RESERVED37[39];
  union {
    volatile  uint8_t PPGC9;
    stc_mft_ppg_ppgc9_field_t PPGC9_f;
  };
  union {
    volatile  uint8_t PPGC8;
    stc_mft_ppg_ppgc8_field_t PPGC8_f;
  };
        uint8_t RESERVED38[2];
  union {
    volatile  uint8_t PPGC11;
    stc_mft_ppg_ppgc11_field_t PPGC11_f;
  };
  union {
    volatile  uint8_t PPGC10;
    stc_mft_ppg_ppgc10_field_t PPGC10_f;
  };
        uint8_t RESERVED39[2];
  union {
    volatile uint16_t PRL8;
    struct {
      volatile  uint8_t PRLL8;
      volatile  uint8_t PRLH8;
    };
  };
        uint8_t RESERVED40[2];
  union {
    volatile uint16_t PRL9;
    struct {
      volatile  uint8_t PRLL9;
      volatile  uint8_t PRLH9;
    };
  };
        uint8_t RESERVED41[2];
  union {
    volatile uint16_t PRL10;
    struct {
      volatile  uint8_t PRLL10;
      volatile  uint8_t PRLH10;
    };
  };
        uint8_t RESERVED42[2];
  union {
    volatile uint16_t PRL11;
    struct {
      volatile  uint8_t PRLL11;
      volatile  uint8_t PRLH11;
    };
  };
        uint8_t RESERVED43[2];
  union {
    volatile  uint8_t GATEC8;
    stc_mft_ppg_gatec8_field_t GATEC8_f;
  };
        uint8_t RESERVED44[39];
  union {
    volatile  uint8_t PPGC13;
    stc_mft_ppg_ppgc13_field_t PPGC13_f;
  };
  union {
    volatile  uint8_t PPGC12;
    stc_mft_ppg_ppgc12_field_t PPGC12_f;
  };
        uint8_t RESERVED45[2];
  union {
    volatile  uint8_t PPGC15;
    stc_mft_ppg_ppgc15_field_t PPGC15_f;
  };
  union {
    volatile  uint8_t PPGC14;
    stc_mft_ppg_ppgc14_field_t PPGC14_f;
  };
        uint8_t RESERVED46[2];
  union {
    volatile uint16_t PRL12;
    struct {
      volatile  uint8_t PRLL12;
      volatile  uint8_t PRLH12;
    };
  };
        uint8_t RESERVED47[2];
  union {
    volatile uint16_t PRL13;
    struct {
      volatile  uint8_t PRLL13;
      volatile  uint8_t PRLH13;
    };
  };
        uint8_t RESERVED48[2];
  union {
    volatile uint16_t PRL14;
    struct {
      volatile  uint8_t PRLL14;
      volatile  uint8_t PRLH14;
    };
  };
        uint8_t RESERVED49[2];
  union {
    volatile uint16_t PRL15;
    struct {
      volatile  uint8_t PRLL15;
      volatile  uint8_t PRLH15;
    };
  };
        uint8_t RESERVED50[2];
  union {
    volatile  uint8_t GATEC12;
    stc_mft_ppg_gatec12_field_t GATEC12_f;
  };
        uint8_t RESERVED51[39];
  union {
    volatile  uint8_t PPGC17;
    stc_mft_ppg_ppgc17_field_t PPGC17_f;
  };
  union {
    volatile  uint8_t PPGC16;
    stc_mft_ppg_ppgc16_field_t PPGC16_f;
  };
        uint8_t RESERVED52[2];
  union {
    volatile  uint8_t PPGC19;
    stc_mft_ppg_ppgc19_field_t PPGC19_f;
  };
  union {
    volatile  uint8_t PPGC18;
    stc_mft_ppg_ppgc18_field_t PPGC18_f;
  };
        uint8_t RESERVED53[2];
  union {
    volatile uint16_t PRL16;
    struct {
      volatile  uint8_t PRLL16;
      volatile  uint8_t PRLH16;
    };
  };
        uint8_t RESERVED54[2];
  union {
    volatile uint16_t PRL17;
    struct {
      volatile  uint8_t PRLL17;
      volatile  uint8_t PRLH17;
    };
  };
        uint8_t RESERVED55[2];
  union {
    volatile uint16_t PRL18;
    struct {
      volatile  uint8_t PRLL18;
      volatile  uint8_t PRLH18;
    };
  };
        uint8_t RESERVED56[2];
  union {
    volatile uint16_t PRL19;
    struct {
      volatile  uint8_t PRLL19;
      volatile  uint8_t PRLH19;
    };
  };
        uint8_t RESERVED57[2];
  union {
    volatile  uint8_t GATEC16;
    stc_mft_ppg_gatec16_field_t GATEC16_f;
  };
        uint8_t RESERVED58[39];
  union {
    volatile  uint8_t PPGC21;
    stc_mft_ppg_ppgc21_field_t PPGC21_f;
  };
  union {
    volatile  uint8_t PPGC20;
    stc_mft_ppg_ppgc20_field_t PPGC20_f;
  };
        uint8_t RESERVED59[2];
  union {
    volatile  uint8_t PPGC23;
    stc_mft_ppg_ppgc23_field_t PPGC23_f;
  };
  union {
    volatile  uint8_t PPGC22;
    stc_mft_ppg_ppgc22_field_t PPGC22_f;
  };
        uint8_t RESERVED60[2];
  union {
    volatile uint16_t PRL20;
    struct {
      volatile  uint8_t PRLL20;
      volatile  uint8_t PRLH20;
    };
  };
        uint8_t RESERVED61[2];
  union {
    volatile uint16_t PRL21;
    struct {
      volatile  uint8_t PRLL21;
      volatile  uint8_t PRLH21;
    };
  };
        uint8_t RESERVED62[2];
  union {
    volatile uint16_t PRL22;
    struct {
      volatile  uint8_t PRLL22;
      volatile  uint8_t PRLH22;
    };
  };
        uint8_t RESERVED63[2];
  union {
    volatile uint16_t PRL23;
    struct {
      volatile  uint8_t PRLL23;
      volatile  uint8_t PRLH23;
    };
  };
        uint8_t RESERVED64[2];
  union {
    volatile  uint8_t GATEC20;
    stc_mft_ppg_gatec20_field_t GATEC20_f;
  };
        uint8_t RESERVED65[39];
  volatile  uint8_t IGBTC;
        uint8_t RESERVED66[39];
}FM4_MFT_PPG_TypeDef;



 
 
typedef struct
{
  volatile uint16_t PRLL;
        uint8_t RESERVED0[2];
  volatile uint16_t PRLH;
        uint8_t RESERVED1[2];
  volatile uint16_t TMR;
        uint8_t RESERVED2[2];
  union {
    volatile uint16_t TMCR;
    stc_bt_ppg_tmcr_field_t TMCR_f;
  };
        uint8_t RESERVED3[2];
  union {
    volatile  uint8_t STC;
    stc_bt_ppg_stc_field_t STC_f;
  };
  union {
    volatile  uint8_t TMCR2;
    stc_bt_ppg_tmcr2_field_t TMCR2_f;
  };
}FM4_BT_PPG_TypeDef;



 
 
typedef struct
{
  volatile uint16_t PCSR;
        uint8_t RESERVED0[2];
  volatile uint16_t PDUT;
        uint8_t RESERVED1[2];
  volatile uint16_t TMR;
        uint8_t RESERVED2[2];
  union {
    volatile uint16_t TMCR;
    stc_bt_pwm_tmcr_field_t TMCR_f;
  };
        uint8_t RESERVED3[2];
  union {
    volatile  uint8_t STC;
    stc_bt_pwm_stc_field_t STC_f;
  };
  union {
    volatile  uint8_t TMCR2;
    stc_bt_pwm_tmcr2_field_t TMCR2_f;
  };
}FM4_BT_PWM_TypeDef;



 
 
typedef struct
{
  volatile uint16_t PCSR;
        uint8_t RESERVED0[6];
  volatile uint16_t TMR;
        uint8_t RESERVED1[2];
  union {
    volatile uint16_t TMCR;
    stc_bt_rt_tmcr_field_t TMCR_f;
  };
        uint8_t RESERVED2[2];
  union {
    volatile  uint8_t STC;
    stc_bt_rt_stc_field_t STC_f;
  };
  union {
    volatile  uint8_t TMCR2;
    stc_bt_rt_tmcr2_field_t TMCR2_f;
  };
}FM4_BT_RT_TypeDef;



 
 
typedef struct
{
        uint8_t RESERVED0[4];
  volatile uint16_t DTBF;
        uint8_t RESERVED1[6];
  union {
    volatile uint16_t TMCR;
    stc_bt_pwc_tmcr_field_t TMCR_f;
  };
        uint8_t RESERVED2[2];
  union {
    volatile  uint8_t STC;
    stc_bt_pwc_stc_field_t STC_f;
  };
  union {
    volatile  uint8_t TMCR2;
    stc_bt_pwc_tmcr2_field_t TMCR2_f;
  };
}FM4_BT_PWC_TypeDef;



 
 
typedef struct
{
        uint8_t RESERVED0;
  union {
    volatile  uint8_t BTSEL0123;
    stc_btiosel03_btsel0123_field_t BTSEL0123_f;
  };
}FM4_BTIOSEL03_TypeDef;



 
 
typedef struct
{
        uint8_t RESERVED0;
  union {
    volatile  uint8_t BTSEL4567;
    stc_btiosel47_btsel4567_field_t BTSEL4567_f;
  };
}FM4_BTIOSEL47_TypeDef;



 
 
typedef struct
{
        uint8_t RESERVED0;
  union {
    volatile  uint8_t BTSEL89AB;
    stc_btiosel8b_btsel89ab_field_t BTSEL89AB_f;
  };
}FM4_BTIOSEL8B_TypeDef;



 
 
typedef struct
{
        uint8_t RESERVED0;
  union {
    volatile  uint8_t BTSELCDEF;
    stc_btioselcf_btselcdef_field_t BTSELCDEF_f;
  };
}FM4_BTIOSELCF_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint16_t BTSSSR;
    stc_sbssr_btsssr_field_t BTSSSR_f;
  };
}FM4_SBSSR_TypeDef;



 
 
typedef struct
{
  volatile uint16_t QPCR;
        uint8_t RESERVED0[2];
  volatile uint16_t QRCR;
        uint8_t RESERVED1[2];
  volatile uint16_t QPCCR;
        uint8_t RESERVED2[2];
  volatile uint16_t QPRCR;
        uint8_t RESERVED3[2];
  volatile uint16_t QMPR;
        uint8_t RESERVED4[2];
  union {
    union {
      volatile uint16_t QICR;
      stc_qprc_qicr_field_t QICR_f;
    };
    struct {
      union {
        volatile  uint8_t QICRL;
        stc_qprc_qicrl_field_t QICRL_f;
      };
      union {
        volatile  uint8_t QICRH;
        stc_qprc_qicrh_field_t QICRH_f;
      };
    };
  };
        uint8_t RESERVED5[2];
  union {
    union {
      volatile uint16_t QCR;
      stc_qprc_qcr_field_t QCR_f;
    };
    struct {
      union {
        volatile  uint8_t QCRL;
        stc_qprc_qcrl_field_t QCRL_f;
      };
      union {
        volatile  uint8_t QCRH;
        stc_qprc_qcrh_field_t QCRH_f;
      };
    };
  };
        uint8_t RESERVED6[2];
  union {
    volatile uint16_t QECR;
    stc_qprc_qecr_field_t QECR_f;
  };
        uint8_t RESERVED7[30];
  union {
    volatile uint32_t QPRCRR;
    struct {
      volatile uint16_t QRCRR;
      volatile uint16_t QPCRR;
    };
  };
}FM4_QPRC_TypeDef;



 
 
typedef struct
{
  union {
    volatile  uint8_t NFCTLA;
    stc_qprc_nf_nfctla_field_t NFCTLA_f;
  };
        uint8_t RESERVED0[3];
  union {
    volatile  uint8_t NFCTLB;
    stc_qprc_nf_nfctlb_field_t NFCTLB_f;
  };
        uint8_t RESERVED1[3];
  union {
    volatile  uint8_t NFRCTLZ;
    stc_qprc_nf_nfrctlz_field_t NFRCTLZ_f;
  };
        uint8_t RESERVED2[7];
}FM4_QPRC_NF_TypeDef;



 
 
typedef struct
{
  union {
    volatile  uint8_t ADSR;
    stc_adc_adsr_field_t ADSR_f;
  };
  union {
    volatile  uint8_t ADCR;
    stc_adc_adcr_field_t ADCR_f;
  };
        uint8_t RESERVED0[6];
  union {
    volatile  uint8_t SFNS;
    stc_adc_sfns_field_t SFNS_f;
  };
  union {
    volatile  uint8_t SCCR;
    stc_adc_sccr_field_t SCCR_f;
  };
        uint8_t RESERVED1[2];
  union {
    union {
      volatile uint32_t SCFD;
      stc_adc_scfd_field_t SCFD_f;
    };
    struct {
      union {
        volatile uint16_t SCFDL;
        stc_adc_scfdl_field_t SCFDL_f;
      };
      union {
        volatile uint16_t SCFDH;
        stc_adc_scfdh_field_t SCFDH_f;
      };
    };
  };
  union {
    union {
      volatile uint16_t SCIS23;
      stc_adc_scis23_field_t SCIS23_f;
    };
    struct {
      union {
        volatile  uint8_t SCIS2;
        stc_adc_scis2_field_t SCIS2_f;
      };
      union {
        volatile  uint8_t SCIS3;
        stc_adc_scis3_field_t SCIS3_f;
      };
    };
  };
        uint8_t RESERVED2[2];
  union {
    union {
      volatile uint16_t SCIS01;
      stc_adc_scis01_field_t SCIS01_f;
    };
    struct {
      union {
        volatile  uint8_t SCIS0;
        stc_adc_scis0_field_t SCIS0_f;
      };
      union {
        volatile  uint8_t SCIS1;
        stc_adc_scis1_field_t SCIS1_f;
      };
    };
  };
        uint8_t RESERVED3[2];
  union {
    volatile  uint8_t PFNS;
    stc_adc_pfns_field_t PFNS_f;
  };
  union {
    volatile  uint8_t PCCR;
    stc_adc_pccr_field_t PCCR_f;
  };
        uint8_t RESERVED4[2];
  union {
    union {
      volatile uint32_t PCFD;
      stc_adc_pcfd_field_t PCFD_f;
    };
    struct {
      union {
        volatile uint16_t PCFDL;
        stc_adc_pcfdl_field_t PCFDL_f;
      };
      union {
        volatile uint16_t PCFDH;
        stc_adc_pcfdh_field_t PCFDH_f;
      };
    };
  };
  union {
    volatile  uint8_t PCIS;
    stc_adc_pcis_field_t PCIS_f;
  };
        uint8_t RESERVED5[3];
  union {
    volatile  uint8_t CMPCR;
    stc_adc_cmpcr_field_t CMPCR_f;
  };
        uint8_t RESERVED6;
  union {
    volatile uint16_t CMPD;
    stc_adc_cmpd_field_t CMPD_f;
  };
  union {
    union {
      volatile uint16_t ADSS23;
      stc_adc_adss23_field_t ADSS23_f;
    };
    struct {
      union {
        volatile  uint8_t ADSS2;
        stc_adc_adss2_field_t ADSS2_f;
      };
      union {
        volatile  uint8_t ADSS3;
        stc_adc_adss3_field_t ADSS3_f;
      };
    };
  };
        uint8_t RESERVED7[2];
  union {
    union {
      volatile uint16_t ADSS01;
      stc_adc_adss01_field_t ADSS01_f;
    };
    struct {
      union {
        volatile  uint8_t ADSS0;
        stc_adc_adss0_field_t ADSS0_f;
      };
      union {
        volatile  uint8_t ADSS1;
        stc_adc_adss1_field_t ADSS1_f;
      };
    };
  };
        uint8_t RESERVED8[2];
  union {
    union {
      volatile uint16_t ADST01;
      stc_adc_adst01_field_t ADST01_f;
    };
    struct {
      union {
        volatile  uint8_t ADST1;
        stc_adc_adst1_field_t ADST1_f;
      };
      union {
        volatile  uint8_t ADST0;
        stc_adc_adst0_field_t ADST0_f;
      };
    };
  };
        uint8_t RESERVED9[2];
  union {
    volatile  uint8_t ADCT;
    stc_adc_adct_field_t ADCT_f;
  };
        uint8_t RESERVED10[3];
  union {
    volatile  uint8_t PRTSL;
    stc_adc_prtsl_field_t PRTSL_f;
  };
  union {
    volatile  uint8_t SCTSL;
    stc_adc_sctsl_field_t SCTSL_f;
  };
        uint8_t RESERVED11[2];
  union {
    volatile  uint16_t ADCEN;
    stc_adc_adcen_field_t ADCEN_f;
  };
        uint8_t  RESERVED12[2];
        uint32_t OFFESET;
  union {
    volatile uint8_t WCMRCOT;
    stc_adc_wcmrcot_field_t WCMRCOT_f;
  };
        uint8_t  RESERVED13[3];
  union {
    volatile uint8_t WCMRCIF;
    stc_adc_wcmrcif_field_t WCMRCIF_f;
  };
        uint8_t  RESERVED14[3];
  union {
    volatile uint8_t WCMPCR;
    stc_adc_wcmpcr_field_t WCMPCR_f;
  };
  union {
    volatile uint8_t WCMPSR;
    stc_adc_wcmpsr_field_t WCMPSR_f;
  };
        uint8_t  RESERVED15[2];
  union {
    volatile uint16_t WCMPDL;
    stc_adc_wcmpdl_field_t WCMPDL_f;
  };
  union {
    volatile uint16_t WCMPDH;
    stc_adc_wcmpdh_field_t WCMPDH_f;
  };
}FM4_ADC_TypeDef;



 

typedef struct
{
  union {
    volatile uint8_t      DACR;
    stc_dacr_field_t  DACR_f;
  };
        uint8_t RESERVED0[3];
  union {
    volatile uint16_t     DADR;
    stc_dadr_field_t  DADR_f;
  };
}FM4_DAC_TypeDef;



 
 
typedef struct
{
  union {
    volatile  uint8_t MCR_PSR;
    stc_crtrim_mcr_psr_field_t MCR_PSR_f;
  };
        uint8_t RESERVED0[3];
  union {
    volatile uint16_t MCR_FTRM;
    stc_crtrim_mcr_ftrm_field_t MCR_FTRM_f;
  };
       uint8_t RESERVED1[2];
  union {
    volatile  uint8_t MCR_TTRM;
    stc_crtrim_mcr_ttrm_field_t MCR_TTRM_f;
  };
       uint8_t RESERVED2[3];
  union {
    volatile uint32_t MCR_RLR;
    stc_crtrim_mcr_rlr_field_t MCR_RLR_f;
  };
}FM4_CRTRIM_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t ENIR;
    stc_exti_enir_field_t ENIR_f;
  };
  union {
    volatile uint32_t EIRR;
    stc_exti_eirr_field_t EIRR_f;
  };
  union {
    volatile uint32_t EICL;
    stc_exti_eicl_field_t EICL_f;
  };
  union {
    volatile uint32_t ELVR;
    stc_exti_elvr_field_t ELVR_f;
  };
  union {
    volatile uint32_t ELVR1;
    stc_exti_elvr1_field_t ELVR1_f;
  };
  union {
    volatile  uint8_t NMIRR;
    stc_exti_nmirr_field_t NMIRR_f;
  };
       uint8_t RESERVED5[3];
  union {
    volatile  uint8_t NMICL;
    stc_exti_nmicl_field_t NMICL_f;
  };
}FM4_EXTI_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t DRQSEL;
    stc_intreq_drqsel_field_t DRQSEL_f;
  };
        uint8_t RESERVED1[12];
  union {
    volatile  uint8_t ODDPKS;
    stc_intreq_oddpks_field_t ODDPKS_f;
  };
        uint8_t RESERVED2[3];
  union {
    volatile  uint8_t ODDPKS1;
    stc_intreq_oddpks1_field_t ODDPKS1_f;
  };
        uint8_t RESERVED3[251];
  union {
    volatile uint32_t IRQ003SEL;
    stc_intreq_irq003sel_field_t IRQ003SEL_f;
  };
  union {
    volatile uint32_t IRQ004SEL;
    stc_intreq_irq004sel_field_t IRQ004SEL_f;
  };
  union {
    volatile uint32_t IRQ005SEL;
    stc_intreq_irq005sel_field_t IRQ005SEL_f;
  };
  union {
    volatile uint32_t IRQ006SEL;
    stc_intreq_irq006sel_field_t IRQ006SEL_f;
  };
  union {
    volatile uint32_t IRQ007SEL;
    stc_intreq_irq007sel_field_t IRQ007SEL_f;
  };
  union {
    volatile uint32_t IRQ008SEL;
    stc_intreq_irq008sel_field_t IRQ008SEL_f;
  };
  union {
    volatile uint32_t IRQ009SEL;
    stc_intreq_irq009sel_field_t IRQ009SEL_f;
  };
  union {
    volatile uint32_t IRQ010SEL;
    stc_intreq_irq010sel_field_t IRQ010SEL_f;
  };
        uint8_t RESERVED4[208];
  union {
    volatile uint32_t EXC02MON;
    stc_intreq_exc02mon_field_t EXC02MON_f;
  };
  union {
    volatile uint32_t IRQ000MON;
    stc_intreq_irq000mon_field_t IRQ000MON_f;
  };
  union {
    volatile uint32_t IRQ001MON;
    stc_intreq_irq001mon_field_t IRQ001MON_f;
  };
  union {
    volatile uint32_t IRQ002MON;
    stc_intreq_irq002mon_field_t IRQ002MON_f;
  };
  union {
    volatile uint32_t IRQ003MON;
    stc_intreq_irq003mon_field_t IRQ003MON_f;
  };
  union {
    volatile uint32_t IRQ004MON;
    stc_intreq_irq004mon_field_t IRQ004MON_f;
  };
  union {
    volatile uint32_t IRQ005MON;
    stc_intreq_irq005mon_field_t IRQ005MON_f;
  };
  union {
    volatile uint32_t IRQ006MON;
    stc_intreq_irq006mon_field_t IRQ006MON_f;
  };
  union {
    volatile uint32_t IRQ007MON;
    stc_intreq_irq007mon_field_t IRQ007MON_f;
  };
  union {
    volatile uint32_t IRQ008MON;
    stc_intreq_irq008mon_field_t IRQ008MON_f;
  };
  union {
    volatile uint32_t IRQ009MON;
    stc_intreq_irq009mon_field_t IRQ009MON_f;
  };
  union {
    volatile uint32_t IRQ010MON;
    stc_intreq_irq010mon_field_t IRQ010MON_f;
  };
  union {
    volatile uint32_t IRQ011MON;
    stc_intreq_irq011mon_field_t IRQ011MON_f;
  };
  union {
    volatile uint32_t IRQ012MON;
    stc_intreq_irq012mon_field_t IRQ012MON_f;
  };
  union {
    volatile uint32_t IRQ013MON;
    stc_intreq_irq013mon_field_t IRQ013MON_f;
  };
  union {
    volatile uint32_t IRQ014MON;
    stc_intreq_irq014mon_field_t IRQ014MON_f;
  };
  union {
    volatile uint32_t IRQ015MON;
    stc_intreq_irq015mon_field_t IRQ015MON_f;
  };
  union {
    volatile uint32_t IRQ016MON;
    stc_intreq_irq016mon_field_t IRQ016MON_f;
  };
  union {
    volatile uint32_t IRQ017MON;
    stc_intreq_irq017mon_field_t IRQ017MON_f;
  };
  union {
    volatile uint32_t IRQ018MON;
    stc_intreq_irq018mon_field_t IRQ018MON_f;
  };
  union {
    volatile uint32_t IRQ019MON;
    stc_intreq_irq019mon_field_t IRQ019MON_f;
  };
  union {
    volatile uint32_t IRQ020MON;
    stc_intreq_irq020mon_field_t IRQ020MON_f;
  };
  union {
    volatile uint32_t IRQ021MON;
    stc_intreq_irq021mon_field_t IRQ021MON_f;
  };
  union {
    volatile uint32_t IRQ022MON;
    stc_intreq_irq022mon_field_t IRQ022MON_f;
  };
  union {
    volatile uint32_t IRQ023MON;
    stc_intreq_irq023mon_field_t IRQ023MON_f;
  };
  union {
    volatile uint32_t IRQ024MON;
    stc_intreq_irq024mon_field_t IRQ024MON_f;
  };
  union {
    volatile uint32_t IRQ025MON;
    stc_intreq_irq025mon_field_t IRQ025MON_f;
  };
  union {
    volatile uint32_t IRQ026MON;
    stc_intreq_irq026mon_field_t IRQ026MON_f;
  };
  union {
    volatile uint32_t IRQ027MON;
    stc_intreq_irq027mon_field_t IRQ027MON_f;
  };
  union {
    volatile uint32_t IRQ028MON;
    stc_intreq_irq028mon_field_t IRQ028MON_f;
  };
  union {
    volatile uint32_t IRQ029MON;
    stc_intreq_irq029mon_field_t IRQ029MON_f;
  };
  union {
    volatile uint32_t IRQ030MON;
    stc_intreq_irq030mon_field_t IRQ030MON_f;
  };
  union {
    volatile uint32_t IRQ031MON;
    stc_intreq_irq031mon_field_t IRQ031MON_f;
  };
  union {
    volatile uint32_t IRQ032MON;
    stc_intreq_irq032mon_field_t IRQ032MON_f;
  };
  union {
    volatile uint32_t IRQ033MON;
    stc_intreq_irq033mon_field_t IRQ033MON_f;
  };
  union {
    volatile uint32_t IRQ034MON;
    stc_intreq_irq034mon_field_t IRQ034MON_f;
  };
  union {
    volatile uint32_t IRQ035MON;
    stc_intreq_irq035mon_field_t IRQ035MON_f;
  };
  union {
    volatile uint32_t IRQ036MON;
    stc_intreq_irq036mon_field_t IRQ036MON_f;
  };
  union {
    volatile uint32_t IRQ037MON;
    stc_intreq_irq037mon_field_t IRQ037MON_f;
  };
  union {
    volatile uint32_t IRQ038MON;
    stc_intreq_irq038mon_field_t IRQ038MON_f;
  };
  union {
    volatile uint32_t IRQ039MON;
    stc_intreq_irq039mon_field_t IRQ039MON_f;
  };
  union {
    volatile uint32_t IRQ040MON;
    stc_intreq_irq040mon_field_t IRQ040MON_f;
  };
  union {
    volatile uint32_t IRQ041MON;
    stc_intreq_irq041mon_field_t IRQ041MON_f;
  };
  union {
    volatile uint32_t IRQ042MON;
    stc_intreq_irq042mon_field_t IRQ042MON_f;
  };
  union {
    volatile uint32_t IRQ043MON;
    stc_intreq_irq043mon_field_t IRQ043MON_f;
  };
  union {
    volatile uint32_t IRQ044MON;
    stc_intreq_irq044mon_field_t IRQ044MON_f;
  };
  union {
    volatile uint32_t IRQ045MON;
    stc_intreq_irq045mon_field_t IRQ045MON_f;
  };
  union {
    volatile uint32_t IRQ046MON;
    stc_intreq_irq046mon_field_t IRQ046MON_f;
  };
  union {
    volatile uint32_t IRQ047MON;
    stc_intreq_irq047mon_field_t IRQ047MON_f;
  };
  union {
    volatile uint32_t IRQ048MON;
    stc_intreq_irq048mon_field_t IRQ048MON_f;
  };
  union {
    volatile uint32_t IRQ049MON;
    stc_intreq_irq049mon_field_t IRQ049MON_f;
  };
  union {
    volatile uint32_t IRQ050MON;
    stc_intreq_irq050mon_field_t IRQ050MON_f;
  };
  union {
    volatile uint32_t IRQ051MON;
    stc_intreq_irq051mon_field_t IRQ051MON_f;
  };
  union {
    volatile uint32_t IRQ052MON;
    stc_intreq_irq052mon_field_t IRQ052MON_f;
  };
  union {
    volatile uint32_t IRQ053MON;
    stc_intreq_irq053mon_field_t IRQ053MON_f;
  };
  union {
    volatile uint32_t IRQ054MON;
    stc_intreq_irq054mon_field_t IRQ054MON_f;
  };
  union {
    volatile uint32_t IRQ055MON;
    stc_intreq_irq055mon_field_t IRQ055MON_f;
  };
  union {
    volatile uint32_t IRQ056MON;
    stc_intreq_irq056mon_field_t IRQ056MON_f;
  };
  union {
    volatile uint32_t IRQ057MON;
    stc_intreq_irq057mon_field_t IRQ057MON_f;
  };
  union {
    volatile uint32_t IRQ058MON;
    stc_intreq_irq058mon_field_t IRQ058MON_f;
  };
  union {
    volatile uint32_t IRQ059MON;
    stc_intreq_irq059mon_field_t IRQ059MON_f;
  };
  union {
    volatile uint32_t IRQ060MON;
    stc_intreq_irq060mon_field_t IRQ060MON_f;
  };
  union {
    volatile uint32_t IRQ061MON;
    stc_intreq_irq061mon_field_t IRQ061MON_f;
  };
  union {
    volatile uint32_t IRQ062MON;
    stc_intreq_irq062mon_field_t IRQ062MON_f;
  };
  union {
    volatile uint32_t IRQ063MON;
    stc_intreq_irq063mon_field_t IRQ063MON_f;
  };
  union {
    volatile uint32_t IRQ064MON;
    stc_intreq_irq064mon_field_t IRQ064MON_f;
  };
  union {
    volatile uint32_t IRQ065MON;
    stc_intreq_irq065mon_field_t IRQ065MON_f;
  };
  union {
    volatile uint32_t IRQ066MON;
    stc_intreq_irq066mon_field_t IRQ066MON_f;
  };
  union {
    volatile uint32_t IRQ067MON;
    stc_intreq_irq067mon_field_t IRQ067MON_f;
  };
  union {
    volatile uint32_t IRQ068MON;
    stc_intreq_irq068mon_field_t IRQ068MON_f;
  };
  union {
    volatile uint32_t IRQ069MON;
    stc_intreq_irq069mon_field_t IRQ069MON_f;
  };
  union {
    volatile uint32_t IRQ070MON;
    stc_intreq_irq070mon_field_t IRQ070MON_f;
  };
  union {
    volatile uint32_t IRQ071MON;
    stc_intreq_irq071mon_field_t IRQ071MON_f;
  };
  union {
    volatile uint32_t IRQ072MON;
    stc_intreq_irq072mon_field_t IRQ072MON_f;
  };
  union {
    volatile uint32_t IRQ073MON;
    stc_intreq_irq073mon_field_t IRQ073MON_f;
  };
  union {
    volatile uint32_t IRQ074MON;
    stc_intreq_irq074mon_field_t IRQ074MON_f;
  };
  union {
    volatile uint32_t IRQ075MON;
    stc_intreq_irq075mon_field_t IRQ075MON_f;
  };
  union {
    volatile uint32_t IRQ076MON;
    stc_intreq_irq076mon_field_t IRQ076MON_f;
  };
  union {
    volatile uint32_t IRQ077MON;
    stc_intreq_irq077mon_field_t IRQ077MON_f;
  };
  union {
    volatile uint32_t IRQ078MON;
    stc_intreq_irq078mon_field_t IRQ078MON_f;
  };
  union {
    volatile uint32_t IRQ079MON;
    stc_intreq_irq079mon_field_t IRQ079MON_f;
  };
  union {
    volatile uint32_t IRQ080MON;
    stc_intreq_irq080mon_field_t IRQ080MON_f;
  };
  union {
    volatile uint32_t IRQ081MON;
    stc_intreq_irq081mon_field_t IRQ081MON_f;
  };
  union {
    volatile uint32_t IRQ082MON;
    stc_intreq_irq082mon_field_t IRQ082MON_f;
  };
  union {
    volatile uint32_t IRQ083MON;
    stc_intreq_irq083mon_field_t IRQ083MON_f;
  };
  union {
    volatile uint32_t IRQ084MON;
    stc_intreq_irq084mon_field_t IRQ084MON_f;
  };
  union {
    volatile uint32_t IRQ085MON;
    stc_intreq_irq085mon_field_t IRQ085MON_f;
  };
  union {
    volatile uint32_t IRQ086MON;
    stc_intreq_irq086mon_field_t IRQ086MON_f;
  };
  union {
    volatile uint32_t IRQ087MON;
    stc_intreq_irq087mon_field_t IRQ087MON_f;
  };
  union {
    volatile uint32_t IRQ088MON;
    stc_intreq_irq088mon_field_t IRQ088MON_f;
  };
  union {
    volatile uint32_t IRQ089MON;
    stc_intreq_irq089mon_field_t IRQ089MON_f;
  };
  union {
    volatile uint32_t IRQ090MON;
    stc_intreq_irq090mon_field_t IRQ090MON_f;
  };
  union {
    volatile uint32_t IRQ091MON;
    stc_intreq_irq091mon_field_t IRQ091MON_f;
  };
  union {
    volatile uint32_t IRQ092MON;
    stc_intreq_irq092mon_field_t IRQ092MON_f;
  };
  union {
    volatile uint32_t IRQ093MON;
    stc_intreq_irq093mon_field_t IRQ093MON_f;
  };
  union {
    volatile uint32_t IRQ094MON;
    stc_intreq_irq094mon_field_t IRQ094MON_f;
  };
  union {
    volatile uint32_t IRQ095MON;
    stc_intreq_irq095mon_field_t IRQ095MON_f;
  };
  union {
    volatile uint32_t IRQ096MON;
    stc_intreq_irq096mon_field_t IRQ096MON_f;
  };
  union {
    volatile uint32_t IRQ097MON;
    stc_intreq_irq097mon_field_t IRQ097MON_f;
  };
  union {
    volatile uint32_t IRQ098MON;
    stc_intreq_irq098mon_field_t IRQ098MON_f;
  };
  union {
    volatile uint32_t IRQ099MON;
    stc_intreq_irq099mon_field_t IRQ099MON_f;
  };
  union {
    volatile uint32_t IRQ100MON;
    stc_intreq_irq100mon_field_t IRQ100MON_f;
  };
  union {
    volatile uint32_t IRQ101MON;
    stc_intreq_irq101mon_field_t IRQ101MON_f;
  };
  union {
    volatile uint32_t IRQ102MON;
    stc_intreq_irq102mon_field_t IRQ102MON_f;
  };
  union {
    volatile uint32_t IRQ103MON;
    stc_intreq_irq103mon_field_t IRQ103MON_f;
  };
  union {
    volatile uint32_t IRQ104MON;
    stc_intreq_irq104mon_field_t IRQ104MON_f;
  };
  union {
    volatile uint32_t IRQ105MON;
    stc_intreq_irq105mon_field_t IRQ105MON_f;
  };
  union {
    volatile uint32_t IRQ106MON;
    stc_intreq_irq106mon_field_t IRQ106MON_f;
  };
  union {
    volatile uint32_t IRQ107MON;
    stc_intreq_irq107mon_field_t IRQ107MON_f;
  };
  union {
    volatile uint32_t IRQ108MON;
    stc_intreq_irq108mon_field_t IRQ108MON_f;
  };
  union {
    volatile uint32_t IRQ109MON;
    stc_intreq_irq109mon_field_t IRQ109MON_f;
  };
  union {
    volatile uint32_t IRQ110MON;
    stc_intreq_irq110mon_field_t IRQ110MON_f;
  };
  union {
    volatile uint32_t IRQ111MON;
    stc_intreq_irq111mon_field_t IRQ111MON_f;
  };
  union {
    volatile uint32_t IRQ112MON;
    stc_intreq_irq112mon_field_t IRQ112MON_f;
  };
  union {
    volatile uint32_t IRQ113MON;
    stc_intreq_irq113mon_field_t IRQ113MON_f;
  };
  union {
    volatile uint32_t IRQ114MON;
    stc_intreq_irq114mon_field_t IRQ114MON_f;
  };
  union {
    volatile uint32_t IRQ115MON;
    stc_intreq_irq115mon_field_t IRQ115MON_f;
  };
  volatile uint32_t IRQ116MON;
  union {
    volatile uint32_t IRQ117MON;
    stc_intreq_irq117mon_field_t IRQ117MON_f;
  };
  union {
    volatile uint32_t IRQ118MON;
    stc_intreq_irq118mon_field_t IRQ118MON_f;
  };
  union {
    volatile uint32_t IRQ119MON;
    stc_intreq_irq119mon_field_t IRQ119MON_f;
  };
  union {
    volatile uint32_t IRQ120MON;
    stc_intreq_irq120mon_field_t IRQ120MON_f;
  };
  union {
    volatile uint32_t IRQ121MON;
    stc_intreq_irq121mon_field_t IRQ121MON_f;
  };
  union {
    volatile uint32_t IRQ122MON;
    stc_intreq_irq122mon_field_t IRQ122MON_f;
  };
  union {
    volatile uint32_t IRQ123MON;
    stc_intreq_irq123mon_field_t IRQ123MON_f;
  };
  union {
    volatile uint32_t IRQ124MON;
    stc_intreq_irq124mon_field_t IRQ124MON_f;
  };
  union {
    volatile uint32_t IRQ125MON;
    stc_intreq_irq125mon_field_t IRQ125MON_f;
  };
  union {
    volatile uint32_t IRQ126MON;
    stc_intreq_irq126mon_field_t IRQ126MON_f;
  };
  union {
    volatile uint32_t IRQ127MON;
    stc_intreq_irq127mon_field_t IRQ127MON_f;
  };
}FM4_INTREQ_TypeDef;



 
typedef struct
{
  union {
    volatile uint32_t      IRQ03SEL;
    stc_irqsel_field_t IRQ03SEL_f;
  };
  union {
    volatile uint32_t      IRQ04SEL;
    stc_irqsel_field_t IRQ04SEL_f;
  };
  union {
    volatile uint32_t      IRQ05SEL;
    stc_irqsel_field_t IRQ05SEL_f;
  };
  union {
    volatile uint32_t      IRQ06SEL;
    stc_irqsel_field_t IRQ06SEL_f;
  };
  union {
    volatile uint32_t      IRQ07SEL;
    stc_irqsel_field_t IRQ07SEL_f;
  };
  union {
    volatile uint32_t      IRQ08SEL;
    stc_irqsel_field_t IRQ08SEL_f;
  };
  union {
    volatile uint32_t      IRQ09SEL;
    stc_irqsel_field_t IRQ09SEL_f;
  };
  union {
    volatile uint32_t      IRQ10SEL;
    stc_irqsel_field_t IRQ10SEL_f;
  };
} FM4_IRQSEL_TypeDef;



 
 
typedef struct
{
  union {
    volatile  uint8_t TXCTRL;
    stc_hdmicec_txctrl_field_t TXCTRL_f;
  };
        uint8_t RESERVED1[3];
  union {
    volatile  uint8_t TXDATA;
    stc_hdmicec_txdata_field_t TXDATA_f;
  };
        uint8_t RESERVED2[3];
  union {
    volatile  uint8_t TXSTS;
    stc_hdmicec_txsts_field_t TXSTS_f;
  };
        uint8_t RESERVED3[3];
  union {
    volatile  uint8_t SFREE;
    stc_hdmicec_sfree_field_t SFREE_f;
  };
        uint8_t RESERVED4[51];
  union {
    volatile  uint8_t RCST;
    stc_hdmicec_rcst_field_t RCST_f;
  };
  union {
    volatile  uint8_t RCCR;
    stc_hdmicec_rccr_field_t RCCR_f;
  };
        uint8_t RESERVED5[2];
    volatile  uint8_t RCDAHW;
    volatile  uint8_t RCSHW;
        uint8_t RESERVED6[3];
    volatile  uint8_t RCDBHW;
        uint8_t RESERVED7[2];
    volatile  uint8_t RCADR2;
    volatile  uint8_t RCADR1;
        uint8_t RESERVED8[2];
    volatile  uint8_t RCDTHL;
    volatile  uint8_t RCDTHH;
        uint8_t RESERVED9[2];
    volatile  uint8_t RCDTLL;
    volatile  uint8_t RCDTLH;
        uint8_t RESERVED10[2];
  union {
    volatile uint16_t RCCKD;
    stc_hdmicec_rcckd_field_t RCCKD_f;
  };
        uint8_t RESERVED11[2];
    volatile  uint8_t RCRHW;
  union {
    volatile  uint8_t RCRC;
    stc_hdmicec_rcrc_field_t RCRC_f;
  };
        uint8_t RESERVED12[3];
  union {
    volatile  uint8_t RCLE;
    stc_hdmicec_rcle_field_t RCLE_f;
  };
        uint8_t RESERVED13[2];
    volatile  uint8_t RCLESW;
    volatile  uint8_t RCLELW;
}FM4_HDMICEC_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t PFR0;
    stc_gpio_pfr0_field_t PFR0_f;
  };
  union {
    volatile uint32_t PFR1;
    stc_gpio_pfr1_field_t PFR1_f;
  };
  union {
    volatile uint32_t PFR2;
    stc_gpio_pfr2_field_t PFR2_f;
  };
  union {
    volatile uint32_t PFR3;
    stc_gpio_pfr3_field_t PFR3_f;
  };
  union {
    volatile uint32_t PFR4;
    stc_gpio_pfr4_field_t PFR4_f;
  };
  union {
    volatile uint32_t PFR5;
    stc_gpio_pfr5_field_t PFR5_f;
  };
  union {
    volatile uint32_t PFR6;
    stc_gpio_pfr6_field_t PFR6_f;
  };
  union {
    volatile uint32_t PFR7;
    stc_gpio_pfr7_field_t PFR7_f;
  };
  union {
    volatile uint32_t PFR8;
    stc_gpio_pfr8_field_t PFR8_f;
  };
  union {
    volatile uint32_t PFR9;
    stc_gpio_pfr9_field_t PFR9_f;
  };
  union {
    volatile uint32_t PFRA;
    stc_gpio_pfra_field_t PFRA_f;
  };
  union {
    volatile uint32_t PFRB;
    stc_gpio_pfrb_field_t PFRB_f;
  };
  union {
    volatile uint32_t PFRC;
    stc_gpio_pfrc_field_t PFRC_f;
  };
  union {
    volatile uint32_t PFRD;
    stc_gpio_pfrd_field_t PFRD_f;
  };
  union {
    volatile uint32_t PFRE;
    stc_gpio_pfre_field_t PFRE_f;
  };
  union {
    volatile uint32_t PFRF;
    stc_gpio_pfrf_field_t PFRF_f;
  };
        uint8_t RESERVED1[192];
  union {
    volatile uint32_t PCR0;
    stc_gpio_pcr0_field_t PCR0_f;
  };
  union {
    volatile uint32_t PCR1;
    stc_gpio_pcr1_field_t PCR1_f;
  };
  union {
    volatile uint32_t PCR2;
    stc_gpio_pcr2_field_t PCR2_f;
  };
  union {
    volatile uint32_t PCR3;
    stc_gpio_pcr3_field_t PCR3_f;
  };
  union {
    volatile uint32_t PCR4;
    stc_gpio_pcr4_field_t PCR4_f;
  };
  union {
    volatile uint32_t PCR5;
    stc_gpio_pcr5_field_t PCR5_f;
  };
  union {
    volatile uint32_t PCR6;
    stc_gpio_pcr6_field_t PCR6_f;
  };
  union {
    volatile uint32_t PCR7;
    stc_gpio_pcr7_field_t PCR7_f;
  };
  union {
    volatile uint32_t PCR8;
    stc_gpio_pcr8_field_t PCR8_f;
  };
  union {
    volatile uint32_t PCR9;
    stc_gpio_pcr9_field_t PCR9_f;
  };
  union {
    volatile uint32_t PCRA;
    stc_gpio_pcra_field_t PCRA_f;
  };
  union {
    volatile uint32_t PCRB;
    stc_gpio_pcrb_field_t PCRB_f;
  };
  union {
    volatile uint32_t PCRC;
    stc_gpio_pcrc_field_t PCRC_f;
  };
  union {
    volatile uint32_t PCRD;
    stc_gpio_pcrd_field_t PCRD_f;
  };
  union {
    volatile uint32_t PCRE;
    stc_gpio_pcre_field_t PCRE_f;
  };
  union {
    volatile uint32_t PCRF;
    stc_gpio_pcrf_field_t PCRF_f;
  };
        uint8_t RESERVED2[192];
  union {
    volatile uint32_t DDR0;
    stc_gpio_ddr0_field_t DDR0_f;
  };
  union {
    volatile uint32_t DDR1;
    stc_gpio_ddr1_field_t DDR1_f;
  };
  union {
    volatile uint32_t DDR2;
    stc_gpio_ddr2_field_t DDR2_f;
  };
  union {
    volatile uint32_t DDR3;
    stc_gpio_ddr3_field_t DDR3_f;
  };
  union {
    volatile uint32_t DDR4;
    stc_gpio_ddr4_field_t DDR4_f;
  };
  union {
    volatile uint32_t DDR5;
    stc_gpio_ddr5_field_t DDR5_f;
  };
  union {
    volatile uint32_t DDR6;
    stc_gpio_ddr6_field_t DDR6_f;
  };
  union {
    volatile uint32_t DDR7;
    stc_gpio_ddr7_field_t DDR7_f;
  };
  union {
    volatile uint32_t DDR8;
    stc_gpio_ddr8_field_t DDR8_f;
  };
  union {
    volatile uint32_t DDR9;
    stc_gpio_ddr9_field_t DDR9_f;
  };
  union {
    volatile uint32_t DDRA;
    stc_gpio_ddra_field_t DDRA_f;
  };
  union {
    volatile uint32_t DDRB;
    stc_gpio_ddrb_field_t DDRB_f;
  };
  union {
    volatile uint32_t DDRC;
    stc_gpio_ddrc_field_t DDRC_f;
  };
  union {
    volatile uint32_t DDRD;
    stc_gpio_ddrd_field_t DDRD_f;
  };
  union {
    volatile uint32_t DDRE;
    stc_gpio_ddre_field_t DDRE_f;
  };
  union {
    volatile uint32_t DDRF;
    stc_gpio_ddrf_field_t DDRF_f;
  };
        uint8_t RESERVED3[192];
  union {
    volatile uint32_t PDIR0;
    stc_gpio_pdir0_field_t PDIR0_f;
  };
  union {
    volatile uint32_t PDIR1;
    stc_gpio_pdir1_field_t PDIR1_f;
  };
  union {
    volatile uint32_t PDIR2;
    stc_gpio_pdir2_field_t PDIR2_f;
  };
  union {
    volatile uint32_t PDIR3;
    stc_gpio_pdir3_field_t PDIR3_f;
  };
  union {
    volatile uint32_t PDIR4;
    stc_gpio_pdir4_field_t PDIR4_f;
  };
  union {
    volatile uint32_t PDIR5;
    stc_gpio_pdir5_field_t PDIR5_f;
  };
  union {
    volatile uint32_t PDIR6;
    stc_gpio_pdir6_field_t PDIR6_f;
  };
  union {
    volatile uint32_t PDIR7;
    stc_gpio_pdir7_field_t PDIR7_f;
  };
  union {
    volatile uint32_t PDIR8;
    stc_gpio_pdir8_field_t PDIR8_f;
  };
  union {
    volatile uint32_t PDIR9;
    stc_gpio_pdir9_field_t PDIR9_f;
  };
  union {
    volatile uint32_t PDIRA;
    stc_gpio_pdira_field_t PDIRA_f;
  };
  union {
    volatile uint32_t PDIRB;
    stc_gpio_pdirb_field_t PDIRB_f;
  };
  union {
    volatile uint32_t PDIRC;
    stc_gpio_pdirc_field_t PDIRC_f;
  };
  union {
    volatile uint32_t PDIRD;
    stc_gpio_pdird_field_t PDIRD_f;
  };
  union {
    volatile uint32_t PDIRE;
    stc_gpio_pdire_field_t PDIRE_f;
  };
  union {
    volatile uint32_t PDIRF;
    stc_gpio_pdirf_field_t PDIRF_f;
  };
        uint8_t RESERVED4[192];
  union {
    volatile uint32_t PDOR0;
    stc_gpio_pdor0_field_t PDOR0_f;
  };
  union {
    volatile uint32_t PDOR1;
    stc_gpio_pdor1_field_t PDOR1_f;
  };
  union {
    volatile uint32_t PDOR2;
    stc_gpio_pdor2_field_t PDOR2_f;
  };
  union {
    volatile uint32_t PDOR3;
    stc_gpio_pdor3_field_t PDOR3_f;
  };
  union {
    volatile uint32_t PDOR4;
    stc_gpio_pdor4_field_t PDOR4_f;
  };
  union {
    volatile uint32_t PDOR5;
    stc_gpio_pdor5_field_t PDOR5_f;
  };
  union {
    volatile uint32_t PDOR6;
    stc_gpio_pdor6_field_t PDOR6_f;
  };
  union {
    volatile uint32_t PDOR7;
    stc_gpio_pdor7_field_t PDOR7_f;
  };
  union {
    volatile uint32_t PDOR8;
    stc_gpio_pdor8_field_t PDOR8_f;
  };
  union {
    volatile uint32_t PDOR9;
    stc_gpio_pdor9_field_t PDOR9_f;
  };
  union {
    volatile uint32_t PDORA;
    stc_gpio_pdora_field_t PDORA_f;
  };
  union {
    volatile uint32_t PDORB;
    stc_gpio_pdorb_field_t PDORB_f;
  };
  union {
    volatile uint32_t PDORC;
    stc_gpio_pdorc_field_t PDORC_f;
  };
  union {
    volatile uint32_t PDORD;
    stc_gpio_pdord_field_t PDORD_f;
  };
  union {
    volatile uint32_t PDORE;
    stc_gpio_pdore_field_t PDORE_f;
  };
  union {
    volatile uint32_t PDORF;
    stc_gpio_pdorf_field_t PDORF_f;
  };
        uint8_t RESERVED5[192];
  union {
    volatile uint32_t ADE;
    stc_gpio_ade_field_t ADE_f;
  };
        uint8_t RESERVED6[124];
  union {
    volatile uint32_t SPSR;
    stc_gpio_spsr_field_t SPSR_f;
  };
        uint8_t RESERVED7[124];
  union {
    volatile uint32_t EPFR00;
    stc_gpio_epfr00_field_t EPFR00_f;
  };
  union {
    volatile uint32_t EPFR01;
    stc_gpio_epfr01_field_t EPFR01_f;
  };
  union {
    volatile uint32_t EPFR02;
    stc_gpio_epfr02_field_t EPFR02_f;
  };
  union {
    volatile uint32_t EPFR03;
    stc_gpio_epfr03_field_t EPFR03_f;
  };
  union {
    volatile uint32_t EPFR04;
    stc_gpio_epfr04_field_t EPFR04_f;
  };
  union {
    volatile uint32_t EPFR05;
    stc_gpio_epfr05_field_t EPFR05_f;
  };
  union {
    volatile uint32_t EPFR06;
    stc_gpio_epfr06_field_t EPFR06_f;
  };
  union {
    volatile uint32_t EPFR07;
    stc_gpio_epfr07_field_t EPFR07_f;
  };
  union {
    volatile uint32_t EPFR08;
    stc_gpio_epfr08_field_t EPFR08_f;
  };
  union {
    volatile uint32_t EPFR09;
    stc_gpio_epfr09_field_t EPFR09_f;
  };
  union {
    volatile uint32_t EPFR10;
    stc_gpio_epfr10_field_t EPFR10_f;
  };
  union {
    volatile uint32_t EPFR11;
    stc_gpio_epfr11_field_t EPFR11_f;
  };
  union {
    volatile uint32_t EPFR12;
    stc_gpio_epfr12_field_t EPFR12_f;
  };
  union {
    volatile uint32_t EPFR13;
    stc_gpio_epfr13_field_t EPFR13_f;
  };
  union {
    volatile uint32_t EPFR14;
    stc_gpio_epfr14_field_t EPFR14_f;
  };
  union {
    volatile uint32_t EPFR15;
    stc_gpio_epfr15_field_t EPFR15_f;
  };
  union {
    volatile uint32_t EPFR16;
    stc_gpio_epfr16_field_t EPFR16_f;
  };
  union {
    volatile uint32_t EPFR17;
    stc_gpio_epfr17_field_t EPFR17_f;
  };
  union {
    volatile uint32_t EPFR18;
    stc_gpio_epfr18_field_t EPFR18_f;
  };
  volatile uint32_t EPFR19;
  union {
    volatile uint32_t EPFR20;
    stc_gpio_epfr20_field_t EPFR20_f;
  };
  volatile uint32_t EPFR21;
  volatile uint32_t EPFR22;
  union {
    volatile uint32_t EPFR23;
    stc_gpio_epfr23_field_t EPFR23_f;
  };
  union {
    volatile uint32_t EPFR24;
    stc_gpio_epfr24_field_t EPFR24_f;
  };
  union {
    volatile uint32_t EPFR25;
    stc_gpio_epfr25_field_t EPFR25_f;
  };
  union {
    volatile uint32_t EPFR26;
    stc_gpio_epfr26_field_t EPFR26_f;
  };
        uint8_t RESERVED8[148];
  union {
    volatile uint32_t PZR0;
    stc_gpio_pzr0_field_t PZR0_f;
  };
  union {
    volatile uint32_t PZR1;
    stc_gpio_pzr1_field_t PZR1_f;
  };
  union {
    volatile uint32_t PZR2;
    stc_gpio_pzr2_field_t PZR2_f;
  };
  union {
    volatile uint32_t PZR3;
    stc_gpio_pzr3_field_t PZR3_f;
  };
  union {
    volatile uint32_t PZR4;
    stc_gpio_pzr4_field_t PZR4_f;
  };
  union {
    volatile uint32_t PZR5;
    stc_gpio_pzr5_field_t PZR5_f;
  };
  union {
    volatile uint32_t PZR6;
    stc_gpio_pzr6_field_t PZR6_f;
  };
  union {
    volatile uint32_t PZR7;
    stc_gpio_pzr7_field_t PZR7_f;
  };
  union {
    volatile uint32_t PZR8;
    stc_gpio_pzr8_field_t PZR8_f;
  };
  union {
    volatile uint32_t PZR9;
    stc_gpio_pzr9_field_t PZR9_f;
  };
  union {
    volatile uint32_t PZRA;
    stc_gpio_pzra_field_t PZRA_f;
  };
  union {
    volatile uint32_t PZRB;
    stc_gpio_pzrb_field_t PZRB_f;
  };
  union {
    volatile uint32_t PZRC;
    stc_gpio_pzrc_field_t PZRC_f;
  };
  union {
    volatile uint32_t PZRD;
    stc_gpio_pzrd_field_t PZRD_f;
  };
  union {
    volatile uint32_t PZRE;
    stc_gpio_pzre_field_t PZRE_f;
  };
  union {
    volatile uint32_t PZRF;
    stc_gpio_pzrf_field_t PZRF_f;
  };
  union {
    volatile uint32_t PDSR0;
    stc_gpio_pdsr0_field_t PDSR0_f;
  };
  union {
    volatile uint32_t PDSR1;
    stc_gpio_pdsr1_field_t PDSR1_f;
  };
  union {
    volatile uint32_t PDSR2;
    stc_gpio_pdsr2_field_t PDSR2_f;
  };
  union {
    volatile uint32_t PDSR3;
    stc_gpio_pdsr3_field_t PDSR3_f;
  };
  union {
    volatile uint32_t PDSR4;
    stc_gpio_pdsr4_field_t PDSR4_f;
  };
  union {
    volatile uint32_t PDSR5;
    stc_gpio_pdsr5_field_t PDSR5_f;
  };
  union {
    volatile uint32_t PDSR6;
    stc_gpio_pdsr6_field_t PDSR6_f;
  };
  union {
    volatile uint32_t PDSR7;
    stc_gpio_pdsr7_field_t PDSR7_f;
  };
  union {
    volatile uint32_t PDSR8;
    stc_gpio_pdsr8_field_t PDSR8_f;
  };
  union {
    volatile uint32_t PDSR9;
    stc_gpio_pdsr9_field_t PDSR9_f;
  };
  union {
    volatile uint32_t PDSRA;
    stc_gpio_pdsra_field_t PDSRA_f;
  };
  union {
    volatile uint32_t PDSRB;
    stc_gpio_pdsrb_field_t PDSRB_f;
  };
  union {
    volatile uint32_t PDSRC;
    stc_gpio_pdsrc_field_t PDSRC_f;
  };
  union {
    volatile uint32_t PDSRD;
    stc_gpio_pdsrd_field_t PDSRD_f;
  };
  union {
    volatile uint32_t PDSRE;
    stc_gpio_pdsre_field_t PDSRE_f;
  };
  union {
    volatile uint32_t PDSRF;
    stc_gpio_pdsrf_field_t PDSRF_f;
  };
}FM4_GPIO_TypeDef;



 
 
typedef struct
{
  union {
    volatile  uint8_t LVD_CTL;
    stc_lvd_lvd_ctl_field_t LVD_CTL_f;
  };
        uint8_t RESERVED0[3];
  union {
    volatile  uint8_t LVD_STR;
    stc_lvd_lvd_str_field_t LVD_STR_f;
  };
        uint8_t RESERVED1[3];
  union {
    volatile  uint8_t LVD_CLR;
    stc_lvd_lvd_clr_field_t LVD_CLR_f;
  };
        uint8_t RESERVED2[3];
  volatile uint32_t LVD_RLR;
  union {
    volatile  uint8_t LVD_STR2;
    stc_lvd_lvd_str2_field_t LVD_STR2_f;
  };
}FM4_LVD_TypeDef;



 
 
typedef struct
{
       uint8_t RESERVED10[4];
  union {
    volatile  uint8_t RCK_CTL;
    stc_ds_rck_ctl_field_t RCK_CTL_f;
  };
       uint8_t RESERVED0[1787];
  union {
    volatile  uint8_t PMD_CTL;
    stc_ds_pmd_ctl_field_t PMD_CTL_f;
  };
       uint8_t RESERVED1[3];
  union {
    volatile  uint8_t WRFSR;
    stc_ds_wrfsr_field_t WRFSR_f;
  };
       uint8_t RESERVED2[3];
  union {
    volatile uint16_t WIFSR;
    stc_ds_wifsr_field_t WIFSR_f;
  };
       uint8_t RESERVED3[2];
  union {
    volatile uint16_t WIER;
    stc_ds_wier_field_t WIER_f;
  };
       uint8_t RESERVED4[2];
  union {
    volatile  uint8_t WILVR;
    stc_ds_wilvr_field_t WILVR_f;
  };
       uint8_t RESERVED5[3];
  union {
    volatile  uint8_t DSRAMR;
    stc_ds_dsramr_field_t DSRAMR_f;
  };
       uint8_t RESERVED6[235];
  volatile  uint8_t BUR01;
  volatile  uint8_t BUR02;
  volatile  uint8_t BUR03;
  volatile  uint8_t BUR04;
  volatile  uint8_t BUR05;
  volatile  uint8_t BUR06;
  volatile  uint8_t BUR07;
  volatile  uint8_t BUR08;
  volatile  uint8_t BUR09;
  volatile  uint8_t BUR10;
  volatile  uint8_t BUR11;
  volatile  uint8_t BUR12;
  volatile  uint8_t BUR13;
  volatile  uint8_t BUR14;
  volatile  uint8_t BUR15;
  volatile  uint8_t BUR16;
}FM4_DS_TypeDef;



 
 





















































 



 
 
typedef struct
{
  union {
    volatile  uint8_t CANPRE;
    stc_canpre_canpre_field_t CANPRE_f;
  };
}FM4_CANPRE_TypeDef;



 
 
typedef struct
{
  union {
    volatile  uint8_t UCCR;
    stc_usbethernetclk_uccr_field_t UCCR_f;
  };
        uint8_t RESERVED0[3];
  union {
    volatile  uint8_t UPCR1;
    stc_usbethernetclk_upcr1_field_t UPCR1_f;
  };
        uint8_t RESERVED1[3];
  union {
    volatile  uint8_t UPCR2;
    stc_usbethernetclk_upcr2_field_t UPCR2_f;
  };
        uint8_t RESERVED2[3];
  union {
    volatile  uint8_t UPCR3;
    stc_usbethernetclk_upcr3_field_t UPCR3_f;
  };
        uint8_t RESERVED3[3];
  union {
    volatile  uint8_t UPCR4;
    stc_usbethernetclk_upcr4_field_t UPCR4_f;
  };
        uint8_t RESERVED4[3];
  union {
    volatile  uint8_t UP_STR;
    stc_usbethernetclk_up_str_field_t UP_STR_f;
  };
        uint8_t RESERVED5[3];
  union {
    volatile  uint8_t UPINT_ENR;
    stc_usbethernetclk_upint_enr_field_t UPINT_ENR_f;
  };
        uint8_t RESERVED6[3];
  union {
    volatile  uint8_t UPINT_CLR;
    stc_usbethernetclk_upint_clr_field_t UPINT_CLR_f;
  };
        uint8_t RESERVED7[3];
  union {
    volatile  uint8_t UPINT_STR;
    stc_usbethernetclk_upint_str_field_t UPINT_STR_f;
  };
        uint8_t RESERVED8[3];
  union {
    volatile  uint8_t UPCR5;
    stc_usbethernetclk_upcr5_field_t UPCR5_f;
  };
        uint8_t RESERVED9[3];
  union {
    volatile  uint8_t UPCR6;
    stc_usbethernetclk_upcr6_field_t UPCR6_f;
  };
        uint8_t RESERVED10[3];
  union {
    volatile  uint8_t UPCR7;
    stc_usbethernetclk_upcr7_field_t UPCR7_f;
  };
        uint8_t RESERVED11[3];
  union {
    volatile  uint8_t USBEN0;
    stc_usbethernetclk_usben0_field_t USBEN0_f;
  };
        uint8_t RESERVED12[3];
  union {
    volatile  uint8_t USBEN1;
    stc_usbethernetclk_usben1_field_t USBEN1_f;
  };
}FM4_USBETHERNETCLK_TypeDef;



 
typedef struct
{
  union {
    volatile  uint8_t       SMR;
    stc_mfs_smr_field_t SMR_f;
  };
  union {
    volatile  uint8_t            SCR;
    stc_mfs_scr_field_t      SCR_f;
    volatile  uint8_t            IBCR;
    stc_mfs_i2c_ibcr_field_t IBCR_f;
  };
        uint8_t RESERVED0[2];
  union {
    volatile  uint8_t            ESCR;
    stc_mfs_escr_field_t     ESCR_f;
    volatile  uint8_t            IBSR;
    stc_mfs_i2c_ibsr_field_t IBSR_f;
  };
  union {
    volatile  uint8_t       SSR;
    stc_mfs_ssr_field_t SSR_f;
  };
        uint8_t RESERVED1[2];
  union {
    volatile uint32_t RDR32;
    volatile uint32_t TDR32;
    struct {
      union {
        volatile uint16_t            RDR;
        stc_mfs_uart_rdr_field_t RDR_f;
      };
             uint8_t RESERVED2[2];
    };
    struct {
      union {
        volatile uint16_t            TDR;
        stc_mfs_uart_tdr_field_t TDR_f;
      };
             uint8_t RESERVED3[2];
    };
  };
  union {
    union {
      volatile uint16_t       BGR;
      stc_mfs_bgr_field_t BGR_f;
    };
    struct {
      volatile  uint8_t BGR0;
      union {
        volatile  uint8_t        BGR1;
        stc_mfs_bgr1_field_t BGR1_f;
      };
    };
  };
        uint8_t RESERVED4[2];
  union {
    volatile  uint8_t            ISBA;
    stc_mfs_i2c_isba_field_t ISBA_f;
  };
  union {
    volatile  uint8_t            ISMK;
    stc_mfs_i2c_ismk_field_t ISMK_f;
  };
        uint8_t RESERVED5[2];
  union {
    union {
      volatile uint16_t       FCR;
      stc_mfs_fcr_field_t FCR_f;
    };
    struct {
      union {
        volatile  uint8_t        FCR0;
        stc_mfs_fcr0_field_t FCR0_f;
      };
      union {
        volatile  uint8_t        FCR1;
        stc_mfs_fcr1_field_t FCR1_f;
      };
    };
  };
        uint8_t RESERVED6[2];
  union {
    union {
      volatile uint16_t         FBYTE;
      stc_mfs_fbyte_field_t FBYTE_f;
    };
    struct {
      union {
        volatile  uint8_t          FBYTE1;
        stc_mfs_fbyte1_field_t FBYTE1_f;
      };
      union {
        volatile  uint8_t          FBYTE2;
        stc_mfs_fbyte2_field_t FBYTE2_f;
      };
    };
  };
        uint8_t RESERVED7[2];
  union {
    volatile uint16_t                SCSTR10;
    stc_mfs_csio_scstr10_field_t SCSTR10_f;
    struct {
      union {
        volatile  uint8_t               SCSTR0;
        stc_mfs_csio_scstr0_field_t SCSTR0_f;
        volatile  uint8_t NFCR;
        stc_mfs_i2c_nfcr_field_t NFCR_f;
      };
      union {
        volatile  uint8_t               SCSTR1;
        stc_mfs_csio_scstr1_field_t SCSTR1_f;
        volatile  uint8_t               EIBCR;
        stc_mfs_i2c_eibcr_field_t   EIBCR_f;
      };
    };
  };
        uint8_t RESERVED8[2];
  union {
    volatile uint16_t                SCSTR32;
    stc_mfs_csio_scstr32_field_t SCSTR32_f;
    struct {
      union {
        volatile  uint8_t               SCSTR2;
        stc_mfs_csio_scstr2_field_t SCSTR2_f;
      };
      union {
        volatile  uint8_t               SCSTR3;
        stc_mfs_csio_scstr3_field_t SCSTR3_f;
      };
    };
  };
        uint8_t RESERVED9[2];
  union {
    volatile uint16_t              SACSR;
    stc_mfs_csio_sacsr_field_t SACSR_f;
    struct {
      union {
        volatile  uint8_t               SACSR0;
        stc_mfs_csio_sacsr0_field_t SACSR0_f;
      };
      union {
        volatile  uint8_t               SACSR1;
        stc_mfs_csio_sacsr1_field_t SACSR1_f;
      };
    };
  };
        uint8_t RESERVED10[2];
  union {
    volatile uint16_t             STMR;
    stc_mfs_csio_stmr_field_t STMR_f;
    struct {
      union {
        volatile  uint8_t              STMR0;
        stc_mfs_csio_stmr0_field_t STMR0_f;
      };
      union {
        volatile  uint8_t              STMR1;
        stc_mfs_csio_stmr1_field_t STMR1_f;
      };
    };
  };
        uint8_t RESERVED11[2];
  union {
    volatile uint16_t              STMCR;
    stc_mfs_csio_stmcr_field_t STMCR_f;
    struct {
      union {
        volatile  uint8_t               STMCR0;
        stc_mfs_csio_stmcr0_field_t STMCR0_f;
      };
      union {
        volatile  uint8_t               STMCR1;
        stc_mfs_csio_stmcr1_field_t STMCR1_f;
      };
    };
  };
        uint8_t RESERVED12[2];
  union {
    volatile uint16_t              SCSCR;
    stc_mfs_csio_scscr_field_t SCSCR_f;
  };
        uint8_t RESERVED13[2];
  union {
    volatile uint16_t SCSFR;
    struct {
      union {
        volatile  uint8_t               SCSFR0;
        stc_mfs_csio_scsfr0_field_t SCSFR0_f;
      };
      union {
        volatile  uint8_t               SCSFR1;
        stc_mfs_csio_scsfr1_field_t SCSFR1_f;
      };
    };
  };
        uint8_t RESERVED14[2];
  union {
    volatile  uint8_t               SCSFR2;
    stc_mfs_csio_scsfr2_field_t SCSFR2_f;
  };
        uint8_t RESERVED15[3];
  union {
    volatile uint16_t TBYTE10;
    struct {
      volatile  uint8_t TBYTE0;
      volatile  uint8_t TBYTE1;
    };
  };
        uint8_t RESERVED16[2];
  union {
    volatile uint16_t TBYTE32;
    struct {
      volatile  uint8_t TBYTE2;
      volatile  uint8_t TBYTE3;
    };
  };
}FM4_MFS_TypeDef;



 
 
typedef struct
{
  union {
    volatile  uint8_t CRCCR;
    stc_crc_crccr_field_t CRCCR_f;
  };
        uint8_t RESERVED0[3];
  volatile uint32_t CRCINIT;
  union {
    volatile uint32_t CRCIN;
    struct {
      union {
        volatile uint16_t CRCINL;
        struct {
          volatile  uint8_t CRCINLL;
          volatile  uint8_t CRCINLH;
        };
      };
      union {
        volatile uint16_t CRCINH;
        struct {
          volatile  uint8_t CRCINHL;
          volatile  uint8_t CRCINHH;
        };
      };
    };
  };
  volatile uint32_t CRCR;
}FM4_CRC_TypeDef;



 
 
typedef struct
{
  volatile uint32_t DESTP;
  union {
    volatile uint32_t HWDESP;
    stc_dstc_hwdesp_field_t HWDESP_f;
  };
  volatile uint8_t CMD;
  union {
    volatile uint8_t CFG;
    stc_dstc_cfg_field_t CFG_f;
  };
  union {
    volatile uint16_t SWTR;
    stc_dstc_swtr_field_t SWTR_f;
  };
  union {
    volatile uint32_t MONERS;
    stc_dstc_moners_field_t MONERS_f;
  };
  volatile uint32_t DREQENB0;
  volatile uint32_t DREQENB1;
  volatile uint32_t DREQENB2;
  volatile uint32_t DREQENB3;
  volatile uint32_t DREQENB4;
  volatile uint32_t DREQENB5;
  volatile uint32_t DREQENB6;
  volatile uint32_t DREQENB7;
  volatile uint32_t HWINT0;
  volatile uint32_t HWINT1;
  volatile uint32_t HWINT2;
  volatile uint32_t HWINT3;
  volatile uint32_t HWINT4;
  volatile uint32_t HWINT5;
  volatile uint32_t HWINT6;
  volatile uint32_t HWINT7;
  volatile uint32_t HWINTCLR0;
  volatile uint32_t HWINTCLR1;
  volatile uint32_t HWINTCLR2;
  volatile uint32_t HWINTCLR3;
  volatile uint32_t HWINTCLR4;
  volatile uint32_t HWINTCLR5;
  volatile uint32_t HWINTCLR6;
  volatile uint32_t HWINTCLR7;
  volatile uint32_t DQMSK0;
  volatile uint32_t DQMSK1;
  volatile uint32_t DQMSK2;
  volatile uint32_t DQMSK3;
  volatile uint32_t DQMSK4;
  volatile uint32_t DQMSK5;
  volatile uint32_t DQMSK6;
  volatile uint32_t DQMSK7;
  volatile uint32_t DQMSKCLR0;
  volatile uint32_t DQMSKCLR1;
  volatile uint32_t DQMSKCLR2;
  volatile uint32_t DQMSKCLR3;
  volatile uint32_t DQMSKCLR4;
  volatile uint32_t DQMSKCLR5;
  volatile uint32_t DQMSKCLR6;
  volatile uint32_t DQMSKCLR7;
}FM4_DSTC_TypeDef;



 
 
typedef struct
{
  union {
    volatile  uint8_t WCRD;
    stc_wc_wcrd_field_t WCRD_f;
  };
  union {
    volatile  uint8_t WCRL;
    stc_wc_wcrl_field_t WCRL_f;
  };
  union {
    volatile  uint8_t WCCR;
    stc_wc_wccr_field_t WCCR_f;
  };
        uint8_t RESERVED0[13];
  union {
    volatile uint16_t CLK_SEL;
    stc_wc_clk_sel_field_t CLK_SEL_f;
  };
        uint8_t RESERVED1[2];
  union {
    volatile  uint8_t CLK_EN;
    stc_wc_clk_en_field_t CLK_EN_f;
  };
}FM4_WC_TypeDef;



 
 
typedef struct
{
  union {
    volatile  uint8_t WTCR10;
    stc_rtc_wtcr10_field_t WTCR10_f;
  };
        uint8_t RESERVED1[3];
  union {
    volatile  uint8_t WTCR11;
    stc_rtc_wtcr11_field_t WTCR11_f;
  };
        uint8_t RESERVED2[3];
  union {
    volatile  uint8_t WTCR12;
    stc_rtc_wtcr12_field_t WTCR12_f;
  };
        uint8_t RESERVED3[3];
  union {
    volatile  uint8_t WTCR13;
    stc_rtc_wtcr13_field_t WTCR13_f;
  };
        uint8_t RESERVED4[3];
  union {
    volatile  uint8_t WTCR20;
    stc_rtc_wtcr20_field_t WTCR20_f;
  };
        uint8_t RESERVED5[3];
  union {
    volatile  uint8_t WTCR21;
    stc_rtc_wtcr21_field_t WTCR21_f;
  };
        uint8_t RESERVED6[3];
  volatile  uint8_t WTCR22;
        uint8_t RESERVED7[3];
  union {
    volatile  uint8_t WTSR;
    stc_rtc_wtsr_field_t WTSR_f;
  };
        uint8_t RESERVED8[3];
  union {
    volatile  uint8_t WTMIR;
    stc_rtc_wtmir_field_t WTMIR_f;
  };
        uint8_t RESERVED9[3];
  union {
    volatile  uint8_t WTHR;
    stc_rtc_wthr_field_t WTHR_f;
  };
        uint8_t RESERVED10[3];
  union {
    volatile  uint8_t WTDR;
    stc_rtc_wtdr_field_t WTDR_f;
  };
        uint8_t RESERVED11[3];
  union {
    volatile  uint8_t WTDW;
    stc_rtc_wtdw_field_t WTDW_f;
  };
        uint8_t RESERVED12[3];
  union {
    volatile  uint8_t WTMOR;
    stc_rtc_wtmor_field_t WTMOR_f;
  };
        uint8_t RESERVED13[3];
  union {
    volatile  uint8_t WTYR;
    stc_rtc_wtyr_field_t WTYR_f;
  };
        uint8_t RESERVED14[3];
  union {
    volatile  uint8_t ALMIR;
    stc_rtc_almir_field_t ALMIR_f;
  };
        uint8_t RESERVED15[3];
  union {
    volatile  uint8_t ALHR;
    stc_rtc_alhr_field_t ALHR_f;
  };
        uint8_t RESERVED16[3];
  union {
    volatile  uint8_t ALDR;
    stc_rtc_aldr_field_t ALDR_f;
  };
        uint8_t RESERVED17[3];
  union {
    volatile  uint8_t ALMOR;
    stc_rtc_almor_field_t ALMOR_f;
  };
        uint8_t RESERVED18[3];
  union {
    volatile  uint8_t ALYR;
    stc_rtc_alyr_field_t ALYR_f;
  };
        uint8_t RESERVED19[3];
  union {
    volatile  uint8_t WTTR0;
    stc_rtc_wttr0_field_t WTTR0_f;
  };
        uint8_t RESERVED20[3];
  union {
    volatile  uint8_t WTTR1;
    stc_rtc_wttr1_field_t WTTR1_f;
  };
        uint8_t RESERVED21[3];
  union {
    volatile  uint8_t WTTR2;
    stc_rtc_wttr2_field_t WTTR2_f;
  };
        uint8_t RESERVED22[3];
  volatile  uint8_t WTCAL0;
        uint8_t RESERVED23[3];
  union {
    volatile  uint8_t WTCAL1;
    stc_rtc_wtcal1_field_t WTCAL1_f;
  };
        uint8_t RESERVED24[3];
  union {
    volatile  uint8_t WTCALEN;
    stc_rtc_wtcalen_field_t WTCALEN_f;
  };
        uint8_t RESERVED25[3];
  union {
    volatile  uint8_t WTDIV;
    stc_rtc_wtdiv_field_t WTDIV_f;
  };
        uint8_t RESERVED26[3];
  union {
    volatile  uint8_t WTDIVEN;
    stc_rtc_wtdiven_field_t WTDIVEN_f;
  };
        uint8_t RESERVED27[3];
  union {
    volatile  uint8_t WTCALPRD;
    stc_rtc_wtcalprd_field_t WTCALPRD_f;
  };
        uint8_t RESERVED28[3];
  union {
    volatile  uint8_t WTCOSEL;
    stc_rtc_wtcosel_field_t WTCOSEL_f;
  };
        uint8_t RESERVED29[3];
  union {
    volatile  uint8_t VB_CLKDIV;
    stc_rtc_vb_clkdiv_field_t VB_CLKDIV_f;
  };
        uint8_t RESERVED30[3];
  union {
    volatile  uint8_t WTOSCCNT;
    stc_rtc_wtosccnt_field_t WTOSCCNT_f;
  };
        uint8_t RESERVED31[3];
  volatile  uint8_t CCS;
        uint8_t RESERVED32[3];
  volatile  uint8_t CCB;
        uint8_t RESERVED33[3];
   
  volatile  uint8_t TRIM;
        uint8_t RESERVED34[3];
  union {
    volatile  uint8_t BOOST;
    stc_rtc_boost_field_t BOOST_f;
  };
        uint8_t RESERVED35[3];
  union {
    volatile  uint8_t EWKUP;
    stc_rtc_ewkup_field_t EWKUP_f;
  };
        uint8_t RESERVED36[3];
  union {
    volatile  uint8_t VDET;
    stc_rtc_vdet_field_t VDET_f;
  };
        uint8_t RESERVED37[3];
   
  volatile  uint8_t FDET;
        uint8_t RESERVED38[3];
  union {
    volatile  uint8_t HIBRST;
    stc_rtc_hibrst_field_t HIBRST_f;
  };
        uint8_t RESERVED39[3];
  union {
    volatile  uint8_t VBPFR;
    stc_rtc_vbpfr_field_t VBPFR_f;
  };
        uint8_t RESERVED40[3];
  union {
    volatile  uint8_t VBPCR;
    stc_rtc_vbpcr_field_t VBPCR_f;
  };
        uint8_t RESERVED41[3];
  union {
    volatile  uint8_t VBDDR;
    stc_rtc_vbddr_field_t VBDDR_f;
  };
        uint8_t RESERVED42[3];
  union {
    volatile  uint8_t VBDIR;
    stc_rtc_vbdir_field_t VBDIR_f;
  };
        uint8_t RESERVED43[3];
  union {
    volatile  uint8_t VBDOR;
    stc_rtc_vbdor_field_t VBDOR_f;
  };
        uint8_t RESERVED44[3];
  union {
    volatile  uint8_t VBPZR;
    stc_rtc_vbpzr_field_t VBPZR_f;
  };
        uint8_t RESERVED45[79];
  union {
    volatile uint32_t BREG00_03;
    struct {
      volatile uint16_t BREG00_01;
      volatile uint16_t BREG02_03;
    };
    struct {
      volatile  uint8_t BREG00;
      volatile  uint8_t BREG01;
      volatile  uint8_t BREG02;
      volatile  uint8_t BREG03;
    };
  };
  union {
    volatile uint32_t BREG04_07;
    struct {
      volatile uint16_t BREG04_05;
      volatile uint16_t BREG06_07;
    };
    struct {
      volatile  uint8_t BREG04;
      volatile  uint8_t BREG05;
      volatile  uint8_t BREG06;
      volatile  uint8_t BREG07;
    };
  };
  union {
    volatile uint32_t BREG08_0B;
    struct {
      volatile uint16_t BREG08_09;
      volatile uint16_t BREG0A_0B;
    };
    struct {
      volatile  uint8_t BREG08;
      volatile  uint8_t BREG09;
      volatile  uint8_t BREG0A;
      volatile  uint8_t BREG0B;
    };
  };
  union {
    volatile uint32_t BREG0C_0F;
    struct {
      volatile uint16_t BREG0C_0D;
      volatile uint16_t BREG0E_0F;
    };
    struct {
      volatile  uint8_t BREG0C;
      volatile  uint8_t BREG0D;
      volatile  uint8_t BREG0E;
      volatile  uint8_t BREG0F;
    };
  };
  union {
    volatile uint32_t BREG10_13;
    struct {
      volatile uint16_t BREG10_11;
      volatile uint16_t BREG12_13;
    };
    struct {
      volatile  uint8_t BREG10;
      volatile  uint8_t BREG11;
      volatile  uint8_t BREG12;
      volatile  uint8_t BREG13;
    };
  };
  union {
    volatile uint32_t BREG14_17;
    struct {
      volatile uint16_t BREG14_15;
      volatile uint16_t BREG16_17;
    };
    struct {
      volatile  uint8_t BREG14;
      volatile  uint8_t BREG15;
      volatile  uint8_t BREG16;
      volatile  uint8_t BREG17;
    };
  };
  union {
    volatile uint32_t BREG18_1B;
    struct {
      volatile uint16_t BREG18_19;
      volatile uint16_t BREG1A_1B;
    };
    struct {
      volatile  uint8_t BREG18;
      volatile  uint8_t BREG19;
      volatile  uint8_t BREG1A;
      volatile  uint8_t BREG1B;
    };
  };
  union {
    volatile uint32_t BREG1C_1F;
    struct {
      volatile uint16_t BREG1C_1D;
      volatile uint16_t BREG1E_1F;
    };
    struct {
      volatile  uint8_t BREG1C;
      volatile  uint8_t BREG1D;
      volatile  uint8_t BREG1E;
      volatile  uint8_t BREG1F;
    };
  };
  union {
    volatile uint32_t BREG20_23;
    struct {
      volatile uint16_t BREG20_21;
      volatile uint16_t BREG22_23;
    };
    struct {
      volatile  uint8_t BREG20;
      volatile  uint8_t BREG21;
      volatile  uint8_t BREG22;
      volatile  uint8_t BREG23;
    };
  };
  union {
    volatile uint32_t BREG24_27;
    struct {
      volatile uint16_t BREG24_25;
      volatile uint16_t BREG26_27;
    };
    struct {
      volatile  uint8_t BREG24;
      volatile  uint8_t BREG25;
      volatile  uint8_t BREG26;
      volatile  uint8_t BREG27;
    };
  };
  union {
    volatile uint32_t BREG28_2B;
    struct {
      volatile uint16_t BREG28_29;
      volatile uint16_t BREG2A_2B;
    };
    struct {
      volatile  uint8_t BREG28;
      volatile  uint8_t BREG29;
      volatile  uint8_t BREG2A;
      volatile  uint8_t BREG2B;
    };
  };
  union {
    volatile uint32_t BREG2C_2F;
    struct {
      volatile uint16_t BREG2C_2D;
      volatile uint16_t BREG2E_2F;
    };
    struct {
      volatile  uint8_t BREG2C;
      volatile  uint8_t BREG2D;
      volatile  uint8_t BREG2E;
      volatile  uint8_t BREG2F;
    };
  };
  union {
    volatile uint32_t BREG30_33;
    struct {
      volatile uint16_t BREG30_31;
      volatile uint16_t BREG32_33;
    };
    struct {
      volatile  uint8_t BREG30;
      volatile  uint8_t BREG31;
      volatile  uint8_t BREG32;
      volatile  uint8_t BREG33;
    };
  };
  union {
    volatile uint32_t BREG34_37;
    struct {
      volatile uint16_t BREG34_35;
      volatile uint16_t BREG36_37;
    };
    struct {
      volatile  uint8_t BREG34;
      volatile  uint8_t BREG35;
      volatile  uint8_t BREG36;
      volatile  uint8_t BREG37;
    };
  };
  union {
    volatile uint32_t BREG38_3B;
    struct {
      volatile uint16_t BREG38_39;
      volatile uint16_t BREG3A_3B;
    };
    struct {
      volatile  uint8_t BREG38;
      volatile  uint8_t BREG39;
      volatile  uint8_t BREG3A;
      volatile  uint8_t BREG3B;
    };
  };
  union {
    volatile uint32_t BREG3C_3F;
    struct {
      volatile uint16_t BREG3C_3D;
      volatile uint16_t BREG3E_3F;
    };
    struct {
      volatile  uint8_t BREG3C;
      volatile  uint8_t BREG3D;
      volatile  uint8_t BREG3E;
      volatile  uint8_t BREG3F;
    };
  };
  union {
    volatile uint32_t BREG40_43;
    struct {
      volatile uint16_t BREG40_41;
      volatile uint16_t BREG42_43;
    };
    struct {
      volatile  uint8_t BREG40;
      volatile  uint8_t BREG41;
      volatile  uint8_t BREG42;
      volatile  uint8_t BREG43;
    };
  };
  union {
    volatile uint32_t BREG44_47;
    struct {
      volatile uint16_t BREG44_45;
      volatile uint16_t BREG46_47;
    };
    struct {
      volatile  uint8_t BREG44;
      volatile  uint8_t BREG45;
      volatile  uint8_t BREG46;
      volatile  uint8_t BREG47;
    };
  };
  union {
    volatile uint32_t BREG48_4B;
    struct {
      volatile uint16_t BREG48_49;
      volatile uint16_t BREG4A_4B;
    };
    struct {
      volatile  uint8_t BREG48;
      volatile  uint8_t BREG49;
      volatile  uint8_t BREG4A;
      volatile  uint8_t BREG4B;
    };
  };
  union {
    volatile uint32_t BREG4C_4F;
    struct {
      volatile uint16_t BREG4C_4D;
      volatile uint16_t BREG4E_4F;
    };
    struct {
      volatile  uint8_t BREG4C;
      volatile  uint8_t BREG4D;
      volatile  uint8_t BREG4E;
      volatile  uint8_t BREG4F;
    };
  };
  union {
    volatile uint32_t BREG50_53;
    struct {
      volatile uint16_t BREG50_51;
      volatile uint16_t BREG52_53;
    };
    struct {
      volatile  uint8_t BREG50;
      volatile  uint8_t BREG51;
      volatile  uint8_t BREG52;
      volatile  uint8_t BREG53;
    };
  };
  union {
    volatile uint32_t BREG54_57;
    struct {
      volatile uint16_t BREG54_55;
      volatile uint16_t BREG56_57;
    };
    struct {
      volatile  uint8_t BREG54;
      volatile  uint8_t BREG55;
      volatile  uint8_t BREG56;
      volatile  uint8_t BREG57;
    };
  };
  union {
    volatile uint32_t BREG58_5B;
    struct {
      volatile uint16_t BREG58_59;
      volatile uint16_t BREG5A_5B;
    };
    struct {
      volatile  uint8_t BREG58;
      volatile  uint8_t BREG59;
      volatile  uint8_t BREG5A;
      volatile  uint8_t BREG5B;
    };
  };
  union {
    volatile uint32_t BREG5C_5F;
    struct {
      volatile uint16_t BREG5C_5D;
      volatile uint16_t BREG5E_5F;
    };
    struct {
      volatile  uint8_t BREG5C;
      volatile  uint8_t BREG5D;
      volatile  uint8_t BREG5E;
      volatile  uint8_t BREG5F;
    };
  };
  union {
    volatile uint32_t BREG60_63;
    struct {
      volatile uint16_t BREG60_61;
      volatile uint16_t BREG62_63;
    };
    struct {
      volatile  uint8_t BREG60;
      volatile  uint8_t BREG61;
      volatile  uint8_t BREG62;
      volatile  uint8_t BREG63;
    };
  };
  union {
    volatile uint32_t BREG64_67;
    struct {
      volatile uint16_t BREG64_65;
      volatile uint16_t BREG66_67;
    };
    struct {
      volatile  uint8_t BREG64;
      volatile  uint8_t BREG65;
      volatile  uint8_t BREG66;
      volatile  uint8_t BREG67;
    };
  };
  union {
    volatile uint32_t BREG68_6B;
    struct {
      volatile uint16_t BREG68_69;
      volatile uint16_t BREG6A_6B;
    };
    struct {
      volatile  uint8_t BREG68;
      volatile  uint8_t BREG69;
      volatile  uint8_t BREG6A;
      volatile  uint8_t BREG6B;
    };
  };
  union {
    volatile uint32_t BREG6C_6F;
    struct {
      volatile uint16_t BREG6C_6D;
      volatile uint16_t BREG6E_6F;
    };
    struct {
      volatile  uint8_t BREG6C;
      volatile  uint8_t BREG6D;
      volatile  uint8_t BREG6E;
      volatile  uint8_t BREG6F;
    };
  };
  union {
    volatile uint32_t BREG70_73;
    struct {
      volatile uint16_t BREG70_71;
      volatile uint16_t BREG72_73;
    };
    struct {
      volatile  uint8_t BREG70;
      volatile  uint8_t BREG71;
      volatile  uint8_t BREG72;
      volatile  uint8_t BREG73;
    };
  };
  union {
    volatile uint32_t BREG74_77;
    struct {
      volatile uint16_t BREG74_75;
      volatile uint16_t BREG76_77;
    };
    struct {
      volatile  uint8_t BREG74;
      volatile  uint8_t BREG75;
      volatile  uint8_t BREG76;
      volatile  uint8_t BREG77;
    };
  };
  union {
    volatile uint32_t BREG78_7B;
    struct {
      volatile uint16_t BREG78_79;
      volatile uint16_t BREG7A_7B;
    };
    struct {
      volatile  uint8_t BREG78;
      volatile  uint8_t BREG79;
      volatile  uint8_t BREG7A;
      volatile  uint8_t BREG7B;
    };
  };
  union {
    volatile uint32_t BREG7C_7F;
    struct {
      volatile uint16_t BREG7C_7D;
      volatile uint16_t BREG7E_7F;
    };
    struct {
      volatile  uint8_t BREG7C;
      volatile  uint8_t BREG7D;
      volatile  uint8_t BREG7E;
      volatile  uint8_t BREG7F;
    };
  };
}FM4_RTC_TypeDef;



 
 
typedef struct
{
  union {
    volatile  uint8_t LCR_PRSLD;
    stc_lcr_lcr_prsld_field_t LCR_PRSLD_f;
  };
}FM4_LCR_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t CKEN0;
    stc_clk_gating_cken0_field_t CKEN0_f;
  };
  union {
    volatile uint32_t MRST0;
    stc_clk_gating_mrst0_field_t MRST0_f;
  };
       uint8_t RESERVED1[8];
  union {
    volatile uint32_t CKEN1;
    stc_clk_gating_cken1_field_t CKEN1_f;
  };
  union {
    volatile uint32_t MRST1;
    stc_clk_gating_mrst1_field_t MRST1_f;
  };
       uint8_t RESERVED3[8];
  union {
    volatile uint32_t CKEN2;
    stc_clk_gating_cken2_field_t CKEN2_f;
  };
  union {
    volatile uint32_t MRST2;
    stc_clk_gating_mrst2_field_t MRST2_f;
  };
}FM4_CLK_GATING_TypeDef;



 
 
typedef struct
{
  volatile uint32_t SSCTL1;
  volatile uint32_t SSCTL2;
}FM4_PLL_CONTROL_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t ICCR;
    stc_i2spre_iccr_field_t ICCR_f;
  };
  union {
    volatile uint32_t IPCR1;
    stc_i2spre_ipcr1_field_t IPCR1_f;
  };
  union {
    volatile uint32_t IPCR2;
    stc_i2spre_ipcr2_field_t IPCR2_f;
  };
  union {
    volatile uint32_t IPCR3;
    stc_i2spre_ipcr3_field_t IPCR3_f;
  };
  union {
    volatile uint32_t IPCR4;
    stc_i2spre_ipcr4_field_t IPCR4_f;
  };
  union {
    volatile uint32_t IP_STR;
    stc_i2spre_ip_str_field_t IP_STR_f;
  };
  union {
    volatile uint32_t IPINT_ENR;
    stc_i2spre_ipint_enr_field_t IPINT_ENR_f;
  };
  union {
    volatile uint32_t IPINT_CLR;
    stc_i2spre_ipint_clr_field_t IPINT_CLR_f;
  };
  union {
    volatile uint32_t IPINT_STR;
    stc_i2spre_ipint_str_field_t IPINT_STR_f;
  };
  union {
    volatile uint32_t IPCR5;
    stc_i2spre_ipcr5_field_t IPCR5_f;
  };
}FM4_I2SPRE_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t MODE0;
    stc_exbus_mode_field_t MODE0_f;
  };
  union {
    volatile uint32_t MODE1;
    stc_exbus_mode_field_t MODE1_f;
  };
  union {
    volatile uint32_t MODE2;
    stc_exbus_mode_field_t MODE2_f;
  };
  union {
    volatile uint32_t MODE3;
    stc_exbus_mode_field_t MODE3_f;
  };
  union {
    volatile uint32_t MODE4;
    stc_exbus_mode_field_t MODE4_f;
  };
  union {
    volatile uint32_t MODE5;
    stc_exbus_mode_field_t MODE5_f;
  };
  union {
    volatile uint32_t MODE6;
    stc_exbus_mode_field_t MODE6_f;
  };
  union {
    volatile uint32_t MODE7;
    stc_exbus_mode_field_t MODE7_f;
  };
  union {
    volatile uint32_t TIM0;
    stc_exbus_tim_field_t TIM0_f;
  };
  volatile uint32_t TIM1;
  union {
    volatile uint32_t TIM2;
    stc_exbus_tim_field_t TIM2_f;
  };
  union {
    volatile uint32_t TIM3;
    stc_exbus_tim_field_t TIM3_f;
  };
  union {
    volatile uint32_t TIM4;
    stc_exbus_tim_field_t TIM4_f;
  };
  union {
    volatile uint32_t TIM5;
    stc_exbus_tim_field_t TIM5_f;
  };
  union {
    volatile uint32_t TIM6;
    stc_exbus_tim_field_t TIM6_f;
  };
  union {
    volatile uint32_t TIM7;
    stc_exbus_tim_field_t TIM7_f;
  };
  union {
    volatile uint32_t AREA0;
    stc_exbus_area_field_t AREA0_f;
  };
  union {
    volatile uint32_t AREA1;
    stc_exbus_area_field_t AREA1_f;
  };
  union {
    volatile uint32_t AREA2;
    stc_exbus_area_field_t AREA2_f;
  };
  union {
    volatile uint32_t AREA3;
    stc_exbus_area_field_t AREA3_f;
  };
  union {
    volatile uint32_t AREA4;
    stc_exbus_area_field_t AREA4_f;
  };
  union {
    volatile uint32_t AREA5;
    stc_exbus_area_field_t AREA5_f;
  };
  union {
    volatile uint32_t AREA6;
    stc_exbus_area_field_t AREA6_f;
  };
  union {
    volatile uint32_t AREA7;
    stc_exbus_area_field_t AREA7_f;
  };
  union {
    volatile uint32_t ATIM0;
    stc_exbus_atim_field_t ATIM0_f;
  };
  union {
    volatile uint32_t ATIM1;
    stc_exbus_atim_field_t ATIM1_f;
  };
  union {
    volatile uint32_t ATIM2;
    stc_exbus_atim_field_t ATIM2_f;
  };
  union {
    volatile uint32_t ATIM3;
    stc_exbus_atim_field_t ATIM3_f;
  };
  union {
    volatile uint32_t ATIM4;
    stc_exbus_atim_field_t ATIM4_f;
  };
  union {
    volatile uint32_t ATIM5;
    stc_exbus_atim_field_t ATIM5_f;
  };
  union {
    volatile uint32_t ATIM6;
    stc_exbus_atim_field_t ATIM6_f;
  };
  union {
    volatile uint32_t ATIM7;
    stc_exbus_atim_field_t ATIM7_f;
  };
    uint8_t RESERVED1[128];
  union {
    volatile uint32_t SDMODE;
    stc_exbus_sdmode_field_t SDMODE_f;
  };
  union {
    volatile uint32_t REFTIM;
    stc_exbus_reftim_field_t REFTIM_f;
  };
  union {
    volatile uint32_t PWRDWN;
    stc_exbus_pwrdwn_field_t PWRDWN_f;
  };
  union {
    volatile uint32_t SDTIM;
    stc_exbus_sdtim_field_t SDTIM_f;
  };
  union {
    volatile uint32_t SDCMD;
    stc_exbus_sdcmd_field_t SDCMD_f;
  };
    uint8_t RESERVED2[236];
  union {
    volatile uint32_t MEMCERR;
    stc_exbus_memcerr_field_t MEMCERR_f;
  };
    uint8_t RESERVED3[252];
  union {
    volatile uint32_t DCLKR;
    stc_exbus_dclkr_field_t DCLKR_f;
  };
  union {
    volatile uint32_t EST;
    stc_exbus_est_field_t EST_f;
  };
  union {
    volatile uint32_t WEAD;
    stc_exbus_wead_field_t WEAD_f;
  };
  union {
    volatile uint32_t ESCLR;
    stc_exbus_esclr_field_t ESCLR_f;
  };
  union {
    volatile uint32_t AMODE;
    stc_exbus_amode_field_t AMODE_f;
  };
}FM4_EXBUS_TypeDef;



 
 
typedef struct
{
  union {
    union {
      volatile uint16_t HCNT;
      stc_usb_hcnt_field_t HCNT_f;
    };
    struct {
      union {
        volatile  uint8_t HCNT0;
        stc_usb_hcnt0_field_t HCNT0_f;
      };
      union {
        volatile  uint8_t HCNT1;
        stc_usb_hcnt1_field_t HCNT1_f;
      };
    };
  };
        uint8_t RESERVED0[2];
  union {
    volatile  uint8_t HIRQ;
    stc_usb_hirq_field_t HIRQ_f;
  };
  union {
    volatile  uint8_t HERR;
    stc_usb_herr_field_t HERR_f;
  };
        uint8_t RESERVED1[2];
  union {
    volatile  uint8_t HSTATE;
    stc_usb_hstate_field_t HSTATE_f;
  };
  union {
    volatile  uint8_t HFCOMP;
    stc_usb_hfcomp_field_t HFCOMP_f;
  };
        uint8_t RESERVED2[2];
  union {
    union {
      volatile uint16_t HRTIMER;
      stc_usb_hrtimer_field_t HRTIMER_f;
    };
    struct {
      union {
        volatile  uint8_t HRTIMER0;
        stc_usb_hrtimer0_field_t HRTIMER0_f;
      };
      union {
        volatile  uint8_t HRTIMER1;
        stc_usb_hrtimer1_field_t HRTIMER1_f;
      };
    };
  };
        uint8_t RESERVED3[2];
  union {
    volatile  uint8_t HRTIMER2;
    stc_usb_hrtimer2_field_t HRTIMER2_f;
  };
  union {
    volatile  uint8_t HADR;
    stc_usb_hadr_field_t HADR_f;
  };
        uint8_t RESERVED4[2];
  union {
    union {
      volatile uint16_t HEOF;
      stc_usb_heof_field_t HEOF_f;
    };
    struct {
      union {
        volatile  uint8_t HEOF0;
        stc_usb_heof0_field_t HEOF0_f;
      };
      union {
        volatile  uint8_t HEOF1;
        stc_usb_heof1_field_t HEOF1_f;
      };
    };
  };
        uint8_t RESERVED5[2];
  union {
    union {
      volatile uint16_t HFRAME;
      stc_usb_hframe_field_t HFRAME_f;
    };
    struct {
      union {
        volatile  uint8_t HFRAME0;
        stc_usb_hframe0_field_t HFRAME0_f;
      };
      union {
        volatile  uint8_t HFRAME1;
        stc_usb_hframe1_field_t HFRAME1_f;
      };
    };
  };
        uint8_t RESERVED6[2];
  union {
    volatile  uint8_t HTOKEN;
    stc_usb_htoken_field_t HTOKEN_f;
  };
        uint8_t RESERVED7[3];
  union {
    volatile uint16_t UDCC;
    stc_usb_udcc_field_t UDCC_f;
  };
        uint8_t RESERVED8[2];
  union {
    volatile uint16_t EP0C;
    stc_usb_ep0c_field_t EP0C_f;
  };
        uint8_t RESERVED9[2];
  union {
    volatile uint16_t EP1C;
    stc_usb_ep1c_field_t EP1C_f;
  };
        uint8_t RESERVED10[2];
  union {
    volatile uint16_t EP2C;
    stc_usb_ep2c_field_t EP2C_f;
  };
        uint8_t RESERVED11[2];
  union {
    volatile uint16_t EP3C;
    stc_usb_ep3c_field_t EP3C_f;
  };
        uint8_t RESERVED12[2];
  union {
    volatile uint16_t EP4C;
    stc_usb_ep4c_field_t EP4C_f;
  };
        uint8_t RESERVED13[2];
  union {
    volatile uint16_t EP5C;
    stc_usb_ep5c_field_t EP5C_f;
  };
        uint8_t RESERVED14[2];
  union {
    volatile uint16_t TMSP;
    stc_usb_tmsp_field_t TMSP_f;
  };
        uint8_t RESERVED15[2];
  union {
    volatile  uint8_t UDCS;
    stc_usb_udcs_field_t UDCS_f;
  };
  union {
    volatile  uint8_t UDCIE;
    stc_usb_udcie_field_t UDCIE_f;
  };
        uint8_t RESERVED16[2];
  union {
    volatile uint16_t EP0IS;
    stc_usb_ep0is_field_t EP0IS_f;
  };
        uint8_t RESERVED17[2];
  union {
    volatile uint16_t EP0OS;
    stc_usb_ep0os_field_t EP0OS_f;
  };
        uint8_t RESERVED18[2];
  union {
    volatile uint16_t EP1S;
    stc_usb_ep1s_field_t EP1S_f;
  };
        uint8_t RESERVED19[2];
  union {
    volatile uint16_t EP2S;
    stc_usb_ep2s_field_t EP2S_f;
  };
        uint8_t RESERVED20[2];
  volatile uint16_t EP3S;
        uint8_t RESERVED21[2];
  union {
    volatile uint16_t EP4S;
    stc_usb_ep4s_field_t EP4S_f;
  };
        uint8_t RESERVED22[2];
  union {
    volatile uint16_t EP5S;
    stc_usb_ep5s_field_t EP5S_f;
  };
        uint8_t RESERVED23[2];
  union {
    volatile uint16_t EP0DT;
    struct {
      volatile  uint8_t EP0DTL;
      volatile  uint8_t EP0DTH;
    };
  };
        uint8_t RESERVED24[2];
  union {
    volatile uint16_t EP1DT;
    struct {
      volatile  uint8_t EP1DTL;
      volatile  uint8_t EP1DTH;
    };
  };
        uint8_t RESERVED25[2];
  union {
    volatile uint16_t EP2DT;
    struct {
      volatile  uint8_t EP2DTL;
      volatile  uint8_t EP2DTH;
    };
  };
        uint8_t RESERVED26[2];
  union {
    volatile uint16_t EP3DT;
    struct {
      volatile  uint8_t EP3DTL;
      volatile  uint8_t EP3DTH;
    };
  };
        uint8_t RESERVED27[2];
  union {
    volatile uint16_t EP4DT;
    struct {
      volatile  uint8_t EP4DTL;
      volatile  uint8_t EP4DTH;
    };
  };
        uint8_t RESERVED28[2];
  union {
    volatile uint16_t EP5DT;
    struct {
      volatile  uint8_t EP5DTL;
      volatile  uint8_t EP5DTH;
    };
  };
}FM4_USB_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t DMACR;
    stc_dmac_dmacr_field_t DMACR_f;
  };
        uint8_t RESERVED0[12];
  union {
    volatile uint32_t DMACA0;
    stc_dmac_dmaca0_field_t DMACA0_f;
  };
  union {
    volatile uint32_t DMACB0;
    stc_dmac_dmacb0_field_t DMACB0_f;
  };
  volatile uint32_t DMACSA0;
  volatile uint32_t DMACDA0;
  union {
    volatile uint32_t DMACA1;
    stc_dmac_dmaca1_field_t DMACA1_f;
  };
  union {
    volatile uint32_t DMACB1;
    stc_dmac_dmacb1_field_t DMACB1_f;
  };
  volatile uint32_t DMACSA1;
  volatile uint32_t DMACDA1;
  union {
    volatile uint32_t DMACA2;
    stc_dmac_dmaca2_field_t DMACA2_f;
  };
  union {
    volatile uint32_t DMACB2;
    stc_dmac_dmacb2_field_t DMACB2_f;
  };
  volatile uint32_t DMACSA2;
  volatile uint32_t DMACDA2;
  union {
    volatile uint32_t DMACA3;
    stc_dmac_dmaca3_field_t DMACA3_f;
  };
  union {
    volatile uint32_t DMACB3;
    stc_dmac_dmacb3_field_t DMACB3_f;
  };
  volatile uint32_t DMACSA3;
  volatile uint32_t DMACDA3;
  union {
    volatile uint32_t DMACA4;
    stc_dmac_dmaca4_field_t DMACA4_f;
  };
  union {
    volatile uint32_t DMACB4;
    stc_dmac_dmacb4_field_t DMACB4_f;
  };
  volatile uint32_t DMACSA4;
  volatile uint32_t DMACDA4;
  union {
    volatile uint32_t DMACA5;
    stc_dmac_dmaca5_field_t DMACA5_f;
  };
  union {
    volatile uint32_t DMACB5;
    stc_dmac_dmacb5_field_t DMACB5_f;
  };
  volatile uint32_t DMACSA5;
  volatile uint32_t DMACDA5;
  union {
    volatile uint32_t DMACA6;
    stc_dmac_dmaca6_field_t DMACA6_f;
  };
  union {
    volatile uint32_t DMACB6;
    stc_dmac_dmacb6_field_t DMACB6_f;
  };
  volatile uint32_t DMACSA6;
  volatile uint32_t DMACDA6;
  union {
    volatile uint32_t DMACA7;
    stc_dmac_dmaca7_field_t DMACA7_f;
  };
  union {
    volatile uint32_t DMACB7;
    stc_dmac_dmacb7_field_t DMACB7_f;
  };
  volatile uint32_t DMACSA7;
  volatile uint32_t DMACDA7;
}FM4_DMAC_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint16_t CTRLR;
    stc_can_ctrlr_field_t CTRLR_f;
  };
  union {
    volatile uint16_t STATR;
    stc_can_statr_field_t STATR_f;
  };
  union {
    volatile uint16_t ERRCNT;
    stc_can_errcnt_field_t ERRCNT_f;
  };
  union {
    volatile uint16_t BTR;
    stc_can_btr_field_t BTR_f;
  };
  union {
    volatile uint16_t INTR;
    stc_can_intr_field_t INTR_f;
  };
  union {
    volatile uint16_t TESTR;
    stc_can_testr_field_t TESTR_f;
  };
  union {
    volatile uint16_t BRPER;
    stc_can_brper_field_t BRPER_f;
  };
        uint8_t RESERVED0[2];
  union {
    volatile uint16_t IF1CREQ;
    stc_can_if1creq_field_t IF1CREQ_f;
  };
  union {
    volatile uint16_t IF1CMSK;
    stc_can_if1cmsk_field_t IF1CMSK_f;
  };
  union {
    union {
      volatile uint32_t IF1MSK;
      stc_can_if1msk_field_t IF1MSK_f;
    };
    struct {
      volatile uint16_t IF1MSK1;
      union {
        volatile uint16_t IF1MSK2;
        stc_can_if1msk2_field_t IF1MSK2_f;
      };
    };
  };
  union {
    union {
      volatile uint32_t IF1ARB;
      stc_can_if1arb_field_t IF1ARB_f;
    };
    struct {
      volatile uint16_t IF1ARB1;
      union {
        volatile uint16_t IF1ARB2;
        stc_can_if1arb2_field_t IF1ARB2_f;
      };
    };
  };
  union {
    volatile uint16_t IF1MCTR;
    stc_can_if1mctr_field_t IF1MCTR_f;
  };
        uint8_t RESERVED1[2];
  union {
    volatile uint32_t IF1DTA_L;
    struct {
      volatile uint16_t IF1DTA1_L;
      volatile uint16_t IF1DTA2_L;
    };
  };
  union {
    volatile uint32_t IF1DTB_L;
    struct {
      volatile uint16_t IF1DTB1_L;
      volatile uint16_t IF1DTB2_L;
    };
  };
        uint8_t RESERVED2[8];
  union {
    volatile uint32_t IF1DTA_B;
    struct {
      volatile uint16_t IF1DTA2_B;
      volatile uint16_t IF1DTA1_B;
    };
  };
  union {
    volatile uint32_t IF1DTB_B;
    struct {
      volatile uint16_t IF1DTB2_B;
      volatile uint16_t IF1DTB1_B;
    };
  };
        uint8_t RESERVED3[8];
  union {
    volatile uint16_t IF2CREQ;
    stc_can_if2creq_field_t IF2CREQ_f;
  };
  union {
    volatile uint16_t IF2CMSK;
    stc_can_if2cmsk_field_t IF2CMSK_f;
  };
  union {
    union {
      volatile uint32_t IF2MSK;
      stc_can_if2msk_field_t IF2MSK_f;
    };
    struct {
      volatile uint16_t IF2MSK1;
      union {
        volatile uint16_t IF2MSK2;
        stc_can_if2msk2_field_t IF2MSK2_f;
      };
    };
  };
  union {
    volatile uint32_t IF2ARB;
    struct {
      volatile uint16_t IF2ARB1;
      union {
        volatile uint16_t IF2ARB2;
        stc_can_if2arb2_field_t IF2ARB2_f;
      };
    };
  };
  union {
    volatile uint16_t IF2MCTR;
    stc_can_if2mctr_field_t IF2MCTR_f;
  };
        uint8_t RESERVED4[2];
  union {
    volatile uint32_t IF2DTA_L;
    struct {
      volatile uint16_t IF2DTA1_L;
      volatile uint16_t IF2DTA2_L;
    };
  };
  union {
    volatile uint32_t IF2DTB_L;
    struct {
      volatile uint16_t IF2DTB1_L;
      volatile uint16_t IF2DTB2_L;
    };
  };
        uint8_t RESERVED5[8];
  union {
    volatile uint32_t IF2DTA_B;
    struct {
      volatile uint16_t IF2DTA2_B;
      volatile uint16_t IF2DTA1_B;
    };
  };
  union {
    volatile uint32_t IF2DTB_B;
    struct {
      volatile uint16_t IF2DTB2_B;
      volatile uint16_t IF2DTB1_B;
    };
  };
        uint8_t RESERVED6[24];
  union {
    union {
      volatile uint32_t TREQR;
      stc_can_treqr_field_t TREQR_f;
    };
    struct {
      union {
        volatile uint16_t TREQR1;
        stc_can_treqr1_field_t TREQR1_f;
      };
      union {
        volatile uint16_t TREQR2;
        stc_can_treqr2_field_t TREQR2_f;
      };
    };
  };
        uint8_t RESERVED7[12];
  union {
    union {
      volatile uint32_t NEWDT;
      stc_can_newdt_field_t NEWDT_f;
    };
    struct {
      union {
        volatile uint16_t NEWDT1;
        stc_can_newdt1_field_t NEWDT1_f;
      };
      volatile uint16_t NEWDT2;
    };
  };
        uint8_t RESERVED8[12];
  union {
    union {
      volatile uint32_t INTPND;
      stc_can_intpnd_field_t INTPND_f;
    };
    struct {
      union {
        volatile uint16_t INTPND1;
        stc_can_intpnd1_field_t INTPND1_f;
      };
      union {
        volatile uint16_t INTPND2;
        stc_can_intpnd2_field_t INTPND2_f;
      };
    };
  };
        uint8_t RESERVED9[12];
  union {
    union {
      volatile uint32_t MSGVAL;
      stc_can_msgval_field_t MSGVAL_f;
    };
    struct {
      union {
        volatile uint16_t MSGVAL1;
        stc_can_msgval1_field_t MSGVAL1_f;
      };
      union {
        volatile uint16_t MSGVAL2;
        stc_can_msgval2_field_t MSGVAL2_f;
      };
    };
  };
}FM4_CAN_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t MCR;
    stc_ethernet_mac_mcr_field_t MCR_f;
  };
  union {
    volatile uint32_t MFFR;
    stc_ethernet_mac_mffr_field_t MFFR_f;
  };
  union {
    volatile uint32_t MHTRH;
    stc_ethernet_mac_mhtrh_field_t MHTRH_f;
  };
  union {
    volatile uint32_t MHTRL;
    stc_ethernet_mac_mhtrl_field_t MHTRL_f;
  };
  union {
    volatile uint32_t GAR;
    stc_ethernet_mac_gar_field_t GAR_f;
  };
  union {
    volatile uint32_t GDR;
    stc_ethernet_mac_gdr_field_t GDR_f;
  };
  union {
    volatile uint32_t FCR;
    stc_ethernet_mac_fcr_field_t FCR_f;
  };
  union {
    volatile uint32_t VTR;
    stc_ethernet_mac_vtr_field_t VTR_f;
  };
        uint8_t RESERVED1[8];
  union {
    volatile uint32_t RWFFR;
    stc_ethernet_mac_rwffr_field_t RWFFR_f;
  };
  union {
    volatile uint32_t PMTR;
    stc_ethernet_mac_pmtr_field_t PMTR_f;
  };
  union {
    volatile uint32_t LPICSR;
    stc_ethernet_mac_lpicsr_field_t LPICSR_f;
  };
  union {
    volatile uint32_t LPITCR;
    stc_ethernet_mac_lpitcr_field_t LPITCR_f;
  };
  union {
    volatile uint32_t ISR;
    stc_ethernet_mac_isr_field_t ISR_f;
  };
  union {
    volatile uint32_t IMR;
    stc_ethernet_mac_imr_field_t IMR_f;
  };
  union {
    volatile uint32_t MAR0H;
    stc_ethernet_mac_mar0h_field_t MAR0H_f;
  };
  union {
    volatile uint32_t MAR0L;
    stc_ethernet_mac_mar0l_field_t MAR0L_f;
  };
  union {
    volatile uint32_t MAR1H;
    stc_ethernet_mac_marh_field_t MAR1H_f;
  };
  union {
    volatile uint32_t MAR1L;
    stc_ethernet_mac_marl_field_t MAR1L_f;
  };
  union {
    volatile uint32_t MAR2H;
    stc_ethernet_mac_marh_field_t MAR2H_f;
  };
  union {
    volatile uint32_t MAR2L;
    stc_ethernet_mac_marl_field_t MAR2L_f;
  };
  union {
    volatile uint32_t MAR3H;
    stc_ethernet_mac_marh_field_t MAR3H_f;
  };
  union {
    volatile uint32_t MAR3L;
    stc_ethernet_mac_marl_field_t MAR3L_f;
  };
  union {
    volatile uint32_t MAR4H;
    stc_ethernet_mac_marh_field_t MAR4H_f;
  };
  union {
    volatile uint32_t MAR4L;
    stc_ethernet_mac_marl_field_t MAR4L_f;
  };
  union {
    volatile uint32_t MAR5H;
    stc_ethernet_mac_marh_field_t MAR5H_f;
  };
  union {
    volatile uint32_t MAR5L;
    stc_ethernet_mac_marl_field_t MAR5L_f;
  };
  union {
    volatile uint32_t MAR6H;
    stc_ethernet_mac_marh_field_t MAR6H_f;
  };
  union {
    volatile uint32_t MAR6L;
    stc_ethernet_mac_marl_field_t MAR6L_f;
  };
  union {
    volatile uint32_t MAR7H;
    stc_ethernet_mac_marh_field_t MAR7H_f;
  };
  union {
    volatile uint32_t MAR7L;
    stc_ethernet_mac_marl_field_t MAR7L_f;
  };
  union {
    volatile uint32_t MAR8H;
    stc_ethernet_mac_marh_field_t MAR8H_f;
  };
  union {
    volatile uint32_t MAR8L;
    stc_ethernet_mac_marl_field_t MAR8L_f;
  };
  union {
    volatile uint32_t MAR9H;
    stc_ethernet_mac_marh_field_t MAR9H_f;
  };
  union {
    volatile uint32_t MAR9L;
    stc_ethernet_mac_marl_field_t MAR9L_f;
  };
  union {
    volatile uint32_t MAR10H;
    stc_ethernet_mac_marh_field_t MAR10H_f;
  };
  union {
    volatile uint32_t MAR10L;
    stc_ethernet_mac_marl_field_t MAR10L_f;
  };
  union {
    volatile uint32_t MAR11H;
    stc_ethernet_mac_marh_field_t MAR11H_f;
  };
  union {
    volatile uint32_t MAR11L;
    stc_ethernet_mac_marl_field_t MAR11L_f;
  };
  union {
    volatile uint32_t MAR12H;
    stc_ethernet_mac_marh_field_t MAR12H_f;
  };
  union {
    volatile uint32_t MAR12L;
    stc_ethernet_mac_marl_field_t MAR12L_f;
  };
  union {
    volatile uint32_t MAR13H;
    stc_ethernet_mac_marh_field_t MAR13H_f;
  };
  union {
    volatile uint32_t MAR13L;
    stc_ethernet_mac_marl_field_t MAR13L_f;
  };
  union {
    volatile uint32_t MAR14H;
    stc_ethernet_mac_marh_field_t MAR14H_f;
  };
  union {
    volatile uint32_t MAR14L;
    stc_ethernet_mac_marl_field_t MAR14L_f;
  };
  union {
    volatile uint32_t MAR15H;
    stc_ethernet_mac_marh_field_t MAR15H_f;
  };
  union {
    volatile uint32_t MAR15L;
    stc_ethernet_mac_marl_field_t MAR15L_f;
  };
        uint8_t RESERVED2[24];
  union {
    volatile uint32_t RGSR;
    stc_ethernet_mac_rgsr_field_t RGSR_f;
  };
        uint8_t RESERVED3[36];
  volatile uint32_t mmc_cntl;
  volatile uint32_t mmc_intr_rx;
  volatile uint32_t mmc_intr_tx;
  volatile uint32_t mmc_intr_mask_rx;
  volatile uint32_t mmc_intr_mask_tx;
  volatile uint32_t txoctetcount_gb;
  volatile uint32_t txframecount_gb;
  volatile uint32_t txbroadcastframes_g;
  volatile uint32_t txmulticastframes_g;
  volatile uint32_t tx64octets_gb;
  volatile uint32_t tx65to127octets_gb;
  volatile uint32_t tx128to255octets_gb;
  volatile uint32_t tx256to511octets_gb;
  volatile uint32_t tx512to1023octets_gb;
  volatile uint32_t tx1024tomaxoctets_gb;
  volatile uint32_t txunicastframes_gb;
  volatile uint32_t txmulticastframes_gb;
  volatile uint32_t txbroadcastframes_gb;
  volatile uint32_t txunderflowerror;
  volatile uint32_t txsinglecol_g;
  volatile uint32_t txmulticol_g;
  volatile uint32_t txdeferred;
  volatile uint32_t txlatecol;
  volatile uint32_t txexesscol;
  volatile uint32_t txcarriererror;
  volatile uint32_t txoctetcount_g;
  volatile uint32_t txframecount_g;
  volatile uint32_t txexecessdef_g;
  volatile uint32_t txpauseframes;
  volatile uint32_t txvlanframes_g;
        uint8_t RESERVED4[8];
  volatile uint32_t rxframecount_gb;
  volatile uint32_t rxoctetcount_gb;
  volatile uint32_t rxoctetcount_g;
  volatile uint32_t rxbroadcastframes_g;
  volatile uint32_t rxmulticastframes_g;
  volatile uint32_t rxcrcerror;
  volatile uint32_t rxallignmenterror;
  volatile uint32_t rxrunterror;
  volatile uint32_t rxjabbererror;
  volatile uint32_t rxundersize_g;
  volatile uint32_t rxoversize_g;
  volatile uint32_t rx64octets_gb;
  volatile uint32_t rx65to127octets_gb;
  volatile uint32_t rx128to255octets_gb;
  volatile uint32_t rx256to511octets_gb;
  volatile uint32_t rx512to1023octets_gb;
  volatile uint32_t rx1024tomaxoctets_gb;
  volatile uint32_t rxunicastframes_g;
  volatile uint32_t rxlengtherror;
  volatile uint32_t rxoutofrangetype;
  volatile uint32_t rxpauseframes;
  volatile uint32_t rxfifooverflow;
  volatile uint32_t rxvlanframes_gb;
  volatile uint32_t rxwatchdogerror;
        uint8_t RESERVED5[32];
  volatile uint32_t mmc_ipc_intr_mask_rx;
        uint8_t RESERVED6[4];
  volatile uint32_t mmc_ipc_intr_rx;
        uint8_t RESERVED7[4];
  volatile uint32_t rxipv4_gd_frms;
  volatile uint32_t rxipv4_hdrerr_frms;
  volatile uint32_t rxipv4_nopay_frms;
  volatile uint32_t rxipv4_frag_frms;
  volatile uint32_t rxipv4_udsbl_frms;
  volatile uint32_t rxipv6_gd_frms;
  volatile uint32_t rxipv6_hdrerr_frms;
  volatile uint32_t rxipv6_nopay_frms;
  volatile uint32_t rxudp_gd_frms;
  volatile uint32_t rxudp_err_frms;
  volatile uint32_t rxtcp_gd_frms;
  volatile uint32_t rxtcp_err_frms;
  volatile uint32_t rxicmp_gd_frms;
  volatile uint32_t rxicmp_err_frms;
        uint8_t RESERVED8[8];
  volatile uint32_t rxipv4_gd_octets;
  volatile uint32_t rxipv4_hdrerr_octets;
  volatile uint32_t rxipv4_nopay_octets;
  volatile uint32_t rxipv4_frag_octets;
  volatile uint32_t rxipv4_udsbl_octets;
  volatile uint32_t rxipv6_gd_octets;
  volatile uint32_t rxipv6_hdrerr_octets;
  volatile uint32_t rxipv6_nopay_octets;
  volatile uint32_t rxudp_gd_octets;
  volatile uint32_t rxudp_err_octets;
  volatile uint32_t rxtcp_gd_octets;
  volatile uint32_t rxtcp_err_octets;
  volatile uint32_t rxicmp_gd_octets;
  volatile uint32_t rxicmp_err_octets;
        uint8_t RESERVED9[1144];
  union {
    volatile uint32_t TSCR;
    stc_ethernet_mac_tscr_field_t TSCR_f;
  };
  union {
    volatile uint32_t SSIR;
    stc_ethernet_mac_ssir_field_t SSIR_f;
  };
  union {
    volatile uint32_t STSR;
    stc_ethernet_mac_stsr_field_t STSR_f;
  };
  union {
    volatile uint32_t STNR;
    stc_ethernet_mac_stnr_field_t STNR_f;
  };
  union {
    volatile uint32_t STSUR;
    stc_ethernet_mac_stsur_field_t STSUR_f;
  };
  union {
    volatile uint32_t STNUR;
    stc_ethernet_mac_stnur_field_t STNUR_f;
  };
  union {
    volatile uint32_t TSAR;
    stc_ethernet_mac_tsar_field_t TSAR_f;
  };
  union {
    volatile uint32_t TTSR;
    stc_ethernet_mac_ttsr_field_t TTSR_f;
  };
  union {
    volatile uint32_t TTNR;
    stc_ethernet_mac_ttnr_field_t TTNR_f;
  };
  union {
    volatile uint32_t STHWSR;
    stc_ethernet_mac_sthwsr_field_t STHWSR_f;
  };
  union {
    volatile uint32_t TSR;
    stc_ethernet_mac_tsr_field_t TSR_f;
  };
  union {
    volatile uint32_t PPSCR;
    stc_ethernet_mac_ppscr_field_t PPSCR_f;
  };
  union {
    volatile uint32_t ATNR;
    stc_ethernet_mac_atnr_field_t ATNR_f;
  };
  union {
    volatile uint32_t ATSR;
    stc_ethernet_mac_atsr_field_t ATSR_f;
  };
        uint8_t RESERVED10[200];
  union {
    volatile uint32_t MAR16H;
    stc_ethernet_mac_marh_field_t MAR16H_f;
  };
  union {
    volatile uint32_t MAR16L;
    stc_ethernet_mac_marl_field_t MAR16L_f;
  };
  union {
    volatile uint32_t MAR17H;
    stc_ethernet_mac_marh_field_t MAR17H_f;
  };
  union {
    volatile uint32_t MAR17L;
    stc_ethernet_mac_marl_field_t MAR17L_f;
  };
  union {
    volatile uint32_t MAR18H;
    stc_ethernet_mac_marh_field_t MAR18H_f;
  };
  union {
    volatile uint32_t MAR18L;
    stc_ethernet_mac_marl_field_t MAR18L_f;
  };
  union {
    volatile uint32_t MAR19H;
    stc_ethernet_mac_marh_field_t MAR19H_f;
  };
  union {
    volatile uint32_t MAR19L;
    stc_ethernet_mac_marl_field_t MAR19L_f;
  };
  union {
    volatile uint32_t MAR20H;
    stc_ethernet_mac_marh_field_t MAR20H_f;
  };
  union {
    volatile uint32_t MAR20L;
    stc_ethernet_mac_marl_field_t MAR20L_f;
  };
  union {
    volatile uint32_t MAR21H;
    stc_ethernet_mac_marh_field_t MAR21H_f;
  };
  union {
    volatile uint32_t MAR21L;
    stc_ethernet_mac_marl_field_t MAR21L_f;
  };
  union {
    volatile uint32_t MAR22H;
    stc_ethernet_mac_marh_field_t MAR22H_f;
  };
  union {
    volatile uint32_t MAR22L;
    stc_ethernet_mac_marl_field_t MAR22L_f;
  };
  union {
    volatile uint32_t MAR23H;
    stc_ethernet_mac_marh_field_t MAR23H_f;
  };
  union {
    volatile uint32_t MAR23L;
    stc_ethernet_mac_marl_field_t MAR23L_f;
  };
  union {
    volatile uint32_t MAR24H;
    stc_ethernet_mac_marh_field_t MAR24H_f;
  };
  union {
    volatile uint32_t MAR24L;
    stc_ethernet_mac_marl_field_t MAR24L_f;
  };
  union {
    volatile uint32_t MAR25H;
    stc_ethernet_mac_marh_field_t MAR25H_f;
  };
  union {
    volatile uint32_t MAR25L;
    stc_ethernet_mac_marl_field_t MAR25L_f;
  };
  union {
    volatile uint32_t MAR26H;
    stc_ethernet_mac_marh_field_t MAR26H_f;
  };
  union {
    volatile uint32_t MAR26L;
    stc_ethernet_mac_marl_field_t MAR26L_f;
  };
  union {
    volatile uint32_t MAR27H;
    stc_ethernet_mac_marh_field_t MAR27H_f;
  };
  union {
    volatile uint32_t MAR27L;
    stc_ethernet_mac_marl_field_t MAR27L_f;
  };
  union {
    volatile uint32_t MAR28H;
    stc_ethernet_mac_marh_field_t MAR28H_f;
  };
  union {
    volatile uint32_t MAR28L;
    stc_ethernet_mac_marl_field_t MAR28L_f;
  };
  union {
    volatile uint32_t MAR29H;
    stc_ethernet_mac_marh_field_t MAR29H_f;
  };
  union {
    volatile uint32_t MAR29L;
    stc_ethernet_mac_marl_field_t MAR29L_f;
  };
  union {
    volatile uint32_t MAR30H;
    stc_ethernet_mac_marh_field_t MAR30H_f;
  };
  union {
    volatile uint32_t MAR30L;
    stc_ethernet_mac_marl_field_t MAR30L_f;
  };
  union {
    volatile uint32_t MAR31H;
    stc_ethernet_mac_marh_field_t MAR31H_f;
  };
  union {
    volatile uint32_t MAR31L;
    stc_ethernet_mac_marl_field_t MAR31L_f;
  };
        uint8_t RESERVED11[1920];
  union {
    volatile uint32_t BMR;
    stc_ethernet_mac_bmr_field_t BMR_f;
  };
  union {
    volatile uint32_t TPDR;
    stc_ethernet_mac_tpdr_field_t TPDR_f;
  };
  union {
    volatile uint32_t RPDR;
    stc_ethernet_mac_rpdr_field_t RPDR_f;
  };
  union {
    volatile uint32_t RDLAR;
    stc_ethernet_mac_rdlar_field_t RDLAR_f;
  };
  union {
    volatile uint32_t TDLAR;
    stc_ethernet_mac_tdlar_field_t TDLAR_f;
  };
  union {
    volatile uint32_t SR;
    stc_ethernet_mac_sr_field_t SR_f;
  };
  union {
    volatile uint32_t OMR;
    stc_ethernet_mac_omr_field_t OMR_f;
  };
  union {
    volatile uint32_t IER;
    stc_ethernet_mac_ier_field_t IER_f;
  };
  union {
    volatile uint32_t MFBOCR;
    stc_ethernet_mac_mfbocr_field_t MFBOCR_f;
  };
  union {
    volatile uint32_t RIWTR;
    stc_ethernet_mac_riwtr_field_t RIWTR_f;
  };
        uint8_t RESERVED12[4];
  union {
    volatile uint32_t AHBSR;
    stc_ethernet_mac_ahbsr_field_t AHBSR_f;
  };
        uint8_t RESERVED13[24];
  union {
    volatile uint32_t CHTDR;
    stc_ethernet_mac_chtdr_field_t CHTDR_f;
  };
  union {
    volatile uint32_t CHRDR;
    stc_ethernet_mac_chrdr_field_t CHRDR_f;
  };
  union {
    volatile uint32_t CHTBAR;
    stc_ethernet_mac_chtbar_field_t CHTBAR_f;
  };
  union {
    volatile uint32_t CHRBAR;
    stc_ethernet_mac_chrbar_field_t CHRBAR_f;
  };
}FM4_ETHERNET_MAC_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t ETH_MODE;
    stc_ethernet_control_eth_mode_field_t ETH_MODE_f;
  };
        uint8_t RESERVED1[4];
  union {
    volatile uint32_t ETH_CLKG;
    stc_ethernet_control_eth_clkg_field_t ETH_CLKG_f;
  };
}FM4_ETHERNET_CONTROL_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t RXFDAT;
    stc_i2s_rxfdat_field_t RXFDAT_f;
  };
  union {
    volatile uint32_t TXFDAT;
    stc_i2s_txfdat_field_t TXFDAT_f;
  };
  union {
    volatile uint32_t CNTREG;
    stc_i2s_cntreg_field_t CNTREG_f;
  };
  union {
    volatile uint32_t MCR0REG;
    stc_i2s_mcr0reg_field_t MCR0REG_f;
  };
  union {
    volatile uint32_t MCR1REG;
    stc_i2s_mcr1reg_field_t MCR1REG_f;
  };
  union {
    volatile uint32_t MCR2REG;
    stc_i2s_mcr2reg_field_t MCR2REG_f;
  };
  union {
    volatile uint32_t OPRREG;
    stc_i2s_oprreg_field_t OPRREG_f;
  };
  union {
    volatile uint32_t SRST;
    stc_i2s_srst_field_t SRST_f;
  };
  union {
    volatile uint32_t INTCNT;
    stc_i2s_intcnt_field_t INTCNT_f;
  };
  union {
    volatile uint32_t STATUS;
    stc_i2s_status_field_t STATUS_f;
  };
  union {
    volatile uint32_t DMAACT;
    stc_i2s_dmaact_field_t DMAACT_f;
  };
  union {
    volatile uint32_t TSTREG;
    stc_i2s_tstreg_field_t TSTREG_f;
  };
}FM4_I2S_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t SSA2;
    struct {
      volatile  uint16_t SSALA2;
      volatile  uint16_t SSAHA2;
    };
  };
  union {
    volatile  uint16_t SBSIZE;
    stc_sdif_sbsize_field_t SBSIZE_f;
  };
    volatile  uint16_t SBLCNT;
  union {
    volatile uint32_t SSA1;
    struct {
      volatile  uint16_t SSALA1;
      volatile  uint16_t SSAHA1;
    };
  };
  union {
    volatile  uint16_t STRSFMD;
    stc_sdif_strsfmd_field_t STRSFMD_f;
  };
  union {
    volatile  uint16_t SCMMD;
    stc_sdif_scmmd_field_t SCMMD_f;
  };
    volatile  uint16_t SRESP0;
    volatile  uint16_t SRESP1;
    volatile  uint16_t SRESP2;
    volatile  uint16_t SRESP3;
    volatile  uint16_t SRESP4;
    volatile  uint16_t SRESP5;
    volatile  uint16_t SRESP6;
    volatile  uint16_t SRESP7;
  union {
    volatile uint32_t SBUFDP;
    struct {
      volatile  uint16_t SBUFDP0;
      volatile  uint16_t SBUFDP1;
    };
  };
  union {
    volatile  uint32_t SPRSTAT;
    stc_sdif_sprstat_field_t SPRSTAT_f;
  };
  union {
    volatile  uint8_t SHCTL1;
    stc_sdif_shctl1_field_t SHCTL1_f;
  };
  union {
    volatile  uint8_t SPWRCTL;
    stc_sdif_spwrctl_field_t SPWRCTL_f;
  };
  union {
    volatile  uint8_t SBLKGPCTL;
    stc_sdif_sblkgpctl_field_t SBLKGPCTL_f;
  };
  union {
    volatile  uint8_t SWKUPCTL;
    stc_sdif_swkupctl_field_t SWKUPCTL_f;
  };
  union {
    volatile  uint16_t SCLKCTL;
    stc_sdif_sclkctl_field_t SCLKCTL_f;
  };
  union {
    volatile  uint8_t STOCTL;
    stc_sdif_stoctl_field_t STOCTL_f;
  };
  union {
    volatile  uint8_t SSRST;
    stc_sdif_ssrst_field_t SSRST_f;
  };
  union {
    volatile  uint16_t SNINTST;
    stc_sdif_snintst_field_t SNINTST_f;
  };
  union {
    volatile  uint16_t SEINTST;
    stc_sdif_seintst_field_t SEINTST_f;
  };
  union {
    volatile  uint16_t SNINTSTE;
    stc_sdif_snintste_field_t SNINTSTE_f;
  };
  union {
    volatile  uint16_t SEINTSTE;
    stc_sdif_seintste_field_t SEINTSTE_f;
  };
  union {
    volatile  uint16_t SNINTSGE;
    stc_sdif_snintsge_field_t SNINTSGE_f;
  };
  union {
    volatile  uint16_t SEINTSGE;
    stc_sdif_seintsge_field_t SEINTSGE_f;
  };
  union {
    volatile  uint16_t SACMDEST;
    stc_sdif_sacmdest_field_t SACMDEST_f;
  };
  union {
    volatile  uint16_t SHCTL2;
    stc_sdif_shctl2_field_t SHCTL2_f;
  };
  union {
    volatile  uint16_t CAPBLTY0;
    stc_sdif_capblty0_field_t CAPBLTY0_f;
  };
  union {
    volatile  uint16_t CAPBLTY1;
    stc_sdif_capblty1_field_t CAPBLTY1_f;
  };
  union {
    volatile  uint16_t CAPBLTY2;
    stc_sdif_capblty2_field_t CAPBLTY2_f;
  };
  union {
    volatile  uint16_t CAPBLTY3;
    stc_sdif_capblty3_field_t CAPBLTY3_f;
  };
  union {
    volatile  uint16_t MXCCAPY0;
    stc_sdif_mxccapy0_field_t MXCCAPY0_f;
  };
  union {
    volatile  uint16_t MXCCAPY1;
    stc_sdif_mxccapy1_field_t MXCCAPY1_f;
  };
  union {
    volatile  uint16_t MXCCAPY2;
    stc_sdif_mxccapy2_field_t MXCCAPY2_f;
  };
  union {
    volatile  uint16_t MXCCAPY3;
    stc_sdif_mxccapy3_field_t MXCCAPY3_f;
  };
  union {
    volatile  uint16_t FEACEST;
    stc_sdif_feacest_field_t FEACEST_f;
  };
  union {
    volatile  uint16_t SFEEIST;
    stc_sdif_sfeeist_field_t SFEEIST_f;
  };
  union {
    volatile  uint8_t ADMAEST;
    stc_sdif_admaest_field_t ADMAEST_f;
  };
        uint8_t RESERVED0[3];
  union {
    volatile  uint16_t SADSA0;
    stc_sdif_sadsa0_field_t SADSA0_f;
  };
  union {
    volatile  uint16_t SADSA1;
    stc_sdif_sadsa1_field_t SADSA1_f;
  };
  union {
    volatile  uint16_t SADSA2;
    stc_sdif_sadsa2_field_t SADSA2_f;
  };
  union {
    volatile  uint16_t SADSA3;
    stc_sdif_sadsa3_field_t SADSA3_f;
  };
  union {
    volatile  uint16_t SPRVAL0;
    stc_sdif_sprval0_field_t SPRVAL0_f;
  };
  union {
    volatile  uint16_t SPRVAL1;
    stc_sdif_sprval1_field_t SPRVAL1_f;
  };
  union {
    volatile  uint16_t SPRVAL2;
    stc_sdif_sprval2_field_t SPRVAL2_f;
  };
  union {
    volatile  uint16_t SPRVAL3;
    stc_sdif_sprval3_field_t SPRVAL3_f;
  };
  union {
    volatile  uint16_t SPRVAL4;
    stc_sdif_sprval4_field_t SPRVAL4_f;
  };
  union {
    volatile  uint16_t SPRVAL5;
    stc_sdif_sprval5_field_t SPRVAL5_f;
  };
  union {
    volatile  uint16_t SPRVAL6;
    stc_sdif_sprval6_field_t SPRVAL6_f;
  };
  union {
    volatile  uint16_t SPRVAL7;
    stc_sdif_sprval7_field_t SPRVAL7_f;
  };
        uint8_t RESERVED1[112];
  union {
    volatile  uint16_t SSHBCTLL;
    stc_sdif_sshbctll_field_t SSHBCTLL_f;
  };
  union {
    volatile  uint16_t SSHBCTLH;
    stc_sdif_sshbctlh_field_t SSHBCTLH_f;
  };
        uint8_t RESERVED2[24];
  union {
    volatile  uint16_t SSLIST;
    stc_sdif_sslist_field_t SSLIST_f;
  };
  union {
    volatile  uint16_t SHCTLV;
    stc_sdif_shctlv_field_t SHCTLV_f;
  };
  union {
    volatile  uint16_t AHBCFGL;
    stc_sdif_ahbcfgl_field_t AHBCFGL_f;
  };
  union {
    volatile  uint16_t AHBCFGH;
    stc_sdif_ahbcfgh_field_t AHBCFGH_f;
  };
  union {
    volatile  uint16_t SPWSWCL;
    stc_sdif_spwswcl_field_t SPWSWCL_f;
  };
  union {
    volatile  uint16_t SPWSWCH;
    stc_sdif_spwswch_field_t SPWSWCH_f;
  };
  union {
    volatile  uint16_t STUNSETL;
    stc_sdif_stunsetl_field_t STUNSETL_f;
  };
  union {
    volatile  uint16_t STUNSETH;
    stc_sdif_stunseth_field_t STUNSETH_f;
  };
  union {
    volatile  uint16_t STUNSTL;
    stc_sdif_stunstl_field_t STUNSTL_f;
  };
  union {
    volatile  uint16_t STUNSTH;
    stc_sdif_stunsth_field_t STUNSTH_f;
  };
        uint8_t RESERVED3[4];
  volatile  uint16_t SIOCTL2L;
  volatile  uint16_t SIOCTL2H;
  union {
    volatile  uint16_t PSWISTL;
    stc_sdif_pswistl_field_t PSWISTL_f;
  };
  union {
    volatile  uint16_t PSWISTH;
    stc_sdif_pswisth_field_t PSWISTH_f;
  };
  union {
    volatile  uint16_t PSWISTEL;
    stc_sdif_pswistel_field_t PSWISTEL_f;
  };
  union {
    volatile  uint16_t PSWISTEH;
    stc_sdif_pswisteh_field_t PSWISTEH_f;
  };
  union {
    volatile  uint16_t PSWISGEL;
    stc_sdif_pswisgel_field_t PSWISGEL_f;
  };
  union {
    volatile  uint16_t PSWISGEH;
    stc_sdif_pswisgeh_field_t PSWISGEH_f;
  };
  union {
    volatile  uint16_t MMCSDCL;
    stc_sdif_mmcsdcl_field_t MMCSDCL_f;
  };
  union {
    volatile  uint16_t MMCSDCH;
    stc_sdif_mmcsdch_field_t MMCSDCH_f;
  };
  union {
    volatile  uint16_t MCWIRQC0;
    stc_sdif_mcwirqc0_field_t MCWIRQC0_f;
  };
  union {
    volatile  uint16_t MCWIRQC1;
    stc_sdif_mcwirqc1_field_t MCWIRQC1_f;
  };
  union {
    volatile  uint16_t MCWIRQC2;
    stc_sdif_mcwirqc2_field_t MCWIRQC2_f;
  };
  union {
    volatile  uint16_t MCWIRQC3;
    stc_sdif_mcwirqc3_field_t MCWIRQC3_f;
  };
  union {
    volatile  uint16_t MCRPCKBL;
    stc_sdif_mcrpckbl_field_t MCRPCKBL_f;
  };
  union {
    volatile  uint16_t MCRPCKBH;
    stc_sdif_mcrpckbh_field_t MCRPCKBH_f;
  };
        uint8_t RESERVED4[32];
  union {
    volatile  uint16_t SCDETECS;
    stc_sdif_scdetecs_field_t SCDETECS_f;
  };
        uint8_t RESERVED5[2];
}FM4_SDIF_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t CREL;
    stc_canfd_crel_field_t CREL_f;
  };
  union {
    volatile uint32_t ENDN;
    stc_canfd_endn_field_t ENDN_f;
  };
        uint8_t RESERVED1[4];
  union {
    volatile uint32_t FBTP;
    stc_canfd_fbtp_field_t FBTP_f;
  };
  union {
    volatile uint32_t TEST;
    stc_canfd_test_field_t TEST_f;
  };
  union {
    volatile uint32_t RWD;
    stc_canfd_rwd_field_t RWD_f;
  };
  union {
    volatile uint32_t CCCR;
    stc_canfd_cccr_field_t CCCR_f;
  };
  union {
    volatile uint32_t BTP;
    stc_canfd_btp_field_t BTP_f;
  };
  union {
    volatile uint32_t TSCC;
    stc_canfd_tscc_field_t TSCC_f;
  };
  union {
    volatile uint32_t TSCV;
    stc_canfd_tscv_field_t TSCV_f;
  };
  union {
    volatile uint32_t TOCC;
    stc_canfd_tocc_field_t TOCC_f;
  };
  union {
    volatile uint32_t TOCV;
    stc_canfd_tocv_field_t TOCV_f;
  };
        uint8_t RESERVED2[16];
  union {
    volatile uint32_t ECR;
    stc_canfd_ecr_field_t ECR_f;
  };
  union {
    volatile uint32_t PSR;
    stc_canfd_psr_field_t PSR_f;
  };
        uint8_t RESERVED3[8];
  union {
    volatile uint32_t IR;
    stc_canfd_ir_field_t IR_f;
  };
  union {
    volatile uint32_t IE;
    stc_canfd_ie_field_t IE_f;
  };
  union {
    volatile uint32_t ILS;
    stc_canfd_ils_field_t ILS_f;
  };
  union {
    volatile uint32_t ILE;
    stc_canfd_ile_field_t ILE_f;
  };
        uint8_t RESERVED4[32];
  union {
    volatile uint32_t GFC;
    stc_canfd_gfc_field_t GFC_f;
  };
  union {
    volatile uint32_t SIDFC;
    stc_canfd_sidfc_field_t SIDFC_f;
  };
  union {
    volatile uint32_t XIDFC;
    stc_canfd_xidfc_field_t XIDFC_f;
  };
        uint8_t RESERVED5[4];
  union {
    volatile uint32_t XIDAM;
    stc_canfd_xidam_field_t XIDAM_f;
  };
  union {
    volatile uint32_t HPMS;
    stc_canfd_hpms_field_t HPMS_f;
  };
  union {
    volatile uint32_t NDAT1;
    stc_canfd_ndat1_field_t NDAT1_f;
  };
  union {
    volatile uint32_t NDAT2;
    stc_canfd_ndat2_field_t NDAT2_f;
  };
  union {
    volatile uint32_t RXF0C;
    stc_canfd_rxf0c_field_t RXF0C_f;
  };
  union {
    volatile uint32_t RXF0S;
    stc_canfd_rxf0s_field_t RXF0S_f;
  };
  union {
    volatile uint32_t RXF0A;
    stc_canfd_rxf0a_field_t RXF0A_f;
  };
  union {
    volatile uint32_t RXBC;
    stc_canfd_rxbc_field_t RXBC_f;
  };
  union {
    volatile uint32_t RXF1C;
    stc_canfd_rxf1c_field_t RXF1C_f;
  };
  union {
    volatile uint32_t RXF1S;
    stc_canfd_rxf1s_field_t RXF1S_f;
  };
  union {
    volatile uint32_t RXF1A;
    stc_canfd_rxf1a_field_t RXF1A_f;
  };
  union {
    volatile uint32_t RXESC;
    stc_canfd_rxesc_field_t RXESC_f;
  };
  union {
    volatile uint32_t TXBC;
    stc_canfd_txbc_field_t TXBC_f;
  };
  union {
    volatile uint32_t TXFQS;
    stc_canfd_txfqs_field_t TXFQS_f;
  };
  union {
    volatile uint32_t TXESC;
    stc_canfd_txesc_field_t TXESC_f;
  };
  union {
    volatile uint32_t TXBRP;
    stc_canfd_txbrp_field_t TXBRP_f;
  };
  union {
    volatile uint32_t TXBAR;
    stc_canfd_txbar_field_t TXBAR_f;
  };
  union {
    volatile uint32_t TXBCR;
    stc_canfd_txbcr_field_t TXBCR_f;
  };
  union {
    volatile uint32_t TXBTO;
    stc_canfd_txbto_field_t TXBTO_f;
  };
  union {
    volatile uint32_t TXBCF;
    stc_canfd_txbcf_field_t TXBCF_f;
  };
  union {
    volatile uint32_t TXBTIE;
    stc_canfd_txbtie_field_t TXBTIE_f;
  };
  union {
    volatile uint32_t TXBCIE;
    stc_canfd_txbcie_field_t TXBCIE_f;
  };
        uint8_t RESERVED6[8];
  union {
    volatile uint32_t TXEFC;
    stc_canfd_txefc_field_t TXEFC_f;
  };
  union {
    volatile uint32_t TXFS;
    stc_canfd_txfs_field_t TXFS_f;
  };
  union {
    volatile uint32_t TXFA;
    stc_canfd_txfa_field_t TXFA_f;
  };
        uint8_t RESERVED7[260];
  union {
    volatile  uint8_t FDECR;
    stc_canfd_fdecr_field_t FDECR_f;
  };
  union {
    volatile  uint8_t FDESR;
    stc_canfd_fdesr_field_t FDESR_f;
  };
  union {
    volatile uint16_t FDSEAR;
    stc_canfd_fdsear_field_t FDSEAR_f;
  };
        uint8_t RESERVED8[1];
  union {
    volatile  uint8_t FDESCR;
    stc_canfd_fdescr_field_t FDESCR_f;
  };
  union {
    volatile uint16_t FDDEAR;
    stc_canfd_fddear_field_t FDDEAR_f;
  };
        uint8_t RESERVED9[8];
  union {
    volatile uint16_t TSCNTR;
    stc_canfd_tscntr_field_t TSCNTR_f;
  };
  union {
    volatile uint16_t TSMDR;
    stc_canfd_tsmdr_field_t TSMDR_f;
  };
  union {
    volatile uint32_t TSDIVR;
    stc_canfd_tsdivr_field_t TSDIVR_f;
  };
  union {
    volatile uint16_t TSCDTR;
    stc_canfd_tscdtr_field_t TSCDTR_f;
  };
  union {
    volatile uint16_t TSCPCLR;
    stc_canfd_tscpclr_field_t TSCPCLR_f;
  };
}FM4_CANFD_TypeDef;



 
 
typedef struct
{
  volatile uint32_t PRGCRC_POLY;
  volatile uint32_t PRGCRC_SEED;
  volatile uint32_t PRGCRC_FXOR;
  union {
    volatile uint32_t PRGCRC_CFG;
    stc_pcrc_prgcrc_cfg_field_t PRGCRC_CFG_f;
  };
  volatile uint32_t PRGCRC_WR;
  volatile uint32_t PRGCRC_RD;
}FM4_PCRC_TypeDef;



 
 
typedef struct
{
  union {
    volatile uint32_t MCTRL;
    stc_hsspi_mctrl_field_t MCTRL_f;
  };
  union {
    volatile uint32_t PCC0;
    stc_hsspi_pcc0_field_t PCC0_f;
  };
  union {
    volatile uint32_t PCC1;
    stc_hsspi_pcc1_field_t PCC1_f;
  };
  union {
    volatile uint32_t PCC2;
    stc_hsspi_pcc2_field_t PCC2_f;
  };
  union {
    volatile uint32_t PCC3;
    stc_hsspi_pcc3_field_t PCC3_f;
  };
  union {
    volatile uint32_t TXF;
    stc_hsspi_txf_field_t TXF_f;
  };
  union {
    volatile uint32_t TXE;
    stc_hsspi_txe_field_t TXE_f;
  };
  union {
    volatile uint32_t TXC;
    stc_hsspi_txc_field_t TXC_f;
  };
  union {
    volatile uint32_t RXF;
    stc_hsspi_rxf_field_t RXF_f;
  };
  union {
    volatile uint32_t RXE;
    stc_hsspi_rxe_field_t RXE_f;
  };
  union {
    volatile uint32_t RXC;
    stc_hsspi_rxc_field_t RXC_f;
  };
  union {
    volatile uint32_t FAULTF;
    stc_hsspi_faultf_field_t FAULTF_f;
  };
  union {
    volatile uint32_t FAULTC;
    stc_hsspi_faultc_field_t FAULTC_f;
  };
  union {
    volatile  uint8_t DMCFG;
    stc_hsspi_dmcfg_field_t DMCFG_f;
  };
  union {
    volatile  uint8_t DMDMAEN;
    stc_hsspi_dmdmaen_field_t DMDMAEN_f;
  };
        uint8_t RESERVED1[2];
  union {
    volatile  uint8_t DMSTART;
    stc_hsspi_dmstart_field_t DMSTART_f;
  };
  union {
    volatile  uint8_t DMSTOP;
    stc_hsspi_dmstop_field_t DMSTOP_f;
  };
  union {
    volatile  uint8_t DMPSEL;
    stc_hsspi_dmpsel_field_t DMPSEL_f;
  };
  union {
    volatile  uint8_t DMTRP;
    stc_hsspi_dmtrp_field_t DMTRP_f;
  };
  union {
    volatile uint16_t DMBCC;
    stc_hsspi_dmbcc_field_t DMBCC_f;
  };
  union {
    volatile uint16_t DMBCS;
    stc_hsspi_dmbcs_field_t DMBCS_f;
  };
  union {
    volatile uint32_t DMSTATUS;
    stc_hsspi_dmstatus_field_t DMSTATUS_f;
  };
        uint8_t RESERVED2[8];
  union {
    volatile uint32_t FIFOCFG;
    stc_hsspi_fifocfg_field_t FIFOCFG_f;
  };
  union {
    volatile uint32_t TXFIFO0;
    stc_hsspi_txfifo_field_t TXFIFO0_f;
  };
  union {
    volatile uint32_t TXFIFO1;
    stc_hsspi_txfifo_field_t TXFIFO1_f;
  };
  union {
    volatile uint32_t TXFIFO2;
    stc_hsspi_txfifo_field_t TXFIFO2_f;
  };
  union {
    volatile uint32_t TXFIFO3;
    stc_hsspi_txfifo_field_t TXFIFO3_f;
  };
  union {
    volatile uint32_t TXFIFO4;
    stc_hsspi_txfifo_field_t TXFIFO4_f;
  };
  union {
    volatile uint32_t TXFIFO5;
    stc_hsspi_txfifo_field_t TXFIFO5_f;
  };
  union {
    volatile uint32_t TXFIFO6;
    stc_hsspi_txfifo_field_t TXFIFO6_f;
  };
  union {
    volatile uint32_t TXFIFO7;
    stc_hsspi_txfifo_field_t TXFIFO7_f;
  };
  union {
    volatile uint32_t TXFIFO8;
    stc_hsspi_txfifo_field_t TXFIFO8_f;
  };
  union {
    volatile uint32_t TXFIFO9;
    stc_hsspi_txfifo_field_t TXFIFO9_f;
  };
  union {
    volatile uint32_t TXFIFO10;
    stc_hsspi_txfifo_field_t TXFIFO10_f;
  };
  union {
    volatile uint32_t TXFIFO11;
    stc_hsspi_txfifo_field_t TXFIFO11_f;
  };
  union {
    volatile uint32_t TXFIFO12;
    stc_hsspi_txfifo_field_t TXFIFO12_f;
  };
  union {
    volatile uint32_t TXFIFO13;
    stc_hsspi_txfifo_field_t TXFIFO13_f;
  };
  union {
    volatile uint32_t TXFIFO14;
    stc_hsspi_txfifo_field_t TXFIFO14_f;
  };
  union {
    volatile uint32_t TXFIFO15;
    stc_hsspi_txfifo_field_t TXFIFO15_f;
  };
  union {
    volatile uint32_t RXFIFO0;
    stc_hsspi_rxfifo_field_t RXFIFO0_f;
  };
  union {
    volatile uint32_t RXFIFO1;
    stc_hsspi_rxfifo_field_t RXFIFO1_f;
  };
  union {
    volatile uint32_t RXFIFO2;
    stc_hsspi_rxfifo_field_t RXFIFO2_f;
  };
  union {
    volatile uint32_t RXFIFO3;
    stc_hsspi_rxfifo_field_t RXFIFO3_f;
  };
  union {
    volatile uint32_t RXFIFO4;
    stc_hsspi_rxfifo_field_t RXFIFO4_f;
  };
  union {
    volatile uint32_t RXFIFO5;
    stc_hsspi_rxfifo_field_t RXFIFO5_f;
  };
  union {
    volatile uint32_t RXFIFO6;
    stc_hsspi_rxfifo_field_t RXFIFO6_f;
  };
  union {
    volatile uint32_t RXFIFO7;
    stc_hsspi_rxfifo_field_t RXFIFO7_f;
  };
  union {
    volatile uint32_t RXFIFO8;
    stc_hsspi_rxfifo_field_t RXFIFO8_f;
  };
  union {
    volatile uint32_t RXFIFO9;
    stc_hsspi_rxfifo_field_t RXFIFO9_f;
  };
  union {
    volatile uint32_t RXFIFO10;
    stc_hsspi_rxfifo_field_t RXFIFO10_f;
  };
  union {
    volatile uint32_t RXFIFO11;
    stc_hsspi_rxfifo_field_t RXFIFO11_f;
  };
  union {
    volatile uint32_t RXFIFO12;
    stc_hsspi_rxfifo_field_t RXFIFO12_f;
  };
  union {
    volatile uint32_t RXFIFO13;
    stc_hsspi_rxfifo_field_t RXFIFO13_f;
  };
  union {
    volatile uint32_t RXFIFO14;
    stc_hsspi_rxfifo_field_t RXFIFO14_f;
  };
  union {
    volatile uint32_t RXFIFO15;
    stc_hsspi_rxfifo_field_t RXFIFO15_f;
  };
  union {
    volatile uint32_t CSCFG;
    stc_hsspi_cscfg_field_t CSCFG_f;
  };
  union {
    volatile uint32_t CSITIME;
    stc_hsspi_csitime_field_t CSITIME_f;
  };
  union {
    volatile uint32_t CSAEXT;
    stc_hsspi_csaext_field_t CSAEXT_f;
  };
  union {
    volatile uint16_t RDCSDC0;
    stc_hsspi_rdcsdc_field_t RDCSDC0_f;
  };
  union {
    volatile uint16_t RDCSDC1;
    stc_hsspi_rdcsdc_field_t RDCSDC1_f;
  };
  union {
    volatile uint16_t RDCSDC2;
    stc_hsspi_rdcsdc_field_t RDCSDC2_f;
  };
  union {
    volatile uint16_t RDCSDC3;
    stc_hsspi_rdcsdc_field_t RDCSDC3_f;
  };
  union {
    volatile uint16_t RDCSDC4;
    stc_hsspi_rdcsdc_field_t RDCSDC4_f;
  };
  union {
    volatile uint16_t RDCSDC5;
    stc_hsspi_rdcsdc_field_t RDCSDC5_f;
  };
  union {
    volatile uint16_t RDCSDC6;
    stc_hsspi_rdcsdc_field_t RDCSDC6_f;
  };
  union {
    volatile uint16_t RDCSDC7;
    stc_hsspi_rdcsdc_field_t RDCSDC7_f;
  };
  union {
    volatile uint16_t WRCSDC0;
    stc_hsspi_wrcsdc_field_t WRCSDC0_f;
  };
  union {
    volatile uint16_t WRCSDC1;
    stc_hsspi_wrcsdc_field_t WRCSDC1_f;
  };
  union {
    volatile uint16_t WRCSDC2;
    stc_hsspi_wrcsdc_field_t WRCSDC2_f;
  };
  union {
    volatile uint16_t WRCSDC3;
    stc_hsspi_wrcsdc_field_t WRCSDC3_f;
  };
  union {
    volatile uint16_t WRCSDC4;
    stc_hsspi_wrcsdc_field_t WRCSDC4_f;
  };
  union {
    volatile uint16_t WRCSDC5;
    stc_hsspi_wrcsdc_field_t WRCSDC5_f;
  };
  union {
    volatile uint16_t WRCSDC6;
    stc_hsspi_wrcsdc_field_t WRCSDC6_f;
  };
  union {
    volatile uint16_t WRCSDC7;
    stc_hsspi_wrcsdc_field_t WRCSDC7_f;
  };
  union {
    volatile uint32_t MID;
    stc_hsspi_mid_field_t MID_f;
  };
        uint8_t RESERVED3[768];
  union {
    volatile  uint8_t QDCLKR;
    stc_hsspi_qdclkr_field_t QDCLKR_f;
  };
        uint8_t RESERVED4[3];
  union {
    volatile  uint8_t DBCNT;
    stc_hsspi_dbcnt_field_t DBCNT_f;
  };
}FM4_HSSPI_TypeDef;



 





# 18257 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"



 
# 18415 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"



 

 
# 18603 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 18612 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 18655 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 18680 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 18767 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 




 
# 18781 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 18801 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 18910 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19014 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19071 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19109 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19219 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19328 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19432 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19489 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19527 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19637 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19746 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19850 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19907 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 19945 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20055 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20297 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20318 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20341 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20361 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20381 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20402 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20425 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20445 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20465 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20486 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20509 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20529 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20549 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20570 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20593 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20613 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20633 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20654 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20677 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20697 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20717 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20738 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20761 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20781 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20801 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20822 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20845 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20865 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20885 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20906 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20929 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20949 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20969 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20979 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 20989 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21007 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21027 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21044 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21061 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21079 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21099 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21116 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21133 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21151 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21171 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21188 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21205 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21223 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21243 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21260 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21277 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21295 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21315 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21332 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21349 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21367 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21387 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21404 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21421 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21439 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21459 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21476 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21493 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21511 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21531 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21548 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21565 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21575 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21585 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 

 
# 21653 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21718 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21783 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21818 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21826 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21834 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21842 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 21850 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 22168 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 22486 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 22804 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 22856 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 23020 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 23548 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 23566 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 23584 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 23639 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 23694 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 25663 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 25674 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 25702 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 25726 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 





 
# 25820 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 26022 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 26109 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 26213 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 26301 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 26503 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 26590 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 26694 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 26782 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 26984 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"


 
# 27072 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 27176 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 27264 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 27466 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 27553 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 27657 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 27745 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 27947 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 28034 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 28138 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 28226 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 28428 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 28515 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 28619 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 28707 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 28909 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 28996 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 29100 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 29188 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 29390 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 29477 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 29581 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 29669 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 29871 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 29958 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 30062 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 30150 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 30352 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 30439 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 30543 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 30631 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 30833 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 30920 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 31024 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 31112 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 31314 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 31401 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 31505 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 31593 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 31795 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 31882 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 31986 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 32074 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 32276 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 32363 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 32467 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 32555 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 32757 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 32844 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 32948 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 33036 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 33238 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 33325 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 33429 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 33438 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 33462 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 33648 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 33656 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 33751 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 33782 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 34506 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 34854 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 35202 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 35563 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 35959 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 36355 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 37494 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 37502 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 37753 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 37963 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 39012 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 39031 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"

 
# 39294 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\s6e2cc.h"







# 63 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\mcu.h"






  









 
# 1 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\interrupt_type.h"







































 









 





 







# 81 "C:\\Keil_v5\\ARM\\PACK\\Keil\\FM4_DFP\\1.5.1\\Device\\S6E2CC\\Include\\mcu.h"

# 57 "RTE\\Device\\S6E2CCAJ0A\\system_s6e2cc.c"




 
uint32_t SystemCoreClock = ((((( 4000000ul) * (((0x00000031ul ) & 0x3Ful) + 1ul)) / (((0x00000001ul >> 4ul) & 0x0Ful) + 1ul))) / 1ul);







 
void SystemCoreClockUpdate (void) {
  uint32_t masterClk;
  uint32_t u32RegisterRead; 

  switch ((((FM4_CRG_TypeDef *)((0x40000000UL) + 0x10000UL))->SCM_CTL >> 5U) & 0x07U) {
    case 0u:                                  
      masterClk = ( 4000000ul);
      break;

    case 1u:                                  
      masterClk = ( 4000000ul);
      break;

    case 2u:                                  
  
  
  
      u32RegisterRead = (( 4000000ul)  * (((uint32_t)(((FM4_CRG_TypeDef *)((0x40000000UL) + 0x10000UL))->PLL_CTL2) & 0x3Fu) + 1u));
      masterClk = (u32RegisterRead / ((((uint32_t)(((FM4_CRG_TypeDef *)((0x40000000UL) + 0x10000UL))->PLL_CTL1) >> 4ul) & 0x0Fu) + 1u));
      break;

    case 4u:                                  
      masterClk = ( 100000ul);
      break;

    case 5u:                                  
      masterClk = ( 32768ul);
      break;

    default:
      masterClk = 0ul;
      break;
  }

  switch (((FM4_CRG_TypeDef *)((0x40000000UL) + 0x10000UL))->BSC_PSR & 0x07u) {
    case 0u:
      SystemCoreClock = masterClk;
      break;

    case 1u:
      SystemCoreClock = masterClk / 2u;
      break;

    case 2u:
      SystemCoreClock = masterClk / 3u;
      break;

    case 3u:
      SystemCoreClock = masterClk / 4u;
      break;

    case 4u:
      SystemCoreClock = masterClk / 6u;
      break;

    case 5u:
      SystemCoreClock = masterClk /8u;
      break;

    case 6u:
      SystemCoreClock = masterClk /16u;
      break;

    default:
      SystemCoreClock = 0ul;
      break;
  }

}








 
void SystemInit (void) {

  static uint8_t u8IoRegisterRead;  
  

  ((FM4_HWWDT_TypeDef *)((0x40000000UL) + 0x11000UL))->WDG_LCK = 0x1ACCE551u;                 
  ((FM4_HWWDT_TypeDef *)((0x40000000UL) + 0x11000UL))->WDG_LCK = 0xE5331AAEu;
  ((FM4_HWWDT_TypeDef *)((0x40000000UL) + 0x11000UL))->WDG_CTL = 0u;                          



  ((FM4_FLASH_IF_TypeDef *)((0x40000000UL) + 0x00000UL))->FBFCR = 0x01;                       


# 238 "RTE\\Device\\S6E2CCAJ0A\\system_s6e2cc.c"
  

   
  if( 0x000003FFu != (((FM4_FLASH_IF_TypeDef *)((0x40000000UL) + 0x00000UL))->CRTRMM & 0x000003FFu) )
  {
     
    ((FM4_CRTRIM_TypeDef *)((0x40000000UL) + 0x2E000UL))->MCR_RLR =  (uint32_t)0x1ACCE554u;
     
    ((FM4_CRTRIM_TypeDef *)((0x40000000UL) + 0x2E000UL))->MCR_TTRM = (uint8_t)(((FM4_FLASH_IF_TypeDef *)((0x40000000UL) + 0x00000UL))->CRTRMM >> 16);
     
    ((FM4_CRTRIM_TypeDef *)((0x40000000UL) + 0x2E000UL))->MCR_FTRM = (uint16_t)((FM4_FLASH_IF_TypeDef *)((0x40000000UL) + 0x00000UL))->CRTRMM;
     
    ((FM4_CRTRIM_TypeDef *)((0x40000000UL) + 0x2E000UL))->MCR_RLR =  (uint32_t)0x00000000u;
  }

}



