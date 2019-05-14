/*
* KINEMATIC_UNIT
*
* 		This unit will be used for for getting orientation of device and it`s translations
*  from transformed sensors data.
* 		In a basis of getting orientation we use Madgwick`s algorythm,
* 	which creates quaternion of translation from RSC to ISC from sensors data
* 	(accelerometer, gyroscope, magnetometer).
*
* 	Authors: Korr237i, RaKetov
*/

#include <math.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// #include <sofa.h>

#include "state.h"
#include "systime.h"
#include "library/MadgwickAHRS.h"
#include "library/quaternion.h"
#include "drivers/mpu9255.h"

#define BETA_0	sqrt(3/4) * M_PI * (0.2f / 180.0f)
#define BETA_1	0.033
#define BETA_2	0.3
#define BETA_3	0.25

#define how_long_sleep 0


uint8_t get_gyro_staticShift(dataType* gyro_staticShift) {
	uint8_t error = 0;
	uint16_t zero_orientCnt = 200;

	//	находим статическое смещение гироскопа
	for (int i = 0; i < zero_orientCnt; i++) {
		int16_t accelData[3] = {0, 0, 0};
		int16_t gyroData[3] = {0, 0, 0};
		dataType gyro[3] = {0, 0, 0};

		//	собираем данные
		PROCESS_ERROR(mpu9255_readIMU(accelData, gyroData));
		mpu9255_recalcGyro(gyroData, gyro);

		for (int m = 0; m < 3; m++) {
			gyro_staticShift[m] += gyro[m];
		}
//		vTaskDelay(10/portTICK_RATE_MS);
	}
	for (int m = 0; m < 3; m++) {
		gyro_staticShift[m] /= zero_orientCnt;
	}
end:
	return error;
}

uint8_t get_accel_staticShift(dataType* gyro_staticShift, dataType* accel_staticShift) {
	uint8_t error = 0;
	uint16_t zero_orientCnt = 100;
	float time = 0, time_prev = getTime_s();

	for (int i = 0; i < zero_orientCnt; i++) {
		int16_t accelData[3] = {0, 0, 0};
		int16_t gyroData[3] = {0, 0, 0};
        int16_t compassData[3] = {0, 0, 0};
		dataType accel[3] = {0, 0, 0};
		dataType accel_ISC[3] = {0, 0, 0};
		dataType gyro[3] = {0, 0, 0};
        dataType magn[3] = {0, 0, 0};
        dataType magn_ISC[3] = {0, 0, 0};

		//	собираем данные
		PROCESS_ERROR(mpu9255_readIMU(accelData, gyroData));
        PROCESS_ERROR(mpu9255_readCompass(compassData));
		mpu9255_recalcGyro(gyroData, gyro);
		mpu9255_recalcAccel(accelData, accel);
        mpu9255_recalcCompass(compassData, magn);

		time = getTime_s();
		for (int k = 0; k < 3; k++) {
			gyro[k] -= gyro_staticShift[k];
		}

		dataType quaternion[4] = {0, 0, 0, 0};
	// MadgwickAHRSupdateIMU(quaternion, gyro[0], gyro[1], gyro[2], accel[0], accel[1], accel[2], time - time_prev, 1/*0.033*/);
        MadgwickAHRSupdate( quaternion,
                            gyro[0],    gyro[1],    gyro[2],
                            accel[0],   accel[1],   accel[2],
                            magn[0],    magn[1],    magn[2],    time - time_prev, 5); //???

		vect_rotate(accel, quaternion, accel_ISC);

		for (int m = 0; m < 3; m++) {
			accel_staticShift[m] += accel_ISC[m];
		}

		time_prev = time;
	}
	for (int m = 0; m < 3; m++) {
		accel_staticShift[m] /= zero_orientCnt;
	}
end:
	return error;
}


int IMU_updateDataAll() {
//////	СОБИРАЕМ ДАННЫЕ IMU	//////////////////////
	//	массивы для хранения
	int error = 0;
	int16_t accelData[3] = {0, 0, 0};
	int16_t gyroData[3] = {0, 0, 0};
	int16_t compassData[3] = {0, 0, 0};
	dataType accel[3] = {0, 0, 0}; dataType gyro[3] = {0, 0, 0}; dataType magn[3] = {0, 0, 0};

	//	собираем данные
	PROCESS_ERROR(mpu9255_readIMU(accelData, gyroData));
	PROCESS_ERROR(mpu9255_readCompass(compassData));
	mpu9255_recalcAccel(accelData, accel);
	mpu9255_recalcGyro(gyroData, gyro);
	mpu9255_recalcCompass(compassData, magn);

	float _time = getTime_s();
	state_system.time = _time;
	//	пересчитываем их и записываем в структуры
	for (int k = 0; k < 3; k++) {
		stateIMU_rsc.accel[k] = accel[k];
		gyro[k] -= state_system.gyro_staticShift[k];
		stateIMU_rsc.gyro[k] = gyro[k];
		stateIMU_rsc.magn[k] = magn[k];
	}
////////////////////////////////////////////////////


/////////	ОБНОВЛЯЕМ КВАТЕРНИОН  //////////////////
	dataType quaternion[4] = {0, 0, 0, 0};
	float dt = _time - state_system_prev.time;

    dataType beta = 1;
	MadgwickAHRSupdateIMU(quaternion, gyro[0], gyro[1], gyro[2], accel[0], accel[1], accel[2], dt, 1);

    // MadgwickAHRSupdate(quaternion, gyro[0], gyro[1], gyro[2], accel[0], accel[1], accel[2], magn[0], magn[1], magn[2], dt, beta);

	//	копируем кватернион в глобальную структуру
	stateIMU_isc.quaternion[0] = quaternion[0];
	stateIMU_isc.quaternion[1] = quaternion[1];
	stateIMU_isc.quaternion[2] = quaternion[2];
	stateIMU_isc.quaternion[3] = quaternion[3];
////////////////////////////////////////////////////


/////////  ПЕРЕВОДИМ ВЕКТОРЫ в ISC  ////////////////
	dataType accel_ISC[3] = {0, 0, 0};
	dataType magn_ISC[3] = {0, 0, 0};
	//	ускорение
	vect_rotate(accel, quaternion, accel_ISC);
	//	вектор магнитного поля
	// vect_rotate(magn, quaternion, magn_ISC);

	//	копируем векторы в глобальную структуру
	for (int i = 0; i < 3; i++)
		accel_ISC[i] -= state_system.accel_staticShift[i];

	stateIMU_isc.accel[0] = accel_ISC[0];
	stateIMU_isc.accel[1] = accel_ISC[1];
	stateIMU_isc.accel[2] = accel_ISC[2];
	// stateIMU_isc.magn[0] = magn_ISC[0];
	// stateIMU_isc.magn[1] = magn_ISC[1];
	// stateIMU_isc.magn[2] = magn_ISC[2];
    stateIMU_isc.magn[0] = magn[0];
    stateIMU_isc.magn[1] = magn[1];
    stateIMU_isc.magn[2] = magn[2];
////////////////////////////////////////////////////


///////  ОБНОВЛЯЕМ КООРДИНАТЫ И СКОРОСТИ  //////////
	dataType delta_velo[3] = {0, 0, 0};
	dataType delta_coord[3] = {0, 0, 0};
	dataType accel_ISC_prev[3] = {0, 0, 0};
	dataType velo[3] = {0, 0, 0};
	dataType velo_prev[3] = {0, 0, 0};

	for (int i = 0; i < 3; i++) {
		accel_ISC_prev[i] = stateIMU_isc_prev.accel[i];
		velo[i] = stateIMU_isc.velocities[i];
		velo_prev[i] = stateIMU_isc_prev.velocities[i];
	}

	for (int i = 0; i < 3; i++) {
		delta_velo[i] = (accel_ISC[i] + accel_ISC_prev[i]) * dt / 2;
		delta_coord[i] = (velo[i] + velo_prev[i]) * dt / 2;
	}

	for (int i = 0; i < 3; i++) {
		stateIMU_isc.velocities[i] += delta_velo[i];
		stateIMU_isc.coordinates[i] += delta_coord[i];
	}
////////////////////////////////////////////////////

end:
	return error;
}


void get_staticShifts() {
	dataType gyro_staticShift[3] = {0, 0, 0};
	dataType accel_staticShift[3] = {0, 0, 0};
	get_gyro_staticShift(gyro_staticShift);
	get_accel_staticShift(gyro_staticShift, accel_staticShift);

	for (int i = 0; i < 3; i++) {
		state_system.gyro_staticShift[i] = gyro_staticShift[i];
		state_system.accel_staticShift[i] = accel_staticShift[i];
	}
}


void _IMUtask_updateData() {
	memcpy(&stateIMU_isc_prev, 	&stateIMU_isc,	sizeof(stateIMU_isc));
	memcpy(&state_system_prev, 	&state_system, 	sizeof(state_system));
}


void zero_data(){
	for (int i = 0; i < 4; i++)
		state_system.zero_quaternion[i] = stateIMU_isc.quaternion[i];
}
