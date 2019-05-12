#include <stdint.h>

#include "../core/stm32f051x8.h"
#include "../plib/stm32f0xx_ll_usart.h"

#include "state.h"

#define DESCR1  0xFF
#define DESCR2  0xFE


void stateMsg_fill(state_msg_t* msg)
{
    static int number = 0;
    uint32_t local_systick_cnt = systick_cnt;
    uint32_t local_time_ms = time_ms;

    msg->descr_val1 = DESCR1;
    msg->descr_val2 = DESCR2;

    msg->number = number;

    msg->time = local_time_ms + ((float)local_systick_cnt / systick_cnt_top);

    number++;
}


void stateMsg_send(state_msg_t* msg)
{
    int i = 0;

    uint8_t* buff = (uint8_t*)msg;
    uint8_t len = sizeof(msg);

    LL_USART_ClearFlag_TC(USART1);
    while (len--) {
        while (!LL_USART_IsActiveFlag_TXE(USART1));
        LL_USART_TransmitData8(USART1, buff[i++]);
    }
    while (!LL_USART_IsActiveFlag_TC(USART1));
    return;
}
