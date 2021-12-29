/*
 * logger.c
 *
 *  Created on: 9 нояб. 2021 г.
 *      Author: stanislav.perchenko
 */
#include "logger.h"
#include "systick.h"
#include "stm32f1xx_ll_usart.h"

#define USART_LOG USART1

static uint8_t log_tx_buffer[MAX_LOG_MESSAGE_LENGTH];
static uint16_t log_tx_data_len;
static uint16_t log_tx_next_byte_index;
static uint32_t log_tx_time_finished;


void LOG_ResetLogger(void)
{
	log_tx_data_len = 0;
	log_tx_next_byte_index = 0;
	log_tx_time_finished = SYS_GetTick() + 1;
}

uint8_t LOG_IsInProgress(void)
{
	return (log_tx_data_len > 0);
}


uint32_t LOG_GetTimeLastLogFinished(void)
{
	return log_tx_time_finished;
}


void LOG_SendLog(uint8_t *data, uint16_t offset, uint16_t n_bytes)
{
	uint16_t index = 0;
	uint16_t length = (n_bytes < MAX_LOG_MESSAGE_LENGTH) ? n_bytes : MAX_LOG_MESSAGE_LENGTH;

	log_tx_data_len = length;
	log_tx_next_byte_index = 0;
	if (length > 0) {
		do {
			log_tx_buffer[index ++] = data[offset ++];
		} while (index < length);
		LOG_EvaluateDataSend();
		LL_USART_EnableIT_TXE(USART_LOG);
	}

}


uint8_t LOG_EvaluateDataSend(void)
{
	uint8_t ret = 0;
	if (log_tx_data_len == 0)
	{
		return ret;
	}
	else if (!LL_USART_IsActiveFlag_TXE(USART_LOG))
	{
		return ret;
	}

	if (log_tx_next_byte_index < log_tx_data_len)
	{
		LL_USART_TransmitData8(USART_LOG, log_tx_buffer[log_tx_next_byte_index]);
		log_tx_next_byte_index ++;
	}
	else
	{
		log_tx_data_len = 0;
		log_tx_next_byte_index = 0;
		log_tx_time_finished = SYS_GetTick();
		ret = 1;
	}
	return ret;
}


