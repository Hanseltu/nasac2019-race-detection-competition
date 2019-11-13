/*
 * case3.c
 * ģʽ1����������η���֮���ԭ����Υ��
 *
 * R-W-W �ṹ�� �������ж� ������д ����Ƕ��
 *
 *  Created on: 2013��11��6��
 *      Author: chenrui
 */
#include "case3.h"

typedef struct Time{
	int second;
	int misecond;
} Time;

typedef struct Place{
	int second;
	int misecond;
} Place;

/* �������Ϊ�ṹ������ */
volatile Time star_time_case3;
volatile Place star_place_case3;

void case3_main(){
	idlerun();
	if(star_time_case3.misecond==1000){
		star_time_case3.second++;
		star_time_case3.misecond = 0;
	}

}

void case3_isr(){
	idlerun();
	/* Ƕ�׺���  */
	case3_nestedfunc();
	star_place_case3.second = 10;

}

void case3_nestedfunc(){
	star_time_case3.second = 1; /* bug */
}
