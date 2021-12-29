/*
 * systick.h
 *
 *  Created on: 9 нояб. 2021 г.
 *      Author: stanislav.perchenko
 */

#ifndef __SYSTICK_H__
#define __SYSTICK_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f1xx.h"


#define SYS_MAX_DELAY      0xFFFFFFFFU

void SYS_ClearTick(void);
void               SYS_IncTick(void);
uint32_t           SYS_GetTick(void);
void               SYS_SuspendTick(void);
void               SYS_ResumeTick(void);
void               SYS_Delay(uint32_t Delay);



#ifdef __cplusplus
}
#endif

#endif /* __SYSTICK_H__ */
