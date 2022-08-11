#ifndef __CNN_H_
#define __CNN_H_


#include <ap_cint.h>
#include "math.h"
#include "stdbool.h"

void cnn1(float input[28][28],float weights[6][9],float b_conv1[6],float output[6][26][26]);
void cnn2(float input[6][13][13],float weights[8][6][9],float b_conv2[8],float output[8][11][11]);

void pool1(float input[6][26][26],float output[6][13][13] );
void pool2(float input[8][11][11],float output[8][10][10] );


void relu1(float input[6][13][13],float output[6][13][13]);
void relu2(float input[8][10][10],float output[8][10][10]);
void char2img(unsigned char ori_image[28][28],float img[28][28]);

void reshape_flat(float input[8][10][10],float output[800]);
void full_connect(float input[800],float fc_in[800][10],float b_fc[10],float output[10]);
void softmax(float input[10],float output[10]);
void resize_img(signed short int ori_image[252][252], float image[28][28]);
signed short int mnist(unsigned char ori_image[28][28]);
#endif
