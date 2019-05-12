#include <stdint.h>

#include "../core/stm32f051x8.h"
#include "../plib/stm32f0xx_ll_usart.h"

#include "state.h"

#define DESCR1  0xFF
#define DESCR2  0xFE


uint32_t time_ms = 0;
uint32_t systick_cnt = 0;
const uint32_t systick_cnt_top = 1000000;

stateIMU_rsc_t stateIMU_rsc = {};
stateIMU_isc_t stateIMU_isc = {};


// uint32_t crc32(uint8_t *buf, uint32_t len)
// {
//     uint32_t crc_table[256];
//     uint32_t crc = 0;
//     uint16_t i, j;

//     for (i = 0; i < 256; i++)
//     {
//         crc = i;
//         for (j = 0; j < 8; j++)
//             crc = crc & 1 ? (crc >> 1) ^ 0xEDB88320UL : crc >> 1;

//         crc_table[i] = crc;
//     };

//     crc = 0xFFFFFFFFUL;

//     while (len--)
//         crc = crc_table[(crc ^ *buf++) & 0xFF] ^ (crc >> 8);

//     return crc ^ 0xFFFFFFFFUL;
// }


float getTime_s()
{
    int32_t local_systick_cnt = systick_cnt;
    uint32_t local_time_ms = time_ms;
    return (((float)local_time_ms / 1000) + ((float)local_systick_cnt / systick_cnt_top));
}



void stateMsg_fill(state_msg_t* msg)
{
    static int number = 0;

    msg->descr_val1 = DESCR1;
    msg->descr_val2 = DESCR2;

    msg->number = number;

    msg->time = getTime_s();

    for (uint8_t i = 0; i < 3; i++)
    {
        msg->accel[i]   = stateIMU_isc.accel[i];
        msg->gyro[i]    = stateIMU_isc.gyro[i];
        msg->magn[i]    = stateIMU_isc.magn[i];
    }

    for (uint8_t i = 0; i < 4; i++)
        msg->quaternion[i] = stateIMU_isc.quaternion[i];

    msg->crc = 0;
    // msg->crc = crc32((uint8_t*)msg, sizeof(*msg));

    number++;
}


void stateMsg_send(state_msg_t* msg)
{
    int i = 0;

    uint8_t* buff = (uint8_t*)msg;
    uint8_t len = sizeof(*msg);

    LL_USART_ClearFlag_TC(USART1);
    while (len--) {
        while (!LL_USART_IsActiveFlag_TXE(USART1));
        LL_USART_TransmitData8(USART1, buff[i++]);
    }
    while (!LL_USART_IsActiveFlag_TC(USART1));
    return;
}
