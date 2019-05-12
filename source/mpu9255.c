/*
 * MPU9255.c
 *
 *  Created on: 21 янв. 2017 г.
 *      Author: developer
 */


#include <stdio.h>
#include <math.h>
#include <stdint.h>

#include "core/stm32f051x8.h"
#include "plib/stm32f0xx_ll_i2c.h"

#include "state.h"
#include "mpu9255.h"

// #include <sofa.h>


mpu9255_error mpu9255_WriteMulti(mpu9255_address_t dev, uint8_t reg, uint8_t* dataWrite, uint8_t count)
{
    int32_t timeout = I2C_TIMEOUT;

    /*
    * Initiate transmission
    */
    LL_I2C_HandleTransfer(I2C1, dev, LL_I2C_ADDRSLAVE_7BIT,
                          count+1, LL_I2C_MODE_AUTOEND,
                          LL_I2C_GENERATE_START_WRITE);

    /*
     * Wait till I2C is ready to transmit and send reg address
     */
    while (!LL_I2C_IsActiveFlag_TXIS(I2C1) && (timeout-- > 0));
    if (timeout <= 0)
        return MPU9255_ERROR_TIMEOUT;
    LL_I2C_TransmitData8(I2C1, reg);

    /*
     * Send all data to slave waiting for TXIS on each step
     */
    for (uint8_t i = 0; i < count; i++)
    {
        while (!LL_I2C_IsActiveFlag_TXIS(I2C1) && (timeout-- > 0));
        if (timeout <= 0)
            return MPU9255_ERROR_TIMEOUT;
        LL_I2C_TransmitData8(I2C1, dataWrite[i]);
    }

    /*
     * Check for end of transmission
     */
    while (LL_I2C_IsActiveFlag_TC(I2C1) && (timeout-- > 0));
    if (timeout <= 0)
        return MPU9255_ERROR_TIMEOUT;

    return MPU9255_ERROR_NONE;
}


mpu9255_error mpu9255_ReadMulti(mpu9255_address_t dev, uint8_t reg, uint8_t* dataRead, uint8_t count)
{
    int32_t timeout = I2C_TIMEOUT;

    /*
     * Trying to transmit register address
     */
    if (mpu9255_WriteMulti(dev, reg, NULL, 0) == MPU9255_ERROR_TIMEOUT)
        return MPU9255_ERROR_TIMEOUT;

    /*
     * Init reading of package size of count
     */
    LL_I2C_HandleTransfer(I2C1, dev, LL_I2C_ADDRSLAVE_7BIT,
                          count, LL_I2C_MODE_AUTOEND,
                          LL_I2C_GENERATE_START_READ);

    /*
     * Receive data from MPU
     */
    for (uint8_t i = 0; i < count; i++)
    {
        while(!LL_I2C_IsActiveFlag_RXNE(I2C1) && (timeout-- > 0));
        if (timeout <= 0)
            return MPU9255_ERROR_TIMEOUT;
        dataRead[i] = LL_I2C_ReceiveData8(I2C1);
    }

    /*
     * Check end of receiving
     */
    while (LL_I2C_IsActiveFlag_TC(I2C1) && (timeout-- > 0));
    if (timeout <= 0)
        return MPU9255_ERROR_TIMEOUT;

    return MPU9255_ERROR_NONE;
}


mpu9255_error mpu9255_WriteByte(mpu9255_address_t dev, uint8_t reg, uint8_t data)
{
    return mpu9255_WriteMulti(dev, reg, &data, 1);
}


mpu9255_error mpu9255_ReadByte(mpu9255_address_t dev, uint8_t reg, uint8_t *data)
{
    return mpu9255_ReadMulti(dev, reg, data, 1);
}


mpu9255_error mpu9255_UpdateByte(mpu9255_address_t dev, uint8_t reg, uint8_t UData)
{
    uint8_t data = 0;
    uint8_t error = MPU9255_ERROR_NONE;

    PROCESS_ERROR(mpu9255_ReadByte(dev, reg, &data));
    data = data | UData;
    PROCESS_ERROR(mpu9255_WriteByte(dev, reg, data));

end:
    return error;
}



int mpu9255_init()
{
    int error = 0;

    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 107, (1 << 7)));   //RESET

    volatile int x = 0;
    for (volatile int k = 0; k < 1000000; k++)
        x += 1;

    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 25,     (1 << 0)));   //Sample Rate Divider
    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 26,     0b00000101));   //config (DLPF = 101)
    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 28,     (0b00000000 | (ACCEL_RANGE << 3))));    //accel config (rate 4g = 01)
    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 29,     0b00000100));   //accel config 2 (Fch_b = 0, DLPF = 100)
    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 35,     0b00000000));   //FIFO enable (not enabled)
    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 56,     0b00000000));   //interrupt enable (int disable = 0)
    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 106,    0b00000000));   //user control
    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 107,    0b00000001));   //power managment 1
    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 108,    0b00000000));   //power managment 2
    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 27,     (0b00000000 | (GYRO_RANGE << 4)) ));    //gyro config (rate 500dps = 01, Fch_b = 00)

    //compass init
    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 55,     0b00000010));   //режим bypass on
    PROCESS_ERROR(mpu9255_WriteByte(COMPASS,        0x0A,   0b00010110));   //control 1
    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 55,     0b00000000));   //режим bypass off

end:
    return error;
}

static int16_t _swapBytesI16(int16_t value)
{
    uint8_t * value_ptr = (uint8_t*)&value;
    uint8_t tmp = value_ptr[0];
    value_ptr[0] = value_ptr[1];
    value_ptr[1] = tmp;

    return value;
}

int mpu9255_readIMU(int16_t * raw_accelData, int16_t * raw_gyroData)
{
    int error = 0;

    PROCESS_ERROR(mpu9255_ReadMulti(GYRO_AND_ACCEL, 59, (uint8_t*)raw_accelData, 6));    //чтение данных с акселерометра
    PROCESS_ERROR(mpu9255_ReadMulti(GYRO_AND_ACCEL, 67, (uint8_t*)raw_gyroData, 6));     //чтение данных с гироскопа

    for (int i = 0; i < 3; i++)
        raw_accelData[i] = _swapBytesI16(raw_accelData[i]);

    for (int i = 0; i < 3; i++)
        raw_gyroData[i] = _swapBytesI16(raw_gyroData[i]);

end:
    return error;
}

int mpu9255_readCompass(int16_t * raw_compassData)
{
    int error = 0;

    // state of magn (ready to give data or not)
    uint8_t magn_state;

    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 55, 0b00000010));   //режим bypass on
    mpu9255_ReadByte(COMPASS, 0x02, &magn_state);
    //printf("read_dummy_error = %d\n", read_dummy_error);
    PROCESS_ERROR(mpu9255_ReadByte(COMPASS, 0x02, &magn_state));


    if ((magn_state && 0x01) != 1)
    {
//      state_system.state &= ~(1 << 1);        //магнитометр не готов
        goto end;
    }

//  state_system.state |= (1 << 1); //магнитометр готов
    PROCESS_ERROR(mpu9255_ReadMulti(COMPASS, 0x03, (uint8_t*)raw_compassData, 6));
    PROCESS_ERROR(mpu9255_ReadByte(COMPASS, 0x09, &magn_state));

    //FIXME: не надо ли свапать здесь байты???

end:
    PROCESS_ERROR(mpu9255_WriteByte(GYRO_AND_ACCEL, 55, 0b00000000));   //режим bypass off
    return error;
}

void mpu9255_recalcAccel(const int16_t * raw_accelData, dataType * accelData)
{
    dataType _accelData[3] = {0, 0, 0};

    _accelData[0] = (dataType)(raw_accelData[0]) * MPU9255_ACCEL_SCALE_FACTOR * 2;//* pow(2, ACCEL_RANGE);
    _accelData[1] = (dataType)(raw_accelData[1]) * MPU9255_ACCEL_SCALE_FACTOR * 2;//* pow(2, ACCEL_RANGE);
    _accelData[2] = (dataType)(raw_accelData[2]) * MPU9255_ACCEL_SCALE_FACTOR * 2;//* pow(2, ACCEL_RANGE);

//  dataType offset_vector[3] = {X_ACCEL_OFFSET, Y_ACCEL_OFFSET, Z_ACCEL_OFFSET};
//  dataType transform_matrix[3][3] =  {{XX_ACCEL_TRANSFORM_MATIX, XY_ACCEL_TRANSFORM_MATIX, XZ_ACCEL_TRANSFORM_MATIX},
//                                   {XY_ACCEL_TRANSFORM_MATIX, YY_ACCEL_TRANSFORM_MATIX, YZ_ACCEL_TRANSFORM_MATIX},
//                                   {XZ_ACCEL_TRANSFORM_MATIX, YZ_ACCEL_TRANSFORM_MATIX, ZZ_ACCEL_TRANSFORM_MATIX}};
//
//  iauPmp(_accelData, offset_vector, accelData);
//  iauRxp(transform_matrix, accelData, accelData);

    for (int i = 0; i < 3; i++) {
        accelData[i] = _accelData[i];
    }
}

void mpu9255_recalcGyro(const int16_t * raw_gyroData, dataType * gyroData)
{
    gyroData[0] = (dataType)(raw_gyroData[0]) * MPU9255_GYRO_SCALE_FACTOR * pow(2, GYRO_RANGE);
    gyroData[1] = (dataType)(raw_gyroData[1]) * MPU9255_GYRO_SCALE_FACTOR * pow(2, GYRO_RANGE);
    gyroData[2] = (dataType)(raw_gyroData[2]) * MPU9255_GYRO_SCALE_FACTOR * pow(2, GYRO_RANGE);
}

void mpu9255_recalcCompass(const int16_t * raw_compassData, dataType * compassData)
{
//  dataType raw_data[3] = {(dataType)raw_compassData[0], (dataType)raw_compassData[1], (dataType)raw_compassData[2]};
//  dataType offset_vector[3] = {X_COMPAS_OFFSET, Y_COMPAS_OFFSET, Z_COMPAS_OFFSET};
//  dataType transform_matrix[3][3] =  {   {XX_COMPAS_TRANSFORM_MATIX, XY_COMPAS_TRANSFORM_MATIX, XZ_COMPAS_TRANSFORM_MATIX},
//                                      {XY_COMPAS_TRANSFORM_MATIX, YY_COMPAS_TRANSFORM_MATIX, YZ_COMPAS_TRANSFORM_MATIX},
//                                      {XZ_COMPAS_TRANSFORM_MATIX, YZ_COMPAS_TRANSFORM_MATIX, ZZ_COMPAS_TRANSFORM_MATIX}};
//
//  iauPmp(raw_data, offset_vector, compassData);
//  iauRxp(transform_matrix, compassData, compassData);

    compassData[0] = - (dataType)raw_compassData[1];
    compassData[1] =   (dataType)raw_compassData[2];
    compassData[2] = - (dataType)raw_compassData[0];
}
