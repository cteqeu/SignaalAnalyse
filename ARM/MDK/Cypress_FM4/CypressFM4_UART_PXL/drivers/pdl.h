/*******************************************************************************
* Copyright (C) 2013 Spansion LLC. All Rights Reserved. 
*
* This software is owned and published by: 
* Spansion LLC, 915 DeGuigne Dr. Sunnyvale, CA  94088-3453 ("Spansion").
*
* BY DOWNLOADING, INSTALLING OR USING THIS SOFTWARE, YOU AGREE TO BE BOUND 
* BY ALL THE TERMS AND CONDITIONS OF THIS AGREEMENT.
*
* This software contains source code for use with Spansion 
* components. This software is licensed by Spansion to be adapted only 
* for use in systems utilizing Spansion components. Spansion shall not be 
* responsible for misuse or illegal use of this software for devices not 
* supported herein.  Spansion is providing this software "AS IS" and will 
* not be responsible for issues arising from incorrect user implementation 
* of the software.  
*
* SPANSION MAKES NO WARRANTY, EXPRESS OR IMPLIED, ARISING BY LAW OR OTHERWISE,
* REGARDING THE SOFTWARE (INCLUDING ANY ACOOMPANYING WRITTEN MATERIALS), 
* ITS PERFORMANCE OR SUITABILITY FOR YOUR INTENDED USE, INCLUDING, 
* WITHOUT LIMITATION, THE IMPLIED WARRANTY OF MERCHANTABILITY, THE IMPLIED 
* WARRANTY OF FITNESS FOR A PARTICULAR PURPOSE OR USE, AND THE IMPLIED 
* WARRANTY OF NONINFRINGEMENT.  
* SPANSION SHALL HAVE NO LIABILITY (WHETHER IN CONTRACT, WARRANTY, TORT, 
* NEGLIGENCE OR OTHERWISE) FOR ANY DAMAGES WHATSOEVER (INCLUDING, WITHOUT 
* LIMITATION, DAMAGES FOR LOSS OF BUSINESS PROFITS, BUSINESS INTERRUPTION, 
* LOSS OF BUSINESS INFORMATION, OR OTHER PECUNIARY LOSS) ARISING FROM USE OR 
* INABILITY TO USE THE SOFTWARE, INCLUDING, WITHOUT LIMITATION, ANY DIRECT, 
* INDIRECT, INCIDENTAL, SPECIAL OR CONSEQUENTIAL DAMAGES OR LOSS OF DATA, 
* SAVINGS OR PROFITS, 
* EVEN IF SPANSION HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. 
* YOU ASSUME ALL RESPONSIBILITIES FOR SELECTION OF THE SOFTWARE TO ACHIEVE YOUR
* INTENDED RESULTS, AND FOR THE INSTALLATION OF, USE OF, AND RESULTS OBTAINED 
* FROM, THE SOFTWARE.  
*
* This software may be replicated in part or whole for the licensed use, 
* with the restriction that this Disclaimer and Copyright notice must be 
* included with each copy of this software, whether used in part or whole, 
* at all times.  
*/
/******************************************************************************/
/** \file pdl.h
 **
 ** Headerfile for FM4 Peripheral Driver Library 
 **
 ** History:  
 **   - 2013-03-21  0.0.1  MWi        First version.
 **   - 2013-11-25  0.0.2  EZ         Replace mb9abxxx.h with mcu.h
 **   - 2014-08-28  0.0.3  AI         Update for S6E2CC series.
 **   - 2014-11-19  1.0    MWi        Several new FM4 devices added. Interrupt
 **                                   table type 3 added.
 **
 ******************************************************************************/

#ifndef __PDL_H__
#define __PDL_H__

/******************************************************************************/
/* Include files                                                              */
/******************************************************************************/
#include "base_types.h"
#include "mcu.h"
#include <stdio.h>      // for printf function

#if 0 //need something like this for arm cmsis-dsp libs to work.
  #if defined (ARM_MATH_CM4)
  #include "core_cm4.h"
  #elif defined (ARM_MATH_CM3)
  #include "core_cm3.h"
  #elif defined (ARM_MATH_CM0)
  #include "core_cm0.h"
  #define ARM_MATH_CM0_FAMILY
  #elif defined (ARM_MATH_CM0PLUS)
  #include "core_cm0plus.h"
  #define ARM_MATH_CM0_FAMILY
  #else
  #include "ARMCM4.h"
  #warning "Define either ARM_MATH_CM4 or ARM_MATH_CM3. By Default building on ARM_MATH_CM4."
  #endif
#endif

/* C binding of definitions if building with C++ compiler                     */
#ifdef __cplusplus
extern "C"
{
#endif

/******************************************************************************/
/* Global pre-processor symbols/macros ('#define')                            */
/******************************************************************************/
/// Macro for initializing local structures to zero
#define PDL_ZERO_STRUCT(x) pdl_memclr((uint8_t*)&(x), (uint32_t)(sizeof(x)))
   
/**
 ******************************************************************************
 ** All definitions needed for pdl_user.h are stated here 
 ******************************************************************************/ 
  
#define PDL_ON            1u    ///< Switches a feature on.
#define PDL_OFF           0u    ///< Switches a feature off

/**
 ******************************************************************************
 ** Global Device type defintions
 ** Note that an existing defintion does not implicitly means full device
 ** type support of this libarary!
 ******************************************************************************/  
#define PDL_TYPE1 1u  ///< FM4 device type1
#define PDL_TYPE2 2u  ///< FM4 device type2
#define PDL_TYPE3 3u  ///< FM4 device type3
#define PDL_TYPE4 4u  ///< FM4 device type4
#define PDL_TYPE5 5u  ///< FM4 device type5
#define PDL_TYPE6 6u  ///< FM4 device type6
#define PDL_TYPE7 7u  ///< FM4 device type7
#define PDL_TYPE8 8u  ///< FM4 device type8
#define PDL_TYPE9 9u  ///< FM4 device type9

/**
 ******************************************************************************
 ** Global User Device Choice List
 ******************************************************************************/
#define PDL_DEVICE_TYPE_MB9BF56X  50u

/**
 ******************************************************************************
 ** Global User Device Choice List
 ******************************************************************************/
#define PDL_DEVICE_TYPE_MB9BF16X  10u
#define PDL_DEVICE_TYPE_MB9BF36X  30u
#define PDL_DEVICE_TYPE_MB9BF46X  40u
#define PDL_DEVICE_TYPE_MB9BF56X  50u
#define PDL_DEVICE_TYPE_S6E2CCX   60u

/**
 ******************************************************************************
 ** Global User Package Choice List
 ******************************************************************************/ 
#define PDL_DEVICE_PACKAGE_H  10u
#define PDL_DEVICE_PACKAGE_J  20u
#define PDL_DEVICE_PACKAGE_K  30u
#define PDL_DEVICE_PACKAGE_L  40u
#define PDL_DEVICE_PACKAGE_M  50u
#define PDL_DEVICE_PACKAGE_N  60u
#define PDL_DEVICE_PACKAGE_R  70u
#define PDL_DEVICE_PACKAGE_S  80u
#define PDL_DEVICE_PACKAGE_T  90u

/******************************************************************************/
/* User Setting Include file                                                  */
/******************************************************************************/
#include "pdl_user.h"  // MUST be included here!

/**
 ******************************************************************************
 ** Global device family definition
 ******************************************************************************/
#if (PDL_MCU == PDL_DEVICE_TYPE_MB9BF16X)
  #define PDL_DEVICE_MB9BF16X PDL_ON
#else
  #define PDL_DEVICE_MB9BF16X PDL_OFF
#endif

#if (PDL_MCU == PDL_DEVICE_TYPE_MB9BF36X)
  #define PDL_DEVICE_MB9BF36X PDL_ON
#else
  #define PDL_DEVICE_MB9BF36X PDL_OFF
#endif

#if (PDL_MCU == PDL_DEVICE_TYPE_MB9BF46X)
  #define PDL_DEVICE_MB9BF46X PDL_ON
#else
  #define PDL_DEVICE_MB9BF46X PDL_OFF
#endif

#if (PDL_MCU == PDL_DEVICE_TYPE_MB9BF56X)
  #define PDL_DEVICE_MB9BF56X PDL_ON
#else
  #define PDL_DEVICE_MB9BF56X PDL_OFF
#endif

#if (PDL_MCU == PDL_DEVICE_TYPE_S6E2CCX)
  #define PDL_DEVICE_S6E2CCX PDL_ON
#else
  #define PDL_DEVICE_S6E2CCX PDL_OFF
#endif

/**
 ******************************************************************************
 ** Global device type definition
 ******************************************************************************/
#if (PDL_DEVICE_MB9BF16X == PDL_ON)
  #if   (PDL_PACKAGE == PDL_DEVICE_PACKAGE_M) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_N) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_R)
    #define PDL_DEVICE_TYPE PDL_TYPE1
  #elif (PDL_PACKAGE == PDL_DEVICE_PACKAGE_K) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_L)
    #define PDL_DEVICE_TYPE PDL_TYPE2
  #else
    #error Device Type not defined!
  #endif

#elif (PDL_DEVICE_MB9BF36X == PDL_ON)
  #if   (PDL_PACKAGE == PDL_DEVICE_PACKAGE_M) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_N) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_R)
    #define PDL_DEVICE_TYPE PDL_TYPE1
  #elif (PDL_PACKAGE == PDL_DEVICE_PACKAGE_K) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_L)
    #define PDL_DEVICE_TYPE PDL_TYPE2
  #else
    #error Device Type not defined!
  #endif

#elif (PDL_DEVICE_MB9BF46X == PDL_ON)
  #if   (PDL_PACKAGE == PDL_DEVICE_PACKAGE_M) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_N) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_R)
    #define PDL_DEVICE_TYPE PDL_TYPE1
  #elif (PDL_PACKAGE == PDL_DEVICE_PACKAGE_K) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_L)
    #define PDL_DEVICE_TYPE PDL_TYPE2
  #else
    #error Device Type not defined!
  #endif

#elif (PDL_DEVICE_MB9BF56X == PDL_ON)
  #if   (PDL_PACKAGE == PDL_DEVICE_PACKAGE_M) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_N) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_R)
    #define PDL_DEVICE_TYPE PDL_TYPE1
  #elif (PDL_PACKAGE == PDL_DEVICE_PACKAGE_K) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_L)
    #define PDL_DEVICE_TYPE PDL_TYPE2
  #else
    #error Device Type not defined!
  #endif

#elif (PDL_DEVICE_S6E2CCX == PDL_ON)
  #if   (PDL_PACKAGE == PDL_DEVICE_PACKAGE_H) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_J) || \
        (PDL_PACKAGE == PDL_DEVICE_PACKAGE_L)
    #define PDL_DEVICE_TYPE PDL_TYPE3
  #else
    #error Device Type not defined!
  #endif

#else
  #error Device not found!
#endif


/**
 ******************************************************************************
 ** Default Interrupt Level (lowest priority, used for De-Init functions)
 ******************************************************************************/
#define PDL_DEFAULT_INTERRUPT_LEVEL 0x0Fu

/**
 ******************************************************************************
 ** PDL resource enable check
 ** 
 ** \note It does not check, if a device has actually any in pdl.h enabled
 **       resource and all instances available!
 **
 ******************************************************************************/


// Activate code in adc.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_ADC0 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_ADC1 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_ADC2 == PDL_ON)
    #define PDL_PERIPHERAL_ADC_ACTIVE
    #include "adc\adc.h"
#endif

// Activate code in bt.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_BT0 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT1 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT2 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT3 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT4 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT5 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT6 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT7 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT8 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT9 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT10 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT11 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT12 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT13 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT14 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_BT15 == PDL_ON) 
    #define PDL_PERIPHERAL_BT_ACTIVE
    #include "bt\bt.h"
#endif

// Activate code in can.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_CAN0 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_CAN1 == PDL_ON)
    #define PDL_PERIPHERAL_CAN_ACTIVE
    #include "can\can.h"
#endif

#if ((PDL_PERIPHERAL_ENABLE_CAN0 == PDL_ON) && (PDL_INTERRUPT_ENABLE_CAN0 == PDL_OFF)) || \
    ((PDL_PERIPHERAL_ENABLE_CAN1 == PDL_ON) && (PDL_INTERRUPT_ENABLE_CAN1 == PDL_OFF))  
    #error CAN usage without interrupts not possible!
#endif
    
// Activate code in canfd.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_CANFD0 == PDL_ON)
    #define PDL_PERIPHERAL_CANFD_ACTIVE
    #include "can\canfd.h"
#endif

// Activate code in can_pre.c if one or more are set to PDL_ON
#if (!defined(PDL_PERIPHERAL_CAN_ACTIVE) && \
     defined(PDL_PERIPHERAL_CANFD_ACTIVE))
    #define PDL_PERIPHERAL_CANPRE_ACTIVE
    #include "can\can_pre.h"
#endif

// Activate code in crc.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_CRC0 == PDL_ON)
    #define PDL_PERIPHERAL_CRC_ACTIVE
    #include "crc\crc.h"
#endif

// Activate code in clk.c if set to PDL_ON or WC enabled
#if (PDL_PERIPHERAL_ENABLE_CLK == PDL_ON)
    #define PDL_PERIPHERAL_CLK_ACTIVE
    #include "clk.h"
#endif

// Activate code in crtrim.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_CRTRIM == PDL_ON)
    #define PDL_PERIPHERAL_CRTRIM_ACTIVE
    #include "crtrim\crtrim.h"
#endif

// Activate code in csv.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_CSV == PDL_ON)
    #define PDL_PERIPHERAL_CSV_ACTIVE
    #include "csv\csv.h"
#endif

// Activate code in dac.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_DAC0 == PDL_ON)
    #define PDL_PERIPHERAL_DAC_ACTIVE
    #include "dac\dac.h"
#endif

// Activate code for dma.c
#if ((PDL_PERIPHERAL_ENABLE_DMA0 == PDL_ON) || \
     (PDL_PERIPHERAL_ENABLE_DMA1 == PDL_ON) || \
     (PDL_PERIPHERAL_ENABLE_DMA2 == PDL_ON) || \
     (PDL_PERIPHERAL_ENABLE_DMA3 == PDL_ON) || \
     (PDL_PERIPHERAL_ENABLE_DMA4 == PDL_ON) || \
     (PDL_PERIPHERAL_ENABLE_DMA5 == PDL_ON) || \
     (PDL_PERIPHERAL_ENABLE_DMA6 == PDL_ON) || \
     (PDL_PERIPHERAL_ENABLE_DMA7 == PDL_ON))     
    #define PDL_PERIPHERAL_DMA_ACTIVE
    #include "dma\dma.h"
#endif

// Activate code in dstc.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_DSTC == PDL_ON)
    #define PDL_PERIPHERAL_DSTC_ACTIVE
    #include "dstc\dstc.h"
#endif

// Activate code in dt.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_DT0 == PDL_ON)
    #define PDL_PERIPHERAL_DT_ACTIVE
    #include "dt.h"
#endif

// Activate code in emac.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_EMAC0 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EMAC1 == PDL_ON)
    #define PDL_PERIPHERAL_EMAC_ACTIVE
    #include "emac\emac.h"
    #include "emac\emac_user.h"
#endif

// Activate code in exint.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_EXINT0           == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT1           == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT2           == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT3           == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT4           == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT5           == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT6           == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT7           == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT8           == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT9           == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT10          == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT11          == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT12          == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT13          == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT14          == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT15          == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT16_17_18_19 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT20_21_22_23 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT24_25_26_27 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_EXINT28_29_30_31 == PDL_ON)
    #define PDL_PERIPHERAL_EXINT_ACTIVE
    #include "exint\exint.h"
#endif

// Activate code in extif.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_EXTIF == PDL_ON)
    #define PDL_PERIPHERAL_EXTIF_ACTIVE
    #include "extif\extif.h"
#endif

// Activate code in flash.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_FLASH        == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_CRTRIM_FLASH == PDL_ON)
    #define PDL_PERIPHERAL_FLASH_ACTIVE
    #include "flash\flash.h"
#endif

// Activate code in gpio.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_GPIO == PDL_ON)
    #define PDL_PERIPHERAL_GPIO_ACTIVE
    #include "gpio.h"
#endif

// Activate code in hsspi.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_HSSPI0 == PDL_ON)
    #define PDL_PERIPHERAL_HSSPI_ACTIVE
    #include "hsspi\hsspi.h"
#endif

// Activate code in i2s.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_I2S0 == PDL_ON)
    #define PDL_PERIPHERAL_I2S_ACTIVE
    #include "i2s\i2s.h"
#endif

// Activate code in i2s_clk.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_I2S_CLK == PDL_ON)
    #define PDL_PERIPHERAL_I2S_CLK_ACTIVE
    #include "i2s\i2s_clk.h"
#endif

// Activate code in irqsel.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_IRQSEL == PDL_ON)
    #define PDL_PERIPHERAL_IRQSEL_ACTIVE
    #include "irqsel\irqsel.h"
#endif
 
// Activate code in lpm.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_LPM == PDL_ON)
    #define PDL_PERIPHERAL_LPM_ACTIVE
    #include "lpm\lpm.h"
#endif
 
// Activate code in lvd.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_LVD == PDL_ON)
    #define PDL_PERIPHERAL_LVD_ACTIVE
    #include "lvd\lvd.h"
#endif

// Activate code in mfs.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_MFS0  == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS1  == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS2  == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS3  == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS4  == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS5  == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS6  == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS7  == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS8  == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS9  == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS10 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS11 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS12 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS13 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS14 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFS15 == PDL_ON)
    #define PDL_PERIPHERAL_MFS_ACTIVE
    #include "mfs.h"
#endif

// Activate code in mft_frt.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_MFT0_FRT == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFT1_FRT == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFT2_FRT == PDL_ON)   
    #define PDL_PERIPHERAL_MFT_FRT_ACTIVE
    #include "mft\mft_frt.h"
#endif

// Activate code in mft_ocu.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_MFT0_OCU == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFT1_OCU == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFT2_OCU == PDL_ON)   
    #define PDL_PERIPHERAL_MFT_OCU_ACTIVE
    #include "mft\mft_ocu.h"
#endif

// Activate code in mft_wfg.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_MFT0_WFG == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFT1_WFG == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFT2_WFG == PDL_ON)   
    #define PDL_PERIPHERAL_MFT_WFG_ACTIVE
    #include "mft\mft_wfg.h"
#endif

// Activate code in mft_icu.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_MFT0_ICU == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFT1_ICU == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFT2_ICU == PDL_ON)   
    #define PDL_PERIPHERAL_MFT_ICU_ACTIVE
    #include "mft\mft_icu.h"
#endif  
      
// Activate code in mft_adcmp.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_MFT0_ADCMP == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFT1_ADCMP == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_MFT2_ADCMP == PDL_ON)   
    #define PDL_PERIPHERAL_MFT_ADCMP_ACTIVE
    #include "mft\mft_adcmp.h"
#endif      
      
// Activate code in ppg.c if one or more are set to PDL_ON   
#if (PDL_PERIPHERAL_ENABLE_PPG == PDL_ON)
    #define PDL_PERIPHERAL_PPG_ACTIVE
    #include "ppg\ppg.h"      
#endif

// Activate code in qprc.c if set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_QPRC0 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_QPRC1 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_QPRC2 == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_QPRC3 == PDL_ON)  
    #define PDL_PERIPHERAL_QPRC_ACTIVE
    #include "qprc\qprc.h"
#endif

// Reset Cause
#if (PDL_PERIPHERAL_ENABLE_RESET == PDL_ON)
    #define PDL_PERIPHERAL_RESET_ACTIVE
    #include "reset\reset.h"
#endif

// Real Time Clock
#if (PDL_PERIPHERAL_ENABLE_RTC0 == PDL_ON)
    #define PDL_PERIPHERAL_RTC_ACTIVE
    #include "rtc\rtc.h"
#endif

// Unique ID
#if (PDL_PERIPHERAL_ENABLE_UID == PDL_ON)
    #define PDL_PERIPHERAL_UID_ACTIVE
    #include "uid\uid.h" 
#endif
      
// USB Device
#if ((PDL_PERIPHERAL_ENABLE_USB0_DEVICE == PDL_ON)  || \
     (PDL_PERIPHERAL_ENABLE_USB1_DEVICE == PDL_ON))
    #define PDL_PERIPHERAL_USB_DEVICE_ACTIVE
    #include "usb\usb.h"
#endif

// USB Host
#if ((PDL_PERIPHERAL_ENABLE_USB0_HOST == PDL_ON)  || \
     (PDL_PERIPHERAL_ENABLE_USB1_HOST == PDL_ON))
    #define PDL_PERIPHERAL_USB_HOST_ACTIVE
    #include "usb\usb.h"
#endif

// Activate code in wc.c if one or more are set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_WC0 == PDL_ON)
    #define PDL_PERIPHERAL_WC_ACTIVE
    #include "wc\wc.h"
#endif

// Activate code in wdg.c is set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_HWWDG == PDL_ON) || \
    (PDL_PERIPHERAL_ENABLE_SWWDG == PDL_ON)
    #define PDL_PERIPHERAL_WDG_ACTIVE
    #include "wdg\wdg.h"
#endif

// Activate code in sd.c is set to PDL_ON
#if (PDL_PERIPHERAL_ENABLE_SD == PDL_ON) 
    #define PDL_PERIPHERAL_SD_ACTIVE
    #include "sd\sd.h"    
    #include "sd\sdcard.h"
    #include "sd\sdcmd.h"  
#endif
/**
 ******************************************************************************
 ** PDL resource availability check
 ******************************************************************************/ 
 
// ADC
#define PDL_PERIPHERAL_ADC_AVAILABLE          PDL_ON   

// Base Timer
#define PDL_PERIPHERAL_BT_AVAILABLE           PDL_ON  

// CAN
#define PDL_PERIPHERAL_CAN_AVAILABLE          PDL_ON   

// CRC
#define PDL_PERIPHERAL_CRC_AVAILABLE          PDL_ON   

// Clock
#define PDL_PERIPHERAL_CLK_AVAILABLE          PDL_ON    

// DAC
#define PDL_PERIPHERAL_DAC_AVAILABLE          PDL_ON   

// Dual Timer      
#define PDL_PERIPHERAL_DT_AVAILABLE           PDL_ON 

// DMA     
#define PDL_PERIPHERAL_DMA_AVAILABLE          PDL_ON

// CR Trimming  
#define PDL_PERIPHERAL_CRTRIM_AVAILABLE       PDL_ON   

// CSV      
#define PDL_PERIPHERAL_CSV_AVAILABLE         PDL_ON

// External interrupt       
#define PDL_PERIPHERAL_EXINT_AVAILABLE        PDL_ON  

// Flash     
#define PDL_PERIPHERAL_MAINFLASH_AVAILABLE    PDL_ON 

// Work Flash 
#define PDL_PERIPHERAL_WORKFLASH_AVAILABLE    PDL_OFF 
            
// Dual-OP Flash
#define PDL_PERIPHERAL_DUALOPFLASH_AVAILABLE  PDL_OFF

// ECC-Flash
#define PDL_PERIPHERAL_ECCFLASH_AVAILABLE     PDL_OFF
			
// LVD    
#define PDL_PERIPHERAL_LVD_AVAILABLE         PDL_ON

// MFS        
#define PDL_PERIPHERAL_MFS_AVAILABLE          PDL_ON

// QPRC 
#define PDL_PERIPHERAL_QPRC_AVAILABLE         PDL_ON  

// RESET       
#define PDL_PERIPHERAL_RESET_AVAILABLE        PDL_ON 

// Watch counter   
#define PDL_PERIPHERAL_WC_AVAILABLE           PDL_ON   

// Hardware watchdog        
#define PDL_PERIPHERAL_HWWDG_AVAILABLE        PDL_ON

// Software watchdog        
#define PDL_PERIPHERAL_SWWDG_AVAILABLE        PDL_ON

// RTC          
#define PDL_PERIPHERAL_RTC_AVAILABLE          PDL_OFF
 
// CEC
#define PDL_PERIPHERAL_CEC_AVAILABLE          PDL_OFF

// LCD 
#define PDL_PERIPHERAL_LCD_AVAILABLE          PDL_OFF

// Unique ID  
#define PDL_PERIPHERAL_UID_AVAILABLE           PDL_ON

// USB Device
#define PDL_PERIPHERAL_USB_DEVICE_AVAILABLE   PDL_ON

// USB Host
#define PDL_PERIPHERAL_USB_HOST_AVAILABLE     PDL_ON 

/******************************************************************************/
/* Parameter check of pdl_user.h settings                                     */
/******************************************************************************/

#if (PDL_NO_FLASH_RAMCODE != PDL_ON) && (PDL_NO_FLASH_RAMCODE != PDL_OFF)
  #error PDL_NO_FLASH_RAMCODE in pdl_user.h is not defined as either PDL_ON or PDL_OFF!
#endif

// Value check

#if ((PDL_DMA_CHANNELS < 1u) || (PDL_DMA_CHANNELS > 8u))
  #error PDL_DMA_CHANNELS in pdl_user.h value out of range!
#endif

/******************************************************************************/
/* Feature check                                                              */
/******************************************************************************/

/**
 ******************************************************************************
 ** \brief Deep Stadby Mode support
 ** 
 ** Deep Stadby Mode support check
 **
 ** Result:
 ** PDL_DSM_SUPPORT == PDL_ON  => Device supports Deep Standby Mode
 ** PDL_DSM_SUPPORT == PDL_OFF => Device does not support Deep Standby Mode
 **
 ******************************************************************************/
#if ((PDL_DEVICE_TYPE == PDL_TYPE0) || \
     (PDL_DEVICE_TYPE == PDL_TYPE1))
  #define PDL_DSM_SUPPORT PDL_ON
#else
  #define PDL_DSM_SUPPORT PDL_OFF
#endif

/**
 ******************************************************************************
 ** \brief Interrupt Type extraction 
 **
 ******************************************************************************
 */
/// \brief FM4 MCU interrupt Type A
#define PDL_INT_TYPE_A                      0u
/// \brief FM4 MCU interrupt Type B 
#define PDL_INT_TYPE_B                      1u
/// \brief FM4 MCU interrupt Type C
#define PDL_INT_TYPE_C                      2u

#if (PDL_DEVICE_TYPE == PDL_TYPE0) || \
    (PDL_DEVICE_TYPE == PDL_TYPE1) || \
    (PDL_DEVICE_TYPE == PDL_TYPE2) || \
    (PDL_DEVICE_TYPE == PDL_TYPE4) || \
    (PDL_DEVICE_TYPE == PDL_TYPE5) || \
    (PDL_DEVICE_TYPE == PDL_TYPE6) || \
    (PDL_DEVICE_TYPE == PDL_TYPE8) || \
    (PDL_DEVICE_TYPE == PDL_TYPE9)
    #define PDL_MCU_INT_TYPE       PDL_INT_TYPE_A
#elif (PDL_DEVICE_TYPE == PDL_TYPE3) || \
      (PDL_DEVICE_TYPE == PDL_TYPE7)
//    #define PDL_MCU_INT_TYPE       PDL_INT_TYPE_C
#else
    #error MCU Interrupt Type not found!
#endif

/**
 ******************************************************************************
 ** \brief IRQ name definition for all type MCUs
 ******************************************************************************/

#if (PDL_MCU_INT_TYPE == PDL_INT_TYPE_A)
    #define CSV_IRQHandler(void)               IRQ000_Handler(void) ///< CSV
    #define SWDT_IRQHandler(void)              IRQ001_Handler(void) ///< SW watchdog
    #define LVD_IRQHandler(void)               IRQ002_Handler(void) ///< LVD       
    #define IRQ003SEL_IRQHandler(void)         IRQ003_Handler(void) ///< Interrupt Source Selection 3
    #define IRQ004SEL_IRQHandler(void)         IRQ004_Handler(void) ///< Interrupt Source Selection 4
    #define IRQ005SEL_IRQ_Handler(void)        IRQ005_Handler(void) ///< Interrupt Source Selection 5
    #define IRQ006SEL_IRQHandler(void)         IRQ006_Handler(void) ///< Interrupt Source Selection 6
    #define IRQ007SEL_IRQHandler(void)         IRQ007_Handler(void) ///< Interrupt Source Selection 7
    #define IRQ008SEL_IRQHandler(void)         IRQ008_Handler(void) ///< Interrupt Source Selection 8
    #define IRQ009SEL_IRQHandler(void)         IRQ009_Handler(void) ///< Interrupt Source Selection 9
    #define IRQ010SEL_IRQHandler(void)         IRQ010_Handler(void) ///< Interrupt Source Selection 10
    #define EXINT0_IRQHandler(void)            IRQ011_Handler(void) ///< External Pin Interrupt Ch. 0
    #define EXINT1_IRQHandler(void)            IRQ012_Handler(void) ///< External Pin Interrupt Ch. 1
    #define EXINT2_IRQHandler(void)            IRQ013_Handler(void) ///< External Pin Interrupt Ch. 2
    #define EXINT3_IRQHandler(void)            IRQ014_Handler(void) ///< External Pin Interrupt Ch. 3
    #define EXINT4_IRQHandler(void)            IRQ015_Handler(void) ///< External Pin Interrupt Ch. 4
    #define EXINT5_IRQHandler(void)            IRQ016_Handler(void) ///< External Pin Interrupt Ch. 5
    #define EXINT6_IRQHandler(void)            IRQ017_Handler(void) ///< External Pin Interrupt Ch. 6
    #define EXINT7_IRQHandler(void)            IRQ018_Handler(void) ///< External Pin Interrupt Ch. 7
    #define QPRC0_IRQHandler(void)             IRQ019_Handler(void) ///< Quad Position & Revolution Counter Ch. 0
    #define QPRC1_IRQHandler(void)             IRQ020_Handler(void) ///< Quad Position & Revolution Counter Ch. 1
    #define WFG0_DTIF0_IRQHandler(void)        IRQ021_Handler(void) ///< MFT Unit 0 Waveform Generator / DTIF Ch. 0
    #define WFG1_DTIF1_IRQHandler(void)        IRQ022_Handler(void) ///< MFT Unit 1 Waveform Generator / DTIF Ch. 1
    #define WFG2_DTIF2_IRQHandler(void)        IRQ023_Handler(void) ///< MFT Unit 2 Waveform Generator / DTIF Ch. 2
    #define FRT0_PEAK_IRQHandler(void)         IRQ024_Handler(void) ///< MFT Unit 0 Free-Run Timer Peak Detection
    #define FRT0_ZERO_IRQHandler(void)         IRQ025_Handler(void) ///< MFT Unit 0 Free-Run Timer Zero Detection
    #define ICU0_IRQHandler(void)              IRQ026_Handler(void) ///< MFT Unit 0 Input Capture Unit
    #define OCU0_IRQHandler(void)              IRQ027_Handler(void) ///< MFT Unit 0 Output Compare Unit
    #define FRT1_PEAK_IRQHandler(void)         IRQ028_Handler(void) ///< MFT Unit 1 Free-Run Timer Peak Detection
    #define FRT1_ZERO_IRQHandler(void)         IRQ029_Handler(void) ///< MFT Unit 1 Free-Run Timer Zero Detection
    #define ICU1_IRQHandler(void)              IRQ030_Handler(void) ///< MFT Unit 1 Input Capture Unit
    #define OCU1_IRQHandler(void)              IRQ031_Handler(void) ///< MFT Unit 1 Output Compare Unit    
    #define FRT2_PEAK_IRQHandler(void)         IRQ032_Handler(void) ///< MFT Unit 2 Free-Run Timer Peak Detection
    #define FRT2_ZERO_IRQHandler(void)         IRQ033_Handler(void) ///< MFT Unit 2 Free-Run Timer Zero Detection
    #define ICU2_IRQHandler(void)              IRQ034_Handler(void) ///< MFT Unit 2 Input Capture Unit
    #define OCU2_IRQHandler(void)              IRQ035_Handler(void) ///< MFT Unit 2 Output Compare Unit
    #define PPG00_02_04_IRQHandler(void)       IRQ036_Handler(void) ///< Programmable Pulse Generator Ch. 0, 2, 4
    #define PPG08_10_12_IRQHandler(void)       IRQ037_Handler(void) ///< Programmable Pulse Generator Ch. 8, 10, 12
    #define PPG16_18_20_IRQHandler(void)       IRQ038_Handler(void) ///< Programmable Pulse Generator Ch. 16, 18, 20
    #define BT0_IRQHandler(void)               IRQ039_Handler(void) ///< Base Timer Ch. 0
    #define BT1_IRQHandler(void)               IRQ040_Handler(void) ///< Base Timer Ch. 1
    #define BT2_IRQHandler(void)               IRQ041_Handler(void) ///< Base Timer Ch. 2
    #define BT3_IRQHandler(void)               IRQ042_Handler(void) ///< Base Timer Ch. 3
    #define BT4_IRQHandler(void)               IRQ043_Handler(void) ///< Base Timer Ch. 4
    #define BT5_IRQHandler(void)               IRQ044_Handler(void) ///< Base Timer Ch. 5
    #define BT6_IRQHandler(void)               IRQ045_Handler(void) ///< Base Timer Ch. 6
    #define BT7_IRQHandler(void)               IRQ046_Handler(void) ///< Base Timer Ch. 7
    #define DT1_2_IRQHandler(void)             IRQ047_Handler(void) ///< Dual Timer Ch. 1, 2
    #define WC_IRQHandler(void)                IRQ048_Handler(void) ///< Watch Counter
    #define EXTBUS_ERR_IRQHandler(void)        IRQ049_Handler(void) ///< External Bus Error
    #define RTC_IRQHandler(void)               IRQ050_Handler(void) ///< Real Time Clock
    #define EXINT8_IRQHandler(void)            IRQ051_Handler(void) ///< External Pin Interrupt Ch. 8
    #define EXINT9_IRQHandler(void)            IRQ052_Handler(void) ///< External Pin Interrupt Ch. 9
    #define EXINT10_IRQHandler(void)           IRQ053_Handler(void) ///< External Pin Interrupt Ch. 10
    #define EXINT11_IRQHandler(void)           IRQ054_Handler(void) ///< External Pin Interrupt Ch. 11
    #define EXINT12_IRQHandler(void)           IRQ055_Handler(void) ///< External Pin Interrupt Ch. 12
    #define EXINT13_IRQHandler(void)           IRQ056_Handler(void) ///< External Pin Interrupt Ch. 13
    #define EXINT14_IRQHandler(void)           IRQ057_Handler(void) ///< External Pin Interrupt Ch. 14
    #define EXINT15_IRQHandler(void)           IRQ058_Handler(void) ///< External Pin Interrupt Ch. 15
    #define TIM_IRQHandler(void)               IRQ059_Handler(void) ///< OSC / SUB OSC / PLL / USB/ETHER-PLL
    #define MFS0_RX_IRQHandler(void)           IRQ060_Handler(void) ///< Multi Function Serial Reception Ch. 0
    #define MFS0_TX_IRQHandler(void)           IRQ061_Handler(void) ///< Multi Function Serial Reception/Status Ch. 0
    #define MFS1_RX_IRQHandler(void)           IRQ062_Handler(void) ///< Multi Function Serial Reception Ch. 1
    #define MFS1_TX_IRQHandler(void)           IRQ063_Handler(void) ///< Multi Function Serial Reception/Status Ch. 1
    #define MFS2_RX_IRQHandler(void)           IRQ064_Handler(void) ///< Multi Function Serial Reception Ch. 2
    #define MFS2_TX_IRQHandler(void)           IRQ065_Handler(void) ///< Multi Function Serial Reception/Status Ch. 2
    #define MFS3_RX_IRQHandler(void)           IRQ066_Handler(void) ///< Multi Function Serial Reception Ch. 3
    #define MFS3_TX_IRQHandler(void)           IRQ067_Handler(void) ///< Multi Function Serial Reception/Status Ch. 3
    #define MFS4_RX_IRQHandler(void)           IRQ068_Handler(void) ///< Multi Function Serial Reception Ch. 4
    #define MFS4_TX_IRQHandler(void)           IRQ069_Handler(void) ///< Multi Function Serial Reception/Status Ch. 4
    #define MFS5_RX_IRQHandler(void)           IRQ070_Handler(void) ///< Multi Function Serial Reception Ch. 5
    #define MFS5_TX_IRQHandler(void)           IRQ071_Handler(void) ///< Multi Function Serial Reception/Status Ch. 5
    #define MFS6_RX_IRQHandler(void)           IRQ072_Handler(void) ///< Multi Function Serial Reception Ch. 6
    #define MFS6_TX_IRQHandler(void)           IRQ073_Handler(void) ///< Multi Function Serial Reception/Status Ch. 6
    #define MFS7_RX_IRQHandler(void)           IRQ074_Handler(void) ///< Multi Function Serial Reception Ch. 7
    #define MFS7_TX_IRQHandler(void)           IRQ075_Handler(void) ///< Multi Function Serial Reception/Status Ch. 7
    #define ADC0_IRQHandler(void)              IRQ076_Handler(void) ///< Analog Digital Converter Unit 0
    #define ADC1_IRQHandler(void)              IRQ077_Handler(void) ///< Analog Digital Converter Unit 1
    #define USB0_IRQHandler(void)              IRQ078_Handler(void) ///< USB Ch. 0 (DRQ of endpoint 1 to 5) 
    #define USB0_HOST_IRQHandler(void)         IRQ079_Handler(void) ///< USB Ch. 0 (DRQ of endpoint 0) / USB Host (individual Status)
    #define CAN0_IRQHandler(void)              IRQ080_Handler(void) ///< CAN Ch. 0
    #define CAN1_CANFD_IRQHandler(void)        IRQ081_Handler(void) ///< CAN Ch. 1, CAN FD (Ch. 2)
    #define ETHER0_IRQHandler(void)            IRQ082_Handler(void) ///< Ethernet Ch. 0
    #define DMAC0_IRQHandler(void)             IRQ083_Handler(void) ///< DMAC Ch. 0
    #define DMAC1_IRQHandler(void)             IRQ084_Handler(void) ///< DMAC Ch. 1
    #define DMAC2_IRQHandler(void)             IRQ085_Handler(void) ///< DMAC Ch. 2
    #define DMAC3_IRQHandler(void)             IRQ086_Handler(void) ///< DMAC Ch. 3
    #define DMAC4_IRQHandler(void)             IRQ087_Handler(void) ///< DMAC Ch. 4
    #define DMAC5_IRQHandler(void)             IRQ088_Handler(void) ///< DMAC Ch. 5
    #define DMAC6_IRQHandler(void)             IRQ089_Handler(void) ///< DMAC Ch. 6
    #define DMAC7_IRQHandler(void)             IRQ090_Handler(void) ///< DMAC Ch. 7
    #define DSTC_IRQHandler(void)              IRQ091_Handler(void) ///< DSTC SW Transfer Normal/Error
    #define EXINT16_17_18_19_IRQHandler(void)  IRQ092_Handler(void) ///< External Pin Interrupt Ch. 16, 17, 18, 19
    #define EXINT20_21_22_23_IRQHandler(void)  IRQ093_Handler(void) ///< External Pin Interrupt Ch. 20, 21, 22, 23
    #define EXINT24_25_26_27_IRQHandler(void)  IRQ094_Handler(void) ///< External Pin Interrupt Ch. 24, 25, 26, 27
    #define EXINT28_29_30_31_IRQHandler(void)  IRQ095_Handler(void) ///< External Pin Interrupt Ch. 28, 29, 30, 31
    #define QPRC2_IRQHandler(void)             IRQ096_Handler(void) ///< Quad Position & Revolution Counter Ch. 2
    #define QPRC3_IRQHandler(void)             IRQ097_Handler(void) ///< Quad Position & Revolution Counter Ch. 3
    #define BT8_IRQHandler(void)               IRQ098_Handler(void) ///< Base Timer Ch. 8
    #define BT9_IRQHandler(void)               IRQ099_Handler(void) ///< Base Timer Ch. 9
    #define BT10_IRQHandler(void)              IRQ100_Handler(void) ///< Base Timer Ch. 10
    #define BT11_IRQHandler(void)              IRQ101_Handler(void) ///< Base Timer Ch. 11
    #define BT12_13_14_15_IRQHandler(void)     IRQ102_Handler(void) ///< Base Timer Ch. 12 - 15
    #define MFS8_RX_IRQHandler(void)           IRQ103_Handler(void) ///< Multi Function Serial Reception Ch. 8
    #define MFS8_TX_IRQHandler(void)           IRQ104_Handler(void) ///< Multi Function Serial Reception/Status Ch. 8
    #define MFS9_RX_IRQHandler(void)           IRQ105_Handler(void) ///< Multi Function Serial Reception Ch. 9
    #define MFS9_TX_IRQHandler(void)           IRQ106_Handler(void) ///< Multi Function Serial Reception/Status Ch. 9
    #define MFS10_RX_IRQHandler(void)          IRQ107_Handler(void) ///< Multi Function Serial Reception Ch. 10
    #define MFS10_TX_IRQHandler(void)          IRQ108_Handler(void) ///< Multi Function Serial Reception/Status Ch. 10
    #define MFS11_RX_IRQHandler(void)          IRQ109_Handler(void) ///< Multi Function Serial Reception Ch. 11
    #define MFS11_TX_IRQHandler(void)          IRQ110_Handler(void) ///< Multi Function Serial Reception/Status Ch. 11
    #define ADC2_IRQHandler(void)              IRQ111_Handler(void) ///< Analog Digital Converter Unit 2
//                                             IRQ112_Handler(void)      RESERVED 
    #define USB1_IRQHandler(void)              IRQ113_Handler(void) ///< USB Ch. 1 (DRQ of endpoint 1 to 5) 
    #define USB1_HOST_IRQHandler(void)         IRQ114_Handler(void) ///< USB Ch. 1 (DRQ of endpoint 0) / USB Host (individual Status)
//                                             IRQ115_Handler(void)      RESERVED 
//                                             IRQ116_Handler(void)      RESERVED 
//                                             IRQ117_Handler(void)      RESERVED 
    #define SD_IRQHandler(void)                IRQ118_Handler(void) ///< SD Card
    #define FLASH_IRQHandler(void)             IRQ119_Handler(void) ///< Flash Interface
    #define MFS12_RX_IRQHandler(void)          IRQ120_Handler(void) ///< Multi Function Serial Reception Ch. 12
    #define MFS12_TX_IRQHandler(void)          IRQ121_Handler(void) ///< Multi Function Serial Reception/Status Ch. 12
    #define MFS13_RX_IRQHandler(void)          IRQ122_Handler(void) ///< Multi Function Serial Reception Ch. 13
    #define MFS13_TX_IRQHandler(void)          IRQ123_Handler(void) ///< Multi Function Serial Reception/Status Ch. 13
    #define MFS14_RX_IRQHandler(void)          IRQ124_Handler(void) ///< Multi Function Serial Reception Ch. 14
    #define MFS14_TX_IRQHandler(void)          IRQ125_Handler(void) ///< Multi Function Serial Reception/Status Ch. 14
    #define MFS15_RX_IRQHandler(void)          IRQ126_Handler(void) ///< Multi Function Serial Reception Ch. 15
    #define MFS15_TX_IRQHandler(void)          IRQ127_Handler(void) ///< Multi Function Serial Reception/Status Ch. 15

#elif (PDL_MCU_INT_TYPE == PDL_INT_TYPE_C)
    #define CSV_IRQHandler(void)               IRQ000_Handler(void) ///< CSV
    #define SWDT_IRQHandler(void)              IRQ001_Handler(void) ///< SW watchdog
    #define LVD_IRQHandler(void)               IRQ002_Handler(void) ///< LVD       
    #define IRQ003SEL_IRQHandler(void)         IRQ003_Handler(void) ///< Interrupt Source Selection 3
    #define IRQ004SEL_IRQHandler(void)         IRQ004_Handler(void) ///< Interrupt Source Selection 4
    #define IRQ005SEL_IRQ_Handler(void)        IRQ005_Handler(void) ///< Interrupt Source Selection 5
    #define IRQ006SEL_IRQHandler(void)         IRQ006_Handler(void) ///< Interrupt Source Selection 6
    #define IRQ007SEL_IRQHandler(void)         IRQ007_Handler(void) ///< Interrupt Source Selection 7
    #define IRQ008SEL_IRQHandler(void)         IRQ008_Handler(void) ///< Interrupt Source Selection 8
    #define IRQ009SEL_IRQHandler(void)         IRQ009_Handler(void) ///< Interrupt Source Selection 9
    #define IRQ010SEL_IRQHandler(void)         IRQ010_Handler(void) ///< Interrupt Source Selection 10
    #define EXINT0_IRQHandler(void)            IRQ011_Handler(void) ///< External Pin Interrupt Ch. 0
    #define EXINT1_IRQHandler(void)            IRQ012_Handler(void) ///< External Pin Interrupt Ch. 1
    #define EXINT2_IRQHandler(void)            IRQ013_Handler(void) ///< External Pin Interrupt Ch. 2
    #define EXINT3_IRQHandler(void)            IRQ014_Handler(void) ///< External Pin Interrupt Ch. 3
    #define EXINT4_IRQHandler(void)            IRQ015_Handler(void) ///< External Pin Interrupt Ch. 4
    #define EXINT5_IRQHandler(void)            IRQ016_Handler(void) ///< External Pin Interrupt Ch. 5
    #define EXINT6_IRQHandler(void)            IRQ017_Handler(void) ///< External Pin Interrupt Ch. 6
    #define EXINT7_IRQHandler(void)            IRQ018_Handler(void) ///< External Pin Interrupt Ch. 7
    #define QPRC0_IRQHandler(void)             IRQ019_Handler(void) ///< Quad Position & Revolution Counter Ch. 0
    #define QPRC1_IRQHandler(void)             IRQ020_Handler(void) ///< Quad Position & Revolution Counter Ch. 1
    #define WFG0_DTIF0_IRQHandler(void)        IRQ021_Handler(void) ///< MFT Unit 0 Waveform Generator / DTIF Ch. 0
    #define WFG1_DTIF1_IRQHandler(void)        IRQ022_Handler(void) ///< MFT Unit 1 Waveform Generator / DTIF Ch. 1
    #define WFG2_DTIF2_IRQHandler(void)        IRQ023_Handler(void) ///< MFT Unit 2 Waveform Generator / DTIF Ch. 2
    #define FRT0_PEAK_IRQHandler(void)         IRQ024_Handler(void) ///< MFT Unit 0 Free-Run Timer Peak Detection
    #define FRT0_ZERO_IRQHandler(void)         IRQ025_Handler(void) ///< MFT Unit 0 Free-Run Timer Zero Detection
    #define ICU0_IRQHandler(void)              IRQ026_Handler(void) ///< MFT Unit 0 Input Capture Unit
    #define OCU0_IRQHandler(void)              IRQ027_Handler(void) ///< MFT Unit 0 Output Compare Unit
    #define FRT1_PEAK_IRQHandler(void)         IRQ028_Handler(void) ///< MFT Unit 1 Free-Run Timer Peak Detection
    #define FRT1_ZERO_IRQHandler(void)         IRQ029_Handler(void) ///< MFT Unit 1 Free-Run Timer Zero Detection
    #define ICU1_IRQHandler(void)              IRQ030_Handler(void) ///< MFT Unit 1 Input Capture Unit
    #define OCU1_IRQHandler(void)              IRQ031_Handler(void) ///< MFT Unit 1 Output Compare Unit    
    #define FRT2_PEAK_IRQHandler(void)         IRQ032_Handler(void) ///< MFT Unit 2 Free-Run Timer Peak Detection
    #define FRT2_ZERO_IRQHandler(void)         IRQ033_Handler(void) ///< MFT Unit 2 Free-Run Timer Zero Detection
    #define ICU2_IRQHandler(void)              IRQ034_Handler(void) ///< MFT Unit 2 Input Capture Unit
    #define OCU2_IRQHandler(void)              IRQ035_Handler(void) ///< MFT Unit 2 Output Compare Unit
    #define PPG00_02_04_IRQHandler(void)       IRQ036_Handler(void) ///< Programmable Pulse Generator Ch. 0, 2, 4
    #define PPG08_10_12_IRQHandler(void)       IRQ037_Handler(void) ///< Programmable Pulse Generator Ch. 8, 10, 12
    #define PPG16_18_20_IRQHandler(void)       IRQ038_Handler(void) ///< Programmable Pulse Generator Ch. 16, 18, 20
    #define BT0_IRQHandler(void)               IRQ039_Handler(void) ///< Base Timer Ch. 0
    #define BT1_IRQHandler(void)               IRQ040_Handler(void) ///< Base Timer Ch. 1
    #define BT2_IRQHandler(void)               IRQ041_Handler(void) ///< Base Timer Ch. 2
    #define BT3_IRQHandler(void)               IRQ042_Handler(void) ///< Base Timer Ch. 3
    #define BT4_IRQHandler(void)               IRQ043_Handler(void) ///< Base Timer Ch. 4
    #define BT5_IRQHandler(void)               IRQ044_Handler(void) ///< Base Timer Ch. 5
    #define BT6_IRQHandler(void)               IRQ045_Handler(void) ///< Base Timer Ch. 6
    #define BT7_IRQHandler(void)               IRQ046_Handler(void) ///< Base Timer Ch. 7
    #define DT1_2_IRQHandler(void)             IRQ047_Handler(void) ///< Dual Timer Ch. 1, 2
    #define WC_IRQHandler(void)                IRQ048_Handler(void) ///< Watch Counter
    #define EXTBUS_ERR_IRQHandler(void)        IRQ049_Handler(void) ///< External Bus Error
    #define RTC_IRQHandler(void)               IRQ050_Handler(void) ///< Real Time Clock
    #define EXINT8_IRQHandler(void)            IRQ051_Handler(void) ///< External Pin Interrupt Ch. 8
    #define EXINT9_IRQHandler(void)            IRQ052_Handler(void) ///< External Pin Interrupt Ch. 9
    #define EXINT10_IRQHandler(void)           IRQ053_Handler(void) ///< External Pin Interrupt Ch. 10
    #define EXINT11_IRQHandler(void)           IRQ054_Handler(void) ///< External Pin Interrupt Ch. 11
    #define EXINT12_IRQHandler(void)           IRQ055_Handler(void) ///< External Pin Interrupt Ch. 12
    #define EXINT13_IRQHandler(void)           IRQ056_Handler(void) ///< External Pin Interrupt Ch. 13
    #define EXINT14_IRQHandler(void)           IRQ057_Handler(void) ///< External Pin Interrupt Ch. 14
    #define EXINT15_IRQHandler(void)           IRQ058_Handler(void) ///< External Pin Interrupt Ch. 15
    #define TIM_IRQHandler(void)               IRQ059_Handler(void) ///< OSC / SUB OSC / PLL / USB/ETHER-PLL
    #define MFS0_RX_IRQHandler(void)           IRQ060_Handler(void) ///< Multi Function Serial Reception Ch. 0
    #define MFS0_TX_IRQHandler(void)           IRQ061_Handler(void) ///< Multi Function Serial Reception/Status Ch. 0
    #define MFS1_RX_IRQHandler(void)           IRQ062_Handler(void) ///< Multi Function Serial Reception Ch. 1
    #define MFS1_TX_IRQHandler(void)           IRQ063_Handler(void) ///< Multi Function Serial Reception/Status Ch. 1
    #define MFS2_RX_IRQHandler(void)           IRQ064_Handler(void) ///< Multi Function Serial Reception Ch. 2
    #define MFS2_TX_IRQHandler(void)           IRQ065_Handler(void) ///< Multi Function Serial Reception/Status Ch. 2
    #define MFS3_RX_IRQHandler(void)           IRQ066_Handler(void) ///< Multi Function Serial Reception Ch. 3
    #define MFS3_TX_IRQHandler(void)           IRQ067_Handler(void) ///< Multi Function Serial Reception/Status Ch. 3
    #define MFS4_RX_IRQHandler(void)           IRQ068_Handler(void) ///< Multi Function Serial Reception Ch. 4
    #define MFS4_TX_IRQHandler(void)           IRQ069_Handler(void) ///< Multi Function Serial Reception/Status Ch. 4
    #define MFS5_RX_IRQHandler(void)           IRQ070_Handler(void) ///< Multi Function Serial Reception Ch. 5
    #define MFS5_TX_IRQHandler(void)           IRQ071_Handler(void) ///< Multi Function Serial Reception/Status Ch. 5
    #define MFS6_RX_IRQHandler(void)           IRQ072_Handler(void) ///< Multi Function Serial Reception Ch. 6
    #define MFS6_TX_IRQHandler(void)           IRQ073_Handler(void) ///< Multi Function Serial Reception/Status Ch. 6
    #define MFS7_RX_IRQHandler(void)           IRQ074_Handler(void) ///< Multi Function Serial Reception Ch. 7
    #define MFS7_TX_IRQHandler(void)           IRQ075_Handler(void) ///< Multi Function Serial Reception/Status Ch. 7
    #define ADC0_IRQHandler(void)              IRQ076_Handler(void) ///< Analog Digital Converter Unit 0
    #define ADC1_IRQHandler(void)              IRQ077_Handler(void) ///< Analog Digital Converter Unit 1
    #define USB0_IRQHandler(void)              IRQ078_Handler(void) ///< USB Ch. 0 (DRQ of endpoint 1 to 5) 
    #define USB0_HOST_IRQHandler(void)         IRQ079_Handler(void) ///< USB Ch. 0 (DRQ of endpoint 0) / USB Host (individual Status)
    #define CAN0_IRQHandler(void)              IRQ080_Handler(void) ///< CAN Ch. 0
    #define CAN1_CANFD_IRQHandler(void)        IRQ081_Handler(void) ///< CAN Ch. 1, CAN FD (Ch. 2)
    #define ETHER0_IRQHandler(void)            IRQ082_Handler(void) ///< Ethernet Ch. 0
    #define DMAC0_IRQHandler(void)             IRQ083_Handler(void) ///< DMAC Ch. 0
    #define DMAC1_IRQHandler(void)             IRQ084_Handler(void) ///< DMAC Ch. 1
    #define DMAC2_IRQHandler(void)             IRQ085_Handler(void) ///< DMAC Ch. 2
    #define DMAC3_IRQHandler(void)             IRQ086_Handler(void) ///< DMAC Ch. 3
    #define DMAC4_IRQHandler(void)             IRQ087_Handler(void) ///< DMAC Ch. 4
    #define DMAC5_IRQHandler(void)             IRQ088_Handler(void) ///< DMAC Ch. 5
    #define DMAC6_IRQHandler(void)             IRQ089_Handler(void) ///< DMAC Ch. 6
    #define DMAC7_IRQHandler(void)             IRQ090_Handler(void) ///< DMAC Ch. 7
    #define DSTC_IRQHandler(void)              IRQ091_Handler(void) ///< DSTC SW Transfer Normal/Error
    #define EXINT16_17_18_19_IRQHandler(void)  IRQ092_Handler(void) ///< External Pin Interrupt Ch. 16, 17, 18, 19
    #define EXINT20_21_22_23_IRQHandler(void)  IRQ093_Handler(void) ///< External Pin Interrupt Ch. 20, 21, 22, 23
    #define EXINT24_25_26_27_IRQHandler(void)  IRQ094_Handler(void) ///< External Pin Interrupt Ch. 24, 25, 26, 27
    #define EXINT28_29_30_31_IRQHandler(void)  IRQ095_Handler(void) ///< External Pin Interrupt Ch. 28, 29, 30, 31
    #define QPRC2_IRQHandler(void)             IRQ096_Handler(void) ///< Quad Position & Revolution Counter Ch. 2
    #define QPRC3_IRQHandler(void)             IRQ097_Handler(void) ///< Quad Position & Revolution Counter Ch. 3
    #define BT8_IRQHandler(void)               IRQ098_Handler(void) ///< Base Timer Ch. 8
    #define BT9_IRQHandler(void)               IRQ099_Handler(void) ///< Base Timer Ch. 9
    #define BT10_IRQHandler(void)              IRQ100_Handler(void) ///< Base Timer Ch. 10
    #define BT11_IRQHandler(void)              IRQ101_Handler(void) ///< Base Timer Ch. 11
    #define BT12_13_14_15_IRQHandler(void)     IRQ102_Handler(void) ///< Base Timer Ch. 12 - 15
    #define MFS8_RX_IRQHandler(void)           IRQ103_Handler(void) ///< Multi Function Serial Reception Ch. 8
    #define MFS8_TX_IRQHandler(void)           IRQ104_Handler(void) ///< Multi Function Serial Reception/Status Ch. 8
    #define MFS9_RX_IRQHandler(void)           IRQ105_Handler(void) ///< Multi Function Serial Reception Ch. 9
    #define MFS9_TX_IRQHandler(void)           IRQ106_Handler(void) ///< Multi Function Serial Reception/Status Ch. 9
    #define MFS10_RX_IRQHandler(void)          IRQ107_Handler(void) ///< Multi Function Serial Reception Ch. 10
    #define MFS10_TX_IRQHandler(void)          IRQ108_Handler(void) ///< Multi Function Serial Reception/Status Ch. 10
    #define MFS11_RX_IRQHandler(void)          IRQ109_Handler(void) ///< Multi Function Serial Reception Ch. 11
    #define MFS11_TX_IRQHandler(void)          IRQ110_Handler(void) ///< Multi Function Serial Reception/Status Ch. 11
    #define ADC2_IRQHandler(void)              IRQ111_Handler(void) ///< Analog Digital Converter Unit 2
    #define DSTC_HW_IRQHandler(void)           IRQ112_Handler(void) ///< DSTC-HWINT (CAN, Prog. CRC, HSSPI-TX, HSSPI-RX, I2S-TX, I2S-RX)
    #define USB1_IRQHandler(void)              IRQ113_Handler(void) ///< USB Ch. 1 (DRQ of endpoint 1 to 5) 
    #define USB1_HOST_IRQHandler(void)         IRQ114_Handler(void) ///< USB Ch. 1 (DRQ of endpoint 0) / USB Host (individual Status)
    #define HSSPI_IRQHandler                   IRQ115_Handler(void) ///< HSSPI fault, transmission, reception interrupt
//                                             IRQ116_Handler(void)      RESERVED 
    #define PRGCRC_I2S_IRQHandler(void)        IRQ117_Handler(void) ///< Program. CRC, I2S interrupt
    #define SD_IRQHandler(void)                IRQ118_Handler(void) ///< SD Card
    #define FLASH_IRQHandler(void)             IRQ119_Handler(void) ///< Flash Interface
    #define MFS12_RX_IRQHandler(void)          IRQ120_Handler(void) ///< Multi Function Serial Reception Ch. 12
    #define MFS12_TX_IRQHandler(void)          IRQ121_Handler(void) ///< Multi Function Serial Reception/Status Ch. 12
    #define MFS13_RX_IRQHandler(void)          IRQ122_Handler(void) ///< Multi Function Serial Reception Ch. 13
    #define MFS13_TX_IRQHandler(void)          IRQ123_Handler(void) ///< Multi Function Serial Reception/Status Ch. 13
    #define MFS14_RX_IRQHandler(void)          IRQ124_Handler(void) ///< Multi Function Serial Reception Ch. 14
    #define MFS14_TX_IRQHandler(void)          IRQ125_Handler(void) ///< Multi Function Serial Reception/Status Ch. 14
    #define MFS15_RX_IRQHandler(void)          IRQ126_Handler(void) ///< Multi Function Serial Reception Ch. 15
    #define MFS15_TX_IRQHandler(void)          IRQ127_Handler(void) ///< Multi Function Serial Reception/Status Ch. 15

#else
    #error Interrupt Type not found!
#endif



/******************************************************************************/
/* Global type definitions ('typedef')                                        */
/******************************************************************************/

/*****************************************************************************/
/* Global variable declarations ('extern', definition in C source)           */
/*****************************************************************************/

/*****************************************************************************/
/* Global function prototypes ('extern', definition in C source)             */
/*****************************************************************************/

/******************************************************************************
 * Global function protoypes
 ******************************************************************************/
extern void pdl_memclr(uint8_t* pu32Address, uint32_t u32Count);

/**
 ******************************************************************************
 ** This hook is part of wait loops.
 ******************************************************************************/
extern void PDL_WAIT_LOOP_HOOK(void);

#ifdef __cplusplus
}
#endif

#endif /* __PDL_H__ */

/******************************************************************************/
/* EOF (not truncated)                                                        */
/******************************************************************************/

