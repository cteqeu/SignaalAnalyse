/*!
 * \file      dstc.h
 * \brief     Controller for DSTC pheriperal (Descriptor based DMA)
 *            
 * \copyright ARM University Program &copy; ARM Ltd 2015.
 */
#ifndef DSTC_H
#define DSTC_H

#define PING 0x00
#define PONG 0x01
#define DMA_BUFFER_SIZE 128 //Max 256

/******************************************************************************
 * Global type definitions
 ******************************************************************************/
/**
 ******************************************************************************
 ** \brief Definition of Descriptor 0 (DES0 - Transfer Basic Setting)
 ******************************************************************************/
typedef struct stc_dstc_des0
{
  uint32_t DV       : 2u;
  uint32_t ST       : 2u;
  uint32_t MODE     : 1u;
  uint32_t ORL      : 3u;
  uint32_t TW       : 2u;
  uint32_t SAC      : 3u;
  uint32_t DAC      : 3u;
  uint32_t CHRS     : 6u;
  uint32_t DMSET    : 1u;
  uint32_t CHLK     : 1u;
  uint32_t ACK      : 2u;
  uint32_t RESERVED : 2u;
  uint32_t PCHK     : 4u;
} stc_dstc_des0_t;

/**
 ******************************************************************************
 ** \brief Definition of Descriptor 1 (DES1 - Number of Transfers) in Mode 0
 ******************************************************************************/
typedef struct stc_dstc_des1_mode0
{
  uint32_t IIN      : 16u;
  uint32_t ORM      : 16u;
} stc_dstc_des1_mode0_t;

/**
 ******************************************************************************
 ** \brief Definition of Descriptor 1 (DES1 - Number of Transfers) in Mode 1
 ******************************************************************************/
typedef struct stc_dstc_des1_mode1
{
  uint32_t IIN      : 8u;
  uint32_t IRM      : 8u;
  uint32_t ORM      : 16u;
} stc_dstc_des1_mode1_t;

/**
 ******************************************************************************
 ** \brief Definition of Descriptor Group DES0 - DES5
 ******************************************************************************/
typedef struct stc_dstc_des012345
{
  union
  {
    uint32_t        u32DES0;            // Needed for PCHK calculation
    stc_dstc_des0_t DES0;               // Transfer basic setting
  };
    union
  {
    stc_dstc_des1_mode0_t DES1_mode0;   // Number of Transfers in Mode 0
    stc_dstc_des1_mode1_t DES1_mode1;   // Number of Transfers in Mode 1
  };
  uint32_t        DES2;                 // Source Address
  uint32_t        DES3;                 // Destination Address
  union
  {
    stc_dstc_des1_mode0_t DES4_mode0;   // Number of Transfers in Mode 0 for OuterReload (copied in DES1 Mode 0)
    stc_dstc_des1_mode1_t DES4_mode1;   // Number of Transfers in Mode 1 for OuterReload (copied in DES1 Mode 1)
  };
  uint32_t        DES5;                 // Source Address in OuterReload (copied in DES2)
	uint32_t        DES6;                 // Source Address in OuterReload (copied in DES3)
} stc_dstc_des012345_t;


/*! \brief Initialises the DSTC pheriperal module 
 */
void dstc_init(void);
	 
/*! \brief Reads the status of the interrupts
 *  \return 1=DSTC channel interrupt request	is active */							 
unsigned int dstc_state(unsigned char ChannelNum);								 

/*! \brief Reset the initial transfer parameters */							 
void dstc_reset(unsigned char ChannelNum);		

/*! \brief Rewrite the memory source address */							 
void dstc_src_memory(unsigned char ChannelNum, unsigned int address);		

/*! \brief Rewrite the memory destination address */							 
void dstc_dest_memory(unsigned char ChannelNum, unsigned int address);			

/*! \brief Write the data transfer size. */							 
void dstc_transfersize(unsigned char ChannelNum, unsigned int size);		

/*! \brief Pass a callback to the API, which is executed during the
 *         interrupt handler.
 *  \param callback  Callback function.
 */
void dstc_set_callback(void (*callback)(void));

#endif //DSTC_H
