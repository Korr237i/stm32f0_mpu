#ifndef SYSTIME_H
#define SYSTIME_H

#include <stdint.h>

void SysTick_Handler(void);

void systick_config(void);

// uint32_t getSystick_cnt();
uint32_t getTime_ms();

uint32_t getTime_s_only();

float getTime_s();


#endif
