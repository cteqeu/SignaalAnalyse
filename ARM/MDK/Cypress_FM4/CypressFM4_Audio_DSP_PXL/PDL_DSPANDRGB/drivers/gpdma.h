#ifndef gpdma_H
#define gpdma_H

#include <LPC407x_8x_177x_8x.h>

/** @defgroup GPDMA_Public_Macros GPDMA Public Macros
 * @{
 */

/** DMA Connection number definitions */
#define DMA_MCI              1         /** SD card */
#define DMA_SSP0_Tx          2         /**< SSP0 Tx */
#define DMA_SSP0_Rx          3         /**< SSP0 Rx */
#define DMA_SSP1_Tx          4         /**< SSP1 Tx */
#define DMA_SSP1_Rx          5         /**< SSP1 Rx */
#define DMA_SSP2_Tx          6         /**< SSP2 Tx */
#define DMA_SSP2_Rx          7         /**< SSP2 Rx */
#define DMA_ADC              8         /**< ADC */
#define DMA_DAC              9         /**< DAC */
#define DMA_UART0_Tx         10        /**< UART0 Tx */
#define DMA_UART0_Rx         11        /**< UART0 Rx */
#define DMA_UART1_Tx         12        /**< UART1 Tx */
#define DMA_UART1_Rx         13        /**< UART1 Rx */
#define DMA_UART2_Tx         14        /**< UART2 Tx */
#define DMA_UART2_Rx         15        /**< UART2 Rx */
#define DMA_MAT0_0           16        /**< MAT0.0 */
#define DMA_MAT0_1           17        /**< MAT0.1 */
#define DMA_MAT1_0           18        /**< MAT1.0 */
#define DMA_MAT1_1           19        /**< MAT1.1 */
#define DMA_MAT2_0           20        /**< MAT2.0 */
#define DMA_MAT2_1           21        /**< MAT2.1 */
#define DMA_I2S_Channel_0    22        /**< I2S channel 0 */
#define DMA_I2S_Channel_1    23        /**< I2S channel 1 */
#define DMA_UART3_Tx         26        /**< UART3 Tx */
#define DMA_UART3_Rx         27        /**< UART3 Rx */
#define DMA_UART4_Tx         28        /**< UART3 Tx */
#define DMA_UART4_Rx         29        /**< UART3 Rx */
#define DMA_MAT3_0           30        /**< MAT3.0 */
#define DMA_MAT3_1           31        /**< MAT3.1 */


/** GPDMA Transfer type definitions: Memory to memory - DMA control */
#define GPDMA_TRANSFERTYPE_M2M      ((0UL))
/** GPDMA Transfer type definitions: Memory to peripheral - DMA control */
#define GPDMA_TRANSFERTYPE_M2P      ((1UL))
/** GPDMA Transfer type definitions: Peripheral to memory - DMA control */
#define GPDMA_TRANSFERTYPE_P2M      ((2UL))
/** Source peripheral to destination peripheral - DMA control */
#define GPDMA_TRANSFERTYPE_P2P      ((3UL))
/** Memory to peripheral - Destination peripheral control */
#define GPDMA_TRANSFERTYPE_M2P_DEST_CTRL        ((5UL))
/** Peripheral to memory - Source peripheral control */
#define GPDMA_TRANSFERTYPE_P2M_SRC_CTRL         ((6UL))

/** Burst size in Source and Destination definitions */
#define GPDMA_BSIZE_1   ((0UL)) /**< Burst size = 1 */
#define GPDMA_BSIZE_4   ((1UL)) /**< Burst size = 4 */
#define GPDMA_BSIZE_8   ((2UL)) /**< Burst size = 8 */
#define GPDMA_BSIZE_16  ((3UL)) /**< Burst size = 16 */
#define GPDMA_BSIZE_32  ((4UL)) /**< Burst size = 32 */
#define GPDMA_BSIZE_64  ((5UL)) /**< Burst size = 64 */
#define GPDMA_BSIZE_128 ((6UL)) /**< Burst size = 128 */
#define GPDMA_BSIZE_256 ((7UL)) /**< Burst size = 256 */

/** Width in Source transfer width and Destination transfer width definitions */
#define GPDMA_WIDTH_BYTE        ((0UL)) /**< Width = 1 byte */
#define GPDMA_WIDTH_HALFWORD    ((1UL)) /**< Width = 2 bytes */
#define GPDMA_WIDTH_WORD        ((2UL)) /**< Width = 4 bytes */

/** DMA Request Select Mode definitions */
#define GPDMA_REQSEL_UART   ((0UL)) /**< UART TX/RX is selected */
#define GPDMA_REQSEL_TIMER  ((1UL)) /**< Timer match is selected */

/**
 * @}
 */


/* Private Macros ------------------------------------------------------------- */
/** @defgroup GPDMA_Private_Macros GPDMA Private Macros
 * @{
 */

/* --------------------- BIT DEFINITIONS -------------------------------------- */
/*********************************************************************//**
 * Macro defines for DMA Interrupt Status register
 **********************************************************************/
#define GPDMA_DMACIntStat_Ch(n)         (((1UL<<n)&0xFF))
#define GPDMA_DMACIntStat_BITMASK       ((0xFF))

/*********************************************************************//**
 * Macro defines for DMA Interrupt Terminal Count Request Status register
 **********************************************************************/
#define GPDMA_DMACIntTCStat_Ch(n)       (((1UL<<n)&0xFF))
#define GPDMA_DMACIntTCStat_BITMASK     ((0xFF))

/*********************************************************************//**
 * Macro defines for DMA Interrupt Terminal Count Request Clear register
 **********************************************************************/
#define GPDMA_DMACIntTCClear_Ch(n)      (((1UL<<n)&0xFF))
#define GPDMA_DMACIntTCClear_BITMASK    ((0xFF))

/*********************************************************************//**
 * Macro defines for DMA Interrupt Error Status register
 **********************************************************************/
#define GPDMA_DMACIntErrStat_Ch(n)      (((1UL<<n)&0xFF))
#define GPDMA_DMACIntErrStat_BITMASK    ((0xFF))

/*********************************************************************//**
 * Macro defines for DMA Interrupt Error Clear register
 **********************************************************************/
#define GPDMA_DMACIntErrClr_Ch(n)       (((1UL<<n)&0xFF))
#define GPDMA_DMACIntErrClr_BITMASK     ((0xFF))

/*********************************************************************//**
 * Macro defines for DMA Raw Interrupt Terminal Count Status register
 **********************************************************************/
#define GPDMA_DMACRawIntTCStat_Ch(n)    (((1UL<<n)&0xFF))
#define GPDMA_DMACRawIntTCStat_BITMASK  ((0xFF))

/*********************************************************************//**
 * Macro defines for DMA Raw Error Interrupt Status register
 **********************************************************************/
#define GPDMA_DMACRawIntErrStat_Ch(n)   (((1UL<<n)&0xFF))
#define GPDMA_DMACRawIntErrStat_BITMASK ((0xFF))

/*********************************************************************//**
 * Macro defines for DMA Enabled Channel register
 **********************************************************************/
#define GPDMA_DMACEnbldChns_Ch(n)       (((1UL<<n)&0xFF))
#define GPDMA_DMACEnbldChns_BITMASK     ((0xFF))

/*********************************************************************//**
 * Macro defines for DMA Software Burst Request register
 **********************************************************************/
#define GPDMA_DMACSoftBReq_Src(n)       (((1UL<<n)&0xFFFF))
#define GPDMA_DMACSoftBReq_BITMASK      ((0xFFFF))

/*********************************************************************//**
 * Macro defines for DMA Software Single Request register
 **********************************************************************/
#define GPDMA_DMACSoftSReq_Src(n)       (((1UL<<n)&0xFFFF))
#define GPDMA_DMACSoftSReq_BITMASK      ((0xFFFF))

/*********************************************************************//**
 * Macro defines for DMA Software Last Burst Request register
 **********************************************************************/
#define GPDMA_DMACSoftLBReq_Src(n)      (((1UL<<n)&0xFFFF))
#define GPDMA_DMACSoftLBReq_BITMASK     ((0xFFFF))

/*********************************************************************//**
 * Macro defines for DMA Software Last Single Request register
 **********************************************************************/
#define GPDMA_DMACSoftLSReq_Src(n)      (((1UL<<n)&0xFFFF))
#define GPDMA_DMACSoftLSReq_BITMASK     ((0xFFFF))

/*********************************************************************//**
 * Macro defines for DMA Configuration register
 **********************************************************************/
#define GPDMA_DMACConfig_E              ((0x01))     /**< DMA Controller enable*/
#define GPDMA_DMACConfig_M              ((0x02))     /**< AHB Master endianness configuration*/
#define GPDMA_DMACConfig_BITMASK        ((0x03))

/*********************************************************************//**
 * Macro defines for DMA Synchronization register
 **********************************************************************/
#define GPDMA_DMACSync_Src(n)           (((1UL<<n)&0xFFFF))
#define GPDMA_DMACSync_BITMASK          ((0xFFFF))

/*********************************************************************//**
 * Macro defines for DMA Request Select register
 **********************************************************************/
#define GPDMA_DMAReqSel_Input(n)        (((1UL<<(n-8))&0xFF))
#define GPDMA_DMAReqSel_BITMASK         ((0xFF))

/*********************************************************************//**
 * Macro defines for DMA Channel Linked List Item registers
 **********************************************************************/
/** DMA Channel Linked List Item registers bit mask*/
#define GPDMA_DMACCxLLI_BITMASK         ((0xFFFFFFFC))

/*********************************************************************//**
 * Macro defines for DMA channel control registers
 **********************************************************************/
/** Transfer size*/
#define GPDMA_DMACCxControl_TransferSize(n) (((n&0xFFF)<<0))
/** Source burst size*/
#define GPDMA_DMACCxControl_SBSize(n)       (((n&0x07)<<12))
/** Destination burst size*/
#define GPDMA_DMACCxControl_DBSize(n)       (((n&0x07)<<15))
/** Source transfer width*/
#define GPDMA_DMACCxControl_SWidth(n)       (((n&0x07)<<18))
/** Destination transfer width*/
#define GPDMA_DMACCxControl_DWidth(n)       (((n&0x07)<<21))
/** Source increment*/
#define GPDMA_DMACCxControl_SI              ((1UL<<26))
/** Destination increment*/
#define GPDMA_DMACCxControl_DI              ((1UL<<27))
/** Indicates that the access is in user mode or privileged mode*/
#define GPDMA_DMACCxControl_Prot1           ((1UL<<28))
/** Indicates that the access is bufferable or not bufferable*/
#define GPDMA_DMACCxControl_Prot2           ((1UL<<29))
/** Indicates that the access is cacheable or not cacheable*/
#define GPDMA_DMACCxControl_Prot3           ((1UL<<30))
/** Terminal count interrupt enable bit */
#define GPDMA_DMACCxControl_I               ((1UL<<31))
/** DMA channel control registers bit mask */
#define GPDMA_DMACCxControl_BITMASK         ((0xFCFFFFFF))

/*********************************************************************//**
 * Macro defines for DMA Channel Configuration registers
 **********************************************************************/
/** DMA control enable*/
#define GPDMA_DMACCxConfig_E                    ((1UL<<0))
/** Source peripheral*/
#define GPDMA_DMACCxConfig_SrcPeripheral(n)     (((n&0x1F)<<1))
/** Destination peripheral*/
#define GPDMA_DMACCxConfig_DestPeripheral(n)    (((n&0x1F)<<6))
/** This value indicates the type of transfer*/
#define GPDMA_DMACCxConfig_TransferType(n)      (((n&0x7)<<11))
/** Interrupt error mask*/
#define GPDMA_DMACCxConfig_IE                   ((1UL<<14))
/** Terminal count interrupt mask*/
#define GPDMA_DMACCxConfig_ITC                  ((1UL<<15))
/** Lock*/
#define GPDMA_DMACCxConfig_L                    ((1UL<<16))
/** Active*/
#define GPDMA_DMACCxConfig_A                    ((1UL<<17))
/** Halt*/
#define GPDMA_DMACCxConfig_H                    ((1UL<<18))
/** DMA Channel Configuration registers bit mask */
#define GPDMA_DMACCxConfig_BITMASK              ((0x7FFFF))


		
#endif // gpdma_H
// *******************************ARM University Program Copyright © ARM Ltd 2014*************************************   
