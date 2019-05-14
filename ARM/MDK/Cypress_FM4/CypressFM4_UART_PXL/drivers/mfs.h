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
/** \file mfs.h
 **
 ** Headerfile for MFS functions
 **  
 **
 ** History:
 **   - 2013-03-27  1.0  NT   First version.
 **
 ******************************************************************************/

#ifndef __MFS_H__
#define __MFS_H__

/******************************************************************************/
/* Include files                                                              */
/******************************************************************************/
#include "pdl.h"

#if (defined(PDL_PERIPHERAL_MFS_ACTIVE))

/* C binding of definitions if building with C++ compiler */
#ifdef __cplusplus
extern "C"
{
#endif

/**
 ******************************************************************************
 ** \defgroup MfsGroup MFS Low Level Functions (MFS)
 **
 ** Provided functions of MFS module:
 ** 
 ** - Mfs_Uart_Init()
 ** - Mfs_Uart_DeInit()
 ** - Mfs_Csio_Init()
 ** - Mfs_Csio_DeInit()
 ** - Mfs_Csio_SetSckOutEnable()
 ** - Mfs_Csio_SetChipSelectErrEnable()
 ** - Mfs_Csio_SetChipSelectErrIntEnable()
 ** - Mfs_Csio_ClrChipSelectErr()
 ** - Mfs_Csio_ClrTimerIntReq()
 ** - Mfs_Csio_SetSerialTimerIntEnable()
 ** - Mfs_Csio_SetSyncTransEnable()
 ** - Mfs_Csio_SetTimerPrescale()
 ** - Mfs_Csio_SetSerialTimerEnable()
 ** - Mfs_Csio_SetCmpVal4SerialTimer()
 ** - Mfs_Csio_SetCsHold()
 ** - Mfs_Csio_SetCsTimingPrescale()
 ** - Mfs_Csio_SetCsInActiveLevel()
 ** - Mfs_Csio_SetChipSelectEnable()
 ** - Mfs_Csio_SetChipSelectOutEnable()
 ** - Mfs_Csio_SetCsTimingConfig()
 ** - Mfs_Csio_SetTxLength()
 ** - Mfs_I2c_Init()
 ** - Mfs_I2c_DeInit()
 ** - Mfs_I2c_SetTxIntEnable()
 ** - Mfs_I2c_SetRxIntEnable()
 ** - Mfs_I2c_SetAckEnable()
 ** - Mfs_I2c_SetWaitSelect()
 ** - Mfs_I2c_SetCondDetIntEnable()
 ** - Mfs_I2c_SetIntEnable()
 ** - Mfs_I2c_ClearIntStatus()
 ** - Mfs_I2c_SetTransmitEmpty()
 ** - Mfs_I2c_SetDmaModeEnable()
 ** - Mfs_I2c_SetNoizeFilter()
 ** - Mfs_I2c_SetSdaOutLevel()
 ** - Mfs_I2c_SetSclOutLevel()
 ** - Mfs_I2c_SetSerlalOutEnable()
 ** - Mfs_I2c_SetBusErrorControlEnable()
 ** - Mfs_I2c_SetI2cEnable()
 ** - Mfs_I2c_SetSlvAddrEnable()
 ** - Mfs_Lin_Init()
 ** - Mfs_Lin_DeInit()
 ** - Mfs_Lin_SetBreak()
 ** - Mfs_Lin_ClearBreakDetFlag()
 ** - Mfs_Lin_SetBreakDetIntEnable()
 ** - Mfs_Lin_SetBreakConfig()
 ** - Mfs_SetSerialOutputEnable()
 ** - Mfs_SetWakeUpControlEnable()
 ** - Mfs_SoftwareReset()
 ** - Mfs_SetRxIntEnable()
 ** - Mfs_SetTxIntEnable()
 ** - Mfs_SetTxBusIdleIntEnable()
 ** - Mfs_SetTxFifoIntEnable()
 ** - Mfs_SetRxEnable()
 ** - Mfs_SetTxEnable()
 ** - Mfs_ErrorClear()
 ** - Mfs_ConfigFifo()
 ** - Mfs_ClrTxFifoReqStatus()
 ** - Mfs_ResetFifo()
 ** - Mfs_SetFifoEnable()
 ** - Mfs_ReadData()
 ** - Mfs_WriteData()
 ** - Mfs_Csio_ReadData32()
 ** - Mfs_Csio_WriteData32()
 ** - Mfs_Csio_GetSerialTimer()
 ** - Mfs_Csio_GetStatus()
 ** - Mfs_I2c_GetBusErrStatus()
 ** - Mfs_I2c_GetIntStatus()
 ** - Mfs_GetStatus()
 ** - Mfs_GetTxFifoReqStatus()
 ** - Mfs_GetFifoBytes()
 ** - Mfs_GetBusClock()
 ** - Mfs_GetReloadValue()
 ** - Mfs_I2cGetReloadValue()
 ** - Mfs_SetSMR()
 ** - Mfs_GetSMR()
 ** - Mfs_SetSCR()
 ** - Mfs_GetSCR()
 ** - Mfs_SetIBCR()
 ** - Mfs_GetIBCR()
 ** - Mfs_SetESCR()
 ** - Mfs_GetESCR()
 ** - Mfs_SetIBSR()
 ** - Mfs_GetIBSR()
 ** - Mfs_GetSSR()
 ** - Mfs_GetRDR()
 ** - Mfs_SetTDR()
 ** - Mfs_SetBGR()
 ** - Mfs_GetBGR()
 ** - Mfs_SetFCR1()
 ** - Mfs_GetFCR1()
 ** - Mfs_SetFCR0()
 ** - Mfs_GetFCR0()
 ** - Mfs_GetFBYTE1()
 ** - Mfs_GetFBYTE2()
 ** - Mfs_SetSCSTR10()
 ** - Mfs_GetSCSTR10()
 ** - Mfs_SetSCSTR32()
 ** - Mfs_GetSCSTR32()
 ** - Mfs_SetSACSR()
 ** - Mfs_GetSACSR()
 ** - Mfs_GetSTMCR()
 ** - Mfs_GetSTMR()
 ** - Mfs_SetSTMCR()
 ** - Mfs_SetSCSCR()
 ** - Mfs_GetSCSCR()
 ** - Mfs_SetTBYTE0()
 ** - Mfs_GetTBYTE0()
 ** - Mfs_SetISBA()
 ** - Mfs_GetISBA()
 ** - Mfs_SetISMK()
 ** - Mfs_GetISMK()
 ** - Mfs_SetNFCR()
 ** - Mfs_GetNFCR()
 ** - Mfs_SetEIBCR()
 ** - Mfs_GetEIBCR()
 ** - Mfs_InitTxIrq()
 ** - Mfs_InitRxIrq()
 ** - Mfs_DeInitIrq()
 ** - Mfs_SetRxIntCallBack()
 ** - Mfs_SetTxIntCallBack()
 ** - Mfs_SetStsIntCallBack()
 ** - Mfs_SetUpperLayerHandle()
 **
 ** Mfs_Uart_Init() is used to initialize an MFS instance to UART mode with
 ** parameter pstcConfig of type #stc_mfs_uart_config_t.
 ** This function is only set basically UART configuration.
 ** Mfs_Uart_DeInit() is used to reset all MFS UART related register.
 ** So this function is used after initialization by Mfs_Uart_Init().
 **
 ** Mfs_Csio_Init() is used to initialize an MFS instance to CSIO mode with
 ** parameter pstcConfig of type #stc_mfs_csio_config_t.
 ** This function is only set basically CSIO configuration.
 ** Mfs_Csio_DeInit() is used to reset all MFS CSIO related register.
 ** So this function is used after initialization by Mfs_Csio_Init().
 **
 ** Mfs_Lin_Init() is used to initialize an MFS instance to LIN mode with
 ** its dedicated LIN configuration (#stc_mfs_lin_config_t).
 ** This function is only set basically LIN configuration.
 ** Mfs_Lin_DeInit() is used to reset all MFS LIN related register.
 ** So this function is used after initialization by Mfs_Lin_Init().
 **
 ** Mfs_I2c_Init() is used to initialize an MFS instance to I2C mode with
 ** parameter pstcConfig of type #stc_mfs_i2c_config_t.
 ** This function is only set basically I2C configuration.
 ** Mfs_I2c_DeInit() is used to reset all MFS I2C related register.
 ** So this function is used after initialization by Mfs_I2c_Init().
 **
 ** Mfs_SetRxIntCallBack(), Mfs_SetTxIntCallBack() and Mfs_SetStsIntCallBack()
 ** are register callback function when interrupt is occurrd.
 **
 ** Mfs_SetUpperLayerHandle() is register pointer of internal data for upper
 ** layer. (High level driver etc.)
 **
 ** Other functions is used for reading or writing register, etc.
 ** If application use this module, it has to use these APIs by combining.
 ** 
 ******************************************************************************/
//@{

/******************************************************************************
 * Global type definitions
 ******************************************************************************/
typedef FM4_MFS_TypeDef stc_mfsn_t;

/**
 ******************************************************************************
 ** \brief Mfs UART mode
 ******************************************************************************/
typedef enum en_mfs_uart_mode
{
    MfsUartNormal = 0,          ///< Normal mode
    MfsUartMulti  = 1           ///< Multi-Processor Mode
} en_mfs_uart_mode_t;

/**
 ******************************************************************************
 ** \brief Mfs CSIO mode (Master/Slave)
 ******************************************************************************/
typedef enum en_mfs_csio_mode
{
    MfsCsioMaster = 0,          ///< Master mode (generating serial clock)
    MfsCsioSlave  = 1           ///< Slave mode  (external serial clock)
} en_mfs_csio_mode_t;

/**
 ******************************************************************************
 ** \brief Mfs CSIO active mode (Normal/SPI)
 ******************************************************************************/
typedef enum en_mfs_csio_act_mode
{
    MfsCsioActNormalMode = 0,   ///< Normal mode
    MfsCsioActSpiMode    = 1    ///< SPI mode
} en_mfs_csio_act_mode_t;

/**
 ******************************************************************************
 ** \brief Mfs I2C mode
 ******************************************************************************/
typedef enum en_mfs_i2c_mode
{
    MfsI2cMaster = 0,           ///< I2C Master Mode
    MfsI2cSlave  = 1            ///< I2C Slave Mode
} en_mfs_i2c_mode_t;

/**
 ******************************************************************************
 ** \brief Mfs I2C Fast-mode Plus settings
 ******************************************************************************/
typedef enum en_mfs_i2c_fast_mode
{
    MfsI2cDisableFastModePlus = 0,  ///< Standard-mode
    MfsI2cEnableFastModePlus  = 1   ///< Fast-mode Plus
} en_mfs_i2c_fast_mode_t;

/**
 ******************************************************************************
 ** \brief Mfs Lin Mode (Master/Slave)
 ******************************************************************************/
typedef enum en_mfs_lin_mode
{
    MfsLinMaster = 0,           ///< LIN Master Mode
    MfsLinSlave  = 1            ///< LIN Slave Mode
} en_mfs_lin_mode_t;

/**
 ******************************************************************************
 ** \brief Mfs parity.
 ******************************************************************************/
typedef enum en_mfs_parity
{
    MfsParityNone  = 0,         ///< No parity bit is used.
    MfsParityEven  = 2,         ///< Even parity bit is used.
    MfsParityOdd   = 3          ///< Odd parity bit is used.
} en_mfs_parity_t;

/**
 ******************************************************************************
 ** \brief Mfs character length.
 ******************************************************************************/
typedef enum en_mfs_characterlength
{
    MfsFiveBits       = 0,      ///<  5 Bit character length
    MfsSixBits        = 1,      ///<  6 Bit character length
    MfsSevenBits      = 2,      ///<  7 Bit character length
    MfsEightBits      = 3,      ///<  8 Bit character length
    MfsNineBits       = 4,      ///<  9 Bit character length
    MfsTenBits        = 5,      ///< 10 Bit character length
    MfsElevenBits     = 6,      ///< 11 Bit character length
    MfsTwelveBits     = 7,      ///< 12 Bit character length
    MfsThirteenBits   = 8,      ///< 13 Bit character length
    MfsFourteenBits   = 9,      ///< 14 Bit character length
    MfsFifteenBits    = 10,     ///< 15 Bit character length
    MfsSixteenBits    = 11,     ///< 16 Bit character length
    MfsTwentyBits     = 12,     ///< 20 Bit character length
    MfsTwentyFourBits = 13,     ///< 24 Bit character length
    MfsThirtyTwoBits  = 14      ///< 32 Bit character length
} en_mfs_characterlength_t;

/**
 ******************************************************************************
 ** \brief Mfs start/stop bit.
 ******************************************************************************/
typedef enum en_mfs_stopbit
{
    MfsOneStopBit    = 0,       ///< 1 Stop Bit
    MfsTwoStopBits   = 1,       ///< 2 Stop Bits
    MfsThreeStopBits = 2,       ///< 3 Stop Bits
    MfsFourStopBits  = 3        ///< 4 Stop Bits
} en_mfs_stopbit_t;

/**
 ******************************************************************************
 ** \brief Mfs CSIO wait time insertion.
 ******************************************************************************/
typedef enum en_mfs_csio_sync_wait_time
{
    MfsSyncWaitZero  = 0,           ///< 0 wait time insertion
    MfsSyncWaitOne   = 1,           ///< 1 wait time insertion
    MfsSyncWaitTwo   = 2,           ///< 2 wait time insertion
    MfsSyncWaitThree = 3            ///< 3 wait time insertion
} en_mfs_csio_sync_wait_time_t;

/**
 ******************************************************************************
 ** \brief Mfs I2C Auxiliary Nois Filter Settings
 ******************************************************************************/
typedef enum en_mfs_i2c_noize_filter
{
    MfsI2cNoizeFilterLess40M  = 0x00,   ///<   8 MHz <= APB1 bus clock <  40 MHz
    MfsI2cNoizeFilterLess60M  = 0x01,   ///<  40 MHz <= APB1 bus clock <  60 MHz
    MfsI2cNoizeFilterLess80M  = 0x02,   ///<  60 MHz <= APB1 bus clock <  60 MHz
    MfsI2cNoizeFilterLess100M = 0x03,   ///<  80 MHz <= APB1 bus clock < 100 MHz
    MfsI2cNoizeFilterLess120M = 0x04,   ///< 100 MHz <= APB1 bus clock < 120 MHz
    MfsI2cNoizeFilterLess140M = 0x05,   ///< 120 MHz <= APB1 bus clock < 140 MHz
    MfsI2cNoizeFilterLess160M = 0x06,   ///< 140 MHz <= APB1 bus clock < 160 MHz
    MfsI2cNoizeFilterLess180M = 0x07,   ///< 160 MHz <= APB1 bus clock < 180 MHz
    MfsI2cNoizeFilterLess200M = 0x08,   ///< 180 MHz <= APB1 bus clock < 200 MHz
    MfsI2cNoizeFilterLess220M = 0x09,   ///< 200 MHz <= APB1 bus clock < 220 MHz
    MfsI2cNoizeFilterLess240M = 0x0A,   ///< 220 MHz <= APB1 bus clock < 240 MHz
    MfsI2cNoizeFilterLess260M = 0x0B,   ///< 240 MHz <= APB1 bus clock < 260 MHz
    MfsI2cNoizeFilterLess280M = 0x0C,   ///< 260 MHz <= APB1 bus clock < 280 MHz
    MfsI2cNoizeFilterLess300M = 0x0D,   ///< 280 MHz <= APB1 bus clock < 300 MHz
    MfsI2cNoizeFilterLess320M = 0x0E,   ///< 300 MHz <= APB1 bus clock < 320 MHz
    MfsI2cNoizeFilterLess340M = 0x0F,   ///< 320 MHz <= APB1 bus clock < 340 MHz
    MfsI2cNoizeFilterLess360M = 0x10,   ///< 340 MHz <= APB1 bus clock < 360 MHz
    MfsI2cNoizeFilterLess380M = 0x11,   ///< 360 MHz <= APB1 bus clock < 380 MHz
    MfsI2cNoizeFilterLess400M = 0x12    ///< 380 MHz <= APB1 bus clock < 400 MHz
} en_mfs_i2c_noize_filter_t;

/**
 ******************************************************************************
 ** \brief MFS I2C data direction (read/write)
 ******************************************************************************/
typedef enum en_mfs_i2c_datadirection
{
    MfsI2cWrite = 0x00,         ///< Write
    MfsI2cRead  = 0x01          ///< Read
} en_mfs_i2c_datadirection_t ;

/**
 ******************************************************************************
 ** \brief Mfs I2C Wait Selection Settings
 ******************************************************************************/
typedef enum en_mfs_i2c_wait_sel
{
    MfsI2cWaitSelAfterAck = 0,  ///< Waits (9 bits) after acknowledgement.
    MfsI2cWaitSelDataTxRx = 1   ///< Waits (8 bits) after data transmission or reception.
} en_mfs_i2c_wait_sel_t;

/**
 ******************************************************************************
 ** \brief Mfs FIFO availability
 ******************************************************************************/
typedef enum en_mfs_fifo_available
{
    MfsHasNoFifo = 0,               ///< MFS has no FIFO available.
    MfsHasFifo   = 1                ///< MFS has a FIFO available.
} en_mfs_fifo_available_t;

/**
 ******************************************************************************
 ** \brief Mfs FIFO Number
 ******************************************************************************/
typedef enum en_mfs_fifo
{
    MfsFifo1 = 0,                   ///< FIFO No.1
    MfsFifo2 = 1                    ///< FIFO No.2
} en_mfs_fifo_t;

/**
 ******************************************************************************
 ** \brief Mfs FIFO Selection
 ******************************************************************************/
typedef enum en_mfs_fifo_select
{
    MfsTxFifo1RxFifo2 = 0,          ///< Transmit FIFO:FIFO1, Received FIFO:FIFO2
    MfsTxFifo2RxFifo1 = 1           ///< Transmit FIFO:FIFO2, Received FIFO:FIFO1
} en_mfs_fifo_select_t;

/**
 ******************************************************************************
 ** \brief Mfs Lin Stop Bit Length
 ******************************************************************************/
typedef enum en_mfs_lin_stop_bit_length
{
    MfsLinOneStopBit    = 0,        ///< 1 Stop Bit
    MfsLinTwoStopBits   = 1,        ///< 2 Stop Bits
    MfsLinThreeStopBits = 2,        ///< 3 Stop Bits
    MfsLinFourStopBits  = 3         ///< 4 Stop Bits
} en_mfs_lin_stop_bit_length_t;

/**
 ******************************************************************************
 ** \brief Mfs Lin Break Generation Length (only applicable in LIN master mode)
 ******************************************************************************/
typedef enum en_mfs_lin_break_length
{
    MfsLinBreakLength13 = 0,        ///< Lin Break Length 13 Bit Times
    MfsLinBreakLength14 = 1,        ///< Lin Break Length 14 Bit Times
    MfsLinBreakLength15 = 2,        ///< Lin Break Length 15 Bit Times
    MfsLinBreakLength16 = 3         ///< Lin Break Length 16 Bit Times
} en_mfs_lin_break_length_t;

/**
 ******************************************************************************
 ** \brief Mfs Lin Break Delimiter Length (only applicable in LIN master mode)
 ******************************************************************************/
typedef enum en_mfs_lin_delimiter_length
{
    MfsLinDelimiterLength1 = 0,     ///< Lin Break Delimiter Length 1 Bit Time
    MfsLinDelimiterLength2 = 1,     ///< Lin Break Delimiter Length 2 Bit Times
    MfsLinDelimiterLength3 = 2,     ///< Lin Break Delimiter Length 3 Bit Times
    MfsLinDelimiterLength4 = 3      ///< Lin Break Delimiter Length 4 Bit Times
} en_mfs_lin_delimiter_length_t;

/**
 ******************************************************************************
 ** \brief APB2 bus clk divider value definition
 ******************************************************************************/
typedef enum en_mfs_bus_clk_divider
{
    MfsClkDiv0 = 0,                 ///< APB2 bus clk = CLK/1
    MfsClkDiv1 = 1,                 ///< APB2 bus clk = CLK/2
    MfsClkDiv2 = 2,                 ///< APB2 bus clk = CLK/4
    MfsClkDiv3 = 3                  ///< APB2 bus clk = CLK/8
} en_mfs_bus_clk_divider_t;

/**
 ******************************************************************************
 ** \brief Mfs configuration.
 **
 ** Contains all parameter for configuratin an MFS channel.  
 ******************************************************************************/
/* UART */
typedef struct stc_mfs_uart_config
{
    uint32_t  u32DataRate;          ///< Baud rate (bps)
    uint8_t   u8UartMode;           ///< UART mode, see description of #en_mfs_uart_mode_t
    uint8_t   u8Parity;             ///< Parity, see description of #en_mfs_parity_t
    uint8_t   u8StopBit;            ///< Stop bit, see description of #en_mfs_stopbit_t
    uint8_t   u8CharLength;         ///< 5..9 Bit Character Length, see description of #en_mfs_characterlength_t
    boolean_t bBitDirection;        ///< FALSE: LSB first, TRUE : MSB first
    boolean_t bSignalSystem;        ///< FALSE: NRZ, TRUE : Inverted NRZ
    boolean_t bHwFlow;              ///< FALSE: Not use Hardware Flow, TRUE : Use Hardware Flow
} stc_mfs_uart_config_t;

/* CSIO */
typedef struct stc_mfs_csio_config
{
    uint32_t  u32DataRate;          ///< Baud rate (bps)
    uint8_t   u8CsioMode;           ///< See description of #en_mfs_csio_mode_t
    uint8_t   u8CsioActMode;        ///< See description of #en_mfs_csio_act_mode_t
    uint8_t   u8SyncWaitTime;       ///< See description of #en_mfs_csio_sync_wait_time_t
    uint8_t   u8CharLength;         ///< 5..32 Bit Character Length, see description of #en_mfs_characterlength_t
    boolean_t bBitDirection;        ///< FALSE: LSB first, TRUE: MSB first
    boolean_t bSignalSystem;        ///< FALSE: SCK Mark Level High, TRUE: SCK Mark Level Low
} stc_mfs_csio_config_t;

/* I2C */
typedef struct stc_mfs_i2c_config
{
    uint32_t u32DataRate;           ///< Baud rate (bps)
    uint8_t  u8I2cMode;             ///< I2C mode, see description of #en_mfs_i2c_mode_t
    uint8_t  u8NoizeFilter;         ///< Noize filter setting, see description of #en_mfs_i2c_noize_filter_t
    uint8_t  u8SlvAddr;             ///< Slave address (This is effective on slave mode.)
    uint8_t  u8FastMode;            ///< Fast mode, see description of #en_mfs_i2c_fast_mode_t
} stc_mfs_i2c_config_t;

/* LIN */
typedef struct stc_mfs_lin_config
{
    uint32_t  u32DataRate;          ///< Baud rate (bps)
    boolean_t bExtWakeUp;           ///< TRUE: Sets external wake-up function
    boolean_t bLinBreakIrqEnable;   ///< TRUE: Enable LIN break reception interrupt
    uint8_t   u8LinMode;            ///< LIN mode, see #en_mfs_lin_mode_t for details
    uint8_t   u8StopBits;           ///< Stop bits length, see #en_mfs_lin_stop_bit_length_t for details
    uint8_t   u8BreakLength;        ///< Break length, see #en_mfs_lin_break_length_t for details. Only applicable in LIN master mode
    uint8_t   u8DelimiterLength;    ///< Delimiter length, see #en_mfs_lin_delimiter_length_t
} stc_mfs_lin_config_t;

/**
 ******************************************************************************
 ** \brief Mfs chip select timing configuration for CSIO.
 ******************************************************************************/
typedef struct stc_mfs_csio_cs_timing
{
    uint8_t  u8CsSetupDelay;        ///< Timing for setup delay
    uint8_t  u8CsHoldDelay;         ///< Timing for hold delay
    uint16_t u16CsDeSelect;         ///< Minimum time from inactivation until activation of chip select
} stc_mfs_csio_cs_timing_t;

/**
 ******************************************************************************
 ** \brief Mfs FIFO configuration.
 ******************************************************************************/
typedef struct stc_mfs_fifo_config
{
    uint8_t u8FifoSel;              ///< FIFO selection, see #en_mfs_fifo_select_t for details
    uint8_t u8ByteCount1;           ///< Transfer data count for FIFO1
    uint8_t u8ByteCount2;           ///< Transfer data count for FIFO2
} stc_mfs_fifo_config_t;

/**
 ******************************************************************************
 ** \brief Mfscallback function prototypes.
 ******************************************************************************/
typedef void (*mfs_tx_cb_func_ptr_t)(volatile stc_mfsn_t* pstcMfs, void* pvHandle);
typedef void (*mfs_rx_cb_func_ptr_t)(volatile stc_mfsn_t* pstcMfs, void* pvHandle);
typedef void (*mfs_sts_cb_func_ptr_t)(volatile stc_mfsn_t* pstcMfs, void* pvHandle);

/*****************************************************************************/
/* Gloval pre-processor symbols/macros ('#define")                           */
/*****************************************************************************/
#define MFS0    (*((volatile stc_mfsn_t *) FM4_MFS0_BASE))
#define MFS1    (*((volatile stc_mfsn_t *) FM4_MFS1_BASE))
#define MFS2    (*((volatile stc_mfsn_t *) FM4_MFS2_BASE))
#define MFS3    (*((volatile stc_mfsn_t *) FM4_MFS3_BASE))
#define MFS4    (*((volatile stc_mfsn_t *) FM4_MFS4_BASE))
#define MFS5    (*((volatile stc_mfsn_t *) FM4_MFS5_BASE))
#define MFS6    (*((volatile stc_mfsn_t *) FM4_MFS6_BASE))
#define MFS7    (*((volatile stc_mfsn_t *) FM4_MFS7_BASE))
#define MFS8    (*((volatile stc_mfsn_t *) FM4_MFS8_BASE))
#define MFS9    (*((volatile stc_mfsn_t *) FM4_MFS9_BASE))
#define MFS10   (*((volatile stc_mfsn_t *) FM4_MFS10_BASE))
#define MFS11   (*((volatile stc_mfsn_t *) FM4_MFS11_BASE))
#define MFS12   (*((volatile stc_mfsn_t *) FM4_MFS12_BASE))
#define MFS13   (*((volatile stc_mfsn_t *) FM4_MFS13_BASE))
#define MFS14   (*((volatile stc_mfsn_t *) FM4_MFS14_BASE))
#define MFS15   (*((volatile stc_mfsn_t *) FM4_MFS15_BASE))

#if (PDL_DEVICE_TYPE == PDL_TYPE0)
#define MFS_I2C_FAST_MODE_PLUS_CH_A     (&MFS3)
#define MFS_I2C_FAST_MODE_PLUS_CH_B     (&MFS7)
#else
#define MFS_I2C_FAST_MODE_PLUS_CH_A     (&MFS3)
#define MFS_I2C_FAST_MODE_PLUS_CH_B     (&MFS7)
#endif

// This define is used to non-check parameter for Low Level driver
#define PDL_MFS_NO_PARAM_CHK    PDL_OFF

/**
 ******************************************************************************
 ** \brief Fifo related settings
 ** These values represent the minimum and maximum values of the hardware
 ** Fifo level settings. (Interrupt) Trigger levels should be set to a level
 ** that will allow at least 1 remaining byte to be transmitted or received 
 ** also if the interrupt is pending. Using half of the FiFo size is always 
 ** a good choice to get balanced load and continuous data flow.
 ******************************************************************************/
#define MFS_FIFO_MIN_VAL        (0u)
#define MFS_FIFO_MAX_VAL        (16u)
#define MFS_RX_FIFO_MIN_VAL     (1u)

/* for SMR MD bit */
#define MFS_MD_UART_NORNAL      (0x00)
#define MFS_MD_UART_MULTI       (0x01)
#define MFS_MD_CSIO             (0x02)
#define MFS_MD_LIN              (0x03)
#define MFS_MD_I2C              (0x04)

/* for ESCR L0-L2 bit(UART, CSIO) */
#define MFS_DATA_LEN_5          (0x01)
#define MFS_DATA_LEN_6          (0x02)
#define MFS_DATA_LEN_7          (0x03)
#define MFS_DATA_LEN_8          (0x00)
#define MFS_DATA_LEN_9          (0x04)

/* for ESCR L0-L2,L3 bit(for CSIO) */
#define MFS_DATA_LEN_10         (0x05)
#define MFS_DATA_LEN_11         (0x06)
#define MFS_DATA_LEN_12         (0x07)
#define MFS_DATA_LEN_13         (0x00)
#define MFS_DATA_LEN_14         (0x01)
#define MFS_DATA_LEN_15         (0x02)
#define MFS_DATA_LEN_16         (0x03)
#define MFS_DATA_LEN_20         (0x04)
#define MFS_DATA_LEN_24         (0x05)
#define MFS_DATA_LEN_32         (0x06)

/* for ESCR WT0-1 bit (for CSIO) */
#define MFS_WAIT_TIME_0BIT      (0x00)
#define MFS_WAIT_TIME_1BIT      (0x01)
#define MFS_WAIT_TIME_2BITS     (0x02)
#define MFS_WAIT_TIME_3BITS     (0x03)

/* for ESCR LBL0-1 bit (for LIN) */
#define MFS_LIN_BREAK_13BITS    (0x00)
#define MFS_LIN_BREAK_14BITS    (0x01)
#define MFS_LIN_BREAK_15BITS    (0x02)
#define MFS_LIN_BREAK_16BITS    (0x03)

/* for ESCR DEL0-1 bit (for LIN) */
#define MFS_LIN_DELIMITER_1BIT  (0x00)
#define MFS_LIN_DELIMITER_2BITS (0x01)
#define MFS_LIN_DELIMITER_3BITS (0x02)
#define MFS_LIN_DELIMITER_4BITS (0x03)

/* for SSR mask (COMMON) */
#define MFS_SSR_TDRE            (0x02u)
#define MFS_SSR_RDRF            (0x04u)
#define MFS_SSR_ORE             (0x08u)

/* for SSR mask (UART) */
#define MFS_UART_SSR_TBI        (0x01u)
#define MFS_UART_SSR_TDRE       (0x02u)
#define MFS_UART_SSR_RDRF       (0x04u)
#define MFS_UART_SSR_ORE        (0x08u)
#define MFS_UART_SSR_FRE        (0x10u)
#define MFS_UART_SSR_PE         (0x20u)
#define MFS_UART_SSR_ERR        (0x38u)

/* for SSR mask (CSIO) */
#define MFS_CSIO_SSR_TBI        (0x01u)
#define MFS_CSIO_SSR_TDRE       (0x02u)
#define MFS_CSIO_SSR_RDRF       (0x04u)
#define MFS_CSIO_SSR_ORE        (0x08u)
#define MFS_CSIO_SSR_ERR        (0x08u)

/* for SSR mask (I2C) */
#define MFS_I2C_SSR_TBI         (0x01u)
#define MFS_I2C_SSR_TDRE        (0x02u)
#define MFS_I2C_SSR_RDRF        (0x04u)
#define MFS_I2C_SSR_ORE         (0x08u)
#define MFS_I2C_SSR_ERR         (0x08u)

/* for SSR mask (LIN) */
#define MFS_LIN_SSR_TBI         (0x01u)
#define MFS_LIN_SSR_TDRE        (0x02u)
#define MFS_LIN_SSR_RDRF        (0x04u)
#define MFS_LIN_SSR_ORE         (0x08u)
#define MFS_LIN_SSR_FRE         (0x10u)
#define MFS_LIN_SSR_ERR         (0x18u)
#define MFS_LIN_SSR_LBD         (0x20u)

/* for SACSR mask (CSIO) */
#define MFS_SACSR_STATUS_MASK   (0x0900u)
#define MFS_SACSR_CSE           (0x0800u)
#define MFS_SACSR_TINT          (0x0100u)

/* for TDIV of SACSR (CSIO) */
#define MFS_SACSR_TDIV_NONE     (0x00)
#define MFS_SACSR_TDIV_2        (0x01)
#define MFS_SACSR_TDIV_4        (0x02)
#define MFS_SACSR_TDIV_8        (0x03)
#define MFS_SACSR_TDIV_16       (0x04)
#define MFS_SACSR_TDIV_32       (0x05)
#define MFS_SACSR_TDIV_64       (0x06)
#define MFS_SACSR_TDIV_128      (0x07)
#define MFS_SACSR_TDIV_256      (0x08)

/* for CDIV of SCRCR (CSIO) */
#define MFS_SCRCR_CDIV_NONE     (0x00)
#define MFS_SCRCR_CDIV_2        (0x01)
#define MFS_SCRCR_CDIV_4        (0x02)
#define MFS_SCRCR_CDIV_8        (0x03)
#define MFS_SCRCR_CDIV_16       (0x04)
#define MFS_SCRCR_CDIV_32       (0x05)
#define MFS_SCRCR_CDIV_64       (0x06)

/* for TBYTE0 */
#define MFS_CSIO_TBYTE_MAX      (0xffu)

/* for Clock */
#define MFS_CLOCK_40M           (40000000u)
#define MFS_CLOCK_60M           (60000000u)
#define MFS_CLOCK_80M           (80000000u)
#define MFS_CLOCK_100M          (100000000u)
#define MFS_CLOCK_120M          (120000000u)
#define MFS_CLOCK_140M          (140000000u)
#define MFS_CLOCK_160M          (160000000u)
#define MFS_CLOCK_180M          (180000000u)
#define MFS_CLOCK_200M          (200000000u)
#define MFS_CLOCK_220M          (220000000u)
#define MFS_CLOCK_240M          (240000000u)
#define MFS_CLOCK_260M          (260000000u)
#define MFS_CLOCK_280M          (280000000u)
#define MFS_CLOCK_300M          (300000000u)
#define MFS_CLOCK_320M          (320000000u)
#define MFS_CLOCK_340M          (340000000u)
#define MFS_CLOCK_360M          (360000000u)
#define MFS_CLOCK_380M          (380000000u)
#define MFS_CLOCK_400M          (400000000u)

/* Definition of FIFO availability */
#define MFS0_FIFO  MfsHasFifo
#define MFS1_FIFO  MfsHasFifo
#define MFS2_FIFO  MfsHasFifo
#define MFS3_FIFO  MfsHasFifo
#define MFS4_FIFO  MfsHasFifo
#define MFS5_FIFO  MfsHasFifo
#define MFS6_FIFO  MfsHasFifo
#define MFS7_FIFO  MfsHasFifo
#define MFS8_FIFO  MfsHasFifo
#define MFS9_FIFO  MfsHasFifo
#define MFS10_FIFO MfsHasFifo
#define MFS11_FIFO MfsHasFifo
#define MFS12_FIFO MfsHasFifo
#define MFS13_FIFO MfsHasFifo
#define MFS14_FIFO MfsHasFifo
#define MFS15_FIFO MfsHasFifo

/* Definition of CS availability */
#define MFS0_CS  MfsHasNoCs
#define MFS1_CS  MfsHasNoCs
#define MFS2_CS  MfsHasNoCs
#define MFS3_CS  MfsHasNoCs
#define MFS4_CS  MfsHasNoCs
#define MFS5_CS  MfsHasNoCs
#define MFS6_CS  MfsHasCs
#define MFS7_CS  MfsHasCs
#define MFS8_CS  MfsHasNoCs
#define MFS9_CS  MfsHasNoCs
#define MFS10_CS MfsHasNoCs
#define MFS11_CS MfsHasNoCs
#define MFS12_CS MfsHasNoCs
#define MFS13_CS MfsHasNoCs
#define MFS14_CS MfsHasNoCs
#define MFS15_CS MfsHasNoCs

/// SMR Mode bits mask
#define MFS_SMR_MODEBITS_MASK   (0xE0u)  /* MD2, MD1, MD0, 0, 0, 0, 0, 0 */
/// SMR LIN Mode bits
#define MFS_SMR_LIN_MODE        (0x60u)  /* MD2 = 0, MD1 = 1, MD0 = 1 */

/// ISMK bits mask
#define MFS_ISMK_I2C_ENABLE     (0x80u)  /* EN */
#define MFS_ISMK_SLV_ADDR_MASK  (0x7Fu)  /* SM0 - SM6 */

/// ISBA bits mask
#define MFS_ISBA_ADDR_ENABLE    (0x80u)  /* SAEN */
#define MFS_ISBA_SLV_ADDR       (0x7Fu)  /* SA0 - SA6 */

/// EIBCR bits mask
#define MFS_EIBCR_WRT_MASK      (0x0Fu)  /* BEC, SOCE, SCLC, SDAC */

/******************************************************************************/
/* Local type definitions ('typedef')                                         */
/******************************************************************************/

/// Enumeration to define an index for each enabled MFS instance
typedef enum en_mfs_instance_index
{
#if (PDL_PERIPHERAL_ENABLE_MFS0  == PDL_ON)
    MfsInstanceIndexMfs0,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS1  == PDL_ON)
    MfsInstanceIndexMfs1,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS2  == PDL_ON)
    MfsInstanceIndexMfs2,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS3  == PDL_ON)
    MfsInstanceIndexMfs3,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS4  == PDL_ON)
    MfsInstanceIndexMfs4,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS5  == PDL_ON)
    MfsInstanceIndexMfs5,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS6  == PDL_ON)
    MfsInstanceIndexMfs6,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS7  == PDL_ON)
    MfsInstanceIndexMfs7,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS8  == PDL_ON)
    MfsInstanceIndexMfs8,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS9  == PDL_ON)
    MfsInstanceIndexMfs9,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS10 == PDL_ON)
    MfsInstanceIndexMfs10,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS11 == PDL_ON)
    MfsInstanceIndexMfs11,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS12 == PDL_ON)
    MfsInstanceIndexMfs12,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS13 == PDL_ON)
    MfsInstanceIndexMfs13,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS14 == PDL_ON)
    MfsInstanceIndexMfs14,
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS15 == PDL_ON)
    MfsInstanceIndexMfs15,
#endif
    MfsInstanceIndexMax
} en_mfs_instance_index_t;

/// MFS module internal data, storing internal information for each enabled MFS instance.
typedef struct stc_mfs_intern_data
{
    mfs_tx_cb_func_ptr_t        pfnTransmitCbFunction;  ///< Transmission complete callback function
    mfs_rx_cb_func_ptr_t        pfnReceiveCbFunction;   ///< Receive callback function
    mfs_sts_cb_func_ptr_t       pfnStatusCbFunction;    ///< Status callback function
    void*                       pvUpperLayerHandle;     ///< Intern data handle for Upper
} stc_mfs_intern_data_t;

/// MFS instance data type
typedef struct stc_mfs_instance_data
{
    volatile stc_mfsn_t*  pstcInstance;  ///< pointer to registers of an instance
    stc_mfs_intern_data_t stcInternData; ///< module internal data of instance
} stc_mfs_instance_data_t;

/******************************************************************************/
/* Global variable definitions ('extern')                                     */
/******************************************************************************/

/// Look-up table for all enabled MFS instances and their internal data
extern stc_mfs_instance_data_t m_astcMfsInstanceDataLut[MfsInstanceIndexMax];

/******************************************************************************/
/* Global function prototypes (definition in C source)                        */
/******************************************************************************/
extern void MfsIrqHandlerTx(volatile stc_mfsn_t*   pstcMfs, 
                            stc_mfs_intern_data_t* pstcMfsInternData
                           );

extern void MfsIrqHandlerRx(volatile stc_mfsn_t*   pstcMfs, 
                            stc_mfs_intern_data_t* pstcMfsInternData
                           );

extern void MfsIrqHandlerStatus(volatile stc_mfsn_t*   pstcMfs, 
                                stc_mfs_intern_data_t* pstcMfsInternData
                               );

/* Configuration related API */
extern en_result_t Mfs_Uart_Init(volatile stc_mfsn_t*         pstcUart,
                                 const stc_mfs_uart_config_t* pstcConfig
                                );

extern en_result_t Mfs_Uart_DeInit(volatile stc_mfsn_t* pstcUart);

extern en_result_t Mfs_Uart_SetBaudRate(volatile stc_mfsn_t* pstcUart,
                                        uint32_t             u32BaudRate
                                       );

extern en_result_t Mfs_Csio_Init(volatile stc_mfsn_t*         pstcCsio, 
                                 const stc_mfs_csio_config_t* pstcConfig
                                );

extern en_result_t Mfs_Csio_DeInit(volatile stc_mfsn_t* pstcCsio);

extern en_result_t Mfs_Csio_SetSckOutEnable(volatile stc_mfsn_t* pstcCsio,
                                            boolean_t            bEnable
                                           );

extern en_result_t Mfs_Csio_SetChipSelectErrEnable(volatile stc_mfsn_t* pstcCsio,
                                                   boolean_t            bEnable
                                                  );

extern en_result_t Mfs_Csio_SetChipSelectErrIntEnable(volatile stc_mfsn_t* pstcCsio,
                                                      boolean_t            bEnable
                                                     );

extern en_result_t Mfs_Csio_ClrChipSelectErr(volatile stc_mfsn_t* pstcCsio);

extern en_result_t Mfs_Csio_ClrTimerIntReq(volatile stc_mfsn_t* pstcCsio);

extern en_result_t Mfs_Csio_SetSerialTimerIntEnable(volatile stc_mfsn_t* pstcCsio,
                                                    boolean_t            bEnable
                                                   );

extern en_result_t Mfs_Csio_SetSyncTransEnable(volatile stc_mfsn_t* pstcCsio,
                                               boolean_t            bEnable
                                              );

extern en_result_t Mfs_Csio_SetTimerPrescale(volatile stc_mfsn_t* pstcCsio,
                                             uint8_t              u8Prescale
                                            );

extern en_result_t Mfs_Csio_SetSerialTimerEnable(volatile stc_mfsn_t* pstcCsio,
                                                 boolean_t            bEnable
                                                );

extern en_result_t Mfs_Csio_SetCmpVal4SerialTimer(volatile stc_mfsn_t* pstcCsio,
                                                  uint16_t             u16CompareValue
                                                 );

extern en_result_t Mfs_Csio_SetCsHold(volatile stc_mfsn_t* pstcCsio,
                                      boolean_t            bHold
                                     );

extern en_result_t Mfs_Csio_SetCsTimingPrescale(volatile stc_mfsn_t* pstcCsio,
                                                uint8_t              u8Prescale
                                               );

extern en_result_t Mfs_Csio_SetCsInActiveLevel(volatile stc_mfsn_t* pstcCsio,
                                               boolean_t            bLevel
                                              );

extern en_result_t Mfs_Csio_SetChipSelectEnable(volatile stc_mfsn_t* pstcCsio,
                                                boolean_t            bEnable
                                               );

extern en_result_t Mfs_Csio_SetChipSelectOutEnable(volatile stc_mfsn_t* pstcCsio,
                                                   boolean_t            bEnable
                                                  );

extern en_result_t Mfs_Csio_SetCsTimingConfig(volatile stc_mfsn_t*      pstcCsio,
                                              stc_mfs_csio_cs_timing_t* pstcCsTimingCfg
                                             );

extern en_result_t Mfs_Csio_SetTxLength(volatile stc_mfsn_t* pstcCsio,
                                        uint8_t              u8TxBytes
                                       );

extern en_result_t Mfs_Csio_SetBaudRate(volatile stc_mfsn_t* pstcCsio,
                                        uint32_t             u32BaudRate
                                       );

extern en_result_t Mfs_I2c_Init(volatile stc_mfsn_t*        pstcI2c, 
                                const stc_mfs_i2c_config_t* pstcConfig
                               );

extern en_result_t Mfs_I2c_DeInit(volatile stc_mfsn_t* pstcI2c );

extern en_result_t Mfs_I2c_SetTxIntEnable(volatile stc_mfsn_t* pstcI2c,
                                          boolean_t            bEnable
                                         );

extern en_result_t Mfs_I2c_SetRxIntEnable(volatile stc_mfsn_t* pstcI2c,
                                          boolean_t            bEnable
                                         );

extern en_result_t Mfs_I2c_SetAckEnable(volatile stc_mfsn_t* pstcI2c,
                                        boolean_t            bEnable
                                       );

extern en_result_t Mfs_I2c_SetWaitSelect(volatile stc_mfsn_t* pstcI2c,
                                         uint8_t              u8WaitSelect
                                        );

extern en_result_t Mfs_I2c_SetCondDetIntEnable(volatile stc_mfsn_t* pstcI2c,
                                               boolean_t            bEnable
                                              );

extern en_result_t Mfs_I2c_SetIntEnable(volatile stc_mfsn_t* pstcI2c,
                                        boolean_t            bEnable
                                       );

extern en_result_t Mfs_I2c_ClearIntStatus(volatile stc_mfsn_t* pstcI2c);

extern en_result_t Mfs_I2c_SetTransmitEmpty(volatile stc_mfsn_t* pstcI2c);

extern en_result_t Mfs_I2c_SetDmaModeEnable(volatile stc_mfsn_t* pstcI2c,
                                            boolean_t            bEnable
                                           );

extern en_result_t Mfs_I2c_SetNoizeFilter(volatile stc_mfsn_t* pstcI2c,
                                          uint8_t              u8NzFilter
                                         );

extern en_result_t Mfs_I2c_SetSdaOutLevel(volatile stc_mfsn_t* pstcI2c,
                                          boolean_t            bLevel
                                         );

extern en_result_t Mfs_I2c_SetSclOutLevel(volatile stc_mfsn_t* pstcI2c,
                                          boolean_t            bLevel
                                         );

extern en_result_t Mfs_I2c_SetSerlalOutEnable(volatile stc_mfsn_t* pstcI2c,
                                              boolean_t            bEnable
                                             );

extern en_result_t Mfs_I2c_SetBusErrorControlEnable(volatile stc_mfsn_t* pstcI2c,
                                                    boolean_t            bEnable
                                                   );

extern en_result_t Mfs_I2c_SetI2cEnable(volatile stc_mfsn_t* pstcI2c,
                                        boolean_t            bEnable,
                                        uint8_t              u8AddrMask
                                       );

extern en_result_t Mfs_I2c_SetSlvAddrEnable(volatile stc_mfsn_t* pstcI2c,
                                            boolean_t            bEnable,
                                            uint8_t              u8SlvAdr
                                           );

extern en_result_t Mfs_I2c_SetBaudRate(volatile stc_mfsn_t* pstcI2c, 
                                       uint32_t             u32BaudRate
                                      );

extern en_result_t Mfs_Lin_Init(volatile stc_mfsn_t*        pstcLin,
                                const stc_mfs_lin_config_t* pstcConfig
                               );

extern en_result_t Mfs_Lin_DeInit(volatile stc_mfsn_t* pstcLin);

extern en_result_t Mfs_Lin_SetBreak(volatile stc_mfsn_t* pstcLin);

extern en_result_t Mfs_Lin_ClearBreakDetFlag(volatile stc_mfsn_t* pstcLin);

extern en_result_t Mfs_Lin_SetBreakDetIntEnable(volatile stc_mfsn_t* pstcLin,
                                                boolean_t            bEnable
                                               );

extern en_result_t Mfs_Lin_SetBreakConfig(volatile stc_mfsn_t* pstcLin,
                                          uint8_t              u8BreakLen,
                                          uint8_t              u8DelimiterLen
                                         );

extern en_result_t Mfs_Lin_SetBaudRate(volatile stc_mfsn_t* pstcLin,
                                       uint32_t             u32BaudRate
                                      );

extern en_result_t Mfs_SetSerialOutputEnable(volatile stc_mfsn_t* pstcMfs,
                                             boolean_t            bEnable
                                            );

extern en_result_t Mfs_SetWakeUpControlEnable(volatile stc_mfsn_t* pstcMfs,
                                              boolean_t            bEnable
                                             );

extern en_result_t Mfs_SoftwareReset(volatile stc_mfsn_t* pstcMfs);

extern en_result_t Mfs_SetRxIntEnable(volatile stc_mfsn_t* pstcMfs,
                                      boolean_t            bEnable
                                     );
extern en_result_t Mfs_SetTxIntEnable(volatile stc_mfsn_t* pstcMfs,
                                      boolean_t            bEnable
                                     );
extern en_result_t Mfs_SetTxBusIdleIntEnable(volatile stc_mfsn_t* pstcMfs,
                                             boolean_t            bEnable
                                            );
extern en_result_t Mfs_SetTxFifoIntEnable(volatile stc_mfsn_t* pstcMfs,
                                          boolean_t            bEnable
                                         );

extern en_result_t Mfs_SetRxEnable(volatile stc_mfsn_t* pstcMfs,
                                   boolean_t            bEnable
                                  );
extern en_result_t Mfs_SetTxEnable(volatile stc_mfsn_t* pstcMfs,
                                   boolean_t            bEnable
                                  );

extern en_result_t Mfs_ErrorClear(volatile stc_mfsn_t* pstcMfs);

extern en_result_t Mfs_ConfigFifo(volatile stc_mfsn_t*   pstcMfs,
                                  stc_mfs_fifo_config_t* pstcFifoConfig
                                 );

extern en_result_t Mfs_ClrTxFifoReqStatus(volatile stc_mfsn_t* pstcMfs);
extern en_result_t Mfs_ResetFifo(volatile stc_mfsn_t* pstcMfs,
                                 uint8_t              u8FifoNumber
                                );
extern en_result_t Mfs_SetFifoEnable(volatile stc_mfsn_t* pstcMfs,
                                     uint8_t              u8FifoNumber,
                                     boolean_t            bEnable
                                    );

/* Data transfer */
extern uint16_t Mfs_ReadData(volatile stc_mfsn_t* pstcMfs);
extern en_result_t Mfs_WriteData(volatile stc_mfsn_t* pstcMfs,
                                 const uint16_t       u16Data
                                );

extern uint32_t Mfs_Csio_ReadData32(volatile stc_mfsn_t* pstcCsio);
extern en_result_t Mfs_Csio_WriteData32(volatile stc_mfsn_t* pstcCsio,
                                        const uint32_t       u32Data
                                       );

/* Get information */
extern uint16_t Mfs_Csio_GetSerialTimer(volatile stc_mfsn_t* pstcCsio);
extern uint16_t Mfs_Csio_GetStatus(volatile stc_mfsn_t* pstcCsio,
                                   uint16_t             u16StatusMask
                                  );

extern boolean_t Mfs_I2c_GetBusErrStatus(volatile stc_mfsn_t* pstcI2c);
extern boolean_t Mfs_I2c_GetIntStatus(volatile stc_mfsn_t* pstcI2c);

extern uint8_t Mfs_GetStatus(volatile stc_mfsn_t* pstcMfs,
                             uint8_t              u8StatusMask
                            );

extern boolean_t Mfs_GetTxFifoReqStatus(volatile stc_mfsn_t* pstcMfs);
extern uint8_t Mfs_GetFifoBytes(volatile stc_mfsn_t* pstcMfs,
                                uint8_t              u8FifoNumber
                               );

extern uint32_t Mfs_GetBusClock(void);
extern uint32_t Mfs_GetReloadValue(uint32_t u32BaudRate);
extern uint32_t Mfs_I2c_GetReloadValue(uint32_t u32BaudRate);

/* Simply register access API */
extern en_result_t Mfs_SetSMR(volatile stc_mfsn_t* pstcMfs,
                              uint8_t              u8SMR
                             );
extern uint8_t Mfs_GetSMR(volatile stc_mfsn_t* pstcMfs);

extern en_result_t Mfs_SetSCR(volatile stc_mfsn_t* pstcMfs,
                              uint8_t              u8SCR
                             );
extern uint8_t Mfs_GetSCR(volatile stc_mfsn_t* pstcMfs);
#define Mfs_SetIBCR Mfs_SetSCR
#define Mfs_GetIBCR Mfs_GetSCR

extern en_result_t Mfs_SetESCR(volatile stc_mfsn_t* pstcMfs,
                               uint8_t               u8ESCR
                              );
extern uint8_t Mfs_GetESCR(volatile stc_mfsn_t* pstcMfs);
#define Mfs_SetIBSR Mfs_SetESCR
#define Mfs_GetIBSR Mfs_GetESCR

#define Mfs_GetSSR(pstcMfs) Mfs_GetStatus(pstcMfs, 0xFF)

#define Mfs_GetRDR Mfs_ReadData
#define Mfs_SetTDR Mfs_WriteData

extern en_result_t Mfs_SetBGR(volatile stc_mfsn_t* pstcMfs,
                              uint16_t             u16BGR
                             );

extern uint16_t Mfs_GetBGR(volatile stc_mfsn_t* pstcMfs);

extern en_result_t Mfs_SetFCR1(volatile stc_mfsn_t* pstcMfs,
                               uint8_t              u8FCR1
                              );
extern uint8_t Mfs_GetFCR1(volatile stc_mfsn_t* pstcMfs);

extern en_result_t Mfs_SetFCR0(volatile stc_mfsn_t* pstcMfs,
                               uint8_t              u8FCR0
                              );
extern uint8_t Mfs_GetFCR0(volatile stc_mfsn_t* pstcMfs);
#define Mfs_GetFBYTE1(pstcMfs) Mfs_GetFifoBytes(pstcMfs, MfsFifo1)
#define Mfs_GetFBYTE2(pstcMfs) Mfs_GetFifoBytes(pstcMfs, MfsFifo2)

extern en_result_t Mfs_SetSCSTR10(volatile stc_mfsn_t* pstcMfs,
                                  uint16_t             u16SCSTR10
                                 );
extern uint16_t Mfs_GetSCSTR10(volatile stc_mfsn_t* pstcMfs);

extern en_result_t Mfs_SetSCSTR32(volatile stc_mfsn_t* pstcMfs,
                                  uint16_t             u16SCSTR32
                                 );
extern uint16_t Mfs_GetSCSTR32(volatile stc_mfsn_t* pstcMfs);

extern en_result_t Mfs_SetSACSR(volatile stc_mfsn_t* pstcMfs,
                                uint16_t             u16SACSR
                               );
extern uint16_t Mfs_GetSACSR(volatile stc_mfsn_t* pstcMfs);

extern uint16_t Mfs_GetSTMCR(volatile stc_mfsn_t* pstcMfs);

#define Mfs_GetSTMR Mfs_Csio_GetSerialTimer

#define Mfs_SetSTMCR Mfs_Csio_SetCmpVal4SerialTimer

extern en_result_t Mfs_SetSCSCR(volatile stc_mfsn_t* pstcMfs,
                                uint16_t             u16SCSCR
                               );
extern uint16_t Mfs_GetSCSCR(volatile stc_mfsn_t* pstcMfs);

extern en_result_t Mfs_SetTBYTE0(volatile stc_mfsn_t* pstcMfs,
                                 uint8_t              u8TBYTE0
                                );
extern uint8_t Mfs_GetTBYTE0(volatile stc_mfsn_t* pstcMfs);

extern en_result_t Mfs_SetISBA(volatile stc_mfsn_t* pstcMfs,
                               uint8_t              u8ISBA
                              );
extern uint8_t Mfs_GetISBA(volatile stc_mfsn_t* pstcMfs);

extern en_result_t Mfs_SetISMK(volatile stc_mfsn_t* pstcMfs,
                               uint8_t              u8ISMK
                              );
extern uint8_t Mfs_GetISMK(volatile stc_mfsn_t* pstcMfs);

#define Mfs_SetNFCR Mfs_I2c_SetNoizeFilter
extern uint8_t Mfs_GetNFCR(volatile stc_mfsn_t* pstcMfs);

extern en_result_t Mfs_SetEIBCR(volatile stc_mfsn_t* pstcMfs,
                                uint8_t              u8EIBCR
                               );
extern uint8_t Mfs_GetEIBCR(volatile stc_mfsn_t* pstcMfs);

/* Interrupt related API */
extern en_result_t Mfs_InitTxIrq(volatile stc_mfsn_t* pstcMfs);
extern en_result_t Mfs_InitRxIrq(volatile stc_mfsn_t* pstcMfs);
extern en_result_t Mfs_DeInitIrq(volatile stc_mfsn_t* pstcMfs);

extern en_result_t Mfs_SetRxIntCallBack(volatile stc_mfsn_t* pstcMfs,
                                        mfs_rx_cb_func_ptr_t pfnRxCbFunc
                                       );

extern en_result_t Mfs_SetTxIntCallBack(volatile stc_mfsn_t* pstcMfs,
                                        mfs_tx_cb_func_ptr_t pfnTxCbFunc
                                       );

extern en_result_t Mfs_SetStsIntCallBack(volatile stc_mfsn_t*  pstcMfs,
                                         mfs_sts_cb_func_ptr_t pfnStsCbFunc
                                        );

extern en_result_t Mfs_SetUpperLayerHandle(volatile stc_mfsn_t* pstcMfs,
                                           void*                pvHandle
                                          );

//@} // MfsGroup

#ifdef __cplusplus
}
#endif

#endif /* #if (defined(PDL_PERIPHERAL_MFS_ACTIVE)) */

#endif /* __MFS_H__ */
/******************************************************************************/
/* EOF (not truncated)                                                        */
/******************************************************************************/
