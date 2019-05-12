#ifndef STATE_H_
#define STATE_H_

#include <stdint.h>

#define dataType double

// if error set value and go to end
#define PROCESS_ERROR(x) if (0 != (error = (x))) { goto end; }


extern uint32_t time_ms;
extern uint32_t systick_cnt;
extern uint32_t systick_cnt_top;


typedef struct
{
    uint8_t descr_val1;     // 0xFF 0xFE
    uint8_t descr_val2;

    uint32_t number;

    float time;

    dataType accelData[3];
    dataType gyroData[3];
    dataType magnData[3];

    dataType quaternion[4];

    uint32_t crc;

} state_msg_t;


float getTime_ms()
{
    int32_t local_systick_cnt = systick_cnt;
    uint32_t local_time_ms = time_ms;
    return (((float)local_time_ms / 1000) + ((float)local_systick_cnt / systick_cnt_top));
}


void stateMsg_fill(state_msg_t* msg);

void stateMsg_send(state_msg_t* msg);


#endif /* STATE */
