#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"

#include "sysconfig.h"
#include "segment.h"


uint32_t dec2hex(uint32_t number)
{
    return ( (number % 10) + (((number % 100) / 10) << 4) + (((number / 100) % 10) << 8) + ((number / 1000) << 12) );
}


void dyn_indicate(uint32_t number)
{
    static uint8_t dig_num = 0;
    /*
     * Put all pins for indicator together (for segments only)
     */
    static uint32_t mask = LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | \
                           LL_GPIO_PIN_3 | LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | \
                           LL_GPIO_PIN_6;
    /*
     * For simplicity there are only decoded values for the first 4 numbers
     */
    static const uint32_t decoder[] = {
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | \
        LL_GPIO_PIN_4 | LL_GPIO_PIN_5,                                      // 0
        LL_GPIO_PIN_1 | LL_GPIO_PIN_2,                                      // 1
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_6 | LL_GPIO_PIN_4 | \
        LL_GPIO_PIN_3,                                                      // 2
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2 | \
        LL_GPIO_PIN_3,                                                      // 3
        LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2,      // 4
        LL_GPIO_PIN_0 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2 | \
        LL_GPIO_PIN_3,                                                      // 5
        LL_GPIO_PIN_0 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | \
        LL_GPIO_PIN_4 | LL_GPIO_PIN_5,                                      // 6
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2,                      // 7
        LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | \
        LL_GPIO_PIN_4 | LL_GPIO_PIN_5 | LL_GPIO_PIN_6,                      // 8
        LL_GPIO_PIN_0 | LL_GPIO_PIN_6 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | \
        LL_GPIO_PIN_1 | LL_GPIO_PIN_5                                       // 9
    };
    const uint8_t max_num = sizeof(decoder) / sizeof(uint32_t);
    uint32_t port_state = 0;

    /*
     * Read current state and do not change pins that are not related to
     * indicator (that is done by using masking)
     */
    port_state = LL_GPIO_ReadOutputPort(GPIOB);
    /*
     * Example:
     * 01100101 <= Input
     * mask = 111 (pins allowed to be changed)
     * ~mask = 11111000 (inverted mask sets remaining bits to one)
     * result = result & ~mask (zero only first three bits)
     * result = result | 001 (modify first three bits)
     * result -> 01100001
     */

    port_state = (port_state & ~mask) | decoder[((number >> ((dig_num) * 4)) & 0xF) % max_num];
    LL_GPIO_WriteOutputPort(GPIOB, port_state);

    switch (dig_num)
    {
        case 0:
            LL_GPIO_SetOutputPin(GPIOB, DIG1);
            LL_GPIO_ResetOutputPin(GPIOB, DIG4);
            break;
        case 1:
            LL_GPIO_SetOutputPin(GPIOB, DIG4);
            LL_GPIO_ResetOutputPin(GPIOB, DIG3);
            break;
        case 2:
            LL_GPIO_SetOutputPin(GPIOB, DIG3);
            LL_GPIO_ResetOutputPin(GPIOB, DIG2);
            break;
        case 3:
            LL_GPIO_SetOutputPin(GPIOB, DIG2);
            LL_GPIO_ResetOutputPin(GPIOB, DIG1);
            break;
    }

    dig_num = (dig_num + 1) % 4;
    return;
}
