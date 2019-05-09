#include <stdint.h>
#include <stdio.h>

#include "core/stm32f051x8.h"

#include "plib/stm32f0xx_ll_rcc.h"
#include "plib/stm32f0xx_ll_system.h"
#include "plib/stm32f0xx_ll_bus.h"
#include "plib/stm32f0xx_ll_gpio.h"
#include "plib/stm32f0xx_ll_exti.h"
#include "plib/stm32f0xx_ll_utils.h"
#include "plib/stm32f0xx_ll_cortex.h"
#include "plib/stm32f0xx_ll_usart.h"
#include "plib/stm32f0xx_ll_i2c.h"

#include "sysconfig.h"
#include "segment.h"
#include "usart.h"
#include "lib/xprintf.h"
#include "mpu9255.h"

#define HCLK_FREC   48000000
// #define INDICATOR   0
#define MPU         1


uint32_t time_cnt = 0;
uint32_t time_cnt_bcd = 0;

uint32_t systick_cnt = 0;
uint32_t systick_cnt_top = 1000;


void EXTI0_1_IRQHandler()
{
    /*
     * Timer
     */
    uint32_t time0 = systick_cnt;
    static uint32_t time1 = 0;

    if ((time1 - time0) > 100)
        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);

    time1 = systick_cnt;

    /*
     * Clear all EXTI flags
     */
    LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
    // LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
}

void SysTick_Handler(void)
{
    systick_cnt = (systick_cnt + 1) % systick_cnt_top;

    if (!systick_cnt)
    {
        time_cnt = (time_cnt + 1) % 10000;
        // time_cnt_bcd = dec2hex(time_cnt);
        LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
    }
}


int main(void)
{
    int error = 0;

    rcc_config();
    gpio_config();
    exti_config();
    systick_config(HCLK_FREC, systick_cnt_top);
    usart_config();
    i2c_config();
    printf_config();

    error = mpu9255_init();
    xprintf("mpu init error: %d\n", error);

#if defined(INDICATOR)
    /*
     * Turn on indicator
     */
    LL_GPIO_ResetOutputPin(GPIOB, DIG1);
    LL_GPIO_ResetOutputPin(GPIOB, DIG2);
    LL_GPIO_ResetOutputPin(GPIOB, DIG3);
    LL_GPIO_ResetOutputPin(GPIOB, DIG4);
#endif

    int16_t raw_accelData[3] = {};
    int16_t raw_gyroData[3] = {};
    float accelData[3] = {};
    while(1)
    {
        if ((systick_cnt % 1000) == 0)
        {
            xprintf("---------------------------------------\n");
            xprintf("time: %d\n", time_cnt);

            error = mpu9255_readIMU(raw_accelData, raw_gyroData);
            mpu9255_recalcAccel(raw_accelData, accelData);

            // xprintf("%f %f %f\n", accelData[0], accelData[1], accelData[2]);
            xprintf("error: %d\n", error);
        }
    }

    return 0;
}
