


#include <s6e2cc.h>
#include "platform.h"
#include "i2c.h"
#include "delay.h"

//I2C write o read
#define WRITE 0x00 // Master write     
#define READ  0x01 // Master read 

 //**********************************************************************************************
/* Name: i2c_init   
* Description: Initialization I2C bus clock and Pins.   
* Transmition frequency 400KHz. 
* I2C0 SDA P3A
* I2C0_SCK P3B
*/    

void i2c_init() {   
	
//Configure the pins
	bFM4_GPIO_EPFR07_SCK2B1 = 1u; //Extended pin function EPFR07 SCK2_1
	bFM4_GPIO_PFR3_PB = 1u; 			//Pin uses extended function

	bFM4_GPIO_EPFR07_SOT2B1 = 1u; //Extended pin function EPFR07 SOT2_1
	bFM4_GPIO_PFR3_PA = 1u; 			//Pin uses extended function

  FM4_GPIO->PZR3_f.PA = 1u;     // SDA to pseudo open drain

	
// Initialize MFS2 I2C mode
  FM4_MFS2->BGR  = 100000000ul / 400000ul - 1ul;  // 400k Bit/s @ 100 MHz
  FM4_MFS2->SMR |= 0x80u;       	// operation mode 4 (I2C)
  
	bFM4_MFS2_I2C_SMR_RIE = 0u;  		//disable received interrupt to use INT bit of IBCR as a controll flag.
	bFM4_MFS2_I2C_SMR_TIE = 0u;	 		//disable transmit interrupt
	
  FM4_MFS2->SCR |= 0x80u;      		// Reset MFS2 (UPCL = 1)

}

/* Name: i2c_enable  
* Description: Enable i2c interface operation.
*/  
void i2c_enable(){
	  bFM4_MFS2_I2C_ISMK_EN = 1u;   // ISMK_EN = 1
}

/* Name: i2c_disable  
* Description: Disable i2c interface operation.
*/  
void i2c_disable(){
	  bFM4_MFS2_I2C_ISMK_EN = 0u;  
}

/* Name: i2c_Start  
* Description: Send the start signal (master)
*/  
void i2c_start(){

  FM4_MFS2->ISBA = 0x00u;  			 // Disable slave address detection.
	FM4_MFS2->ISMK = 0x00;         // Clear slave mask.
  i2c_enable();

}

/* Name: i2c_Stop  
* Description: Make the stop signal (master)
* The master disable any transmissions.
*/  
void i2c_stop(){  //I2C write stop

  FM4_MFS2->IBCR = 0x20u;   // MMS = CSS = INT = 0, ACKE = 1
  delay_us(100);
}

/* Name: i2c_tx     
* Description: Puts data into the data register to send.  
*/
void i2c_tx(unsigned char data){
	FM4_MFS2->TDR = data;
}

/* Name: i2c_rx     
* Description: Reads data from the data register  
*/

unsigned char i2c_rx(void){
return 		FM4_MFS2->RDR;
}


/* Name: i2c_ack     
* Description: Enables the acknowledgment signal.
*/

void i2c_ack(){
	bFM4_MFS2_I2C_IBCR_ACKE = 1u;   
}


/* Name: i2c_write    
* Description: Write buff_len number of bytes to the addressed slave device. 
*/
void i2c_write(uint8_t address, uint8_t *buffer, int buff_len) {

  int i = 0;	
  address = (address << 1)| WRITE;    //7 bits address plus one '0' to indicate that we want to write
   
  i2c_start();
	i2c_tx(address);              // fill the data output register with the CODEC address
  FM4_MFS2->IBCR = 0x80u;       // MSS = 1: Master Mode, INT = 0
	
  while(!(bFM4_MFS2_I2C_IBCR_INT)) {} // Wait for transmission complete via INT flag
          
	i2c_tx(buffer[0]);						// fill the data output register with the register address
	bFM4_MFS2_I2C_IBCR_ACKE = 1u; //enable cknowledgment
  bFM4_MFS2_I2C_IBCR_WSEL = 1u; // Wait selection bit 
	bFM4_MFS2_I2C_IBCR_INT = 0u;  // Clean INT bit.

	while(!(FM4_MFS2->IBCR & 0x01u)) {} // Wait for transmission complete via INT flag	
		
	
	for (i = 1; i < buff_len; i++) {	
		i2c_tx(buffer[i]);
		FM4_MFS2->IBCR = 0xB0u;             // WSEL = 1, ACKE = 1, Clear INT flag	
		
		while(!(FM4_MFS2->IBCR & 0x01u)) {} // Wait for transmission complete via INT flag	
	}
  i2c_stop();     		 // send Stop signal    
  delay_ms(10);        //wait 
}


/* Name: i2c_read    
* Description:Read buff_len number of bytes from the addressed slave device. 
*/
void i2c_read(uint8_t address, uint8_t *buffer, int buff_len) {
  //Not implemented
}

// *******************************ARM University Program Copyright © ARM Ltd 2015*************************************   
