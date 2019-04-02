/*!
 * \file      i2c.h
 * \brief     Controller for hardware I2C module, configured
 *            as a master.
 * \copyright ARM University Program &copy; ARM Ltd 2014.
 */
#ifndef I2C_H
#define I2C_H
#include <stdint.h>

/*! \brief Initialises the hardware I2C module, any
 *         relevant pins and enables the module.
 */
void i2c_init(void);

/* Name: i2c_enable  
* Description: Enable i2c interface operation.
*/  
void i2c_enable(void);

 /* Name: i2c_disable  
* Description: Disable i2c interface operation.
*/  
void i2c_disable(void);


/* Name: i2c_Start  
* Description: Send the start signal (master)
*/  
void i2c_start(void);


/* Name: i2c_Stop  
* Description: Make the stop signal (master)
* The master disable any transmissions.
*/  
void i2c_stop(void);


/* Name: i2c_tx     
* Description: Puts data in the RX data register  
*/
void i2c_tx(unsigned char data);


/* Name: i2c_rx     
* Description: Reads data from the TX data register  
*/
unsigned char i2c_rx(void);


/* Name: i2c_ack     
* Description: Enables the acknowledgment signal.
*/
void i2c_ack(void);

	
/*! \brief Writes data to an I2C module.
 *  \param address  I2C address of the slave.
 *  \param buffer   Data to be sent.
 *  \param buff_len Number of bytes to send.
 */
void i2c_write(uint8_t address, uint8_t *buffer, int buff_len);

/*! \brief Reads data from an I2C module.
 *  \param address  I2C address of the slave.
 *  \param buffer   Data to be read.
 *  \param buff_len Number of bytes to read.
 */
void i2c_read(uint8_t address, uint8_t *buffer, int buff_len);

#endif //I2C_H
