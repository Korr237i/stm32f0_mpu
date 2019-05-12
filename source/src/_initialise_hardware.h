#ifndef SYSCONFIG_H_
#define SYSCONFIG_H_

void rcc_config();

void gpio_config();

void exti_config(void);

void systick_config(uint32_t HCLKFrequency, uint32_t Ticks);

void usart_config(USART_TypeDef *USARTx);

void i2c_config(I2C_TypeDef *I2Cx);


#endif /* SYSCONFIG_H_ */
