/*
 * systick.c
 *
 *  Created on: 9 нояб. 2021 г.
 *      Author: stanislav.perchenko
 */
#include "systick.h"

volatile uint32_t uwTick;

void SYS_ClearTick(void) {
	uwTick = 0;
}

void SYS_IncTick(void)
{
	uwTick ++;
}

uint32_t SYS_GetTick(void)
{
	return uwTick;
}

void SYS_SuspendTick(void)
{
	/* Disable SysTick Interrupt */
	SysTick->CTRL &= ~SysTick_CTRL_TICKINT_Msk;
}

void SYS_ResumeTick(void)
{
	/* Enable SysTick Interrupt */
	SysTick->CTRL  |= SysTick_CTRL_TICKINT_Msk;
}

void SYS_Delay(__IO uint32_t delay)
{
	uint32_t tickstart = SYS_GetTick();

	/* Add a period to guaranty minimum wait */
	if (delay == 0)
    {
		delay ++;
    }

	while((SYS_GetTick() - tickstart) < delay)
	{
		__WFI();
	}
}

