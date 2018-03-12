
#ifndef audio_h
#define audio_h

#include "s6e2cc.h"
#include <gpio.h>
#include <delay.h>
#include "i2c.h"
#include "i2s.h"
#include "dstc.h" //Descriptor based DMA
#include "audio.h"

void init_LED() {  // init leds
gpio_set_mode(LED_R, Output);
gpio_set_mode(LED_G, Output);
gpio_set_mode(LED_B, Output);

}

typedef struct BITVAL    // used in function prbs()
{
 unsigned short b0:1, b1:1, b2:1, b3:1, b4:1, b5:1, b6:1;
 unsigned short b7:1, b8:1, b9:1, b10:1, b11:1, b12:1,b13:1;
 unsigned short dweebie:2; //Fills the 2 bit hole - bits 14-15
} bitval;

typedef union SHIFT_REG
{
 unsigned short regval;
 bitval bt;
} shift_reg;
int fb = 1;                        		// feedback variable
shift_reg sreg = {0xFFFF};         		// shift register

short prbs(void) 			     			  		//gen pseudo-random sequence {-1,1}
{
  int prnseq;
  if(sreg.bt.b0)
	prnseq = -NOISELEVEL;		            //scaled negative noise level
  else 
	prnseq = NOISELEVEL;		            //scaled positive noise level
  fb =(sreg.bt.b0)^(sreg.bt.b1);      //XOR bits 0,1
  fb^=(sreg.bt.b11)^(sreg.bt.b13);    //with bits 11,13 -> fb
  sreg.regval<<=1;
  sreg.bt.b0=fb;			    				    //close feedback path
  return prnseq;			   				      //return noise sequence value
}


/* Name: Codec_WriteRegister  
* Requires: Device Register address, Data for register  
* Description: Writes the data to the device's register  
*/  


void Codec_WriteRegister ( uint8_t RegisterAddr, uint8_t RegisterValue) {    

uint8_t Byte[2];	
	
Byte[0] = (RegisterAddr<<1) & 0xFF;  //Register address are the 7 MSB of the second byte send. 
Byte[1] = (RegisterValue ) & 0xFF; 
  delay_ms(1);  
       
i2c_write(CODEC_DEVICE_ADDRESS, Byte, 2);

}   

/*--------initialization function--------------------------------
* Name: wm8731_init  
* 
* Configure the freescale and the CODEC
*
* Requires: 
*
*   -Sampling rate; hz8000, hz32000, hz48000, hz96000
*   -Input; line_in, mic_in;
*   -Mode; inter, dma 
*   -Handler; Name of the handler.
* 
* Description: 
* Configure the I2C protocol
* Write with I2C protocol into the CODEC registers  to configure it. 
* Configure the I2S protocol
* Configure the interruptions for the I2S RX FIFO and TX FIFO
*/ 


void audio_init ( char sampling_rate, char audio_input, char mode, void (*handler)(void)) {    
	
i2c_init(); //Configure the I2C module 

//Configure wm8731 as master I2S, 16 bits, 256fs.
//TIP; WM8731 registers are 9 bits. MSB have to be write on the LSB of the register address but, because in our configurations this bit is always 0, this program doesn’t write it
delay_us(100);
Codec_WriteRegister ( WM8731_RESET, 0x00);   						//Reset
Codec_WriteRegister ( WM8731_LLINEIN, 0x19); 						//0x19f	//Left Line In. Select gain 0dB.
Codec_WriteRegister ( WM8731_RLINEIN, 0x19); 						//0x19f	//Right Line In. Select gain 0dB.
Codec_WriteRegister ( WM8731_LHEADOUT, 0x6F);			    	//Left Headphone Out. Select volume; 7F=+6dB, 30=-73dB; 79 steps, 1dB each.  
Codec_WriteRegister ( WM8731_RHEADOUT, 0x6F);						//Right Headphone Out (6F = -9dB).
Codec_WriteRegister ( WM8731_ANALOG, audio_input); 			//Select input; LINE in or microphone in. 
Codec_WriteRegister ( WM8731_DIGITAL, 0x00); 						//Audio Path Control, no filters, no soft mute.
Codec_WriteRegister ( WM8731_POWERDOWN, 0x00); 			  	//Power control ->Disable power down; all on.
Codec_WriteRegister ( WM8731_INTERFACE, 0x53); 					//Format; 16 bits; I2S data format. Right channel when tx-sync is high. 0x52 (0x53 DSP data format)
Codec_WriteRegister ( WM8731_SAMPLING, sampling_rate);  //Sample Control; Mclk, 256fs, normal mode, and sampling frequency. 
Codec_WriteRegister ( WM8731_CONTROL, 0x01); 					  //Digital Activation.
	
bFM4_GPIO_PDOR3_PC = 0u;        												// Analog switch to DACLRC

if (mode == dma){

    i2s_init(sampling_rate, dma);   //Configure I2S to work with DMA
	
		NVIC_DisableIRQ (DSTC_IRQn);     // Disable interrupts for DSTC 
	  dstc_init();     //DSTC modul initialization funcitons; Configures DSTC channel 0 to transfer data from memory to I2S TX, and channel 1 from I2S RX to memory.
	      
		dstc_set_callback(handler);  
	
	  i2s_rx_threshold(4);
	  i2s_tx_threshold(4);
	
		i2s_rx_dma_enable(); 
		i2s_tx_dma_enable();
	
    i2s_rx_enable(); // Enable I2S Receiver	   
    i2s_tx_enable(); // Enable I2S Transmitter

		i2s_start();		
  }
	
else{ //Mode interruptions

  i2s_init(sampling_rate , intr);   //Configure I2S to work with interrupts
   
	  // FIFO thresholds
	i2s_rx_threshold(4);
	i2s_tx_threshold(4);

   // Enable I2S Transmitter
  i2s_tx_enable();
      
  // Enable I2S Receiver
  i2s_rx_enable();
	
	i2s_set_callback(handler);
	
	i2s_start();
	
	}
}

#endif //audio
