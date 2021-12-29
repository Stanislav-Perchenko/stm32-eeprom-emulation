/*
 * logger.h
 *
 *  Created on: 9 нояб. 2021 г.
 *      Author: stanislav.perchenko
 */

#ifndef __LOGGER_H__
#define __LOGGER_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>

#define MAX_LOG_MESSAGE_LENGTH	350

void LOG_ResetLogger(void);
uint8_t LOG_IsInProgress(void);
uint32_t LOG_GetTimeLastLogFinished(void);
void LOG_SendLog(uint8_t *data, uint16_t offsed, uint16_t n_bytes);

uint8_t LOG_EvaluateDataSend(void);


#ifdef __cplusplus
}
#endif


#endif /* __LOGGER_H__ */
