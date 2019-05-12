#include <stdint.h>
#include <stdio.h>

#include "core/stm32f051x8.h"

#include "plib/stm32f0xx_ll_system.h"
#include "plib/stm32f0xx_ll_utils.h"
#include "plib/stm32f0xx_ll_cortex.h"


static uint32_t time_ms = 0;
static uint32_t systick_cnt = 0;
static const uint32_t systick_cnt_top = 1000000;



void SysTick_Handler(void)
{
    systick_cnt = (systick_cnt + 1) % systick_cnt_top;

    if ((systick_cnt % systick_cnt_top) == 0)
        time_ms++;
}


/*
 * Configure system timer to time x ms
 */
void systick_config(void)
{
    uint32_t HCLKFrequency = 48000000;
    uint32_t Ticks = 1000000;
    LL_InitTick(HCLKFrequency, Ticks);
    LL_SYSTICK_EnableIT();
    NVIC_SetPriority(SysTick_IRQn, 0);
    return;
}


uint32_t getSystick_cnt()
{
    return systick_cnt;
}


uint32_t getTime_ms()
{
    return time_ms;
}


float getTime_s()
{
    int32_t local_systick_cnt = systick_cnt;
    uint32_t local_time_ms = time_ms;
    return (((float)local_time_ms / 1000) + ((float)local_systick_cnt / systick_cnt_top));
}
