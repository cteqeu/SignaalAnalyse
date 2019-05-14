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
/** \file mfs.c
 **
 ** A detailed description is available at 
 ** @link MfsGroup MFS Module description @endlink
 **
 ** History:
 **   - 2013-03-27  1.0  NT   First version.
 **
 ******************************************************************************/

/******************************************************************************/
/* Include files                                                              */
/******************************************************************************/
#include "pdl.h"

#if (defined(PDL_PERIPHERAL_MFS_ACTIVE))

/**
 ******************************************************************************
 ** \addtogroup MfsGroup
 ******************************************************************************/
//@{

/******************************************************************************/
/* Local pre-processor symbols/macros ('#define')                             */
/******************************************************************************/
/* for checking clock (SCM_CTL RCS bit) */
#define MFS_MASTER_CLK_HCR      (0x00u)
#define MFS_MASTER_CLK_MAIN     (0x01u)
#define MFS_MASTER_CLK_PLL      (0x02u)
#define MFS_MASTER_CLK_LCR      (0x04u)
#define MFS_MASTER_CLK_SUB      (0x05u)

/* for checking clock (BSC_PSR) */
#define MFS_BASE_CLK_DIV1       (0x00u)
#define MFS_BASE_CLK_DIV2       (0x01u)
#define MFS_BASE_CLK_DIV3       (0x02u)
#define MFS_BASE_CLK_DIV4       (0x03u)
#define MFS_BASE_CLK_DIV6       (0x04u)
#define MFS_BASE_CLK_DIV8       (0x05u)
#define MFS_BASE_CLK_DIV16      (0x06u)

/* Number */
#define MFS_NUM_1               (0x01u)
#define MFS_NUM_2               (0x02u)
#define MFS_NUM_3               (0x03u)
#define MFS_NUM_4               (0x04u)
#define MFS_NUM_5               (0x05u)
#define MFS_NUM_6               (0x06u)
#define MFS_NUM_7               (0x07u)
#define MFS_NUM_8               (0x08u)
#define MFS_NUM_16              (0x10u)

/* for BGR */
#define MFS_BGR_MASK            (0x7FFFu)

/* for PLL */
#define MFS_PLL_CTL1_MASK       (0x0Fu)
#define MFS_PLL_CTL2_MASK       (0x3Fu)

/******************************************************************************/
/* Global variable definitions (declared in header file with 'extern')        */
/******************************************************************************/

/// Look-up table for all enabled MFS instances and their internal data
stc_mfs_instance_data_t m_astcMfsInstanceDataLut[MfsInstanceIndexMax] =
{
#if (PDL_PERIPHERAL_ENABLE_MFS0 == PDL_ON)
    {
        &MFS0,  /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS1 == PDL_ON)
    {
        &MFS1,  /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS2 == PDL_ON)
    {
        &MFS2,  /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS3 == PDL_ON)
    {
        &MFS3,  /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS4 == PDL_ON)
    {
        &MFS4,  /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS5 == PDL_ON)
    {
        &MFS5,  /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS6 == PDL_ON)
    {
        &MFS6,  /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS7 == PDL_ON)
    {
        &MFS7,  /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS8 == PDL_ON)
    {
        &MFS8,  /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS9 == PDL_ON)
    {
        &MFS9,  /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS10 == PDL_ON)
    {
        &MFS10, /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS11 == PDL_ON)
    {
        &MFS11, /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS12 == PDL_ON)
    {
        &MFS12, /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS13 == PDL_ON)
    {
        &MFS13, /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS14 == PDL_ON)
    {
        &MFS14, /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
#if (PDL_PERIPHERAL_ENABLE_MFS15 == PDL_ON)
    {
        &MFS15, /* pstcInstance */
        {NULL}  /* stcInternData (not initialized yet) */
    },
#endif
};

/******************************************************************************/
/* Local type definitions ('typedef')                                         */
/******************************************************************************/

/******************************************************************************/
/* Local function prototypes ('static')                                       */
/******************************************************************************/
static stc_mfs_intern_data_t* MfsGetInternDataPtr(volatile stc_mfsn_t* pstcMfs);

/******************************************************************************/
/* Local variable definitions ('static')                                      */
/******************************************************************************/

/******************************************************************************/
/* Function implementation - global ('extern') and local ('static')           */
/******************************************************************************/

/**
 ******************************************************************************
 ** \brief Return the internal data for a certain MFS instance.
 **
 ** \param pstcMfs Pointer to MFS instance
 **
 ** \return Pointer to internal data or NULL if instance is not enabled (or not known)
 **
 ******************************************************************************/
static stc_mfs_intern_data_t* MfsGetInternDataPtr(volatile stc_mfsn_t* pstcMfs)
{
    stc_mfs_intern_data_t* pstcInternDataPtr = NULL;
    uint32_t u32Instance;

    if (NULL != pstcMfs)
    {
        for (u32Instance = 0u; u32Instance < (uint32_t)MfsInstanceIndexMax; u32Instance++)
        {
            if (pstcMfs == m_astcMfsInstanceDataLut[u32Instance].pstcInstance)
            {
                pstcInternDataPtr = &m_astcMfsInstanceDataLut[u32Instance].stcInternData;
                break;
            }
        }
    }

    return (pstcInternDataPtr);
} /* MfsGetInternDataPtr */

/**
 ******************************************************************************
 ** \brief Device dependent initialization of transmit interrupts
 **        according CMSIS with level defined in pdl.h
 **
 ** \param pstcMfs Pointer to MFS instance
 **
 ** \return Ok     Successful initialization
 **
 ******************************************************************************/
en_result_t Mfs_InitTxIrq(volatile stc_mfsn_t* pstcMfs)
{
#if (PDL_PERIPHERAL_ENABLE_MFS0 == PDL_ON)
    if (pstcMfs == &MFS0)
    {
        /* MFS0 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS0_TX_IRQn);
        NVIC_EnableIRQ(MFS0_TX_IRQn);
        NVIC_SetPriority(MFS0_TX_IRQn, PDL_IRQ_LEVEL_MFS0_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS1 == PDL_ON)
    if (pstcMfs == &MFS1)
    {
        /* MFS1 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS1_TX_IRQn);
        NVIC_EnableIRQ(MFS1_TX_IRQn);
        NVIC_SetPriority(MFS1_TX_IRQn, PDL_IRQ_LEVEL_MFS1_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS2  == PDL_ON)
    if (pstcMfs == &MFS2)
    {
        /* MFS2 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS2_TX_IRQn);
        NVIC_EnableIRQ(MFS2_TX_IRQn);
        NVIC_SetPriority(MFS2_TX_IRQn, PDL_IRQ_LEVEL_MFS2_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS3  == PDL_ON)
    if (pstcMfs == &MFS3)
    {
        /* MFS3 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS3_TX_IRQn);
        NVIC_EnableIRQ(MFS3_TX_IRQn);
        NVIC_SetPriority(MFS3_TX_IRQn, PDL_IRQ_LEVEL_MFS3_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS4  == PDL_ON)
    if (pstcMfs == &MFS4)
    {
        /* MFS4 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS4_TX_IRQn);
        NVIC_EnableIRQ(MFS4_TX_IRQn);
        NVIC_SetPriority(MFS4_TX_IRQn, PDL_IRQ_LEVEL_MFS4_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS5  == PDL_ON)
    if (pstcMfs == &MFS5)
    {
        /* MFS5 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS5_TX_IRQn);
        NVIC_EnableIRQ(MFS5_TX_IRQn);
        NVIC_SetPriority(MFS5_TX_IRQn, PDL_IRQ_LEVEL_MFS5_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS6  == PDL_ON)
    if (pstcMfs == &MFS6)
    {
        /* MFS6 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS6_TX_IRQn);
        NVIC_EnableIRQ(MFS6_TX_IRQn);
        NVIC_SetPriority(MFS6_TX_IRQn, PDL_IRQ_LEVEL_MFS6_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS7  == PDL_ON)
    if (pstcMfs == &MFS7)
    {
        /* MFS7 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS7_TX_IRQn);
        NVIC_EnableIRQ(MFS7_TX_IRQn);
        NVIC_SetPriority(MFS7_TX_IRQn, PDL_IRQ_LEVEL_MFS7_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS8  == PDL_ON)
    if (pstcMfs == &MFS8)
    {
        /* MFS8 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS8_TX_IRQn);
        NVIC_EnableIRQ(MFS8_TX_IRQn);
        NVIC_SetPriority(MFS8_TX_IRQn, PDL_IRQ_LEVEL_MFS8_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS9  == PDL_ON)
    if (pstcMfs == &MFS9)
    {
        /* MFS9 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS9_TX_IRQn);
        NVIC_EnableIRQ(MFS9_TX_IRQn);
        NVIC_SetPriority(MFS9_TX_IRQn, PDL_IRQ_LEVEL_MFS9_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS10  == PDL_ON)
    if (pstcMfs == &MFS10)
    {
        /* MFS10 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS10_TX_IRQn);
        NVIC_EnableIRQ(MFS10_TX_IRQn);
        NVIC_SetPriority(MFS10_TX_IRQn, PDL_IRQ_LEVEL_MFS10_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS11  == PDL_ON)
    if (pstcMfs == &MFS11)
    {
        /* MFS11 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS11_TX_IRQn);
        NVIC_EnableIRQ(MFS11_TX_IRQn);
        NVIC_SetPriority(MFS11_TX_IRQn, PDL_IRQ_LEVEL_MFS11_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS12  == PDL_ON)
    if (pstcMfs == &MFS12)
    {
        /* MFS12 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS12_TX_IRQn);
        NVIC_EnableIRQ(MFS12_TX_IRQn);
        NVIC_SetPriority(MFS12_TX_IRQn, PDL_IRQ_LEVEL_MFS12_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS13  == PDL_ON)
    if (pstcMfs == &MFS13)
    {
        /* MFS13 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS13_TX_IRQn);
        NVIC_EnableIRQ(MFS13_TX_IRQn);
        NVIC_SetPriority(MFS13_TX_IRQn, PDL_IRQ_LEVEL_MFS13_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS14  == PDL_ON)
    if (pstcMfs == &MFS14)
    {
        /* MFS14 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS14_TX_IRQn);
        NVIC_EnableIRQ(MFS14_TX_IRQn);
        NVIC_SetPriority(MFS14_TX_IRQn, PDL_IRQ_LEVEL_MFS14_TX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS15  == PDL_ON)
    if (pstcMfs == &MFS15)
    {
        /* MFS15 transmit interrupt settings */
        NVIC_ClearPendingIRQ(MFS15_TX_IRQn);
        NVIC_EnableIRQ(MFS15_TX_IRQn);
        NVIC_SetPriority(MFS15_TX_IRQn, PDL_IRQ_LEVEL_MFS15_TX);
    }
#endif

    return (Ok);
} /* Mfs_InitTxIrq */

/**
 ******************************************************************************
 ** \brief Device dependent initialization of receive interrupts
 **        according CMSIS with level defined in pdl.h
 **
 ** \param pstcMfs Pointer to MFS instance
 **
 ** \return Ok     Successful initialization
 **
 ******************************************************************************/
en_result_t Mfs_InitRxIrq(volatile stc_mfsn_t* pstcMfs)
{
#if (PDL_PERIPHERAL_ENABLE_MFS0 == PDL_ON)
    if (pstcMfs == &MFS0)
    {
        /* MFS0 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS0_RX_IRQn);
        NVIC_EnableIRQ(MFS0_RX_IRQn);
        NVIC_SetPriority(MFS0_RX_IRQn, PDL_IRQ_LEVEL_MFS0_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS1 == PDL_ON)
    if (pstcMfs == &MFS1)
    {
        /* MFS1 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS1_RX_IRQn);
        NVIC_EnableIRQ(MFS1_RX_IRQn);
        NVIC_SetPriority(MFS1_RX_IRQn, PDL_IRQ_LEVEL_MFS1_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS2  == PDL_ON)
    if (pstcMfs == &MFS2)
    {
        /* MFS2 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS2_RX_IRQn);
        NVIC_EnableIRQ(MFS2_RX_IRQn);
        NVIC_SetPriority(MFS2_RX_IRQn, PDL_IRQ_LEVEL_MFS2_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS3  == PDL_ON)
    if (pstcMfs == &MFS3)
    {
        /* MFS3 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS3_RX_IRQn);
        NVIC_EnableIRQ(MFS3_RX_IRQn);
        NVIC_SetPriority(MFS3_RX_IRQn, PDL_IRQ_LEVEL_MFS3_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS4  == PDL_ON)
    if (pstcMfs == &MFS4)
    {
        /* MFS4 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS4_RX_IRQn);
        NVIC_EnableIRQ(MFS4_RX_IRQn);
        NVIC_SetPriority(MFS4_RX_IRQn, PDL_IRQ_LEVEL_MFS4_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS5  == PDL_ON)
    if (pstcMfs == &MFS5)
    {
        /* MFS5 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS5_RX_IRQn);
        NVIC_EnableIRQ(MFS5_RX_IRQn);
        NVIC_SetPriority(MFS5_RX_IRQn, PDL_IRQ_LEVEL_MFS5_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS6  == PDL_ON)
    if (pstcMfs == &MFS6)
    {
        /* MFS6 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS6_RX_IRQn);
        NVIC_EnableIRQ(MFS6_RX_IRQn);
        NVIC_SetPriority(MFS6_RX_IRQn, PDL_IRQ_LEVEL_MFS6_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS7  == PDL_ON)
    if (pstcMfs == &MFS7)
    {
        /* MFS7 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS7_RX_IRQn);
        NVIC_EnableIRQ(MFS7_RX_IRQn);
        NVIC_SetPriority(MFS7_RX_IRQn, PDL_IRQ_LEVEL_MFS7_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS8  == PDL_ON)
    if (pstcMfs == &MFS8)
    {
        /* MFS8 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS8_RX_IRQn);
        NVIC_EnableIRQ(MFS8_RX_IRQn);
        NVIC_SetPriority(MFS8_RX_IRQn, PDL_IRQ_LEVEL_MFS8_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS9  == PDL_ON)
    if (pstcMfs == &MFS9)
    {
        /* MFS9 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS9_RX_IRQn);
        NVIC_EnableIRQ(MFS9_RX_IRQn);
        NVIC_SetPriority(MFS9_RX_IRQn, PDL_IRQ_LEVEL_MFS9_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS10  == PDL_ON)
    if (pstcMfs == &MFS10)
    {
        /* MFS10 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS10_RX_IRQn);
        NVIC_EnableIRQ(MFS10_RX_IRQn);
        NVIC_SetPriority(MFS10_RX_IRQn, PDL_IRQ_LEVEL_MFS10_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS11  == PDL_ON)
    if (pstcMfs == &MFS11)
    {
        /* MFS11 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS11_RX_IRQn);
        NVIC_EnableIRQ(MFS11_RX_IRQn);
        NVIC_SetPriority(MFS11_RX_IRQn, PDL_IRQ_LEVEL_MFS11_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS12  == PDL_ON)
    if (pstcMfs == &MFS12)
    {
        /* MFS12 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS12_RX_IRQn);
        NVIC_EnableIRQ(MFS12_RX_IRQn);
        NVIC_SetPriority(MFS12_RX_IRQn, PDL_IRQ_LEVEL_MFS12_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS13  == PDL_ON)
    if (pstcMfs == &MFS13)
    {
        /* MFS13 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS13_RX_IRQn);
        NVIC_EnableIRQ(MFS13_RX_IRQn);
        NVIC_SetPriority(MFS13_RX_IRQn, PDL_IRQ_LEVEL_MFS13_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS14  == PDL_ON)
    if (pstcMfs == &MFS14)
    {
        /* MFS14 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS14_RX_IRQn);
        NVIC_EnableIRQ(MFS14_RX_IRQn);
        NVIC_SetPriority(MFS14_RX_IRQn, PDL_IRQ_LEVEL_MFS14_RX);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS15  == PDL_ON)
    if (pstcMfs == &MFS15)
    {
        /* MFS15 receive interrupt settings */
        NVIC_ClearPendingIRQ(MFS15_RX_IRQn);
        NVIC_EnableIRQ(MFS15_RX_IRQn);
        NVIC_SetPriority(MFS15_RX_IRQn, PDL_IRQ_LEVEL_MFS15_RX);
    }
#endif

    return (Ok);
} /* Mfs_InitRxIrq */

/**
 ******************************************************************************
 ** \brief Device dependent de-initialization of interrupts according CMSIS
 **
 ** \param pstcMfs Pointer to MFS instance
 **
 ** \return Ok          Successful de-initialization
 **
 ******************************************************************************/
en_result_t Mfs_DeInitIrq(volatile stc_mfsn_t* pstcMfs)
{
#if (PDL_PERIPHERAL_ENABLE_MFS0 == PDL_ON)
    if (pstcMfs == &MFS0)
    {
        /* MFS0 interrupt settings */
        NVIC_ClearPendingIRQ(MFS0_TX_IRQn);
        NVIC_DisableIRQ(MFS0_TX_IRQn);
        NVIC_SetPriority(MFS0_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS0_RX_IRQn);
        NVIC_DisableIRQ(MFS0_RX_IRQn);
        NVIC_SetPriority(MFS0_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS1 == PDL_ON)
    if (pstcMfs == &MFS1)
    {
        /* MFS1 interrupt settings */
        NVIC_ClearPendingIRQ(MFS1_TX_IRQn);
        NVIC_DisableIRQ(MFS1_TX_IRQn);
        NVIC_SetPriority(MFS1_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS1_RX_IRQn);
        NVIC_DisableIRQ(MFS1_RX_IRQn);
        NVIC_SetPriority(MFS1_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS2 == PDL_ON)
    if (pstcMfs == &MFS2)
    {
        /* MFS2 interrupt settings */
        NVIC_ClearPendingIRQ(MFS2_TX_IRQn);
        NVIC_DisableIRQ(MFS2_TX_IRQn);
        NVIC_SetPriority(MFS2_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS2_RX_IRQn);
        NVIC_DisableIRQ(MFS2_RX_IRQn);
        NVIC_SetPriority(MFS2_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS3 == PDL_ON)
    if (pstcMfs == &MFS3)
    {
        /* MFS3 interrupt settings */
        NVIC_ClearPendingIRQ(MFS3_TX_IRQn);
        NVIC_DisableIRQ(MFS3_TX_IRQn);
        NVIC_SetPriority(MFS3_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS3_RX_IRQn);
        NVIC_DisableIRQ(MFS3_RX_IRQn);
        NVIC_SetPriority(MFS3_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS4 == PDL_ON)
    if (pstcMfs == &MFS4)
    {
        /* MFS4 interrupt settings */
        NVIC_ClearPendingIRQ(MFS4_TX_IRQn);
        NVIC_DisableIRQ(MFS4_TX_IRQn);
        NVIC_SetPriority(MFS4_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS4_RX_IRQn);
        NVIC_DisableIRQ(MFS4_RX_IRQn);
        NVIC_SetPriority(MFS4_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS5 == PDL_ON)
    if (pstcMfs == &MFS5)
    {
        /* MFS5 interrupt settings */
        NVIC_ClearPendingIRQ(MFS5_TX_IRQn);
        NVIC_DisableIRQ(MFS5_TX_IRQn);
        NVIC_SetPriority(MFS5_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS5_RX_IRQn);
        NVIC_DisableIRQ(MFS5_RX_IRQn);
        NVIC_SetPriority(MFS5_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS6 == PDL_ON)
    if (pstcMfs == &MFS6)
    {
        /* MFS6 interrupt settings */
        NVIC_ClearPendingIRQ(MFS6_TX_IRQn);
        NVIC_DisableIRQ(MFS6_TX_IRQn);
        NVIC_SetPriority(MFS6_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS6_RX_IRQn);
        NVIC_DisableIRQ(MFS6_RX_IRQn);
        NVIC_SetPriority(MFS6_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS7 == PDL_ON)
    if (pstcMfs == &MFS7)
    {
        /* MFS7 interrupt settings */
        NVIC_ClearPendingIRQ(MFS7_TX_IRQn);
        NVIC_DisableIRQ(MFS7_TX_IRQn);
        NVIC_SetPriority(MFS7_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS7_RX_IRQn);
        NVIC_DisableIRQ(MFS7_RX_IRQn);
        NVIC_SetPriority(MFS7_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS8 == PDL_ON)
    if (pstcMfs == &MFS8)
    {
        /* MFS8 interrupt settings */
        NVIC_ClearPendingIRQ(MFS8_TX_IRQn);
        NVIC_DisableIRQ(MFS8_TX_IRQn);
        NVIC_SetPriority(MFS8_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS8_RX_IRQn);
        NVIC_DisableIRQ(MFS8_RX_IRQn);
        NVIC_SetPriority(MFS8_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS9 == PDL_ON)
    if (pstcMfs == &MFS9)
    {
        /* MFS9 interrupt settings */
        NVIC_ClearPendingIRQ(MFS9_TX_IRQn);
        NVIC_DisableIRQ(MFS9_TX_IRQn);
        NVIC_SetPriority(MFS9_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS9_RX_IRQn);
        NVIC_DisableIRQ(MFS9_RX_IRQn);
        NVIC_SetPriority(MFS9_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS10 == PDL_ON)
    if (pstcMfs == &MFS10)
    {
        /* MFS10 interrupt settings */
        NVIC_ClearPendingIRQ(MFS10_TX_IRQn);
        NVIC_DisableIRQ(MFS10_TX_IRQn);
        NVIC_SetPriority(MFS10_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS10_RX_IRQn);
        NVIC_DisableIRQ(MFS10_RX_IRQn);
        NVIC_SetPriority(MFS10_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS11 == PDL_ON)
    if (pstcMfs == &MFS11)
    {
        /* MFS11 interrupt settings */
        NVIC_ClearPendingIRQ(MFS11_TX_IRQn);
        NVIC_DisableIRQ(MFS11_TX_IRQn);
        NVIC_SetPriority(MFS11_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS11_RX_IRQn);
        NVIC_DisableIRQ(MFS11_RX_IRQn);
        NVIC_SetPriority(MFS11_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS12 == PDL_ON)
    if (pstcMfs == &MFS12)
    {
        /* MFS12 interrupt settings */
        NVIC_ClearPendingIRQ(MFS12_TX_IRQn);
        NVIC_DisableIRQ(MFS12_TX_IRQn);
        NVIC_SetPriority(MFS12_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS12_RX_IRQn);
        NVIC_DisableIRQ(MFS12_RX_IRQn);
        NVIC_SetPriority(MFS12_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS13 == PDL_ON)
    if (pstcMfs == &MFS13)
    {
        /* MFS13 interrupt settings */
        NVIC_ClearPendingIRQ(MFS13_TX_IRQn);
        NVIC_DisableIRQ(MFS13_TX_IRQn);
        NVIC_SetPriority(MFS13_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS13_RX_IRQn);
        NVIC_DisableIRQ(MFS13_RX_IRQn);
        NVIC_SetPriority(MFS13_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS14 == PDL_ON)
    if (pstcMfs == &MFS14)
    {
        /* MFS14 interrupt settings */
        NVIC_ClearPendingIRQ(MFS14_TX_IRQn);
        NVIC_DisableIRQ(MFS14_TX_IRQn);
        NVIC_SetPriority(MFS14_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS14_RX_IRQn);
        NVIC_DisableIRQ(MFS14_RX_IRQn);
        NVIC_SetPriority(MFS14_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

#if (PDL_PERIPHERAL_ENABLE_MFS15 == PDL_ON)
    if (pstcMfs == &MFS15)
    {
        /* MFS15 interrupt settings */
        NVIC_ClearPendingIRQ(MFS15_TX_IRQn);
        NVIC_DisableIRQ(MFS15_TX_IRQn);
        NVIC_SetPriority(MFS15_TX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);

        NVIC_ClearPendingIRQ(MFS15_RX_IRQn);
        NVIC_DisableIRQ(MFS15_RX_IRQn);
        NVIC_SetPriority(MFS15_RX_IRQn, PDL_DEFAULT_INTERRUPT_LEVEL);
    }
#endif

    return (Ok);
} /* Mfs_DeInitIrq */

/**
 ******************************************************************************
 ** \brief MFS receive interrupt service routine.
 **
 ** This Fct is called on Receive Interrupt set by the MFS. 
 **
 ******************************************************************************/
void MfsIrqHandlerRx( volatile stc_mfsn_t*   pstcMfs,
                      stc_mfs_intern_data_t* pstcMfsInternData
                    )
{
    if ((NULL != pstcMfs) && (NULL != pstcMfsInternData))
    {
        if (NULL != pstcMfsInternData->pfnReceiveCbFunction)
        {
            pstcMfsInternData->pfnReceiveCbFunction(pstcMfs, pstcMfsInternData->pvUpperLayerHandle);
        }
    }
} /* MfsIrqHandlerRx */

/**
 ******************************************************************************
 ** \brief MFS transmit interrupt service routine.
 **
 ** This Fct is called on Transmit Interrupt set by the MFS. 
 ** 
 ******************************************************************************/
void MfsIrqHandlerTx( volatile stc_mfsn_t*   pstcMfs, 
                      stc_mfs_intern_data_t* pstcMfsInternData
                    )
{
    if ((NULL != pstcMfs) && (NULL != pstcMfsInternData))
    {
        if (NULL != pstcMfsInternData->pfnTransmitCbFunction)
        {
            pstcMfsInternData->pfnTransmitCbFunction(pstcMfs, pstcMfsInternData->pvUpperLayerHandle);
        }
    }
} /* MfsIrqHandlerTx */

/**
 ******************************************************************************
 ** \brief MFS status interrupt service routine.
 **
 ** This Fct is called on Transmit Interrupt set by the MFS. 
 ** 
 ******************************************************************************/
void MfsIrqHandlerStatus( volatile stc_mfsn_t*   pstcMfs, 
                          stc_mfs_intern_data_t* pstcMfsInternData
                        )
{
    if ((NULL != pstcMfs) && (NULL != pstcMfsInternData))
    {
        if (NULL != pstcMfsInternData->pfnStatusCbFunction)
        {
            pstcMfsInternData->pfnStatusCbFunction(pstcMfs, pstcMfsInternData->pvUpperLayerHandle);
        }
    }
} /* MfsIrqHandlerStatus */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Initialisation of a MFS module to activate as UART.
 **
 ** Set registers to active MFS as UART.
 **
 ** \param [in]   pstcUart        Pointer to UART instance register area
 ** \param [in]   pstcConfig      MFS UART configuration
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcUart == NULL
 **             - pstcConfig == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_Uart_Init(volatile stc_mfsn_t*         pstcUart,
                          const stc_mfs_uart_config_t* pstcConfig
                         )
{
    /* Preset local register variables to zero */
    stc_mfs_smr_field_t  stcSMR  = { 0 };
    stc_mfs_scr_field_t  stcSCR  = { 0 };
    stc_mfs_escr_field_t stcESCR = { 0 };

    /* Parameter check and get ptr to internal data struct */
    if ((NULL == MfsGetInternDataPtr(pstcUart))
    ||  (NULL == pstcConfig)
       )
    {
        return (ErrorInvalidParameter);
    }

    /* Set UART mode */
    switch (pstcConfig->u8UartMode)
    {
        case MfsUartNormal:
            stcSMR.MD = MFS_MD_UART_NORNAL;   /* Normal mode */
            break;
        case MfsUartMulti:
            stcSMR.MD = MFS_MD_UART_MULTI;    /* Multi-processor mode */
            break;
        default:
            return (ErrorInvalidParameter);
    }

    /* Enable SOE */
    stcSMR.SOE = TRUE;
    /* Set Parity */
    switch(pstcConfig->u8Parity)
    {
        case MfsParityNone:
            stcESCR.P   = FALSE; /* Parity type selection (0-even/1-odd) */
            stcESCR.PEN = FALSE; /* Parity disable */
            break;
        case MfsParityEven:
            stcESCR.P   = FALSE; /* Parity type selection (0-even/1-odd) */
            stcESCR.PEN = TRUE;  /* Parity Enable */
            break;
        case MfsParityOdd:
            stcESCR.P   = TRUE;  /* Parity type selection (0-even/1-odd) */
            stcESCR.PEN = TRUE;  /* Parity Enable */
            break;
        default:
            return (ErrorInvalidParameter);
    }
    /* Set Stop bit length */
    switch (pstcConfig->u8StopBit)
    {
        case MfsOneStopBit:
            stcSMR.SBL   = FALSE;
            stcESCR.ESBL = FALSE;
            break;
        case MfsTwoStopBits:
            stcSMR.SBL   = TRUE;
            stcESCR.ESBL = FALSE;
            break;     
        case MfsThreeStopBits:
            stcSMR.SBL   = FALSE;
            stcESCR.ESBL = TRUE;
            break;
        case MfsFourStopBits:
            stcSMR.SBL   = TRUE;
            stcESCR.ESBL = TRUE;
            break;
        default:
            return (ErrorInvalidParameter);
    }    
    /* Set Data bit length (5 - 9bits) */
    switch(pstcConfig->u8CharLength)
    {
        case MfsFiveBits:
            stcESCR.L = MFS_DATA_LEN_5;
            break;
        case MfsSixBits:
            stcESCR.L = MFS_DATA_LEN_6;
            break;
        case MfsSevenBits:
            stcESCR.L = MFS_DATA_LEN_7;
            break;   
        case MfsEightBits:
            stcESCR.L = MFS_DATA_LEN_8;
            break;
        case MfsNineBits:
            stcESCR.L = MFS_DATA_LEN_9;
            break;
        default:
            return (ErrorInvalidParameter);
    }
    /* Set Bit direction (LSB/MSB) */
    if (TRUE == pstcConfig->bBitDirection)
    {
        stcSMR.BDS = TRUE;
    }
    else
    {
        stcSMR.BDS = FALSE;
    }

    /* HW Flow */
    if (TRUE == pstcConfig->bHwFlow)
    {
        stcESCR.FLWEN = TRUE;
    }
    else
    {
        stcESCR.FLWEN = FALSE;
    }

    /* Set Signal system (NRZ/Int-NRZ) */
    if (TRUE == pstcConfig->bSignalSystem)
    {
        stcESCR.INV = TRUE;
    }
    else
    {
        stcESCR.INV = FALSE;
    }

    /* Clear MFS by setting the Software Reset bit */
    pstcUart->SCR_f.UPCL = TRUE;

    /* Set Baudrate */
    (void)Mfs_Uart_SetBaudRate(pstcUart, pstcConfig->u32DataRate);
    /* Set registers value */
    pstcUart->SMR_f  = stcSMR;
    pstcUart->SCR_f  = stcSCR;
    pstcUart->ESCR_f = stcESCR;

    return (Ok);
} /* MFS_Uart_Init  */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Deinitialisation of a MFS module activating as UART.
 **
 ** All used uart register are reset to their default values.
 **  
 ** \param [in]   pstcUart      Pointer to UART instance register area
 ** 
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcUart == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_Uart_DeInit(volatile stc_mfsn_t* pstcUart)
{
    en_result_t            enResult;
    stc_mfs_intern_data_t* pstcMfsInternData;

    /* Check for valid pointer and get pointer to internal data struct ... */
    pstcMfsInternData = MfsGetInternDataPtr(pstcUart);
    /* ... and check */
    if (NULL == pstcMfsInternData)
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
        pstcUart->SCR_f.TXE = FALSE;
        pstcUart->SCR_f.RXE = FALSE;

        (void)Mfs_DeInitIrq(pstcUart);     /* returns always en_result_t Ok */

        /* Baud Rate Generation Reload Reset */
        pstcUart->BGR = 0u;
            
        /* Serial Mode Register clear all bits (valid in any mode) */
        pstcUart->SMR = 0u;
           
        /* Reset Mfs receive and transmit bit to default */
        /* and clear all error flags */
        pstcUart->SCR = 0u;

        /* Clear reception Errors */
        pstcUart->SSR_f.REC = TRUE;
           
        /* Reset all other used register to default value */
        pstcUart->SSR  = 0u;
        pstcUart->ESCR = 0u;
        pstcUart->FCR0 = 0u;
        pstcUart->FCR1 = 0u;

        /* Clear MFS by setting the Software Reset bit */
        pstcUart->SCR_f.UPCL = TRUE;

        /* Reset callback functions. */
        pstcMfsInternData->pfnTransmitCbFunction = NULL;
        pstcMfsInternData->pfnReceiveCbFunction  = NULL;
        pstcMfsInternData->pfnStatusCbFunction   = NULL;
        pstcMfsInternData->pvUpperLayerHandle    = NULL;

        enResult = Ok;
    }

    return (enResult);
} /* Mfs_Uart_DeInit */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set baud rate for UART
 ** This Function sets baud rate for UART (MFS).
 **
 ** \param [in]  pstcUart     Pointer to UART (MFS) instance register area
 ** \param [in]  u32BaudRate  Baud rate (bps)
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcUart == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 ** \retval ErrorUninitialized        Baud rate was not set properly
 **
 ******************************************************************************/
en_result_t Mfs_Uart_SetBaudRate(volatile stc_mfsn_t* pstcUart,
                                 uint32_t             u32BaudRate
                                )
{
    en_result_t enResult;
    uint32_t    u32ReloadValue;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcUart))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Get reload value */
        u32ReloadValue = Mfs_GetReloadValue(u32BaudRate);
        /* For asynchronous communication, the reload value must be greater than  */
        /* or equal to 4 because five times over-sampling is performed internally */
        if (MFS_NUM_4 > u32ReloadValue)
        {
            enResult = ErrorUninitialized;
        }
        else
        {
            /* Set baud rate generation reload register */
            pstcUart->BGR = (uint16_t)(u32ReloadValue & MFS_BGR_MASK);
            enResult = Ok;
        }
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Uart_SetBaudRate */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Initialisation of a MFS module to activate as CSIO.
 **
 ** Set registers to active MFS as CSIO.
 **  
 ** \param [in]   pstcCsio        Pointer to CSIO instance register area
 ** \param [in]   pstcConfig      MFS CSIO configuration
 ** 
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcConfig == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_Csio_Init(volatile stc_mfsn_t*         pstcCsio,
                          const stc_mfs_csio_config_t* pstcConfig
                         )
{
    /* Preset local register variables to zero */
    stc_mfs_smr_field_t  stcSMR  = { 0 };
    stc_mfs_scr_field_t  stcSCR  = { 0 };
    stc_mfs_ssr_field_t  stcSSR  = { 0 };
    stc_mfs_escr_field_t stcESCR = { 0 };

    /* Parameter check and get ptr to internal data struct */
    if ((NULL == MfsGetInternDataPtr(pstcCsio))
    ||  (NULL == pstcConfig)
       )
    {
        return (ErrorInvalidParameter);
    }

    /* Set CSIO mode */
    switch (pstcConfig->u8CsioMode)
    {
        case MfsCsioMaster:
        case MfsCsioSlave:
            stcSMR.MD = MFS_MD_CSIO;
            break;
        default:
            return (ErrorInvalidParameter);
    }

    /* Set master/slave mode */
    if (MfsCsioMaster == pstcConfig->u8CsioMode)
    {
        stcSCR.MS = FALSE;  /* Master mode */
    }
    else
    {
        stcSCR.MS = TRUE;   /* Slave mode */
    }

    /* Enable SOE */
    stcSMR.SOE = TRUE;

    /* Set normal/SPI mode */
    switch (pstcConfig->u8CsioActMode)
    {
        case MfsCsioActNormalMode:
            stcSCR.SPI = FALSE; /* Normal mode */
            break;
        case MfsCsioActSpiMode:
            stcSCR.SPI = TRUE;  /* SPI mode */
            break;
        default:
            return (ErrorInvalidParameter);
    }

    /* Wait time insertion */
    switch(pstcConfig->u8SyncWaitTime)
    {
        case MfsSyncWaitZero:
            stcESCR.WT = MFS_WAIT_TIME_0BIT;    /* 0bit */
            break;
        case MfsSyncWaitOne:
            stcESCR.WT = MFS_WAIT_TIME_1BIT;    /* 1bit */
            break;
        case MfsSyncWaitTwo:
            stcESCR.WT = MFS_WAIT_TIME_2BITS;   /* 2bits */
            break;
        case MfsSyncWaitThree:
            stcESCR.WT = MFS_WAIT_TIME_3BITS;   /* 3bits */
            break;
        default:
            return (ErrorInvalidParameter);
    }

    stcSSR.AWC = 0;  /* Default:16bit access for RDR/TDR */
    stcESCR.L3 = 0;  /* Default:less than 13 bits */

    /* Set Data bit length (5-16,20,24,32 bits) */
    switch (pstcConfig->u8CharLength)
    {
        case MfsFiveBits:
            stcESCR.L = MFS_DATA_LEN_5;
            break;
        case MfsSixBits:
            stcESCR.L = MFS_DATA_LEN_6;
            break;
        case MfsSevenBits:
            stcESCR.L = MFS_DATA_LEN_7;
            break;   
        case MfsEightBits:
            stcESCR.L = MFS_DATA_LEN_8;
            break;
        case MfsNineBits:
            stcESCR.L = MFS_DATA_LEN_9;
            break;
        case MfsTenBits:
            stcESCR.L = MFS_DATA_LEN_10;
            break;
        case MfsElevenBits:
            stcESCR.L = MFS_DATA_LEN_11;
            break;
        case MfsTwelveBits:
            stcESCR.L = MFS_DATA_LEN_12;
            break;
        case MfsThirteenBits:
            stcESCR.L = MFS_DATA_LEN_13;
            stcESCR.L3 = TRUE;  /* More than 12 bits */
            break;
        case MfsFourteenBits:
            stcESCR.L = MFS_DATA_LEN_14;
            stcESCR.L3 = TRUE;  /* More than 12 bits */
            break;
        case MfsFifteenBits:
            stcESCR.L = MFS_DATA_LEN_15;
            stcESCR.L3 = TRUE;  /* More than 12 bits */
            break;
        case MfsSixteenBits:
            stcESCR.L = MFS_DATA_LEN_16;
            stcESCR.L3 = TRUE;  /* More than 12 bits */
            break;
        case MfsTwentyBits:
            stcESCR.L = MFS_DATA_LEN_20;
            stcESCR.L3 = TRUE;  /* More than 12 bits */
            stcSSR.AWC = TRUE;  /* 32bit access for RDR/TDR (more than 16 bits) */
            break;
        case MfsTwentyFourBits:
            stcESCR.L = MFS_DATA_LEN_24;
            stcESCR.L3 = TRUE;  /* More than 12 bits */
            stcSSR.AWC = TRUE;  /* 32bit access for RDR/TDR (more than 16 bits) */
            break;
        case MfsThirtyTwoBits:
            stcESCR.L = MFS_DATA_LEN_32;
            stcESCR.L3 = TRUE;  /* More than 12 bits */
            stcSSR.AWC = TRUE;  /* 32bit access for RDR/TDR (more than 16 bits) */
            break;
        default:
            return (ErrorInvalidParameter);
    }
    /* Set Bit direction (LSB/MSB) */
    if (TRUE == pstcConfig->bBitDirection)
    {
        stcSMR.BDS = TRUE;      /* MSB first */
    }
    else
    {
        stcSMR.BDS = FALSE;     /* LSB first */
    }

    /* Set Signal system (SCK Mark Level) */
    if (TRUE == pstcConfig->bSignalSystem)
    {
        stcSMR.SCINV = TRUE;    /* SCK Make Level : High */
    }
    else
    {
        stcSMR.SCINV = FALSE;   /* SCK Make Level : Low */
    }

    stcSSR.REC = TRUE;          /* Clear received error flag */

    /* Set Baudrate */
    (void)Mfs_Csio_SetBaudRate(pstcCsio, pstcConfig->u32DataRate);
    /* Set registers value */
    pstcCsio->SMR_f  = stcSMR;
    pstcCsio->SCR_f  = stcSCR;
    pstcCsio->ESCR_f = stcESCR;
    pstcCsio->SSR_f  = stcSSR;

    return (Ok);
} /* Mfs_Csio_Init */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Deinitialisation of a MFS module activating as CSIO.
 **
 ** All used uart register are reset to their default values.
 **  
 ** \param [in]   pstcCsio        Pointer to CSIO instance register area
 ** 
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_Csio_DeInit(volatile stc_mfsn_t* pstcCsio)
{
    en_result_t            enResult;
    stc_mfs_intern_data_t* pstcMfsInternData;

    /* Check for valid pointer and get pointer to internal data struct ... */
    pstcMfsInternData = MfsGetInternDataPtr(pstcCsio);
    /* ... and check */
    if (NULL == pstcMfsInternData)
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
        /* First of all disable receiver, transmitter and deinit interrupts */
        pstcCsio->SCR_f.TXE = FALSE;
        pstcCsio->SCR_f.RXE = FALSE;

        (void)Mfs_DeInitIrq(pstcCsio);     /* returns always en_result_t Ok */

        /* Baud Rate Generation Reload Reset */
        pstcCsio->BGR = 0u;
            
        /* Serial Mode Register clear all bits (valid in any mode) */
        pstcCsio->SMR = 0u;
           
        /* Reset Mfs receive and transmit bit to default */
        /* and clear all error flags */
        pstcCsio->SCR = 0u;

        /* Clear reception Errors */
        pstcCsio->SSR_f.REC = TRUE;
           
        /* Reset all other used register to default value */
        pstcCsio->SSR  = 0u;
        pstcCsio->ESCR = 0u;
        pstcCsio->FCR0 = 0u;
        pstcCsio->FCR1 = 0u;
        pstcCsio->SACSR = 0u;
        pstcCsio->STMCR = 0u;
        pstcCsio->SCSCR = 0u;
        pstcCsio->TBYTE0 = 0u;

        /* Reset callback functions. */
        pstcMfsInternData->pfnTransmitCbFunction = NULL;
        pstcMfsInternData->pfnReceiveCbFunction  = NULL;
        pstcMfsInternData->pfnStatusCbFunction   = NULL;
        pstcMfsInternData->pvUpperLayerHandle    = NULL;

        enResult = Ok;
    }

    return (enResult);
} /* Mfs_Csio_DeInit */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable serial clock output
 ** This Function sets or clears SCKE bit of SMR for CSIO (MFS).
 **
 ** \param [in]  pstcCsio     Pointer to CSIO (MFS) instance register area
 ** \param [in]  bEnable      Setting for serial clock output
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetSckOutEnable(volatile stc_mfsn_t* pstcCsio,
                                     boolean_t            bEnable
                                    )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable Serial Clock Output */
        if (FALSE == bEnable)
        {
            pstcCsio->SMR_f.SCKE = FALSE;
        }
        /* Enable Serial Clock Output */
        else
        {
            pstcCsio->SMR_f.SCKE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetSckOutEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Read data from Received Data Register (RDR).
 ** The received data is read from Received Data Register (RDR) and return
 ** for CSIO.
 **
 ** \note This function access to RDR by 32bits.
 **       If RDR is accessed by less than 17bits for MFS, the function of
 **       Mfs_ReadData() should be used.
 **
 ** \param [in]       pstcCsio        Pointer to CSIO (MFS) instance register area
 **
 ** \retval the Value of Received Data Register (RDR, 32bit)
 **
 ******************************************************************************/
uint32_t Mfs_Csio_ReadData32(volatile stc_mfsn_t* pstcCsio)
{
    uint32_t u32ReadData;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        u32ReadData = 0u;
    }
    else
    {
#endif
        /* Return the Value of Received Data Register (RDR, 32bit) */
        u32ReadData = pstcCsio->RDR32;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u32ReadData);
} /* Mfs_Csio_ReadData32 */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Write data to Transmit Data Register (TDR).
 ** The data provided by Mfs_Csio_WriteData#u32Data is written into the Transmit
 ** Data Register (TDR) for CSIO.
 **
 ** \note This function access to 32 bits TDR.
 **       If TDR is accessed by less than 17bits for MFS, the function of
 **       Mfs_WriteData() should be used.
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 ** \param [in] u32Data        Data to write to Transmit Data Register
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_WriteData32(volatile stc_mfsn_t* pstcCsio,
                                 const uint32_t       u32Data
                                )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Put data to Transmit Data Register (TDR) */
        pstcCsio->TDR32 = (uint32_t)u32Data;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_WriteData32 */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable generating of chip select error.
 ** This Function sets or clears TBEEN bit of SACSR for CSIO (MFS).
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 ** \param [in] bEnable        Setting for generating of chip select error
 **                            FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetChipSelectErrEnable(volatile stc_mfsn_t* pstcCsio,
                                            boolean_t            bEnable
                                           )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable generating of chip select error */
        if (FALSE == bEnable)
        {
            pstcCsio->SACSR_f.TBEEN = FALSE;
        }
        /* Enable generating of chip select error */
        else
        {
            pstcCsio->SACSR_f.TBEEN = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetChipSelectErrEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable interrupt of chip select error.
 ** This Function sets or clears CSEIE bit of SACSR for CSIO (MFS).
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 ** \param [in] bEnable        Setting for interrupt of chip select error
 **                            FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetChipSelectErrIntEnable(volatile stc_mfsn_t* pstcCsio,
                                               boolean_t            bEnable
                                              )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable interrupt of chip select error */
        if (FALSE == bEnable)
        {
            pstcCsio->SACSR_f.CSEIE = FALSE;
        }
        /* Enable interrupt of chip select error */
        else
        {
            pstcCsio->SACSR_f.CSEIE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetChipSelectErrIntEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get serial status register
 ** This Function gets specified bit status of SACSR for CSIO (MFS).
 **
 ** \param [in]     pstcCsio      Pointer to CSIO (MFS) instance register area
 ** \param [in]     u16StatusMask Mask data to get status
 **
 ** \retval Masked SACSR value
 **         (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint16_t Mfs_Csio_GetStatus(volatile stc_mfsn_t* pstcCsio,
                            uint16_t             u16StatusMask
                           )
{
    uint16_t u16Status;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        u16Status = 0u;
    }
    else
    {
#endif
        /* Return SACSR specified bits */
        u16Status = pstcCsio->SACSR & u16StatusMask;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u16Status);
} /* Mfs_Csio_GetStatus */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Clear chip select error status
 ** This Function clears CSE bit status of SACSR for CSIO (MFS).
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_ClrChipSelectErr(volatile stc_mfsn_t* pstcCsio)
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Clear SACSR CSE bit */
        pstcCsio->SACSR_f.CSE = FALSE;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_GetStatus */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Clear timer interrupt request
 ** This Function clears TINT bit status of SACSR for CSIO (MFS).
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_ClrTimerIntReq(volatile stc_mfsn_t* pstcCsio)
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Clear SACSR TINT bit */
        pstcCsio->SACSR_f.TINT = FALSE;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_ClrTimerIntReq */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable serial timer interrupt.
 ** This Function sets or clears TINTE bit of SACSR for CSIO (MFS).
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 ** \param [in] bEnable        Setting for serial timer interrupt
 **                            FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetSerialTimerIntEnable(volatile stc_mfsn_t* pstcCsio,
                                             boolean_t            bEnable
                                            )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable serial timer interrupt */
        if (FALSE == bEnable)
        {
            pstcCsio->SACSR_f.TINTE = FALSE;
        }
        /* Enable serial timer interrupt */
        else
        {
            pstcCsio->SACSR_f.TINTE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_EnableSerialTimerInt */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable synchronous transfer with serial timer.
 ** This Function sets or clears TSYNE bit of SACSR for CSIO (MFS).
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 ** \param [in] bEnable        Setting for synchronous transfer with serial timer
 **                            FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetSyncTransEnable(volatile stc_mfsn_t* pstcCsio,
                                        boolean_t            bEnable
                                       )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable synchronous transfer */
        if (FALSE == bEnable)
        {
            pstcCsio->SACSR_f.TSYNE = FALSE;
        }
        /* Enable synchronous transfer */
        else
        {
            pstcCsio->SACSR_f.TSYNE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetSyncTransEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set timer prescale.
 ** This Function sets TDIV bits of SACSR for CSIO (MFS).
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 ** \param [in] u8Prescale     Prescale value
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetTimerPrescale(volatile stc_mfsn_t* pstcCsio,
                                      uint8_t              u8Prescale
                                     )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        pstcCsio->SACSR_f.TDIV = u8Prescale;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetTimerPrescale */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable serial timer.
 ** This Function sets or clears TMRE bit of SACSR for CSIO (MFS).
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 ** \param [in] bEnable        Setting for serial timer
 **                            FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetSerialTimerEnable(volatile stc_mfsn_t* pstcCsio,
                                          boolean_t            bEnable
                                         )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable serial timer */
        if (FALSE == bEnable)
        {
            pstcCsio->SACSR_f.TMRE = FALSE;
        }
        /* Enable serial timer */
        else
        {
            pstcCsio->SACSR_f.TMRE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetSerialTimerEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value of serial timer.
 ** This Function returns the value of STMR for CSIO (MFS).
 **
 ** \param [in]     pstcCsio        Pointer to CSIO (MFS) instance register area
 **
 ** \retval The value of STMR
 **
 ******************************************************************************/
uint16_t Mfs_Csio_GetSerialTimer(volatile stc_mfsn_t* pstcCsio)
{
    uint16_t u16SerialTimer;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        u16SerialTimer = 0u;
    }
    else
    {
#endif
        /* Return the serial timer */
        u16SerialTimer = pstcCsio->STMR;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u16SerialTimer);
} /* Mfs_Csio_GetSerialTimer */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set compare value for serial timer.
 ** This Function writes the compare value to STMCR for CSIO (MFS).
 **
 ** \param [in] pstcCsio            Pointer to CSIO (MFS) instance register area
 ** \param [in] u16CompareValue     Compare value for serial timer
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetCmpVal4SerialTimer(volatile stc_mfsn_t* pstcCsio,
                                           uint16_t             u16CompareValue
                                          )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set compare value for serial timer */
        pstcCsio->STMCR = u16CompareValue;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetCmpVal4SerialTimer */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set serial chip select into non-hold or hold.
 ** This Function clears or sets SCAM bit of SCSCR for CSIO (MFS).
 **
 ** \param [in] pstcCsio    Pointer to CSIO (MFS) instance register area
 ** \param [in] bHold       Setting for serial chip select holding
 **                         FALSE:non-hold, TRUE:hold
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetCsHold(volatile stc_mfsn_t* pstcCsio,
                               boolean_t            bHold
                              )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Not hold serial chip select */
        if (FALSE == bHold)
        {
            pstcCsio->SCSCR_f.SCAM = FALSE;
        }
        /* Hold serial chip select */
        else
        {
            pstcCsio->SCSCR_f.SCAM = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetCsHold */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set prescale for chip select timing.
 ** This Function sets CDIV bits of SCSCR for CSIO (MFS).
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 ** \param [in] u8Prescale     Prescale value
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetCsTimingPrescale(volatile stc_mfsn_t* pstcCsio,
                                         uint8_t              u8Prescale
                                        )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        pstcCsio->SCSCR_f.CDIV = u8Prescale;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetCsTimingPrescale */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set level when chip select is in-active.
 ** This Function sets/clears CSLVL bit of SCSCR for CSIO (MFS).
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 ** \param [in] bLevel         In-active level for chip select
 **                            FALSE:Low, TRUE:High
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetCsInActiveLevel(volatile stc_mfsn_t* pstcCsio,
                                        boolean_t            bLevel
                                       )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* In-active level is Low */
        if (FALSE == bLevel)
        {
            pstcCsio->SCSCR_f.CSLVL = FALSE;
        }
        /* In-active level is High */
        else
        {
            pstcCsio->SCSCR_f.CSLVL = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetCsInActiveLevel */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable chip select.
 ** This Function sets or clears CSEN0 bit of SCSCR for CSIO (MFS).
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 ** \param [in] bEnable        Setting for chip select
 **                            FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetChipSelectEnable(volatile stc_mfsn_t* pstcCsio,
                                         boolean_t            bEnable
                                        )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable chip select */
        if (FALSE == bEnable)
        {
            pstcCsio->SCSCR_f.CSEN0 = FALSE;
        }
        /* Enable chip select */
        else
        {
            pstcCsio->SCSCR_f.CSEN0 = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_EnableChipSelect */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable chip select output.
 ** This Function sets or clears CSOE bit of SCSCR for CSIO (MFS).
 **
 ** \param [in] pstcCsio       Pointer to CSIO (MFS) instance register area
 ** \param [in] bEnable        Setting for chip select output
 **                            FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetChipSelectOutEnable(volatile stc_mfsn_t* pstcCsio,
                                            boolean_t            bEnable
                                           )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable chip select output */
        if (FALSE == bEnable)
        {
            pstcCsio->SCSCR_f.CSOE = FALSE;
        }
        /* Enable chip select output */
        else
        {
            pstcCsio->SCSCR_f.CSOE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetChipSelectOutEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set configuration of chip select timings.
 ** This Function sets SCSTR10 and SCSTR32 for CSIO (MFS).
 **
 ** \param [in] pstcCsio        Pointer to CSIO (MFS) instance register area
 ** \param [in] pstcCsTimingCfg Pointer to configuration for chip select timings
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetCsTimingConfig(volatile stc_mfsn_t*      pstcCsio,
                                       stc_mfs_csio_cs_timing_t* pstcCsTimingCfg
                                      )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if ((NULL == MfsGetInternDataPtr(pstcCsio))
    ||  (NULL == pstcCsTimingCfg)
       )
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set timing for setup delay */
        pstcCsio->SCSTR1  = pstcCsTimingCfg->u8CsSetupDelay;
        /* Set timing for hold delay */
        pstcCsio->SCSTR0  = pstcCsTimingCfg->u8CsHoldDelay;
        /* Set minimum time from inactivation until activation of chip select */
        pstcCsio->SCSTR32 = pstcCsTimingCfg->u16CsDeSelect;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetCsTimingConfig */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set transfer length.
 ** This Function sets TBYTE0 for CSIO (MFS).
 **
 ** \param [in] pstcCsio        Pointer to CSIO (MFS) instance register area
 ** \param [in] u8TxBytes       Transfer length to set to TBYTE0
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetTxLength(volatile stc_mfsn_t* pstcCsio,
                                 uint8_t              u8TxBytes
                                )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set transfer length */
        pstcCsio->TBYTE0 = u8TxBytes;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetTxLength */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set baud rate
 ** This Function sets baud rate for CSIO (MFS).
 **
 ** \param [in]  pstcCsio     Pointer to CSIO (MFS) instance register area
 ** \param [in]  u32BaudRate  Baud rate (bps)
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcCsio == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 ** \retval ErrorUninitialized        Baud rate was not set properly
 **
 ******************************************************************************/
en_result_t Mfs_Csio_SetBaudRate(volatile stc_mfsn_t* pstcCsio,
                                 uint32_t             u32BaudRate
                                )
{
    en_result_t enResult;
    uint32_t    u32ReloadValue;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcCsio))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Get reload value */
        u32ReloadValue = Mfs_GetReloadValue(u32BaudRate);
        /* For asynchronous communication, the reload value must be greater than  */
        /* or equal to 3 because four times over-sampling is performed internally */
        if (MFS_NUM_3 > u32ReloadValue)
        {
            enResult = ErrorUninitialized;
        }
        else
        {
            /* Set baud rate generation reload register */
            pstcCsio->BGR = (uint16_t)(u32ReloadValue & MFS_BGR_MASK);

            enResult = Ok;
        }
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Csio_SetBaudRate */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Initialisation of a MFS module to activate as I2C.
 **
 ** Set registers to active MFS as I2C.
 **  
 ** \param [in]   pstcI2c         Pointer to I2C instance register area
 ** \param [in]   pstcConfig      MFS I2C configuration
 ** 
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcConfig == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_I2c_Init(volatile stc_mfsn_t*        pstcI2c, 
                         const stc_mfs_i2c_config_t* pstcConfig
                        )
{
    /* Preset local register variables to zero */
    stc_mfs_smr_field_t       stcSMR   = { 0 };
    stc_mfs_i2c_ibcr_field_t  stcIBCR  = { 0 };
    stc_mfs_i2c_isba_field_t  stcISBA  = { 0 };
    stc_mfs_i2c_ismk_field_t  stcISMK  = { 0 };
    uint8_t                   u8NFCR  = 0u;

    /* Parameter check and get ptr to internal data struct */
    if ((NULL == MfsGetInternDataPtr(pstcI2c))
    ||  (NULL == pstcConfig)
       )
    {
        return (ErrorInvalidParameter);
    }

    /* Set I2C mode */
    switch (pstcConfig->u8I2cMode)
    {
        case MfsI2cMaster:
        case MfsI2cSlave:
            stcSMR.MD = MFS_MD_I2C;
            break;
        default:
            return (ErrorInvalidParameter);
    }

    /* Set noize filter */
    switch (pstcConfig->u8NoizeFilter)
    {
        case MfsI2cNoizeFilterLess40M:
        case MfsI2cNoizeFilterLess60M:
        case MfsI2cNoizeFilterLess80M:
        case MfsI2cNoizeFilterLess100M:
        case MfsI2cNoizeFilterLess120M:
        case MfsI2cNoizeFilterLess140M:
        case MfsI2cNoizeFilterLess160M:
        case MfsI2cNoizeFilterLess180M:
        case MfsI2cNoizeFilterLess200M:
        case MfsI2cNoizeFilterLess220M:
        case MfsI2cNoizeFilterLess240M:
        case MfsI2cNoizeFilterLess260M:
        case MfsI2cNoizeFilterLess280M:
        case MfsI2cNoizeFilterLess300M:
        case MfsI2cNoizeFilterLess320M:
        case MfsI2cNoizeFilterLess340M:
        case MfsI2cNoizeFilterLess360M:
        case MfsI2cNoizeFilterLess380M:
        case MfsI2cNoizeFilterLess400M:
            u8NFCR = pstcConfig->u8NoizeFilter;
            break;
        default:
            return (ErrorInvalidParameter);
    }

    /* Fast mode selection */
    if ((pstcI2c == MFS_I2C_FAST_MODE_PLUS_CH_A)
    ||  (pstcI2c == MFS_I2C_FAST_MODE_PLUS_CH_B)
       )
    {
        switch (pstcConfig->u8FastMode)
        {
            /* Standard-mode or Fast-mode */
            case MfsI2cDisableFastModePlus:
                if (pstcI2c == MFS_I2C_FAST_MODE_PLUS_CH_A)
                {
                    FM4_GPIO->EPFR16_f.SFMPAC = FALSE;
                }
                else
                {
                    FM4_GPIO->EPFR16_f.SFMPBC = FALSE;
                }
                break;
            /* Fast-mode Plus */
            case MfsI2cEnableFastModePlus:
                if (pstcI2c == MFS_I2C_FAST_MODE_PLUS_CH_A)
                {
                    FM4_GPIO->EPFR16_f.SFMPAC = TRUE;
                }
                else
                {
                    FM4_GPIO->EPFR16_f.SFMPBC = TRUE;
                }
                break;
            default:
                return (ErrorInvalidParameter);
        }
    }

    /* Ack enable */
    stcIBCR.ACKE = TRUE;

    /* Slave mode */
    if (MfsI2cSlave == pstcConfig->u8I2cMode)
    {
        /* Set slave address */
        stcISBA.SA = pstcConfig->u8SlvAddr;
        /* Enable slave address detection */
        stcISBA.SAEN = TRUE;
    }

    /* Enable I2C, Enable bit comparing */
    stcISMK.SM = MFS_ISMK_SLV_ADDR_MASK;
    stcISMK.EN = TRUE;

    /* now setup hardware with correct mode first and then go on with */
    /*   bit settings */
    pstcI2c->SMR_f = stcSMR;

    /* I2C disable before other registers are set. */
    pstcI2c->ISMK  = 0u;

    /* Set baud rate generation */
    (void)Mfs_I2c_SetBaudRate(pstcI2c, pstcConfig->u32DataRate);

    /* Set registers value */
    pstcI2c->NFCR    = u8NFCR;
    pstcI2c->IBCR_f  = stcIBCR;
    pstcI2c->ISBA_f  = stcISBA;
    pstcI2c->ISMK_f  = stcISMK;

    return (Ok);
} /* Mfs_I2c_Init */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Deinitialisation of a MFS module activating as I2C.
 **
 ** All used uart register are reset to their default values.
 **  
 ** \param [in]   pstcI2c         Pointer to I2C instance register area
 ** 
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_I2c_DeInit( volatile stc_mfsn_t* pstcI2c)
{
    en_result_t            enResult;
    stc_mfs_intern_data_t* pstcMfsInternData;

    /* Check for valid pointer and get pointer to internal data struct ... */
    pstcMfsInternData = MfsGetInternDataPtr(pstcI2c);
    /* ... and check */
    if (NULL == pstcMfsInternData)
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
        /* Disable I2C */
        pstcI2c->ISMK_f.EN = FALSE;

        (void)Mfs_DeInitIrq(pstcI2c);     /* returns always en_result_t Ok */

        /* Serial Mode Register clear all bits (valid in any mode) */
        pstcI2c->SMR = 0u;
           
        /* Reset Mfs receive and transmit bit to default */
        /* and clear all error flags */
        pstcI2c->IBCR = 0u;

        /* Clear reception Errors */
        pstcI2c->SSR_f.REC = TRUE;

        /* Reset all other used register to default value */
        pstcI2c->SSR  = 0u;
        pstcI2c->IBSR = 0u;
        pstcI2c->FCR0 = 0u;
        pstcI2c->FCR1 = 0u;
        pstcI2c->NFCR = 0u;

        /* Reset callback functions. */
        pstcMfsInternData->pfnTransmitCbFunction = NULL;
        pstcMfsInternData->pfnReceiveCbFunction  = NULL;
        pstcMfsInternData->pfnStatusCbFunction   = NULL;
        pstcMfsInternData->pvUpperLayerHandle    = NULL;

        enResult = Ok;
    }

    return (enResult);
} /* Mfs_I2c_DeInit */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable I2C TX interrupt
 ** The Function sets or clears TIE bit of SMR for I2C.
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  bEnable      Setting for TX interrupt
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetTxIntEnable(volatile stc_mfsn_t* pstcI2c,
                                   boolean_t            bEnable
                                  )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable TX interrupt */
        if (FALSE == bEnable)
        {
            pstcI2c->SMR_f.TIE = FALSE;
        }
        /* Enable TX interrupt */
        else
        {
            pstcI2c->SMR_f.TIE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetTxIntEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable I2C RX interrupt
 ** The Function sets or clears RIE bit of SMR for I2C.
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  bEnable      Setting for RX interrupt
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetRxIntEnable(volatile stc_mfsn_t* pstcI2c,
                                   boolean_t            bEnable
                                  )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable RX interrupt */
        if (FALSE == bEnable)
        {
            pstcI2c->SMR_f.RIE = FALSE;
        }
        /* Enable RX interrupt */
        else
        {
            pstcI2c->SMR_f.RIE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetRxIntEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable ACK for I2C
 ** The Function sets or clears ACKE bit of IBCR for I2C.
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  bEnable      Setting for ACK enable
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetAckEnable(volatile stc_mfsn_t* pstcI2c,
                                 boolean_t            bEnable
                                )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable ACK */
        if (FALSE == bEnable)
        {
            pstcI2c->IBCR_f.ACKE = FALSE;
        }
        /* Enable ACK */
        else
        {
            pstcI2c->IBCR_f.ACKE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetAckEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set wait selection for I2C
 ** The Function sets or clears WSEL bit of IBCR for I2C.
 **
 ** \param [in]  pstcI2c        Pointer to I2C (MFS) instance register area
 ** \param [in]  u8WaitSelect   Setting of wait selection
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetWaitSelect(volatile stc_mfsn_t* pstcI2c,
                                  uint8_t              u8WaitSelect
                                 )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Waits (8 bits) after data transmission or reception. */
        if (MfsI2cWaitSelDataTxRx == u8WaitSelect)
        {
            pstcI2c->IBCR_f.WSEL = TRUE;
        }
        /* Waits (9 bits) after acknowledgement. */
        else
        {
            pstcI2c->IBCR_f.WSEL = FALSE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetWaitSelect */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable condition detection interrupt for I2C
 ** The Function sets or clears CNDE bit of IBCR for I2C.
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  bEnable      Setting for condition detection interrupt
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetCondDetIntEnable(volatile stc_mfsn_t* pstcI2c,
                                        boolean_t            bEnable
                                       )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable condition detection interrupt */
        if (FALSE == bEnable)
        {
            pstcI2c->IBCR_f.CNDE = FALSE;
        }
        /* Enable condition detection interrupt */
        else
        {
            pstcI2c->IBCR_f.CNDE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetCondDetIntEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable interrupt for I2C
 ** The Function sets or clears INTE bit of IBCR for I2C.
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  bEnable      Setting for interrupt enable
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetIntEnable(volatile stc_mfsn_t* pstcI2c,
                                 boolean_t            bEnable
                                )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable interrupt */
        if (FALSE == bEnable)
        {
            pstcI2c->IBCR_f.INTE = FALSE;
        }
        /* Enable interrupt */
        else
        {
            pstcI2c->IBCR_f.INTE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetIntEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get bus error status for I2C
 ** The Function can return the bus error status (IBCR.BER) of I2C
 **
 ** \param [in]  pstcI2c          Pointer to I2C (MFS) instance register area
 **
 ** \retval The bus error status (TRUE:Bus error)
 **
 ******************************************************************************/
boolean_t Mfs_I2c_GetBusErrStatus(volatile stc_mfsn_t* pstcI2c)
{
    boolean_t bErrStatus = FALSE;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL != MfsGetInternDataPtr(pstcI2c))
    {
#endif
        /* Return the bus error status */
        if(TRUE == pstcI2c->IBCR_f.BER)
        {
            bErrStatus = TRUE;
        }
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (bErrStatus);
} /* Mfs_I2c_GetBusErrStatus */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get interrupt status for I2C
 ** The Function can return the interrupt status (IBCR.INT) of I2C
 **
 ** \param [in]  pstcI2c          Pointer to I2C (MFS) instance register area
 **
 ** \retval The interrupt status (TRUE:interruption has been occured)
 **
 ******************************************************************************/
boolean_t Mfs_I2c_GetIntStatus(volatile stc_mfsn_t* pstcI2c)
{
    boolean_t bIntStatus = FALSE;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL != MfsGetInternDataPtr(pstcI2c))
    {
#endif
        /* Set the interrupt status */
        if(TRUE == pstcI2c->IBCR_f.INT)
        {
            bIntStatus = TRUE;
        }
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (bIntStatus);
} /* Mfs_I2c_GetIntStatus */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Clear interrupt status for I2C
 ** The Function clears the interrupt status (IBCR.INT) of I2C
 **
 ** \param [in]     pstcI2c       Pointer to I2C (MFS) instance register area
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_I2c_ClearIntStatus(volatile stc_mfsn_t* pstcI2c)
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Clear the interrupt status */
        pstcI2c->IBCR_f.INT = FALSE;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_ClearIntStatus */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set transmit empty flag for I2C
 ** The Function sets the TSET bit of SSR of I2C.
 ** This sets the TDRE bit of SSR.
 ** If DMA mode is enabled, TBI bit of SSR is set.
 **
 ** \param [in]     pstcI2c       Pointer to I2C (MFS) instance register area
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetTransmitEmpty(volatile stc_mfsn_t* pstcI2c)
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the transmit empty flag set bit */
        pstcI2c->SSR_f.TSET = FALSE;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetTransmitEmpty */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable DMA mode for I2C
 ** The Function sets or clears DMA bit of SSR for I2C.
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  bEnable      Setting for DMA mode
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetDmaModeEnable(volatile stc_mfsn_t* pstcI2c,
                                     boolean_t            bEnable
                                    )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable DMA mode */
        if (FALSE == bEnable)
        {
            pstcI2c->SSR_f.DMA = FALSE;
        }
        /* Enable DMA mode */
        else
        {
            pstcI2c->SSR_f.DMA = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetDmaModeEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set noize filter for I2C
 ** The Function sets NFCR for I2C.
 **
 ** \param [in]  pstcI2c        Pointer to I2C (MFS) instance register area
 ** \param [in]  u8NzFilter     Noize filter setting
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - u8NoizeFilter > MfsI2cNoizeFilterLess400M
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetNoizeFilter(volatile stc_mfsn_t* pstcI2c,
                                   uint8_t              u8NzFilter
                                  )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if ((NULL == MfsGetInternDataPtr(pstcI2c))
    ||  (MfsI2cNoizeFilterLess400M < u8NzFilter)
       )
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set noize filter setting */
        pstcI2c->NFCR = u8NzFilter;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetNoizeFilter */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set SDA output level after passing noize filter for I2C
 ** The Function sets or clears SDAC bit of EIBCR for I2C.
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  bLevel       SDA output level after passing noize filter
 **                               PDLLow :SDA output level is "L"
 **                               PDLHigh:SDA output level is "H"
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetSdaOutLevel(volatile stc_mfsn_t* pstcI2c,
                                   boolean_t            bLevel
                                  )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set "L" level after passing noize filter for SDA output */
        if (FALSE == bLevel)
        {
            pstcI2c->EIBCR_f.SDAC = FALSE;
        }
        /* Set "H" level after passing noize filter for SDA output */
        else
        {
            pstcI2c->EIBCR_f.SDAC = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetSdaOutLevel */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set SCL output level after passing noize filter for I2C
 ** The Function sets or clears SCLC bit of EIBCR for I2C.
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  bLevel       SCL output level after passing noize filter
 **                               PDLLow :SCL output level is "L"
 **                               PDLHigh:SCL output level is "H"
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetSclOutLevel(volatile stc_mfsn_t* pstcI2c,
                                   boolean_t            bLevel
                                  )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set "L" level after passing noize filter for SCL output */
        if (PDLLow == bLevel)
        {
            pstcI2c->EIBCR_f.SCLC = FALSE;
        }
        /* Set "H" level after passing noize filter for SCL output */
        else
        {
            pstcI2c->EIBCR_f.SCLC = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetSclOutLevel */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable serial output for I2C
 ** The Function sets or clears SOCE bit of EIBCR for I2C.
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  bEnable      Setting for serial output
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetSerlalOutEnable(volatile stc_mfsn_t* pstcI2c,
                                       boolean_t            bEnable
                                      )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable serial output */
        if (FALSE == bEnable)
        {
            pstcI2c->EIBCR_f.SOCE = FALSE;
        }
        /* Enable serial output */
        else
        {
            pstcI2c->EIBCR_f.SOCE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetSerlalOutEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable I2C continue after occurring bus error for I2C
 ** The Function sets or clears BEC bit of EIBCR for I2C.
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  bEnable      Setting for I2C continue after occuring bus error
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetBusErrorControlEnable(volatile stc_mfsn_t* pstcI2c,
                                             boolean_t            bEnable
                                            )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable I2C continue after occuring bus error */
        if (FALSE == bEnable)
        {
            pstcI2c->EIBCR_f.BEC = FALSE;
        }
        /* Enable I2C continue after occuring bus error */
        else
        {
            pstcI2c->EIBCR_f.BEC = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetBusErrorControlEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable I2C interface and set slave address mask for I2C
 ** The Function sets or clears EN bit and SM bits of ISMK for I2C.
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  bEnable      Setting for I2C I/F
 **                           FALSE:Disable, TRUE:Enable
 ** \param [in]  u8AddrMask   Slave address mask
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetI2cEnable(volatile stc_mfsn_t* pstcI2c,
                                 boolean_t            bEnable,
                                 uint8_t              u8AddrMask
                                )
{
    en_result_t              enResult;
    stc_mfs_i2c_ismk_field_t stcISMK;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable I2C interface */
        if (FALSE == bEnable)
        {
            stcISMK.EN = FALSE;
            stcISMK.SM = 0;
        }
        /* Enable I2C interface */
        else
        {
            stcISMK.EN = TRUE;
            /* Set slave address mask */
            stcISMK.SM = u8AddrMask & MFS_ISMK_SLV_ADDR_MASK;
        }

        /* Set to ISMK register */
        pstcI2c->ISMK_f = stcISMK;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetI2cIfEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable slave address for I2C
 ** The Function sets or clears SAEN bit and SA bits of ISBA for I2C.
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  bEnable      Setting for slave address enable
 **                           FALSE:Disable, TRUE:Enable
 ** \param [in]  u8SlvAdr     Slave address
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetSlvAddrEnable(volatile stc_mfsn_t* pstcI2c,
                                     boolean_t            bEnable,
                                     uint8_t              u8SlvAdr
                                    )
{
    en_result_t              enResult;
    stc_mfs_i2c_isba_field_t stcISBA;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable slave address */
        if (FALSE == bEnable)
        {
            stcISBA.SAEN = FALSE;
            stcISBA.SA   = 0;
        }
        /* Enable I2C interface */
        else
        {
            stcISBA.SAEN = TRUE;
            /* Set slave address */
            stcISBA.SA   = u8SlvAdr & MFS_ISBA_SLV_ADDR;
        }

        /* Set to ISBA register */
        pstcI2c->ISBA_f = stcISBA;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetSlvAddrEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set baud rate
 ** This Function sets baud rate for I2C (MFS).
 **
 ** \param [in]  pstcI2c      Pointer to I2C (MFS) instance register area
 ** \param [in]  u32BaudRate  Baud rate (bps)
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcI2c == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 ** \retval ErrorUninitialized        Baud rate was not set properly
 **
 ******************************************************************************/
en_result_t Mfs_I2c_SetBaudRate(volatile stc_mfsn_t* pstcI2c, 
                                uint32_t             u32BaudRate
                               )
{
    en_result_t enResult;
    uint32_t    u32ReloadValue;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcI2c))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        enResult = Ok;
        /* Get reload value */
        u32ReloadValue = Mfs_I2c_GetReloadValue(u32BaudRate);
        /* For asynchronous communication, the reload value must be greater than 0 */
        /* because reload counter is stop */
        if (0u == u32ReloadValue)
        {
            enResult = ErrorUninitialized;
        }
    
        /* Set baud rate generation reload register */
        pstcI2c->BGR = (uint16_t)(u32ReloadValue & MFS_BGR_MASK);
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_I2c_SetBaudRate */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Initialisation of a MFS module to activate as LIN.
 **
 ** Set registers to active MFS as LIN.
 **  
 ** \param [in]   pstcLin         Pointer to LIN instance register area
 ** \param [in]   pstcConfig      MFS LIN configuration
 ** 
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcLin == NULL
 **             - pstcConfig == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_Lin_Init( volatile stc_mfsn_t*        pstcLin, 
                          const stc_mfs_lin_config_t* pstcConfig
                        )
{
    /* Preset local register variables to zero */
    stc_mfs_smr_field_t  stcSMR  = { 0 };
    stc_mfs_scr_field_t  stcSCR  = { 0 };
    stc_mfs_escr_field_t stcESCR = { 0 };

    /* Parameter check and get ptr to internal data struct */
    if ((NULL == MfsGetInternDataPtr(pstcLin))
    ||  (NULL == pstcConfig)
       )
    {
        return (ErrorInvalidParameter);
    }

    /* First of all set MFS to Asynchronous mode 0 */
    pstcLin->SMR = 0u;

    /* Then we disable TX and RX for safe operation */
    pstcLin->SCR = 0u;

    /* Clear MFS by setting the Software Reset bit */
    pstcLin->SCR_f.UPCL = TRUE;

    /* Set LIN mode to HW and preset variable */
    stcSMR.MD = MFS_MD_LIN;

    /* Enable serial output */
    stcSMR.SOE = TRUE;

    /* Operation Mode Selection */
    switch (pstcConfig->u8LinMode)
    {
        /* Master */
        case MfsLinMaster:
            stcSCR.MS = FALSE;
            break;
        /* Slave */
        case MfsLinSlave:
            stcSCR.MS = TRUE;
            break;
        default:
            return (ErrorInvalidParameter);
    }

    /* Set LIN master configuration */
    if (MfsLinMaster == pstcConfig->u8LinMode)
    {
        /* Stop bits configration */
        switch (pstcConfig->u8StopBits)
        {
            case MfsLinOneStopBit:
                stcSMR.SBL   = FALSE;
                stcESCR.ESBL = FALSE;
                break;
            case MfsLinTwoStopBits:
                stcSMR.SBL   = TRUE;
                stcESCR.ESBL = FALSE;
                break;
            case MfsLinThreeStopBits:
                stcSMR.SBL   = FALSE;
                stcESCR.ESBL = TRUE;
                break;
            case MfsLinFourStopBits:
                stcSMR.SBL   = TRUE;
                stcESCR.ESBL = TRUE;
                break;
            default:
                return (ErrorInvalidParameter);
        }
        /* Break length configration */
        switch (pstcConfig->u8BreakLength)
        {
            case MfsLinBreakLength13:
                stcESCR.LBL = MFS_LIN_BREAK_13BITS;
                break;
            case MfsLinBreakLength14:
                stcESCR.LBL = MFS_LIN_BREAK_14BITS;
                break;
            case MfsLinBreakLength15:
                stcESCR.LBL = MFS_LIN_BREAK_15BITS;
                break;
            case MfsLinBreakLength16:
                stcESCR.LBL = MFS_LIN_BREAK_16BITS;
                break;
            default:
                return (ErrorInvalidParameter);
        }
        /* Delimiter length configration */
        switch (pstcConfig->u8DelimiterLength)
        {
            case MfsLinDelimiterLength1:
                stcESCR.DEL = MFS_LIN_DELIMITER_1BIT;
                break;
            case MfsLinDelimiterLength2:
                stcESCR.DEL = MFS_LIN_DELIMITER_2BITS;
                break;
            case MfsLinDelimiterLength3:
                stcESCR.DEL = MFS_LIN_DELIMITER_3BITS;
                break;
            case MfsLinDelimiterLength4:
                stcESCR.DEL = MFS_LIN_DELIMITER_4BITS;
                break;
            default:
                return (ErrorInvalidParameter);
        }
    }

    /* Lin break interrupt */
    if (TRUE == pstcConfig->bLinBreakIrqEnable)
    {
        stcESCR.LBIE = TRUE;
    }
    else
    {
        stcESCR.LBIE = FALSE;
    }

    /* Clear MFS by setting the Software Reset bit */
    pstcLin->SCR_f.UPCL = TRUE;

    /* Set Baudrate */
    (void)Mfs_Lin_SetBaudRate(pstcLin, pstcConfig->u32DataRate);

    /* Set registers value */
    pstcLin->SMR_f  = stcSMR;
    pstcLin->SCR_f  = stcSCR;
    pstcLin->ESCR_f = stcESCR;

    return (Ok);
} /* Mfs_Lin_Init */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Deinitialisation of a MFS module activating as LIN.
 **
 ** All used uart register are reset to their default values.
 **  
 ** \param [in]   pstcLin         Pointer to LIN instance register area
 ** 
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcLin == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_Lin_DeInit( volatile stc_mfsn_t* pstcLin)
{
    en_result_t enResult;

    enResult = Mfs_Uart_DeInit(pstcLin);

    return (enResult);
} /* Mfs_Lin_DeInit */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set LIN break field
 ** This Function sets LBR bit of SCR for LIN.
 **
 ** \note MFS module must be initialized to LIN Master mode
 **
 ** This Function sets a LIN break and break delimiter length with the
 ** configuration by the previous initialization.
 ** 
 ** \param [in]  pstcLin       Pointer to LIN (MFS) instance register area
 **
 ** \retval Ok                        LIN Break is (being) generated
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcLin == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_Lin_SetBreak(volatile stc_mfsn_t* pstcLin)
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcLin))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Generate LIN break with configured length and delimiter */
        pstcLin->SCR_f.LBR = TRUE;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Lin_SetBreak */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Clear LIN break detection flag.
 **
 ** \param [in]  pstcLin       Pointer to LIN (MFS) instance register area
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Lin_ClearBreakDetFlag(volatile stc_mfsn_t* pstcLin)
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcLin))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        pstcLin->SSR_f.LBD = FALSE;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Lin_ClearBrkFieldDetFlg */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable LIN Break field detection interrupt for LIN
 ** The Function sets or clears LBIE bit of ESCR for LIN.
 **
 ** \param [in]  pstcLin      Pointer to LIN (MFS) instance register area
 ** \param [in]  bEnable      Setting for LIN Break field detection interrupt
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcLin == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Lin_SetBreakDetIntEnable(volatile stc_mfsn_t* pstcLin,
                                         boolean_t            bEnable
                                        )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcLin))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable LIN Break field detection interrupt */
        if (FALSE == bEnable)
        {
            pstcLin->ESCR_f.LBIE = FALSE;
        }
        /* Enable LIN Break field detection interrupt */
        else
        {
            pstcLin->ESCR_f.LBIE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Lin_SetBreakDetIntEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set LIN break field length and break delimiter length
 ** The Function sets LBL bits and DEL bits of ESCR for LIN.
 **
 ** \note MFS module must be initialized to LIN Master mode
 **
 ** \param [in]  pstcLin            Pointer to LIN (MFS) instance register area
 ** \param [in]  u8BreakLen         Break field length
 ** \param [in]  u8DelimiterLen     Break delimiter length
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcLin == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_Lin_SetBreakConfig(volatile stc_mfsn_t* pstcLin,
                                   uint8_t              u8BreakLen,
                                   uint8_t              u8DelimiterLen
                                  )
{
    stc_mfs_escr_field_t stcESCR;
    en_result_t          enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcLin))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        enResult = Ok;

        stcESCR = pstcLin->ESCR_f;

        /* Break length configration */
        switch (u8BreakLen)
        {
            case MfsLinBreakLength13:
                stcESCR.LBL = MFS_LIN_BREAK_13BITS;
                break;
            case MfsLinBreakLength14:
                stcESCR.LBL = MFS_LIN_BREAK_14BITS;
                break;
            case MfsLinBreakLength15:
                stcESCR.LBL = MFS_LIN_BREAK_15BITS;
                break;
            case MfsLinBreakLength16:
                stcESCR.LBL = MFS_LIN_BREAK_16BITS;
                break;
            default:
                enResult = ErrorInvalidParameter;
                break;
        }
        /* Delimiter length configration */
        switch (u8DelimiterLen)
        {
            case MfsLinDelimiterLength1:
                stcESCR.DEL = MFS_LIN_DELIMITER_1BIT;
                break;
            case MfsLinDelimiterLength2:
                stcESCR.DEL = MFS_LIN_DELIMITER_2BITS;
                break;
            case MfsLinDelimiterLength3:
                stcESCR.DEL = MFS_LIN_DELIMITER_3BITS;
                break;
            case MfsLinDelimiterLength4:
                stcESCR.DEL = MFS_LIN_DELIMITER_4BITS;
                break;
            default:
                enResult = ErrorInvalidParameter;
                break;
        }

        if (Ok == enResult)
        {
            pstcLin->ESCR_f = stcESCR;
        }
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_Lin_SetBreakConfig */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set baud rate
 ** This Function sets baud rate for LIN (MFS).
 **
 ** \param [in]  pstcLin      Pointer to LIN (MFS) instance register area
 ** \param [in]  u32BaudRate  Baud rate (bps)
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcLin == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 ** \retval ErrorUninitialized        Baud rate was not set properly
 **
 ******************************************************************************/
en_result_t Mfs_Lin_SetBaudRate(volatile stc_mfsn_t* pstcLin,
                                uint32_t             u32BaudRate
                               )
{
    /* Same as Mfs_Csio_SetBaudRate() */
    return (Mfs_Csio_SetBaudRate(pstcLin, u32BaudRate));
} /* Mfs_Lin_SetBaudRate */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable serial output
 ** This Function sets or clears SOE bit of SMR for MFS (UART/CSIO/LIN).
 **
 ** \param [in]  pstcMfs      Pointer to MFS instance register area
 ** \param [in]  bEnable      Setting for serial output
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetSerialOutputEnable(volatile stc_mfsn_t* pstcMfs,
                                      boolean_t            bEnable
                                     )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable Serial Output */
        if (FALSE == bEnable)
        {
            pstcMfs->SMR_f.SOE = FALSE;
        }
        /* Enable Serial Output */
        else
        {
            pstcMfs->SMR_f.SOE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_EnableSerialOutput */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable wake up function
 ** This Function sets or clears WUCR bit of SMR for MFS (UART/LIN).
 **
 ** \param [in]  pstcMfs      Pointer to MFS instance register area
 ** \param [in]  bEnable      Setting for serial output
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetWakeUpControlEnable(volatile stc_mfsn_t* pstcMfs,
                                       boolean_t            bEnable
                                      )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable wake up control */
        if (FALSE == bEnable)
        {
            pstcMfs->SMR_f.WUCR = FALSE;
        }
        /* Enable wake up control */
        else
        {
            pstcMfs->SMR_f.WUCR = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetWakeUpControlEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Software Reset
 ** This Function initializes the MFS (UART/CSIO/LIN) internal state.
 **
 ** \param [in]  pstcMfs      Pointer to MFS instance register area
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SoftwareReset(volatile stc_mfsn_t* pstcMfs)
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Initializes the UART internal state (Software Reset) */
        pstcMfs->SCR_f.UPCL = TRUE;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SoftwareReset */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable RX interrupt
 ** This Function sets or clears RIE bit of SCR for MFS (UART/CSIO/LIN).
 **
 ** \param [in]  pstcMfs      Pointer to MFS instance register area
 ** \param [in]  bEnable      Setting for RX interrupt
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetRxIntEnable(volatile stc_mfsn_t* pstcMfs,
                               boolean_t            bEnable
                              )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable RX interrupt */
        if (FALSE == bEnable)
        {
            pstcMfs->SCR_f.RIE = FALSE;
        }
        /* Enable RX interrupt */
        else
        {
            pstcMfs->SCR_f.RIE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetRxIntEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable TX interrupt
 ** The Function sets or clears TIE bit of SCR for MFS (UART/CSIO/LIN).
 **
 ** \param [in]  pstcMfs      Pointer to MFS instance register area
 ** \param [in]  bEnable      Setting for TX interrupt
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_SetTxIntEnable(volatile stc_mfsn_t* pstcMfs,
                               boolean_t            bEnable
                              )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable TX interrupt */
        if (FALSE == bEnable)
        {
            pstcMfs->SCR_f.TIE = FALSE;
        }
        /* Enable TX interrupt */
        else
        {
            pstcMfs->SCR_f.TIE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetTxIntEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable TX bus idle interrupt
 ** The Function sets or clears TBIE bit of SCR for MFS (UART/CSIO/LIN).
 **
 ** \param [in]  pstcMfs      Pointer to MFS instance register area
 ** \param [in]  bEnable      Setting for TX bus idle interrupt
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_SetTxBusIdleIntEnable(volatile stc_mfsn_t* pstcMfs,
                                      boolean_t            bEnable
                                     )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable TX bus ield interrupt */
        if (FALSE == bEnable)
        {
            pstcMfs->SCR_f.TBIE = FALSE;
        }
        /* Enable TX bus ield interrupt */
        else
        {
            pstcMfs->SCR_f.TBIE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetTxBusIdleIntEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable TX FIFO interrupt
 ** The Function sets or clears FTIE bit of FCR1 for MFS (UART/CSIO/LIN).
 **
 ** \param [in]  pstcMfs      Pointer to MFS instance register area
 ** \param [in]  bEnable      Setting for TX FIFO interrupt
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_SetTxFifoIntEnable(volatile stc_mfsn_t* pstcMfs,
                                   boolean_t            bEnable
                                  )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable TX FIFO interrupt */
        if (FALSE == bEnable)
        {
            pstcMfs->FCR1_f.FTIE = FALSE;
        }
        /* Enable TX FIFO interrupt */
        else
        {
            pstcMfs->FCR1_f.FTIE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetTxFifoIntEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable RX
 ** This Function sets or clears RXE bit of SCR for MFS (UART/CSIO/LIN).
 **
 ** \param [in]  pstcMfs      Pointer to MFS instance register area
 ** \param [in]  bEnable      Setting for RX
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetRxEnable(volatile stc_mfsn_t* pstcMfs,
                            boolean_t            bEnable
                           )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable RX */
        if (FALSE == bEnable)
        {
            pstcMfs->SCR_f.RXE = FALSE;
        }
        /* Enable RX */
        else
        {
            pstcMfs->SCR_f.RXE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetRxEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable TX
 ** This Function sets or clears TXE bit of SCR for MFS (UART/CSIO/LIN).
 **
 ** \param [in]  pstcMfs      Pointer to MFS instance register area
 ** \param [in]  bEnable      Setting for TX
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetTxEnable(volatile stc_mfsn_t* pstcMfs,
                            boolean_t            bEnable
                           )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Disable TX */
        if (FALSE == bEnable)
        {
            pstcMfs->SCR_f.TXE = FALSE;
        }
        /* Enable TX */
        else
        {
            pstcMfs->SCR_f.TXE = TRUE;
        }

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetTxEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get status
 ** The Function can return the status (SSR) for MFS (UART/CSIO/LIN/I2C)
 **
 ** \param [in]     pstcMfs       Pointer to MFS instance register area
 ** \param [in]     u8StatusMask  Mask data to get status
 **
 ** \retval Masked SSR value (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint8_t Mfs_GetStatus(volatile stc_mfsn_t* pstcMfs,
                      uint8_t              u8StatusMask
                     )
{
    uint8_t u8Status;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u8Status = 0u;
    }
    else
    {
#endif
        /* Return masked SSR value */
        u8Status = pstcMfs->SSR & u8StatusMask;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u8Status);
} /* Mfs_GetStatus */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Clear error flag.
 ** The Function can clear the error flags for MFS (UART/CSIO/LIN/I2C)
 **
 ** \param [in]     pstcMfs       Pointer to MFS instance register area
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_ErrorClear(volatile stc_mfsn_t* pstcMfs)
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        pstcMfs->SSR_f.REC = TRUE;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_ErrorClear */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Read data from Received Data Register (RDR).
 ** The received data is read from Received Data Register (RDR) and return
 ** for MFS (UART/CSIO/LIN/I2C).
 **
 ** \note This function access to 16 bits RDR.
 **       If RDR is accessed by upper 16 bits (for CSIO), the function of
 **       Mfs_Csio_ReadData32() should be used.
 **
 ** \param [in]  pstcMfs              Pointer to MFS instance register area
 **
 ** \retval the Value of Received Data Register (RDR, 16bit)
 **
 ******************************************************************************/
uint16_t Mfs_ReadData(volatile stc_mfsn_t* pstcMfs)
{
    uint16_t u16ReadData;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u16ReadData = 0u;
    }
    else
    {
#endif
        /* Return the value of Received Data Register (RDR) */
        u16ReadData = pstcMfs->RDR;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u16ReadData);
} /* Mfs_ReadData */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Write data to Transmit Data Register (TDR).
 ** The data provided by Mfs_WriteData#u16Data is written into the Transmit
 ** Data Register (TDR) for MFS (UART/CSIO/LIN/I2C).
 **
 ** \note This function access to 16 bits TDR.
 **       If TDR is accessed by upper 16 bits (for CSIO), the function of
 **       Mfs_Csio_WriteData32() should be used.
 **
 ** \param [in] pstcMfs        Pointer to MFS instance register area
 ** \param [in] u16Data        Data to write to Transmit Data Register
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pu16Data == NULL 
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_WriteData(volatile stc_mfsn_t* pstcMfs,
                          const uint16_t       u16Data
                         )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Put data to Transmit Data Register (TDR) */
        pstcMfs->TDR = u16Data;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_WriteData */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Configure FIFO
 ** This Function configures the dedicated FIFO for MFS.
 **
 ** \param [in]  pstcMfs        Pointer to MFS instance register area
 ** \param [in]  pstcFifoConfig Pointer to configuration for FIFO
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcFifoConfig == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ** \retval ErrorOperationInProgress  Buffers not empty (Operating RX or TX)
 **
 ******************************************************************************/
en_result_t Mfs_ConfigFifo(volatile stc_mfsn_t*   pstcMfs,
                           stc_mfs_fifo_config_t* pstcFifoConfig
                          )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if ((NULL == MfsGetInternDataPtr(pstcMfs))
    ||  (NULL == pstcFifoConfig)
       )
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        enResult = Ok;

        /* Set FSEL */
        switch (pstcFifoConfig->u8FifoSel)
        {
            case MfsTxFifo1RxFifo2:
                pstcMfs->FCR1_f.FSEL = FALSE;
                break;
            case MfsTxFifo2RxFifo1:
                pstcMfs->FCR1_f.FSEL = TRUE;
                break;
            default:
                enResult = ErrorInvalidParameter;
                break;
        }

        if (Ok == enResult)
        {
            /* Set FBYTE */
            pstcMfs->FBYTE1 = pstcFifoConfig->u8ByteCount1;
            pstcMfs->FBYTE2 = pstcFifoConfig->u8ByteCount2;
        }
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_ConfigFifo */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get TX FIFO request status for MFS
 ** The Function can return the TX FIFO request status (FCR1.FDRQ) of MFS
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pbStatus == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
boolean_t Mfs_GetTxFifoReqStatus(volatile stc_mfsn_t* pstcMfs)
{
    boolean_t bStatus = FALSE;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL != MfsGetInternDataPtr(pstcMfs))
    {
#endif
        /* Return the TX FIFO request status */
        if(TRUE == pstcMfs->FCR1_f.FDRQ)
        {
            bStatus = TRUE;
        }
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (bStatus);
} /* Mfs_GetTxFifoReqStatus */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Clear TX FIFO request status for MFS
 ** The Function clears the TX FIFO request status (FCR1.FDRQ) of MFS
 **
 ** \param [in]     pstcMfs       Pointer to MFS instance register area
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **
 ******************************************************************************/
en_result_t Mfs_ClrTxFifoReqStatus(volatile stc_mfsn_t* pstcMfs)
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Clear the TX FIFO request status */
        pstcMfs->FCR1_f.FDRQ = FALSE;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_ClrTxFifoReqStatus */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Reset FIFO funtion
 ** This Function resets dedicated FIFO of MFS.
 **
 ** \param [in]  pstcMfs      Pointer to MFS instance register area
 ** \param [in]  u8FifoNumber Number of FIFO to reset
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcUart == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **             - u8FifoNumber != MfsFifo1, MfsFifo2
 **
 ******************************************************************************/
en_result_t Mfs_ResetFifo(volatile stc_mfsn_t* pstcMfs, 
                          uint8_t              u8FifoNumber
                         )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        enResult = Ok;

        /* Reset FIFO */
        switch (u8FifoNumber)
        {
            case MfsFifo1:
                pstcMfs->FCR0_f.FCL1 = TRUE;
                break;
            case MfsFifo2:
                pstcMfs->FCR0_f.FCL2 = TRUE;
                break;
            default:
                enResult = ErrorInvalidParameter;
                break;
        }
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_ResetFifo */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Enable or disable FIFO funtion
 ** This Function sets or clears FE1/FE2 bit of MFS.
 **
 ** \param [in]  pstcMfs      Pointer to MFS instance register area
 ** \param [in]  u8FifoNumber Number of FIFO to enable
 ** \param [in]  bEnable      Setting for FIFO
 **                           FALSE:Disable, TRUE:Enable
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcUart == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS))
 **             - u8FifoNumber != MfsFifo1, MfsFifo2
 **
 ******************************************************************************/
en_result_t Mfs_SetFifoEnable(volatile stc_mfsn_t* pstcMfs, 
                              uint8_t              u8FifoNumber,
                              boolean_t            bEnable
                          )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        enResult = Ok;

        switch (u8FifoNumber)
        {
            case MfsFifo1:
                /* Disable FIFO */
                if (FALSE == bEnable)
                {
                    pstcMfs->FCR0_f.FE1 = FALSE;
                }
                /* Enable FIFO */
                else
                {
                    pstcMfs->FCR0_f.FE1 = TRUE;
                }
                break;
            case MfsFifo2:
                /* Disable FIFO */
                if (FALSE == bEnable)
                {
                    pstcMfs->FCR0_f.FE2 = FALSE;
                }
                /* Enable FIFO */
                else
                {
                    pstcMfs->FCR0_f.FE2 = TRUE;
                }
                break;
            default:
                enResult = ErrorInvalidParameter;
                break;
        }
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetFifoEnable */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get effective data count in the FIFO buffer
 ** This Function gets the FBYTE of the dedicated FIFO.
 **
 ** \param [in]     pstcMfs         Pointer to MFS instance register area
 ** \param [in]     u8FifoNumber    Number of FIFO to get FBYTE
 **
 ** \retval Value of FBYTE of the dedicated FIFO
 **         (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint8_t Mfs_GetFifoBytes(volatile stc_mfsn_t* pstcMfs, 
                         uint8_t              u8FifoNumber
                        )
{
    uint8_t u8FifoBytes;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u8FifoBytes = 0u;
    }
    else
    {
#endif

    /* Get FIFO counter */
    switch (u8FifoNumber)
    {
        case MfsFifo1:
            u8FifoBytes = pstcMfs->FBYTE1;
            break;
        case MfsFifo2:
            u8FifoBytes = pstcMfs->FBYTE2;
            break;
        default:
            u8FifoBytes = 0u;
            break;
    }

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return(u8FifoBytes);
} /* Mfs_GetFifoBytes */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

/**
 ******************************************************************************
 ** \brief Get APB2 Bus clock frequency
 **        This function return the clock value of APB2
 **
 ** \retval bus clock value (uint32_t)
 **
 ******************************************************************************/
uint32_t Mfs_GetBusClock(void)
{
    uint32_t u32BusClock;

    /* Get Master Clock */
    switch (FM4_CRG->SCM_CTL >> MFS_NUM_5)
    {
        case MFS_MASTER_CLK_HCR:
            u32BusClock = __CLKHC;
            break;
        case MFS_MASTER_CLK_MAIN:
            u32BusClock = __CLKMO;
            break;
        case MFS_MASTER_CLK_PLL:
            u32BusClock = (__CLKMO  * (((uint32_t)(FM4_CRG->PLL_CTL2) & MFS_PLL_CTL2_MASK) + MFS_NUM_1));
            u32BusClock /= ((((uint32_t)(FM4_CRG->PLL_CTL1) >> MFS_NUM_4) & MFS_PLL_CTL1_MASK) + MFS_NUM_1);
            break;
        case MFS_MASTER_CLK_LCR:
            u32BusClock = __CLKLC;
            break;
        case MFS_MASTER_CLK_SUB:
            u32BusClock = __CLKSO;
            break;
        default:
            u32BusClock = 0;
            break;
    }

    /* Get Core Clock */
    switch (FM4_CRG->BSC_PSR & MFS_NUM_7)
    {
        case MFS_BASE_CLK_DIV1:
            u32BusClock /= MFS_NUM_1;
            break;
        case MFS_BASE_CLK_DIV2:
            u32BusClock /= MFS_NUM_2;
            break;
        case MFS_BASE_CLK_DIV3:
            u32BusClock /= MFS_NUM_3;
            break;
        case MFS_BASE_CLK_DIV4:
            u32BusClock /= MFS_NUM_4;
            break;
        case MFS_BASE_CLK_DIV6:
            u32BusClock /= MFS_NUM_6;
            break;
        case MFS_BASE_CLK_DIV8:
            u32BusClock /= MFS_NUM_8;
            break;
        case MFS_BASE_CLK_DIV16:
            u32BusClock /= MFS_NUM_16;
            break;
        default:
            u32BusClock = 0;
            break;
    }

    /* Get Clock Frequency for PCLK2 */
    switch (FM4_CRG->APBC2_PSR & MFS_NUM_3)
    {
        case MfsClkDiv0:
            u32BusClock /= MFS_NUM_1;
            break;
        case MfsClkDiv1:
            u32BusClock /= MFS_NUM_2;
            break;
        case MfsClkDiv2:
            u32BusClock /= MFS_NUM_4;
            break;
        case MfsClkDiv3:
            u32BusClock /= MFS_NUM_8;
            break;
        default:
            u32BusClock /= MFS_NUM_1;
    }

    return (u32BusClock);
} /* Mfs_GetBusClock */

/**
 ******************************************************************************
 ** \brief Get reload value
 **        This function return the reload value to calucurate baud rate
 **
 ** This function just uses Mfs_Xxx_Init()
 ** 
 ** \param [in]  u32BaudRate    Baudrate to setup
 **
 ** \retval reload value (uint32_t)
 **
 ******************************************************************************/
uint32_t Mfs_GetReloadValue(uint32_t u32BaudRate)
{
    uint32_t u32ReloadValue;

    /* Check if data rate is 0 (div by zero not wanted) */
    if (0u == u32BaudRate)
    {
        u32ReloadValue = 0u;
    }
    else
    {
        /* Get Clock Frequency for PCLK2 */
        u32ReloadValue = Mfs_GetBusClock();
        /* Calc reload value based on data rate set */
        u32ReloadValue /= u32BaudRate;
        u32ReloadValue -= MFS_NUM_1;
    }

    return (u32ReloadValue);
} /* Mfs_GetReloadValue */

/**
 ******************************************************************************
 ** \brief Get reload value for I2C interface
 **        This function return the reload value to calucurate baud rate
 **
 ** \param [in]  u32BaudRate    Baudrate to setup
 **
 ** \retval reload value (uint32_t)
 **
 ******************************************************************************/
uint32_t Mfs_I2c_GetReloadValue(uint32_t u32BaudRate)
{
    uint32_t u32ReloadValue;

    /* Check if data rate is 0 (div by zero not wanted) */
    if (0u == u32BaudRate)
    {
        u32ReloadValue = 0u;
    }
    else
    {
        /* Get Clock Frequency for PCLK2 */
        u32ReloadValue = Mfs_GetBusClock();
        /* Calc reload value based on data rate set */
        u32ReloadValue /= u32BaudRate;
        u32ReloadValue -= MFS_NUM_3;
    }

    return (u32ReloadValue);
} /* Mfs_I2c_GetReloadValue */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to Serial Mode Register
 ** This Function sets value to SMR.
 **
 ** \param [in]  pstcMfs         Pointer to MFS instance register area
 ** \param [in]  u8SMR           Value to set to SMR
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetSMR(volatile stc_mfsn_t* pstcMfs,
                       uint8_t              u8SMR
                      )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to Serial Mode Register */
        pstcMfs->SMR = u8SMR;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetSMR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from Serial Mode Register
 ** This Function returns value of SMR.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of SMR (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint8_t Mfs_GetSMR(volatile stc_mfsn_t* pstcMfs)
{
    uint8_t u8Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u8Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of Serial Mode Register */
        u8Reg = pstcMfs->SMR;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u8Reg);
} /* Mfs_GetSMR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to Serial Control Register
 ** This Function sets value to SCR.
 **
 ** \param [in]  pstcMfs         Pointer to MFS instance register area
 ** \param [in]  u8SCR           Value to set to SCR
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetSCR(volatile stc_mfsn_t* pstcMfs,
                       uint8_t              u8SCR
                      )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to Serial Control Register */
        pstcMfs->SCR = u8SCR;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetSCR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from Serial Control Register
 ** This Function returns value of SCR.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of SCR (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint8_t Mfs_GetSCR(volatile stc_mfsn_t* pstcMfs)
{
    uint8_t u8Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u8Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of Serial Control Register */
        u8Reg = pstcMfs->SCR;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u8Reg);
} /* Mfs_GetSCR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to Extended Serial Control Register
 ** This Function sets value to ESCR.
 **
 ** \param [in]  pstcMfs         Pointer to MFS instance register area
 ** \param [in]  u8ESCR          Value to set to ESCR
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetESCR(volatile stc_mfsn_t* pstcMfs,
                        uint8_t               u8ESCR
                       )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to Extended Serial Control Register */
        pstcMfs->ESCR = u8ESCR;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetESCR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from Extended Serial Control Register
 ** This Function returns value of ESCR.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of ESCR (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint8_t Mfs_GetESCR(volatile stc_mfsn_t* pstcMfs)
{
    uint8_t u8Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u8Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of Extended Serial Control Register */
        u8Reg = pstcMfs->ESCR;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u8Reg);
} /* Mfs_GetESCR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to Baud rate Generator Register
 ** This Function sets value to BGR.
 **
 ** \param [in]  pstcMfs         Pointer to MFS instance register area
 ** \param [in]  u16BGR          Value to set to BGR
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetBGR(volatile stc_mfsn_t* pstcMfs,
                       uint16_t             u16BGR
                      )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to Baudrate Generate Register */
        pstcMfs->BGR = u16BGR;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetBGR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from Baud rate Generator Register
 ** This Function returns value of BGR.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of BGR (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint16_t Mfs_GetBGR(volatile stc_mfsn_t* pstcMfs)
{
    uint16_t u16Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u16Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of Baud rate Generate Register */
        u16Reg = pstcMfs->BGR;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u16Reg);
} /* Mfs_GetBGR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to Fifo Control Register 1
 ** This Function sets value to FCR1.
 **
 ** \param [in]  pstcMfs         Pointer to MFS instance register area
 ** \param [in]  u8FCR1          Value to set to FCR1
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetFCR1(volatile stc_mfsn_t* pstcMfs,
                        uint8_t              u8FCR1
                       )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to FIFO Control Register 1 */
        pstcMfs->FCR1 = u8FCR1;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetFCR1 */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from FIFO Control Register 1
 ** This Function returns value of FCR1.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of FCR1 (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint8_t Mfs_GetFCR1(volatile stc_mfsn_t* pstcMfs)
{
    uint8_t u8Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u8Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of FIFO Control Register 1 */
        u8Reg = pstcMfs->FCR1;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u8Reg);
} /* Mfs_GetFCR1 */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to Fifo Control Register 0
 ** This Function can set value to FCR0.
 **
 ** \param [in]  pstcMfs         Pointer to MFS instance register area
 ** \param [in]  u8FCR0          Value to set to FCR0
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetFCR0(volatile stc_mfsn_t* pstcMfs,
                        uint8_t              u8FCR0
                       )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to FIFO Control Register 0 */
        pstcMfs->FCR0 = u8FCR0;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetFCR0 */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from FIFO Control Register 0
 ** This Function returns value of FCR0.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of FCR0 (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint8_t Mfs_GetFCR0(volatile stc_mfsn_t* pstcMfs)
{
    uint8_t u8Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u8Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of FIFO Control Register 0 */
        u8Reg = pstcMfs->FCR0;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u8Reg);
} /* Mfs_GetFCR1 */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to Serial Chip Select Timing Register 1-0
 ** This Function can set value to SCSTR10.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 ** \param [in]  u16SCSTR10       Value to set to SCSTR10
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetSCSTR10(volatile stc_mfsn_t* pstcMfs,
                           uint16_t             u16SCSTR10
                          )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to Serial Chip Select Timing Register 1-0 (for CSIO) */
        pstcMfs->SCSTR10 = u16SCSTR10;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetSCSTR10 */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from Serial Chip Select Timing Register 1-0
 ** This Function returns value of SCSTR10.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of SCSTR10 (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint16_t Mfs_GetSCSTR10(volatile stc_mfsn_t* pstcMfs)
{
    uint16_t u16Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u16Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of Serial Chip Select Timing Register 1-0 (for CSIO) */
        u16Reg = pstcMfs->SCSTR10;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u16Reg);
} /* Mfs_GetSCSTR10 */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to Serial Chip Select Timing Register 3-2
 ** This Function can set value to SCSTR32.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 ** \param [in]  u16SCSTR32       Value to set to SCSTR32
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetSCSTR32(volatile stc_mfsn_t* pstcMfs,
                           uint16_t             u16SCSTR32
                          )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to Serial Chip Select Timing Register 3-2 (for CSIO) */
        pstcMfs->SCSTR32 = u16SCSTR32;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetSCSTR32 */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from Serial Chip Select Timing Register 1-0
 ** This Function returns value of SCSTR32.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of SCSTR32 (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint16_t Mfs_GetSCSTR32(volatile stc_mfsn_t* pstcMfs)
{
    uint16_t u16Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u16Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of Serial Chip Select Timing Register 3-2 (for CSIO) */
        u16Reg = pstcMfs->SCSTR32;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u16Reg);
} /* Mfs_GetSCSTR32 */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to Serial Assistant Status Control Register
 ** This Function can set value to SACSR.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 ** \param [in]  u16SACSR         Value to set to SACSR
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetSACSR(volatile stc_mfsn_t* pstcMfs,
                         uint16_t             u16SACSR
                        )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to Serial Assistant Status Control Register (for CSIO) */
        pstcMfs->SACSR = u16SACSR;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetSACSR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from Serial Assistant Status Control Register
 ** This Function can get value from SACSR.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of SACSR (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint16_t Mfs_GetSACSR(volatile stc_mfsn_t* pstcMfs)
{
    uint16_t u16Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u16Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of Serial Assistant Status Control Register (for CSIO) */
        u16Reg = pstcMfs->SACSR;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u16Reg);
} /* Mfs_GetSACSR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from Serial Timer Compare Register
 ** This Function can get value from STMCR.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of STMCR (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint16_t Mfs_GetSTMCR(volatile stc_mfsn_t* pstcMfs)
{
    uint16_t u16Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u16Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of Serial Timer Compare Register (for CSIO) */
        u16Reg = pstcMfs->STMCR;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u16Reg);
} /* Mfs_GetSTMCR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to Serial Chip Select Control Register
 ** This Function can set value to SCSCR.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 ** \param [in]  u16SCSCR         Value to set to SCSCR
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetSCSCR(volatile stc_mfsn_t* pstcMfs,
                         uint16_t             u16SCSCR
                        )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to Serial Chip Select Control Register (for CSIO) */
        pstcMfs->SCSCR = u16SCSCR;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetSCSCR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from Serial Chip Select Control Register
 ** This Function can get value from SCSCR.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Ok                        Process successfully done.
 ** \retval Value of SCSCR (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint16_t Mfs_GetSCSCR(volatile stc_mfsn_t* pstcMfs)
{
    uint16_t u16Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u16Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of Serial Chip Select Control Register (for CSIO) */
        u16Reg = pstcMfs->SCSCR;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u16Reg);
} /* Mfs_GetSCSCR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to Transmission Byte 0
 ** This Function can set value to TBYTE0.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 ** \param [in]  u8TBYTE0         Value to set to TBYTE0
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetTBYTE0(volatile stc_mfsn_t* pstcMfs,
                          uint8_t              u8TBYTE0
                         )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to  Transmission Byte 0 (for CSIO) */
        pstcMfs->TBYTE0 = u8TBYTE0;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetTBYTE0 */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from Transmission Byte 0
 ** This Function can get value from TBYTE0.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pu16SCSCR == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
uint8_t Mfs_GetTBYTE0(volatile stc_mfsn_t* pstcMfs)
{
    uint8_t u8Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u8Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of Serial Chip Select Control Register (for CSIO) */
        u8Reg = pstcMfs->TBYTE0;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u8Reg);
} /* Mfs_GetTBYTE0 */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to 7-bit Slave Address Register
 ** This Function can set value to ISBA.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 ** \param [in]  u8ISBA           Value to set to ISBA
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetISBA(volatile stc_mfsn_t* pstcMfs,
                        uint8_t              u8ISBA
                       )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to 7-bit Slave Address Register (for I2C) */
        pstcMfs->ISBA = u8ISBA;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetISBA */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from 7-bit Slave Address Register
 ** This Function can get value from ISBA.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of ISBA (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint8_t Mfs_GetISBA(volatile stc_mfsn_t* pstcMfs)
{
    uint8_t u8Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u8Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of 7-bit Slave Address Register (for I2C) */
        u8Reg = pstcMfs->ISBA;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u8Reg);
} /* Mfs_GetISBA */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to 7-bit Slave Address Mask Register
 ** This Function can set value to ISMK.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 ** \param [in]  u8ISMK           Value to set to ISMK
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetISMK(volatile stc_mfsn_t* pstcMfs,
                        uint8_t              u8ISMK
                       )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to 7-bit Slave Address Mask Register (for I2C) */
        pstcMfs->ISMK = u8ISMK;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetISMK */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from 7-bit Slave Address Mask Register
 ** This Function can get value from ISMK.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of ISMK (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint8_t Mfs_GetISMK(volatile stc_mfsn_t* pstcMfs)
{
    uint8_t u8Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u8Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of 7-bit Slave Address Mask Register (for I2C) */
        u8Reg = pstcMfs->ISMK;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u8Reg);
} /* Mfs_GetISBA */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from Noize Filter Control Register
 ** This Function can get value from NFCR.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of NFCR (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint8_t Mfs_GetNFCR(volatile stc_mfsn_t* pstcMfs)
{
    uint8_t u8Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u8Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of Noize Filter Control Register (for I2C) */
        u8Reg = pstcMfs->NFCR;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u8Reg);
} /* Mfs_GetNFCR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Set value to Extended I2C Bus Control Register
 ** This Function can set value to EIBCR.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 ** \param [in]  u8EIBCR          Value to set to EIBCR
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetEIBCR(volatile stc_mfsn_t* pstcMfs,
                         uint8_t              u8EIBCR
                        )
{
    en_result_t enResult;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
#endif
        /* Set the value to 7-bit Slave Address Mask Register (for I2C) */
        pstcMfs->EIBCR = u8EIBCR & MFS_EIBCR_WRT_MASK;

        enResult = Ok;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (enResult);
} /* Mfs_SetEIBCR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

#if (PDL_MFS_USE_HL == PDL_OFF)
/**
 ******************************************************************************
 ** \brief Get value from Extended I2C Bus Control Register
 ** This Function can get value from EIBCR.
 **
 ** \param [in]  pstcMfs          Pointer to MFS instance register area
 **
 ** \retval Value of EIBCR (If parameter check is NG, this function returns 0.)
 **
 ******************************************************************************/
uint8_t Mfs_GetEIBCR(volatile stc_mfsn_t* pstcMfs)
{
    uint8_t u8Reg;

#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    /* Parameter check and get ptr to internal data struct */
    if (NULL == MfsGetInternDataPtr(pstcMfs))
    {
        u8Reg = 0u;
    }
    else
    {
#endif
        /* Return the value of Extended I2C Bus Control Register (for I2C) */
        u8Reg = pstcMfs->EIBCR;
#if (PDL_MFS_NO_PARAM_CHK == PDL_OFF)
    }
#endif

    return (u8Reg);
} /* Mfs_GetEIBCR */
#endif /* #if (PDL_MFS_USE_HL == PDL_OFF) */

/**
 ******************************************************************************
 ** \brief Set TX ISR callback funtion.
 **
 ** The Function can set the TX callback function
 **
 ** \param [in]  pstcMfs       Pointer to MFS instance register area
 ** \param [in]  pfnTxCbFunc   TX callback function
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetTxIntCallBack(volatile stc_mfsn_t* pstcMfs,
                                 mfs_tx_cb_func_ptr_t pfnTxCbFunc
                                )
{
    en_result_t            enResult;
    stc_mfs_intern_data_t* pstcMfsInternData;

    /* Check for valid pointer and get pointer to internal data struct ... */
    pstcMfsInternData = MfsGetInternDataPtr(pstcMfs);
    /* ... and check */
    if (NULL == pstcMfsInternData)
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
        pstcMfsInternData->pfnTransmitCbFunction = pfnTxCbFunc;
        enResult = Ok;
    }

    return (enResult);
} /* Mfs_SetTxIntCallBack */

/**
 ******************************************************************************
 ** \brief Set RX ISR callback funtion.
 **
 ** The Function can set the RX callback function
 **
 ** \param [in]  pstcMfs       Pointer to MFS instance register area
 ** \param [in]  pfnRxCbFunc   RX callback function
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetRxIntCallBack(volatile stc_mfsn_t* pstcMfs,
                                 mfs_rx_cb_func_ptr_t pfnRxCbFunc
                                )
{
    en_result_t            enResult;
    stc_mfs_intern_data_t* pstcMfsInternData;

    /* Check for valid pointer and get pointer to internal data struct ... */
    pstcMfsInternData = MfsGetInternDataPtr(pstcMfs);
    /* ... and check */
    if (NULL == pstcMfsInternData)
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
        pstcMfsInternData->pfnReceiveCbFunction = pfnRxCbFunc;
        enResult = Ok;
    }

    return (enResult);
} /* Mfs_SetRxIntCallBack */

/**
 ******************************************************************************
 ** \brief Set Status ISR callback funtion.
 **
 ** The Function can set the Status callback function
 **
 ** \param [in]  pstcMfs       Pointer to MFS instance register area
 ** \param [in]  pfnStsCbFunc  Status callback function
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetStsIntCallBack(volatile stc_mfsn_t*  pstcMfs,
                                  mfs_sts_cb_func_ptr_t pfnStsCbFunc
                                 )
{
    en_result_t            enResult;
    stc_mfs_intern_data_t* pstcMfsInternData;

    /* Check for valid pointer and get pointer to internal data struct ... */
    pstcMfsInternData = MfsGetInternDataPtr(pstcMfs);
    /* ... and check */
    if (NULL == pstcMfsInternData)
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
        pstcMfsInternData->pfnStatusCbFunction = pfnStsCbFunc;
        enResult = Ok;
    }

    return (enResult);
} /* Mfs_SetStsIntCallBack */

/**
 ******************************************************************************
 ** \brief Set handle for upper layer.
 **
 ** The Function set the pointer to handle (internal data) for upper layer
 **
 ** \param [in]  pstcMfs       Pointer to MFS instance register area
 ** \param [in]  pvHandle      Pointer to handle(internal data) for upper layer
 **
 ** \retval Ok                        Process successfully done.
 ** \retval ErrorInvalidParameter     If one of following conditions are met:
 **             - pstcMfs == NULL
 **             - pstcMfsInternData == NULL (invalid or disabled MFS unit
 **                                          (PDL_PERIPHERAL_ENABLE_MFS)) 
 **
 ******************************************************************************/
en_result_t Mfs_SetUpperLayerHandle( volatile stc_mfsn_t* pstcMfs,
                                     void*                pvHandle
                                   )
{
    en_result_t            enResult;
    stc_mfs_intern_data_t* pstcMfsInternData;

    /* Check for valid pointer and get pointer to internal data struct ... */
    pstcMfsInternData = MfsGetInternDataPtr(pstcMfs);
    /* ... and check */
    if (NULL == pstcMfsInternData)
    {
        enResult = ErrorInvalidParameter;
    }
    else
    {
        pstcMfsInternData->pvUpperLayerHandle = pvHandle;
        enResult = Ok;
    }

    return (enResult);
} /* Mfs_SetUpperLayerHandle */

//@} // MfsGroup

#endif /* #if (defined(PDL_PERIPHERAL_MFS_ACTIVE)) */
/******************************************************************************/
/* EOF (not truncated)                                                        */
/******************************************************************************/
