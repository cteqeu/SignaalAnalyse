// From the internet and other sources... https://www.cypress.com/file/230756/download
// Vincent Claes
// Sending Serial strings to PC using pdl library

#include <s6e2cc.h>
#include <stdio.h>
#include <string.h>
#include "mcu.h"
#include "mfs_hl.h"

#define UART_TX_BUFFSIZE         (128)
#define UART_RX_BUFFSIZE         (256)
#define UART_RX_BUFF_FILL_LVL    (1) // one character to read

static uint8_t au8UartTxBuf[UART_TX_BUFFSIZE];
static uint8_t au8UartRxBuf[UART_RX_BUFFSIZE];

void write_uart(char* message);

int main(void)
{
	uint16_t readcount =0;
	stc_mfs_hl_uart_config_t stcMfsHlUartCfg;
	// Setup the Serial communication
	// Baud rate : 115200 bps (230400, 460800, 921600)
	stcMfsHlUartCfg.u32DataRate = 115200; 
	// Bit direction : LSB first
	stcMfsHlUartCfg.bBitDirection = FALSE; 
  // Inverted serial data format : NRZ
	stcMfsHlUartCfg.bSignalSystem = FALSE; 
  // Inverted serial data format : NRZ
	stcMfsHlUartCfg.bHwFlow = FALSE;
  // Inverted serial data format : NRZ
	stcMfsHlUartCfg.pu8TxBuf = au8UartTxBuf;
  // Use the reception buffer in the driver (*2)
	stcMfsHlUartCfg.pu8RxBuf = au8UartRxBuf;
  // Size of transmit buffer (for *1)  : 128bytes
	stcMfsHlUartCfg.u16TxBufSize = UART_TX_BUFFSIZE;
  // Size of reception buffer (for *2) : 256bytes
	stcMfsHlUartCfg.u16RxBufSize = UART_RX_BUFFSIZE; 
  // Unread counts of reception buffer to call RX Callback function : 1byte
	stcMfsHlUartCfg.u16RxCbBufFillLvl = UART_RX_BUFF_FILL_LVL;
	// Uart mode : Normal mode
	stcMfsHlUartCfg.u8UartMode = MfsUartNormal;
  // Parity    : none
	stcMfsHlUartCfg.u8Parity = MfsParityNone;
  // Stop bit  : 1bit
	stcMfsHlUartCfg.u8StopBit = MfsOneStopBit;
  // Data bits : 8bit
	stcMfsHlUartCfg.u8CharLength = MfsEightBits;
  // FIFO      : not use
	stcMfsHlUartCfg.u8FifoUsage = MfsHlUseNoFifo; 
  // Callback function : if NULL ==> interrupt not used
	stcMfsHlUartCfg.pfnRxCb = NULL; 
  // Callback function : if NULL ==> interrupt not used
	stcMfsHlUartCfg.pfnTxCb = NULL; 
	
	
	//************ Configure UART Serial0 *********************
	// Disable Analog input (P21:SIN0_0/AN17, P22:SOT0_0/AN16)
	FM4_GPIO->ADE = 0;
	// Set UART Ch0_0 Port (SIN, SOT)
	FM4_GPIO->PFR2 = FM4_GPIO->PFR2 | 0x0006;
	FM4_GPIO->EPFR07 = FM4_GPIO->EPFR07 | 0x00000040;
	//*********************************************************
	
	// Initialize the MFS ch.0 as UART
	if (Ok != Mfs_Hl_Uart_Init(&MFS0, &stcMfsHlUartCfg))
	{
		while(1);
	}  
	write_uart("Hi, Testing the Serial connection......!");
  
	while(1){
		if (Ok != Mfs_Hl_Read(&MFS0, au8UartRxBuf, &readcount, 1, FALSE))
		{
			Mfs_Hl_Write(&MFS0, (uint8_t*) "Read Error\r\n", 12, FALSE, FALSE);
		}
		else
		{
			Mfs_Hl_Write(&MFS0, (uint8_t*) au8UartRxBuf, 1, FALSE, FALSE);
			au8UartRxBuf[0]='\0';
		}
	
	}
}

void write_uart(char* message)
{
	Mfs_Hl_Write(&MFS0, (uint8_t*) message, strlen(message), FALSE, FALSE);

}
