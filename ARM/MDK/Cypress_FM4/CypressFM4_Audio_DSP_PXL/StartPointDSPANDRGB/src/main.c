// Development by Vincent Claes
// Work in progress
#include "audio.h"

volatile int16_t audio_chR=0;    //16 bits audio data channel right
volatile int16_t audio_chL=0;    //16 bits audio data channel left

void I2S_HANDLER(void) {   /****** I2S Interruption Handler *****/

gpio_toggle(TEST_PIN);


audio_IN = i2s_rx();	
audio_chL = (audio_IN & 0x0000FFFF);       //Separate 16 bits channel left
audio_chR = ((audio_IN >>16)& 0x0000FFFF); //Separate 16 bits channel right

//Process
	
audio_OUT = ((audio_chR<<16 & 0xFFFF0000)) + (audio_chL & 0x0000FFFF);	//Put the two channels toguether again
i2s_tx(audio_OUT);

}

int main(void)
{
	gpio_set_mode(TEST_PIN,Output);
	gpio_set_mode(LED_R,Output);
	gpio_set_mode(LED_B,Output);
	gpio_set_mode(LED_G,Output);
  audio_init ( hz48000, mic_in, intr, I2S_HANDLER); 
  while(1){
	gpio_toggle(LED_R);
	delay_ms(500);
	gpio_toggle(LED_G);
	delay_ms(500);
	gpio_toggle(LED_B);
	delay_ms(500);
	}
}
