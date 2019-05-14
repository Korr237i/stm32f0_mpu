/*
 * quaternion.c
 *
 *  Created on: 01 нояб. 2017 г.
 *      Author: developer
 */

#include <stdint.h>
#include <string.h>
#include <math.h>

#include "quaternion.h"

void quat_mult(dataType* quat, dataType k, dataType* res_quat) {
	for (uint8_t i = 0; i < 4; i++) {
		res_quat[i] = k * quat[i];
	}
}

void vect_mult(dataType* vect, dataType k, dataType* res_vect) {
	for (uint8_t i = 0; i < 4; i++) {
		res_vect[i] = k * vect[i];
	}
}

dataType quat_abs(dataType* quat) {
	dataType tmp = 0;
	for (int i = 0; i < 4; i++) {
		tmp += pow(quat[i], 2);
	}
	return sqrt(tmp);
}

dataType vect_abs(dataType* vect) {
	dataType tmp = 0;
	for (int i = 0; i < 3; i++) {
		tmp += pow(vect[i], 2);
	}
	return sqrt(tmp);
}

void quat_normalize(dataType* quat,  dataType* res_quat) {
	quat_mult(quat, 1 / quat_abs(quat), res_quat);
}

void vect_normalise(dataType* vect,  dataType* res_vect) {
	vect_mult(vect, 1 / vect_abs(vect), res_vect);
}

void quat_invert(dataType* quat, dataType* res_quat) {

	res_quat[0] = quat[0];
	for (int i = 1; i < 4; i++) {
		res_quat[i] = - quat[i];
	}

	dataType res_[4] = {0, 0, 0, 0};
	quat_normalize(res_quat, res_);
	for (int i = 0; i < 4; i++)
		res_quat[i] = res_[i];
}


void quat_mult_by_quat(dataType * a, dataType * b, dataType* res_quat) {

	dataType res[4] = {0, 0, 0, 0};

	res[0] = a[0] * b[0] - a[1] * b[1] - a[2] * b[2] - a[3] * b[3];
	res[1] = a[0] * b[1] + a[1] * b[0] + a[2] * b[3] - a[3] * b[2];
	res[2] = a[0] * b[2] - a[1] * b[3] + a[2] * b[0] + a[3] * b[1];
	res[3] = a[0] * b[3] + a[1] * b[2] - a[2] * b[1] + a[3] * b[0];

	for (int i = 0; i < 4; i++)
		res_quat[i] = res[i];
}


void quat_mult_by_vect(dataType* a, dataType* b, dataType* res_quat) {

	dataType vectQuat[4] = {0, b[0], b[1], b[2]};			//	quat from vect
	dataType res_quat_local[4] = {0, 0, 0, 0};				//	normalised vector

	quat_mult_by_quat(a, vectQuat, res_quat_local);

	for (int i = 0; i < 4; i++)
		res_quat[i] = res_quat_local[i];
}


void vect_rotate(dataType* vect, dataType* quat, dataType* res_vect) {
	dataType res_vect_local[4] = {0, 0, 0, 0};
	dataType quat_n[4] = {0, 0, 0, 0};
	quat_normalize(quat, quat_n);

	dataType tmp[4] = {0, 0, 0, 0};
	quat_mult_by_vect(quat_n, vect, tmp);

	dataType inverted[4] = {0, 0, 0, 0};
	quat_invert(quat_n, inverted);

	quat_mult_by_quat(tmp, inverted, res_vect_local);
	for (int i = 0; i < 3; i++)
		res_vect[i] = res_vect_local[i+1];
}



