
#include <s6e2cc.h>
#include "platform.h"
#include "dstc.h"
#include "audio.h"

#ifndef TRUE
  #define TRUE 1 
#endif

#ifndef FALSE
  #define FALSE  0
#endif  

stc_dstc_des012345_t stcDES[2];     // Instance to store DSTC Descriptors 0 - 3
stc_dstc_des0_t stcDES0Backup0;
stc_dstc_des0_t stcDES0Backup1;

/*! \brief Rewrite the memory source address */						 
void dstc_src_memory(unsigned char ChannelNum, unsigned int address){
		if (ChannelNum == 0) {stcDES[0].DES2 = address ; }   
    else if (ChannelNum ==  1){stcDES[1].DES2 = address ; }  		
};		

/*! \brief Rewrite the memory destination address */							 
void dstc_dest_memory(unsigned char ChannelNum, unsigned int address){
		if (ChannelNum == 0) {stcDES[0].DES3 = address ; }   
    else if (ChannelNum ==  1){stcDES[1].DES3 = address ; }  	
};			

/*! \brief Write the data transfer size. */							 
void dstc_transfersize(unsigned char ChannelNum, unsigned int size){
   	if (ChannelNum == 0){
			  stcDES[0].DES1_mode1.IIN = sizeof(size);      // Inner loop
				stcDES[0].DES1_mode1.IRM = sizeof(size);      // Same as IIN
				stcDES[0].DES1_mode1.ORM = 1u;                // Outer loop -> Single count
		}
		else if (ChannelNum == 1){
			stcDES[1].DES1_mode1.IIN = sizeof(size);      	// Inner loop
			stcDES[1].DES1_mode1.IRM = sizeof(size);      	// Same as IIN
			stcDES[1].DES1_mode1.ORM = 1u;   
		}
	};	

/*****************************************************************************
 ** \brief  Parity calculation for DES0 register.
 **         Calculates 4 - bit parity of DES0 using the below formula
 **         PCHK[3:0] = (DES0[27:24] ^ DES0[23:20] ^ DES0[19:16] ^ DES0[15:12] ^
 **                      DES0[11:8] ^ DES0[7:4])
 **
 ** \param  [in] u32Des0   32 - bit DES0
 **
 ** \retval 4 - bit parity of DES0
 ****************************************************************************/
uint8_t DSTCPchkCalc(uint32_t u32Des0)
{
  uint8_t u8PCHK;

  u8PCHK =  (uint8_t)((((u32Des0) & 0x0F000000ul) >> 24ul) ^
                      (((u32Des0) & 0x00F00000ul) >> 20ul) ^
                      (((u32Des0) & 0x000F0000ul) >> 16ul) ^
                      (((u32Des0) & 0x0000F000ul) >> 12ul) ^
                      (((u32Des0) & 0x00000F00ul) >>  8ul) ^
                      (((u32Des0) & 0x000000F0ul) >>  4ul));
  return u8PCHK;
}

/* Name: dstc_init   
* Description: Initialization DSTC   
*/    

void dstc_init(void) {   

  if(1u != FM4_CLK_GATING->CKEN2_f.PCRCCK)
  {
    FM4_CLK_GATING->CKEN2_f.PCRCCK = 1u;
  }

  // Read the DSTC state
  if(0x01u == FM4_DSTC->CMD)    // If DSTC is in standby state, then take it to the normal state
  {
    FM4_DSTC->CMD = 0x04u;      // Standby Release command

    // Now wait till DSTC goes to normal state
    while(0u != FM4_DSTC->CMD)
    {}
  }

	/****** channel 0 = Reads from memory (dma_tx_buffer_ping and dma_tx_buffer_pong) and transfer to the I2S peripheral ******/
	
	/*** DES 0-3 registers ***/
  stcDES[0u].DES0.DV    = 0x03;             //Don't execute the DES close process after transfer ends
  stcDES[0u].DES0.ST    = 0u;               // Just a default, DSTC updates this on completion of transfer
  stcDES[0u].DES0.MODE  = 1u;               // Mode 1 -> single transfer for 1 trigger
  stcDES[0u].DES0.ORL   = 1u;               // Outer reload for DES1
  stcDES[0u].DES0.TW    = 0x2;              // 32-bit transfer width
  stcDES[0u].DES0.SAC   = 1u;               // Source address is incremented by TW * 1 at every transfer with reload
  stcDES[0u].DES0.DAC   = 5u;               // Destination address remains unchanged during the transfer
  stcDES[0u].DES0.CHRS  = 0x10u;            // Interrupt flag is set when IRM = 1 and ORM = 1. No Chain start
  stcDES[0u].DES0.DMSET = 1u;               // Set DQMSK = 1 when DES close process is executed
  stcDES[0u].DES0.CHLK  = 0u;               // No Chain start transfer
  stcDES[0u].DES0.ACK   = 1u;               // Output DMA transfer acknowledge to PRGCRC
  stcDES[0u].DES0.RESERVED = 0u;            // Required 
  stcDES[0u].DES0.PCHK  = DSTCPchkCalc(stcDES[0u].u32DES0);  //Parity

  // DES1
  stcDES[0u].DES1_mode1.IIN = (DMA_BUFFER_SIZE);      // Inner loop; max 256
  stcDES[0u].DES1_mode1.IRM = (DMA_BUFFER_SIZE);      // Same as IIN
  stcDES[0u].DES1_mode1.ORM = 1;              			  // Single cout

  // DES2
  stcDES[0u].DES2 = (uint32_t)&dma_tx_buffer_ping ;   // Source address (incremented by TW * 1 for every transfer. Configured in DES0.SAC)

  // DES3
  stcDES[0u].DES3 = (uint32_t)&FM4_I2S0->TXFDAT;      // Destination address - I2S Transmission data register (Same for every transfer. Configured in DES0.DAC)
	// DES4
	stcDES[0u].DES4_mode1 = stcDES[0u].DES1_mode1;      // Used to reload DES1

  // DESTP register
  FM4_DSTC->DESTP = (uint32_t)&stcDES[0u];            // DESTP should contain word - aligned address
	
	 // HWDESP
	FM4_DSTC->HWDESP =  219ul;												  // DESP = 0 for HW channel 219 
  
	FM4_DSTC->DREQENB6  |= (1ul << 27ul);   					  // Enable HW channel 219 (I2S transmission)
  FM4_DSTC->HWINTCLR6 |= (1ul << 27ul);								// Clear HWINT6 register bit corresponding to HW channel 219(I2S Transmission DSTC)
	

	/****** channel 1 = Reads from the I2S peripheral and transfer to (dma_rx_buffer_ping and dma_rx_buffer_pong)   ******/
	
	  /*** DES 0-3 registers ***/
  stcDES[1u].DES0.DV    = 0x03;             // Don't Execute the DES close process after transfer ends
  stcDES[1u].DES0.ST    = 0u;               // Just a default, DSTC updates this on completion of transfer
  stcDES[1u].DES0.MODE  = 1u;               // Mode 1 -> single transfer for 1 trigger
  stcDES[1u].DES0.ORL   = 1u;               // Outer reload for DES1
  stcDES[1u].DES0.TW    = 0x2;              // 32-bit transfer width
  stcDES[1u].DES0.SAC   = 5u;               // Source address remains unchanged during the transfer
  stcDES[1u].DES0.DAC   = 1u;               // Destination address is incremented by TW * 1 at every transfer with reload
  stcDES[1u].DES0.CHRS  = 0x10u;            // Interrupt flag is set when IRM = 1 and ORM = 1. No Chain start
  stcDES[1u].DES0.DMSET = 1u;               // Set DQMSK = 1 when DES close process is executed
  stcDES[1u].DES0.CHLK  = 0u;               // No Chain start transfer
  stcDES[1u].DES0.ACK   = 1u;               // Output DMA transfer acknowledge to PRGCRC
  stcDES[1u].DES0.RESERVED = 0u;            
  stcDES[1u].DES0.PCHK  = DSTCPchkCalc(stcDES[1u].u32DES0);

  // DES1
  stcDES[1u].DES1_mode1.IIN = (DMA_BUFFER_SIZE);      // Inner loop; max 256
  stcDES[1u].DES1_mode1.IRM = (DMA_BUFFER_SIZE);      // Same as IIN
  stcDES[1u].DES1_mode1.ORM = 1;              			  // Single cout

  // DES2
  stcDES[1u].DES2 = (uint32_t)&FM4_I2S0->RXFDAT ;     // Source address 

  // DES3
  stcDES[1u].DES3 = (uint32_t)&dma_rx_buffer_ping;    // Destination address - I2S Transmission data register (Same for every transfer. Configured in DES0.DAC)
	// DES4
	stcDES[1u].DES4_mode1 = stcDES[1u].DES1_mode1;      // Used to reload DES1

 // HWDESP
	FM4_DSTC->HWDESP =  (0x1Cul << 16ul) | 218ul; 	    // DESP = 0x1C(28bits) for HW channel 218 I2S_RX
	
  FM4_DSTC->DREQENB6  |= (1ul << 26ul);   						// Enable HW channel 218 
  FM4_DSTC->HWINTCLR6 |= (1ul << 26ul);

	// DSTC CFG Register
  // [14:12]    SWPR   = 111      =>    SW transfer has lowest priority
  // [11]       ESTE   = 0        =>    Do not enter error stop state in case of error
  // [10]       RBDIS  = 1        =>    Disable read skip buffer function
  // [9]        ERINTE = 0        =>    disable Error interrupt
  // [8]        SWINTE = 0        =>    Disable software transfer complete interrupt
  FM4_DSTC->CFG = 0x74u;                // 01110100   

  FM4_DSTC->CMD = 0x10u;                // Command to clear the SWINT interrupt
  FM4_DSTC->CMD = 0x20u;                // Command to clear ERINT interrupt. MONERS.EST = 0, MONERS.DER = 0, MONERS.ESTOP = 0
  FM4_DSTC->CMD = 0x80u;                // Command to clear all DQMSK[n] registers
}


/*! \brief Checks if all the transfer has been completed *
 *  Function dstc_state returns 1 when the transmicion in the specific channel has been completed*/					 
uint32_t dstc_state(unsigned char ChannelNum){
	if (ChannelNum == 0){
		if (FM4_DSTC->HWINT6 >> 27 && 0x1){
			return 1;
		}
	else{return 0;}	
	}
	else if(ChannelNum == 1){
		if (FM4_DSTC->HWINT6 >> 26 && 0x1){
			return 1;
		}
	else{return 0;}	
	}
  else{return 0;}
};								 
/*! \brief Clean the interrupt requests. */						 
void dstc_reset(unsigned char ChannelNum){
		if (ChannelNum == 0){
			// No need to reset DES1, auto-reset (Outer reload for DES1)
		  FM4_DSTC->DQMSKCLR6	|= (1ul << 27ul);
			FM4_DSTC->HWINTCLR6 |= (1ul << 27ul);
			}
		else if (ChannelNum == 1){ 
		 FM4_DSTC->DQMSKCLR6 |= (1ul << 26ul);
	   FM4_DSTC->HWINTCLR6 |= (1ul << 26ul);
		 
		}
		NVIC_ClearPendingIRQ(PRGCRC_I2S_IRQn);
};		
	
static void (*dma_callback)(void) = 0;

void dstc_set_callback(void (*callback)(void)) {
	 dma_callback = callback;

   NVIC_ClearPendingIRQ(DSTC_COMP_IRQn);
   NVIC_EnableIRQ(DSTC_COMP_IRQn);
   NVIC_SetPriority(DSTC_COMP_IRQn, 3);  
}

//Interruption call the callback function 

 void DSTC_COMP_IRQHandler(void) {
	if (dma_callback) {
		dma_callback();
	}
}
	
// *******************************ARM University Program Copyright © ARM Ltd 2015*************************************   
