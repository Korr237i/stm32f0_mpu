#ifndef SYSCONFIG_H_
#define SYSCONFIG_H_

#include <stdint.h>
// #include "../core/stm32f051x8.h"

void rcc_config();

void gpio_config();

void exti_config(void);

// void systick_config(void);
// void systick_config(uint32_t HCLKFrequency, uint32_t Ticks);

void usart_config();

void i2c_config();


#endif /* SYSCONFIG_H_ */
