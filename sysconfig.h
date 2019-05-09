#ifndef SYSCONFIG_H_
#define SYSCONFIG_H_

void rcc_config();
void gpio_config();
void exti_config(void);
void systick_config(uint32_t HCLKFrequency, uint32_t Ticks);
void usart_config(void);
void i2c_config(void);


#endif /* SYSCONFIG_H_ */
