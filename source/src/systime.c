#include <stdint.h>
#include <stdio.h>

#include "../core/stm32f051x8.h"

#include "../plib/stm32f0xx_ll_system.h"
#include "../plib/stm32f0xx_ll_utils.h"
#include "../plib/stm32f0xx_ll_cortex.h"

#define HCLK_FREC   48000000


static uint32_t time_s = 0;
static uint32_t systick_cnt = 0;
static const uint32_t systick_cnt_top = 1000;



void SysTick_Handler(void)
{
    systick_cnt = (systick_cnt + 1) % systick_cnt_top;

    if (systick_cnt == 0)
        time_s++;
}


/*
 * Configure system timer to time x ms
 */
void systick_config(void)
{
    LL_InitTick(HCLK_FREC, systick_cnt_top);
    LL_SYSTICK_EnableIT();
    NVIC_SetPriority(SysTick_IRQn, 0);
    return;
}


// uint32_t getSystick_cnt()
// {
//     return systick_cnt;
// }


uint32_t getTime_ms()
{
    return systick_cnt;
}


uint32_t getTime_s_only()
{
    return time_s;
}


float getTime_s()
{
    uint32_t local_systick_cnt = systick_cnt;
    uint32_t local_time_s = time_s;
    return ((float)local_time_s + ((float)local_systick_cnt / systick_cnt_top));
}
