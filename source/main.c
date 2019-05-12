#include <stdint.h>
#include <stdio.h>
#include <string.h>

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


// #define MPU         1
// #define BUTTON


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
    int error = 0;

    /*
     * Hardware init
     */
    rcc_config();
    gpio_config();
    exti_config();
    usart_config();
    i2c_config();
    printf_config();
    systick_config();


    /*
     * Structures init
     */
    memset(&stateIMU_rsc, 0x00, sizeof(stateIMU_rsc));
    memset(&stateIMU_isc, 0x00, sizeof(stateIMU_isc));
    state_msg_t msg = {};


    /*
     * MPU9255 init
     */
    error = mpu9255_init();
    xprintf("mpu init error: %d\n", error);


    int16_t raw_accelData[3] = {};
    int16_t raw_gyroData[3] = {};

    while(1)
    {
        mpu9255_readIMU(raw_accelData,      raw_gyroData);
        mpu9255_recalcAccel(raw_accelData,  stateIMU_rsc.accel);
        mpu9255_recalcGyro(raw_gyroData,    stateIMU_rsc.gyro);

        stateMsg_fill(&msg);
        stateMsg_send(&msg);
        // xprintf("crc: %d", msg.crc);
    }

    return 0;
}
