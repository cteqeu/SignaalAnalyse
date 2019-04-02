
#include <s6e2cc.h>
#include "platform.h"
#include "gpio.h"

//Port Function Setting Register; 0 uses a pin as a GPIO, 1 peripheral function
#define GET_PFR(pin)  ((volatile unsigned char*) ((0x42DE0000UL) + 0x80 * GET_PORT_INDEX(pin) + 0x04 * GET_PIN_INDEX(pin))) 

//Pull-up Setting Register; 0 disconnects the pull-up resistor, 1 uses pull-up resistor when the pin is an input.
#define GET_PCR(pin)  ((volatile unsigned char*) ((0x42DE2000UL) + 0x80 * GET_PORT_INDEX(pin) + 0x04 * GET_PIN_INDEX(pin)))	

//Direction Setting Register; 0 GPIO input, 1 GPIO output.
#define GET_DDR(pin)  ((volatile unsigned char*) ((0x42DE4000UL) + 0x80 * GET_PORT_INDEX(pin) + 0x04 * GET_PIN_INDEX(pin)))	
	
//Port Data Input Register; 0 the pin is LOW, 1 the pin is HIGH.
#define GET_PDIR(pin) ((volatile unsigned char*) ((0x42DE6000UL) + 0x80 * GET_PORT_INDEX(pin) + 0x04 * GET_PIN_INDEX(pin)))	

//Port Data Output Register; Write 0 to set the pin LOW, write 1 to set the pin HIGH
#define GET_PDOR(pin) ((volatile unsigned char*) ((0x42DE8000UL) + 0x80 * GET_PORT_INDEX(pin) + 0x04 * GET_PIN_INDEX(pin)))	

//Port Pseudo Open Drain; Write 0 to set the pin to High level when outputting digitial High, write 1 to set the pin to Hi-Z when outputting digital High
#define GET_PZR(pin) ((volatile unsigned char*)  ((0x42DEE000UL) + 0x80 * GET_PORT_INDEX(pin) + 0x04 * GET_PIN_INDEX(pin)))	

//#define bFM4_GPIO_PDIR0_P0                     *((volatile unsigned char*)(0x42DE6000UL))


void gpio_set_mode(Pin pin, PinMode mode) { 
	
	volatile unsigned char* pPFR = GET_PFR(pin);
	volatile unsigned char* pDDR = GET_DDR(pin);
	volatile unsigned char* pPCR = GET_PCR(pin);		
	volatile unsigned char* pPZR = GET_PZR(pin);			
	
	bFM4_CLK_GATING_CKEN0_GIOCK |= 0x01; //The bus clock is supplied to the I/O Port function block.

	
/* Turn off all the analog input (All 32 are on by default).*/
	
 bFM4_GPIO_ADE_AN00 = 0u;
 bFM4_GPIO_ADE_AN01 = 0u;
 bFM4_GPIO_ADE_AN02 = 0u;
 bFM4_GPIO_ADE_AN03 = 0u;
 bFM4_GPIO_ADE_AN04 = 0u;
 bFM4_GPIO_ADE_AN05 = 0u;
 bFM4_GPIO_ADE_AN06 = 0u;
 bFM4_GPIO_ADE_AN07 = 0u;
 bFM4_GPIO_ADE_AN08 = 0u;
 bFM4_GPIO_ADE_AN09 = 0u;
 bFM4_GPIO_ADE_AN10 = 0u;
 bFM4_GPIO_ADE_AN11 = 0u;
 bFM4_GPIO_ADE_AN12 = 0u;
 bFM4_GPIO_ADE_AN13 = 0u;
 bFM4_GPIO_ADE_AN14 = 0u;
 bFM4_GPIO_ADE_AN15 = 0u;
 bFM4_GPIO_ADE_AN16 = 0u; 
 bFM4_GPIO_ADE_AN17 = 0u;
 bFM4_GPIO_ADE_AN18 = 0u;
 bFM4_GPIO_ADE_AN19 = 0u;
 bFM4_GPIO_ADE_AN20 = 0u;
 bFM4_GPIO_ADE_AN21 = 0u;
 bFM4_GPIO_ADE_AN22 = 0u;
 bFM4_GPIO_ADE_AN23 = 0u;
 bFM4_GPIO_ADE_AN24 = 0u;
 bFM4_GPIO_ADE_AN25 = 0u;
 bFM4_GPIO_ADE_AN26 = 0u;
 bFM4_GPIO_ADE_AN27 = 0u;
 bFM4_GPIO_ADE_AN28 = 0u;
 bFM4_GPIO_ADE_AN29 = 0u;
 bFM4_GPIO_ADE_AN30 = 0u;
 bFM4_GPIO_ADE_AN31 = 0u;
	
	switch(mode) {
		case Reset:
			break;
		case Input:
			*pPFR |= 0u; //Clear bFM4_GPIO_DFR(Port)_(Pin) -> Pin as a GPIO
			*pDDR |= 0u; //Set bFM4_GPIO_DDR(Port)_(Pin) -> Pin as an input
			*pPCR |= 0u; //Pull-up resistor
			break;
		case Output:
			*pPFR &= ~0u; //Pin as a GPIO
			*pDDR = 1u  ; //Pin as an output
			*pPZR &= ~0u; // Set pin to high level when outputting digital High.
		
			break;
		case PullUp_Input:
			*pPFR |= 0u; //Clear bFM4_GPIO_DFR(Port)_(Pin) -> Pin as a GPIO
			*pDDR |= 0u; //Set bFM4_GPIO_DDR(Port)_(Pin) -> Pin as an input
			*pPCR |= 1u; //Pull-up resistor
			break;
		case Open_Drain_Output:
			*pPFR |= 0u; //Pin as a GPIO
			*pDDR |= 1u; //Pin as an output
		  *pPZR |= 1u; // Set pin to Hi-Z when outputting digital High level.
			break;
	}
}

void gpio_toggle(Pin pin) {
	
	volatile unsigned char* pPDIR	= GET_PDIR(pin);
	volatile unsigned char* pPDOR	= GET_PDOR(pin);
	
	if ((*pPDIR & 0x01) == 1){*pPDOR = 0u;}
	else  {*pPDOR = 1u;}

}

void gpio_set(Pin pin, int value) {
	
	volatile unsigned char* pPDOR	= GET_PDOR(pin);
	if (value == 1){ *pPDOR = 1u;}
  else { *pPDOR = 0u;}

}

int gpio_get(Pin pin) {
	
	volatile unsigned char* pPDIR	= GET_PDIR(pin);
	return (*pPDIR) & 0x1;
}


/*******The following functions haven't been implemented.*******/


void gpio_set_range(Pin pin_base, int count, int value) {}



void gpio_set_trigger(Pin pin, TriggerMode trig) {}

void gpio_set_callback(Pin pin, void (*callback)(int status)) {}

void port_isr(int port) {}

void port_isr0(void) {
	port_isr(0);
}

void port_isr1(void) {
	port_isr(1);
}

void port_isr2(void) {
	port_isr(2);
}

void port_isr3(void) {
	port_isr(3);
}

void port_isr4(void) {
	port_isr(4);
}

// *******************************ARM University Program Copyright © ARM Ltd 2015*************************************   
