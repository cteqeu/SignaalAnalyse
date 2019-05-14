/*******************************************************************************
* Copyright (C) 2014 Spansion LLC. All Rights Reserved. 
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
/** \file pdl_user.h
 **
 ** User settings headerfile for FM4 Peripheral Driver Library.
 **
 ** \note This file SHALL only be included in pdl.h!
 **  
 ** History:
 **   - 2013-10-31  1.0  MWi  First release version
 **   - 2013-12-02  1.1  MWi  Double definition of CSV interrupt enable
 **                           removed
 **   - 2014-08-18  1.2  CNo  added #define CAN1_IRQn CAN1_CANFD_IRQn for S6E2CC
 **                           and included emac_user.h
 **   - 2014-11-18  1.3  MWi  Definitions of HSSPI and SPI added
 **
 ******************************************************************************/
#ifndef __PDL_USER_H__
#define __PDL_USER_H__

#include "pdl_device.h"

/******************************************************************************/
/* Global pre-processor symbols/macros ('#define')                            */
/******************************************************************************/
  
/**
 ******************************************************************************
 ** User Defines for PDL resource activation
 **
 ** Possible definitions are PDL_ON and PDL_OFF.
 **
 ******************************************************************************/

// ADC
#define PDL_PERIPHERAL_ENABLE_ADC0              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_ADC1              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_ADC2              PDL_OFF

// Base Timers
#define PDL_PERIPHERAL_ENABLE_BT0               PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT1               PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT2               PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT3               PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT4               PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT5               PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT6               PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT7               PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT8               PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT9               PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT10              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT11              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT12              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT13              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT14              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_BT15              PDL_OFF
                                                
// CAN                                          
#define PDL_PERIPHERAL_ENABLE_CAN0              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_CAN1              PDL_OFF

// CAN FD
#define PDL_PERIPHERAL_ENABLE_CANFD0            PDL_OFF
   
// Clock
#define PDL_PERIPHERAL_ENABLE_CLK               PDL_OFF
     
// CR Trimming
#define PDL_PERIPHERAL_ENABLE_CR                PDL_OFF
                                        
// CRC                                          
#define PDL_PERIPHERAL_ENABLE_CRC0              PDL_OFF

// Clock Supervisor
#define PDL_PERIPHERAL_ENABLE_CSV               PDL_OFF

// DAC
#define PDL_PERIPHERAL_ENABLE_DAC0              PDL_OFF
                                                
// DMA                                          
#define PDL_PERIPHERAL_ENABLE_DMA0              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_DMA1              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_DMA2              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_DMA3              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_DMA4              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_DMA5              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_DMA6              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_DMA7              PDL_OFF

// DSTC
#define PDL_PERIPHERAL_ENABLE_DSTC              PDL_OFF

// Dual Timer(s)
#define PDL_PERIPHERAL_ENABLE_DT0               PDL_OFF

// Ethernet
// Please activate/deactivate in emac_user.h

// External Interrupts
#define PDL_PERIPHERAL_ENABLE_EXINT0            PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT1            PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT2            PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT3            PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT4            PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT5            PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT6            PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT7            PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT8            PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT9            PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT10           PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT11           PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT12           PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT13           PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT14           PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT15           PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT16_17_18_19  PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT20_21_22_23  PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT24_25_26_27  PDL_OFF
#define PDL_PERIPHERAL_ENABLE_EXINT28_29_30_31  PDL_OFF

// External Bus Interface
#define PDL_PERIPHERAL_ENABLE_EXTIF             PDL_OFF
                                                
// Flash routines
#define PDL_PERIPHERAL_ENABLE_MAIN_FLASH        PDL_OFF
#define PDL_PERIPHERAL_ENABLE_WORK_FLASH        PDL_OFF

// GPIO header inclusion
#define PDL_PERIPHERAL_ENABLE_GPIO              PDL_OFF
                                                
// HDMI routines                                
#define PDL_PERIPHERAL_ENABLE_HDMI              PDL_OFF

// HSSPI routines                                
#define PDL_PERIPHERAL_ENABLE_HSSPI0            PDL_OFF   

// I2S
#define PDL_PERIPHERAL_ENABLE_I2S0              PDL_OFF

// I2S Clock
#define PDL_PERIPHERAL_ENABLE_I20_CLK           PDL_OFF

// LPM
#define PDL_PERIPHERAL_ENABLE_LPM               PDL_OFF

// Low Voltage Detection
#define PDL_PERIPHERAL_ENABLE_LVD               PDL_OFF

// Multi Function Serial Interfaces
#define PDL_PERIPHERAL_ENABLE_MFS0              PDL_ON
#define PDL_PERIPHERAL_ENABLE_MFS1              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS2              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS3              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS4              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS5              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS6              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS7              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS8              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS9              PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS10             PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS11             PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS12             PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS13             PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS14             PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFS15             PDL_OFF

// Multi Function Serial Driver Usage (High or Low)
#define PDL_MFS_USE_HL                          PDL_ON

// Multi Function Timer Interfaces
#define PDL_PERIPHERAL_ENABLE_MFT0_FRT          PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFT0_OCU          PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFT0_WFG          PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFT0_ICU          PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFT0_ADCMP        PDL_OFF
                                                
#define PDL_PERIPHERAL_ENABLE_MFT1_FRT          PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFT1_OCU          PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFT1_WFG          PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFT1_ICU          PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFT1_ADCMP        PDL_OFF
                                                
#define PDL_PERIPHERAL_ENABLE_MFT2_FRT          PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFT2_OCU          PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFT2_WFG          PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFT2_ICU          PDL_OFF
#define PDL_PERIPHERAL_ENABLE_MFT2_ADCMP        PDL_OFF
                                                
// PPG                                          
#define PDL_PERIPHERAL_ENABLE_PPG               PDL_OFF   
                                                
// NMI                                          
#define PDL_PERIPHERAL_ENABLE_NMI               PDL_OFF

// Quad Decoder
#define PDL_PERIPHERAL_ENABLE_QPRC0             PDL_OFF
#define PDL_PERIPHERAL_ENABLE_QPRC1             PDL_OFF
#define PDL_PERIPHERAL_ENABLE_QPRC2             PDL_OFF
#define PDL_PERIPHERAL_ENABLE_QPRC3             PDL_OFF

// Reset Cause
#define PDL_PERIPHERAL_ENABLE_RESET             PDL_OFF

// Real Time Clock
#define PDL_PERIPHERAL_ENABLE_RTC0              PDL_OFF

// SD Host
#define PDL_PERIPHERAL_ENABLE_SD                PDL_OFF

// Unique ID
#define PDL_PERIPHERAL_ENABLE_UID               PDL_OFF

// USB
#define PDL_PERIPHERAL_ENABLE_USB0_DEVICE       PDL_OFF
#define PDL_PERIPHERAL_ENABLE_USB0_HOST         PDL_OFF
#define PDL_PERIPHERAL_ENABLE_USB1_DEVICE       PDL_OFF
#define PDL_PERIPHERAL_ENABLE_USB1_HOST         PDL_OFF

// USB Device Middle Ware  
#define PDL_USBDEVICECDCCOM_ENABLED             PDL_OFF
#define PDL_USBDEVICEHIDCOM_ENABLED             PDL_OFF
#define PDL_USBDEVICEHIDJOYSTICK_ENABLED        PDL_OFF
#define PDL_USBDEVICEHIDKEYBOARD_ENABLED        PDL_OFF
#define PDL_USBDEVICEHIDMOUSE_ENABLED           PDL_OFF
#define PDL_USBDEVICELIBUSB_ENABLED             PDL_OFF
#define PDL_USBDEVICEPRINTER_ENABLED            PDL_OFF

// USB Host Middle Ware  
#define PDL_USBHOSTHIDCOM_ENABLED               PDL_OFF     
#define PDL_USBHOSTHIDKEYBOARD_ENABLED          PDL_OFF  
#define PDL_USBHOSTHIDMOUSE_ENABLED             PDL_OFF      
#define PDL_USBHOSTMASSSTORAGE_ENABLED          PDL_OFF   
                                                
// Watch Counter
#define PDL_PERIPHERAL_ENABLE_WC0               PDL_OFF

// Watchdog Timers
#define PDL_PERIPHERAL_ENABLE_HWWDG             PDL_OFF
#define PDL_PERIPHERAL_ENABLE_SWWDG             PDL_OFF

/**
 ******************************************************************************
 ** User Interrupt activation settings
 **
 ** Possible values are PDL_INT_ACTIVE (Interrupts active) and PDL_INT_INACTIVE
 ** (Interrupts deactivated)
 ******************************************************************************/
// ADC                                         
#define PDL_INTERRUPT_ENABLE_ADC0              PDL_OFF
#define PDL_INTERRUPT_ENABLE_ADC1              PDL_OFF
#define PDL_INTERRUPT_ENABLE_ADC2              PDL_OFF
                                               
// Base Timers                                 
#define PDL_INTERRUPT_ENABLE_BT0               PDL_OFF
#define PDL_INTERRUPT_ENABLE_BT1               PDL_OFF
#define PDL_INTERRUPT_ENABLE_BT2               PDL_OFF
#define PDL_INTERRUPT_ENABLE_BT3               PDL_OFF
#define PDL_INTERRUPT_ENABLE_BT4               PDL_OFF
#define PDL_INTERRUPT_ENABLE_BT5               PDL_OFF
#define PDL_INTERRUPT_ENABLE_BT6               PDL_OFF
#define PDL_INTERRUPT_ENABLE_BT7               PDL_OFF
#define PDL_INTERRUPT_ENABLE_BT8               PDL_OFF
#define PDL_INTERRUPT_ENABLE_BT9               PDL_OFF
#define PDL_INTERRUPT_ENABLE_BT10              PDL_OFF
#define PDL_INTERRUPT_ENABLE_BT11              PDL_OFF
#define PDL_INTERRUPT_ENABLE_BT12_13_14_15     PDL_OFF
                                               
// CAN                                         
#define PDL_INTERRUPT_ENABLE_CAN0              PDL_OFF
#define PDL_INTERRUPT_ENABLE_CAN1              PDL_OFF

// CAN FD
#define PDL_INTERRUPT_ENABLE_CANFD0            PDL_OFF
                                               
// CRC                                         
#define PDL_INTERRUPT_ENABLE_CRC0              PDL_OFF
                                               
// Clock                                       
#define PDL_INTERRUPT_ENABLE_CLK               PDL_OFF
                                               
// Clock Supervisor                            
#define PDL_INTERRUPT_ENABLE_CSV               PDL_OFF
                                               
// DMA                                         
#define PDL_INTERRUPT_ENABLE_DMA0              PDL_OFF
#define PDL_INTERRUPT_ENABLE_DMA1              PDL_OFF
#define PDL_INTERRUPT_ENABLE_DMA2              PDL_OFF
#define PDL_INTERRUPT_ENABLE_DMA3              PDL_OFF
#define PDL_INTERRUPT_ENABLE_DMA4              PDL_OFF
#define PDL_INTERRUPT_ENABLE_DMA5              PDL_OFF
#define PDL_INTERRUPT_ENABLE_DMA6              PDL_OFF
#define PDL_INTERRUPT_ENABLE_DMA7              PDL_OFF
                                               
// DSTC                                        
#define PDL_INTERRUPT_ENABLE_DSTC              PDL_OFF
                                               
// Dual Timer(s)                               
#define PDL_INTERRUPT_ENABLE_DT0               PDL_OFF

// External Interrupts (automatically set by peripheral enable)
#if (PDL_PERIPHERAL_ENABLE_EXINT0 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT0            PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT0            PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT1 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT1            PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT1            PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT2 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT2            PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT2            PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT3 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT3            PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT3            PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT4 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT4            PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT4            PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT5 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT5            PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT5            PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT6 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT6            PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT6            PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT7 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT7            PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT7            PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT8 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT8            PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT8            PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT9 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT9            PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT9            PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT10 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT10           PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT10           PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT11 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT11           PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT11           PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT12 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT12           PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT12           PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT13 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT13           PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT13           PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT14 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT14           PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT14           PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT15 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT15           PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT15           PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT16_17_18_19 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT16_17_18_19  PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT16_17_18_19  PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT20_21_22_23 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT20_21_22_23  PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT20_21_22_23  PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT24_25_26_27 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT24_25_26_27  PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT24_25_26_27  PDL_OFF
#endif
#if (PDL_PERIPHERAL_ENABLE_EXINT28_29_30_31 == PDL_ON)
#define PDL_INTERRUPT_ENABLE_EXINT28_29_30_31  PDL_ON
#else
#define PDL_INTERRUPT_ENABLE_EXINT28_29_30_31  PDL_OFF
#endif

// External Bus Interface
#define PDL_INTERRUPT_ENABLE_EXTIF             PDL_OFF
   
// HDMI routines
#define PDL_INTERRUPT_ENABLE_HDMI              PDL_OFF

// I2S
#define PDL_INTERRUPT_ENABLE_I2S0              PDL_OFF

// I2S Clock
#define PDL_INTERRUPT_ENABLE_I2S_CLK           PDL_OFF


// LCD
#define PDL_INTERRUPT_ENABLE_LCD               PDL_OFF
   
// Low Voltage Detection
#define PDL_INTERRUPT_ENABLE_LVD               PDL_OFF

// Multi Function Serial Interfaces
#define PDL_INTERRUPT_ENABLE_MFS0              PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS1              PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS2              PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS3              PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS4              PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS5              PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS6              PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS7              PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS8              PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS9              PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS10             PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS11             PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS12             PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS13             PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS14             PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFS15             PDL_OFF

// Multi Function Timer Interfaces
#define PDL_INTERRUPT_ENABLE_MFT0_FRT          PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFT0_OCU          PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFT0_WFG          PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFT0_ICU          PDL_OFF

#define PDL_INTERRUPT_ENABLE_MFT1_FRT          PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFT1_OCU          PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFT1_WFG          PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFT1_ICU          PDL_OFF

#define PDL_INTERRUPT_ENABLE_MFT2_FRT          PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFT2_OCU          PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFT2_WFG          PDL_OFF
#define PDL_INTERRUPT_ENABLE_MFT2_ICU          PDL_OFF

// NMI
#define PDL_INTERRUPT_ENABLE_NMI               PDL_OFF
   
// PPG
#define PDL_INTERRUPT_ENABLE_PPG00_02_04       PDL_OFF
#define PDL_INTERRUPT_ENABLE_PPG08_10_12       PDL_OFF
#define PDL_INTERRUPT_ENABLE_PPG16_18_20       PDL_OFF

// Quad Decoder
#define PDL_INTERRUPT_ENABLE_QPRC0             PDL_OFF
#define PDL_INTERRUPT_ENABLE_QPRC1             PDL_OFF
#define PDL_INTERRUPT_ENABLE_QPRC2             PDL_OFF
#define PDL_INTERRUPT_ENABLE_QPRC3             PDL_OFF

// Real Time Clock
#define PDL_INTERRUPT_ENABLE_RTC0              PDL_OFF

// SD Host
#define PDL_INTERRUPT_ENABLE_SD                PDL_OFF

// USB
#define PDL_INTERRUPT_ENABLE_USB0_DEVICE       PDL_OFF
#define PDL_INTERRUPT_ENABLE_USB0_HOST         PDL_OFF
#define PDL_INTERRUPT_ENABLE_USB1_DEVICE       PDL_OFF
#define PDL_INTERRUPT_ENABLE_USB1_HOST         PDL_OFF

// Watch Counter
#define PDL_INTERRUPT_ENABLE_WC0               PDL_OFF

// Watchdog Timers
#define PDL_INTERRUPT_ENABLE_HWWDG             PDL_OFF
#define PDL_INTERRUPT_ENABLE_SWWDG             PDL_OFF

/**
 ******************************************************************************
 ** User Interrupt level settings
 **
 ** Possible values are 0 (high priority) to 15 (low priority)
 ******************************************************************************/
 // Analog Digital Converters            
#define PDL_IRQ_LEVEL_ADC0              15u
#define PDL_IRQ_LEVEL_ADC1              15u
#define PDL_IRQ_LEVEL_ADC2              15u
                                        
// Base Timers                          
#define PDL_IRQ_LEVEL_BT0               15u
#define PDL_IRQ_LEVEL_BT1               15u
#define PDL_IRQ_LEVEL_BT2               15u
#define PDL_IRQ_LEVEL_BT3               15u
#define PDL_IRQ_LEVEL_BT4               15u
#define PDL_IRQ_LEVEL_BT5               15u
#define PDL_IRQ_LEVEL_BT6               15u
#define PDL_IRQ_LEVEL_BT7               15u
#define PDL_IRQ_LEVEL_BT8               15u
#define PDL_IRQ_LEVEL_BT9               15u
#define PDL_IRQ_LEVEL_BT10              15u
#define PDL_IRQ_LEVEL_BT11              15u
#define PDL_IRQ_LEVEL_BT12_13_14_15     15u

// CAN                                  
#define PDL_IRQ_LEVEL_CAN0              15u
//#define PDL_IRQ_LEVEL_CAN1              15u
#define PDL_IRQ_LEVEL_CAN1_CANFD        15u
#define PDL_IRQ_LEVEL_CAN1 PDL_IRQ_LEVEL_CAN1_CANFD
// Watch Counter / Clock Stabilization Irq
#define PDL_IRQ_LEVEL_CLK_WC0           15u

// Clock Supervisor
#define PDL_IRQ_LEVEL_CSV               15u

// DMA end transfer interrupts
#define PDL_DMA0_LEVEL                  15u
#define PDL_DMA1_LEVEL                  15u
#define PDL_DMA2_LEVEL                  15u
#define PDL_DMA3_LEVEL                  15u
#define PDL_DMA4_LEVEL                  15u
#define PDL_DMA5_LEVEL                  15u
#define PDL_DMA6_LEVEL                  15u
#define PDL_DMA7_LEVEL                  15u

// DSTC
#define PDL_IRQ_LEVEL_DSTC              15u

// Dual Timer(s)
#define PDL_IRQ_LEVEL_DT0               15u

// Ethernet
// Please set IRQ level in emac_user.h

// External Bus Interface
#define PDL_IRQ_LEVEL_EXTIF             15u

// External Interrupts + NMI
#define PDL_IRQ_LEVEL_EXINT0            15u
#define PDL_IRQ_LEVEL_EXINT1            15u
#define PDL_IRQ_LEVEL_EXINT2            15u
#define PDL_IRQ_LEVEL_EXINT3            15u
#define PDL_IRQ_LEVEL_EXINT4            15u
#define PDL_IRQ_LEVEL_EXINT5            15u
#define PDL_IRQ_LEVEL_EXINT6            15u
#define PDL_IRQ_LEVEL_EXINT7            15u
#define PDL_IRQ_LEVEL_EXINT8            15u
#define PDL_IRQ_LEVEL_EXINT9            15u
#define PDL_IRQ_LEVEL_EXINT10           15u
#define PDL_IRQ_LEVEL_EXINT11           15u
#define PDL_IRQ_LEVEL_EXINT12           15u
#define PDL_IRQ_LEVEL_EXINT13           15u
#define PDL_IRQ_LEVEL_EXINT14           15u
#define PDL_IRQ_LEVEL_EXINT15           15u
#define PDL_IRQ_LEVEL_EXINT16_17_18_19  15u
#define PDL_IRQ_LEVEL_EXINT20_21_22_23  15u
#define PDL_IRQ_LEVEL_EXINT24_25_26_27  15u
#define PDL_IRQ_LEVEL_EXINT28_29_30_31  15u

// I2S0 Detection Interrupt
#define PDL_IRQ_LEVEL_I2S0              15u

// HSSPI0 Detection Interrupt
#define PDL_IRQ_LEVEL_HSSPI0            15u

// Low Voltage Detection Interrupt
#define PDL_IRQ_LEVEL_LVD               15u

// Multi Function Serial Interfaces
#define PDL_IRQ_LEVEL_MFS0_TX           15u
#define PDL_IRQ_LEVEL_MFS0_RX           15u
#define PDL_IRQ_LEVEL_MFS1_TX           15u
#define PDL_IRQ_LEVEL_MFS1_RX           15u
#define PDL_IRQ_LEVEL_MFS2_TX           15u
#define PDL_IRQ_LEVEL_MFS2_RX           15u
#define PDL_IRQ_LEVEL_MFS3_TX           15u
#define PDL_IRQ_LEVEL_MFS3_RX           15u
#define PDL_IRQ_LEVEL_MFS4_TX           15u
#define PDL_IRQ_LEVEL_MFS4_RX           15u
#define PDL_IRQ_LEVEL_MFS5_TX           15u
#define PDL_IRQ_LEVEL_MFS5_RX           15u
#define PDL_IRQ_LEVEL_MFS6_TX           15u
#define PDL_IRQ_LEVEL_MFS6_RX           15u
#define PDL_IRQ_LEVEL_MFS7_TX           15u
#define PDL_IRQ_LEVEL_MFS7_RX           15u
#define PDL_IRQ_LEVEL_MFS8_TX           15u
#define PDL_IRQ_LEVEL_MFS8_RX           15u
#define PDL_IRQ_LEVEL_MFS9_TX           15u
#define PDL_IRQ_LEVEL_MFS9_RX           15u
#define PDL_IRQ_LEVEL_MFS10_TX          15u
#define PDL_IRQ_LEVEL_MFS10_RX          15u
#define PDL_IRQ_LEVEL_MFS11_TX          15u
#define PDL_IRQ_LEVEL_MFS11_RX          15u
#define PDL_IRQ_LEVEL_MFS12_TX          15u
#define PDL_IRQ_LEVEL_MFS12_RX          15u
#define PDL_IRQ_LEVEL_MFS13_TX          15u
#define PDL_IRQ_LEVEL_MFS13_RX          15u
#define PDL_IRQ_LEVEL_MFS14_TX          15u
#define PDL_IRQ_LEVEL_MFS14_RX          15u
#define PDL_IRQ_LEVEL_MFS15_TX          15u
#define PDL_IRQ_LEVEL_MFS15_RX          15u
                                        
// Multi Function Timer Interrupts
#define PDL_IRQ_LEVEL_MFT0_FRT          15u
#define PDL_IRQ_LEVEL_MFT0_OCU          15u
#define PDL_IRQ_LEVEL_MFT0_WFG          15u
#define PDL_IRQ_LEVEL_MFT0_ICU          15u
                                        
#define PDL_IRQ_LEVEL_MFT1_FRT          15u
#define PDL_IRQ_LEVEL_MFT1_OCU          15u
#define PDL_IRQ_LEVEL_MFT1_WFG          15u
#define PDL_IRQ_LEVEL_MFT1_ICU          15u
                                        
#define PDL_IRQ_LEVEL_MFT2_FRT          15u
#define PDL_IRQ_LEVEL_MFT2_OCU          15u
#define PDL_IRQ_LEVEL_MFT2_WFG          15u
#define PDL_IRQ_LEVEL_MFT2_ICU          15u

// NMI
#define PDL_IRQ_LEVEL_NMI               15u

// PPG Interrupts
#define PDL_IRQ_LEVEL_PPG00_02_04       15u
#define PDL_IRQ_LEVEL_PPG08_10_12       15u
#define PDL_IRQ_LEVEL_PPG16_18_20       15u

// Quad Decoder and Revolution Counter
#define PDL_IRQ_LEVEL_QPRC0             15u
#define PDL_IRQ_LEVEL_QPRC1             15u
#define PDL_IRQ_LEVEL_QPRC2             15u
#define PDL_IRQ_LEVEL_QPRC3             15u
                                        
// Real Time Clock                      
#define PDL_IRQ_LEVEL_RTC0              15u

// SD Host
#define PDL_IRQ_LEVEL_SD                15u

// USB
#define PDL_IRQ_LEVEL_USB0              15u
#define PDL_IRQ_LEVEL_USB1              15u
                                    
// Watchdog Timers                      
#define PDL_IRQ_LEVEL_HWWDG             15u
#define PDL_IRQ_LEVEL_SWWDG             15u

/**
 ******************************************************************************
 ** User DSTC enable settings
 **
 ** Possible values are PDL_ON or PDL_OFF
 ******************************************************************************/
// ADC
#define PDL_DSTC_ENABLE_ADC0_PRIO               PDL_OFF
#define PDL_DSTC_ENABLE_ADC0_SCAN               PDL_OFF
#define PDL_DSTC_ENABLE_ADC1_PRIO               PDL_OFF
#define PDL_DSTC_ENABLE_ADC1_SCAN               PDL_OFF
#define PDL_DSTC_ENABLE_ADC2_PRIO               PDL_OFF
#define PDL_DSTC_ENABLE_ADC2_SCAN               PDL_OFF

// BT
#define PDL_DSTC_ENABLE_BT0_IRQ0                PDL_OFF
#define PDL_DSTC_ENABLE_BT0_IRQ1                PDL_OFF
#define PDL_DSTC_ENABLE_BT1_IRQ0                PDL_OFF
#define PDL_DSTC_ENABLE_BT1_IRQ1                PDL_OFF
#define PDL_DSTC_ENABLE_BT2_IRQ0                PDL_OFF
#define PDL_DSTC_ENABLE_BT2_IRQ1                PDL_OFF
#define PDL_DSTC_ENABLE_BT3_IRQ0                PDL_OFF
#define PDL_DSTC_ENABLE_BT3_IRQ1                PDL_OFF
#define PDL_DSTC_ENABLE_BT4_IRQ0                PDL_OFF
#define PDL_DSTC_ENABLE_BT4_IRQ1                PDL_OFF
#define PDL_DSTC_ENABLE_BT5_IRQ0                PDL_OFF
#define PDL_DSTC_ENABLE_BT5_IRQ1                PDL_OFF
#define PDL_DSTC_ENABLE_BT6_IRQ0                PDL_OFF
#define PDL_DSTC_ENABLE_BT6_IRQ1                PDL_OFF
#define PDL_DSTC_ENABLE_BT7_IRQ0                PDL_OFF
#define PDL_DSTC_ENABLE_BT7_IRQ1                PDL_OFF
#define PDL_DSTC_ENABLE_BT8_IRQ0                PDL_OFF
#define PDL_DSTC_ENABLE_BT8_IRQ1                PDL_OFF
#define PDL_DSTC_ENABLE_BT9_IRQ0                PDL_OFF
#define PDL_DSTC_ENABLE_BT9_IRQ1                PDL_OFF
#define PDL_DSTC_ENABLE_BT10_IRQ0               PDL_OFF
#define PDL_DSTC_ENABLE_BT10_IRQ1               PDL_OFF
#define PDL_DSTC_ENABLE_BT11_IRQ0               PDL_OFF
#define PDL_DSTC_ENABLE_BT11_IRQ1               PDL_OFF
#define PDL_DSTC_ENABLE_BT12_IRQ0               PDL_OFF
#define PDL_DSTC_ENABLE_BT12_IRQ1               PDL_OFF
#define PDL_DSTC_ENABLE_BT13_IRQ0               PDL_OFF
#define PDL_DSTC_ENABLE_BT13_IRQ1               PDL_OFF
#define PDL_DSTC_ENABLE_BT14_IRQ0               PDL_OFF
#define PDL_DSTC_ENABLE_BT14_IRQ1               PDL_OFF
#define PDL_DSTC_ENABLE_BT15_IRQ0               PDL_OFF
#define PDL_DSTC_ENABLE_BT15_IRQ1               PDL_OFF

// EXINT
#define PDL_DSTC_ENABLE_EXTINT0                 PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT1                 PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT2                 PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT3                 PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT4                 PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT5                 PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT6                 PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT7                 PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT8                 PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT9                 PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT10                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT11                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT12                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT13                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT14                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT15                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT16                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT17                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT18                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT19                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT20                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT21                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT22                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT23                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT24                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT25                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT26                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT27                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT28                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT29                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT30                PDL_OFF
#define PDL_DSTC_ENABLE_EXTINT31                PDL_OFF

// MFS
#define PDL_DSTC_ENABLE_MFS0_RX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS0_TX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS1_RX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS1_TX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS2_RX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS2_TX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS3_RX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS3_TX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS4_RX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS4_TX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS5_RX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS5_TX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS6_RX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS6_TX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS7_RX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS7_TX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS8_RX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS8_TX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS9_RX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS9_TX                 PDL_OFF
#define PDL_DSTC_ENABLE_MFS10_RX                PDL_OFF
#define PDL_DSTC_ENABLE_MFS10_TX                PDL_OFF
#define PDL_DSTC_ENABLE_MFS11_RX                PDL_OFF
#define PDL_DSTC_ENABLE_MFS11_TX                PDL_OFF
#define PDL_DSTC_ENABLE_MFS12_RX                PDL_OFF
#define PDL_DSTC_ENABLE_MFS12_TX                PDL_OFF
#define PDL_DSTC_ENABLE_MFS13_RX                PDL_OFF
#define PDL_DSTC_ENABLE_MFS13_TX                PDL_OFF
#define PDL_DSTC_ENABLE_MFS14_RX                PDL_OFF
#define PDL_DSTC_ENABLE_MFS14_TX                PDL_OFF
#define PDL_DSTC_ENABLE_MFS15_RX                PDL_OFF
#define PDL_DSTC_ENABLE_MFS15_TX                PDL_OFF

// MFT
#define PDL_DSTC_ENABLE_MFT0_FRT0_PEAK          PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_FRT0_ZERO          PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_FRT1_PEAK          PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_FRT1_ZERO          PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_FRT2_PEAK          PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_FRT2_ZERO          PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_ICU0               PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_ICU1               PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_ICU2               PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_ICU3               PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_OCU0               PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_OCU1               PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_OCU2               PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_OCU3               PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_OCU4               PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_OCU5               PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_WFG10              PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_WFG32              PDL_OFF
#define PDL_DSTC_ENABLE_MFT0_WFG54              PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_FRT0_PEAK          PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_FRT0_ZERO          PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_FRT1_PEAK          PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_FRT1_ZERO          PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_FRT2_PEAK          PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_FRT2_ZERO          PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_ICU0               PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_ICU1               PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_ICU2               PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_ICU3               PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_OCU0               PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_OCU1               PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_OCU2               PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_OCU3               PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_OCU4               PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_OCU5               PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_WFG10              PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_WFG32              PDL_OFF
#define PDL_DSTC_ENABLE_MFT1_WFG54              PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_FRT0_PEAK          PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_FRT0_ZERO          PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_FRT1_PEAK          PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_FRT1_ZERO          PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_FRT2_PEAK          PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_FRT2_ZERO          PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_ICU0               PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_ICU1               PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_ICU2               PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_ICU3               PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_OCU0               PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_OCU1               PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_OCU2               PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_OCU3               PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_OCU4               PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_OCU5               PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_WFG10              PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_WFG32              PDL_OFF
#define PDL_DSTC_ENABLE_MFT2_WFG54              PDL_OFF

// PPG
#define PDL_DSTC_ENABLE_PPG0                    PDL_OFF
#define PDL_DSTC_ENABLE_PPG2                    PDL_OFF
#define PDL_DSTC_ENABLE_PPG4                    PDL_OFF
#define PDL_DSTC_ENABLE_PPG8                    PDL_OFF
#define PDL_DSTC_ENABLE_PPG10                   PDL_OFF
#define PDL_DSTC_ENABLE_PPG12                   PDL_OFF
#define PDL_DSTC_ENABLE_PPG16                   PDL_OFF
#define PDL_DSTC_ENABLE_PPG18                   PDL_OFF
#define PDL_DSTC_ENABLE_PPG20                   PDL_OFF

// QPRC
#define PDL_DSTC_ENABLE_QPRC0_COUNT_INVERSION   PDL_OFF
#define PDL_DSTC_ENABLE_QPRC0_OUT_OF_RANGE      PDL_OFF
#define PDL_DSTC_ENABLE_QPRC0_PC_MATCH          PDL_OFF
#define PDL_DSTC_ENABLE_QPRC0_PC_MATCH_RC_MATCH PDL_OFF
#define PDL_DSTC_ENABLE_QPRC0_PC_RC_MATCH       PDL_OFF
#define PDL_DSTC_ENABLE_QPRC0_UFL_OFL_Z         PDL_OFF
#define PDL_DSTC_ENABLE_QPRC1_COUNT_INVERSION   PDL_OFF
#define PDL_DSTC_ENABLE_QPRC1_OUT_OF_RANGE      PDL_OFF
#define PDL_DSTC_ENABLE_QPRC1_PC_MATCH          PDL_OFF
#define PDL_DSTC_ENABLE_QPRC1_PC_MATCH_RC_MATCH PDL_OFF
#define PDL_DSTC_ENABLE_QPRC1_PC_RC_MATCH       PDL_OFF
#define PDL_DSTC_ENABLE_QPRC1_UFL_OFL_Z         PDL_OFF
#define PDL_DSTC_ENABLE_QPRC2_COUNT_INVERSION   PDL_OFF
#define PDL_DSTC_ENABLE_QPRC2_OUT_OF_RANGE      PDL_OFF
#define PDL_DSTC_ENABLE_QPRC2_PC_MATCH          PDL_OFF
#define PDL_DSTC_ENABLE_QPRC2_PC_MATCH_RC_MATCH PDL_OFF
#define PDL_DSTC_ENABLE_QPRC2_PC_RC_MATCH       PDL_OFF
#define PDL_DSTC_ENABLE_QPRC2_UFL_OFL_Z         PDL_OFF
#define PDL_DSTC_ENABLE_QPRC3_COUNT_INVERSION   PDL_OFF
#define PDL_DSTC_ENABLE_QPRC3_OUT_OF_RANGE      PDL_OFF
#define PDL_DSTC_ENABLE_QPRC3_PC_MATCH          PDL_OFF
#define PDL_DSTC_ENABLE_QPRC3_PC_MATCH_RC_MATCH PDL_OFF
#define PDL_DSTC_ENABLE_QPRC3_PC_RC_MATCH       PDL_OFF
#define PDL_DSTC_ENABLE_QPRC3_UFL_OFL_Z         PDL_OFF

// USB
#define PDL_DSTC_ENABLE_USB0_EP1                PDL_OFF
#define PDL_DSTC_ENABLE_USB0_EP2                PDL_OFF
#define PDL_DSTC_ENABLE_USB0_EP3                PDL_OFF
#define PDL_DSTC_ENABLE_USB0_EP4                PDL_OFF
#define PDL_DSTC_ENABLE_USB0_EP5                PDL_OFF
#define PDL_DSTC_ENABLE_USB1_EP1                PDL_OFF
#define PDL_DSTC_ENABLE_USB1_EP2                PDL_OFF
#define PDL_DSTC_ENABLE_USB1_EP3                PDL_OFF
#define PDL_DSTC_ENABLE_USB1_EP4                PDL_OFF
#define PDL_DSTC_ENABLE_USB1_EP5                PDL_OFF

// WC
#define PDL_DSTC_ENABLE_WC                      PDL_OFF

/******************************************************************************
 ** User hardware setting
 **
 ** Not all settings can be done via device definition. This section allows the
 ** user to adjust the library for individual device settings, such e.g. number
 ** of available ADC channels, which depend on the package size, etc.
 **
 ** The PDL_ON/PDL_OFF parameters are checked in pdl.h!
 ** 
 ******************************************************************************/

/**
 ******************************************************************************
 ** \brief User Number of ADC channels.
 **
 ** Number of available ADC channels (1 to 32)
 ******************************************************************************/
#define PDL_ADC_CHANNELS          32u
   
/**
 ******************************************************************************
 ** \brief User Number of DMA channels. If a device does not support DMA it
 ** is not needed to set this value to 0.
 **
 ** Number of available DMA channels (1 to 8)
 ******************************************************************************/
#define PDL_DMA_CHANNELS          8u

   /**
 ******************************************************************************
 ** \brief Number of supported Hardware Channels of Device DSTC
 ******************************************************************************/
#define PDL_DSTC_CHANNELS         128u

/**
 ******************************************************************************
 ** \brief Number of available Back-up Registers
 ******************************************************************************/
#define PDL_BACK_UP_REGISTERS     32u

/**
 ******************************************************************************
 ** \brief PDL utility enable check
 ******************************************************************************/
#define PDL_UTILITY_ENABLE_I2C_POLLING_AT24CXX    PDL_OFF
#define PDL_UTILITY_ENABLE_I2C_INT_AT24CXX        PDL_OFF
#define PDL_UTILITY_ENABLE_CSIO_INT_S25FL127S     PDL_OFF
#define PDL_UTILITY_ENABLE_UART_PRINTF            PDL_OFF

/**
 ******************************************************************************
 ** \brief Enable/disable print on the terminal window
 ******************************************************************************/
#define DEBUG_PRINT

#endif // __PDL_USER_H__

/******************************************************************************/
/* EOF (not truncated)                                                        */
/******************************************************************************/
