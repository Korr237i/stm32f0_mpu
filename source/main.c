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

#include "state.h"
#include "systime.h"
#include "initialise_hardware.h"

#include "lib/xprintf.h"
#include "mpu9255.h"
#include "usart.h"


// #define HCLK_FREC   48000000
// #define MPU         1
// #define BUTTON


// extern uint32_t time_ms;
// extern uint32_t systick_cnt;
// extern const uint32_t systick_cnt_top;

// uint32_t time_ms = 0;
// uint32_t systick_cnt = 0;
// const uint32_t systick_cnt_top = 1000000;


// void EXTI0_1_IRQHandler()
// {
    // /*
    //  * Timer
    //  */
    // uint32_t time0 = systick_cnt;
    // static uint32_t time1 = 0;

    // if ((time1 - time0) > 100)
    //     LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);

    // time1 = systick_cnt;

    // /*
    //  * Clear all EXTI flags
    //  */
    // LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
    // // LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
// }


int main(void)
{
    // int error = 0;

    /*
     * Hardware init
     */
    rcc_config();
    gpio_config();
    exti_config();
    usart_config();
    i2c_config();
    printf_config();

    LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);
    systick_config();
    LL_GPIO_TogglePin(GPIOC, LL_GPIO_PIN_8);

    // /*
    //  * MPU9255 init
    //  */
    // error = mpu9255_init();
    // xprintf("mpu init error: %d\n", error);


    // int16_t raw_accelData[3] = {};
    // int16_t raw_gyroData[3] = {};
    // dataType accelData[3] = {};
    // while(1)
    // {
    //     if (getSystick_cnt() == 0)
    //     {
    //         // xprintf("---------------------------------------\n");
    //         xprintf("time: %d\n", 0/*getTime_s()*/);

    //         error = mpu9255_readIMU(raw_accelData, raw_gyroData);
    //         mpu9255_recalcAccel(raw_accelData, accelData);



    //         // xprintf("%f %f %f\n", accelData[0], accelData[1], accelData[2]);
    //         // xprintf("error: %d\n", error);
    //     }
    // }

    return 0;
}
