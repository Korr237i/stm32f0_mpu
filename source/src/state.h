#ifndef STATE_H_
#define STATE_H_

#include <stdint.h>

#define dataType double

// if error set value and go to end
#define PROCESS_ERROR(x) if (0 != (error = (x))) { goto end; }


extern uint32_t time_ms;
extern uint32_t systick_cnt;
extern const uint32_t systick_cnt_top;

// uint32_t time_ms = 0;
// uint32_t systick_cnt = 0;
// const uint32_t systick_cnt_top = 1000000;


//  IMU data in RSC (related system of coordinates)
typedef struct {
    dataType accel[3];
    dataType gyro[3];
    dataType magn[3];
} stateIMU_rsc_t;


//  orientation and position of device in ISC (inertial system of coordinates)
typedef struct {
    //  IMU data
    dataType accel[3];
    dataType gyro[3];
    dataType magn[3];

    //  position
    dataType velocities[3];
    dataType coordinates[3];

    //  orientation
    dataType quaternion[4];

} stateIMU_isc_t;


typedef struct
{
    uint8_t descr_val1;     // 0xFF 0xFE
    uint8_t descr_val2;

    uint32_t number;

    float time;

    dataType accel[3];
    dataType gyro[3];
    dataType magn[3];

    dataType quaternion[4];

    uint32_t crc;

} state_msg_t;


extern stateIMU_rsc_t stateIMU_rsc;
extern stateIMU_isc_t stateIMU_isc;


float getTime_s();

void stateMsg_fill(state_msg_t* msg);

void stateMsg_send(state_msg_t* msg);


#endif /* STATE */
