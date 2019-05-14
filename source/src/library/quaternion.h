/*
 * quaternion.h
 *
 *  Created on: 01 нояб. 2017 г.
 *      Author: developer
 */

#ifndef MADGWICK_QUATERNION_H_
#define MADGWICK_QUATERNION_H_

#include "../state.h"


void quat_mult(dataType* quat, dataType k, dataType* res_quat);

void vect_mult(dataType* vect, dataType k, dataType* res_vect);

dataType quat_abs(dataType* quat);

dataType vect_abs(dataType* vect);

void quat_normalize(dataType* quat,  dataType* res_quat);

void vect_normalise(dataType* vect,  dataType* res_vect);

void quat_invert(dataType* quat, dataType* res_quat);

void quat_mult_by_quat(dataType * a, dataType * b, dataType* res_quat);

void quat_mult_by_vect(dataType* a, dataType* b, dataType* res_vect);

void vect_mult_by_quat(dataType* a, dataType* b, dataType* res_vect);

void vect_rotate(dataType* vect, dataType* quat, dataType* res_vect);


#endif /* MADGWICK_QUATERNION_H_ */
