/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "iwdg.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "systick.h"
#include "logger.h"
#include "eeprom.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define COUNTER_ADDRESS		((uint16_t) 0x5555)						// Virtual address of the persisting counter
#define DEMO_EEPROM_DATA_LENGTH		64								// Length of the demo data array
#define DEMO_DATA_ADDRESS(index)	((uint16_t) 0x1000 + (uint16_t) index)
#define TOTAL_EEPROM_DATA_SIZE		(1+DEMO_EEPROM_DATA_LENGTH)		// Length of ALL data in the EEPROM



/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

static uint8_t log_buffer[MAX_LOG_MESSAGE_LENGTH-16];

/* Virtual address defined by the user: 0xFFFF value is prohibited */
uint16_t EepromAllVirtAddrTable[TOTAL_EEPROM_DATA_SIZE];
const uint16_t DemoDataTable[DEMO_EEPROM_DATA_LENGTH] = {0x0b52, 0x471b, 0xb62d, 0x4ab1, 0x4c0e, 0x8b47, 0x3bd1, 0x4d2c,
														 0x86b9, 0x0be1, 0x4770, 0xbbc7, 0x32cc, 0x4246, 0xa55d, 0x14f6,
														 0x4e50, 0xaab4, 0x4485, 0x4e1c, 0x8d9d, 0xc6bd, 0x4ddf, 0xb5ac,
														 0xf337, 0x4937, 0x95ca, 0x5ad0, 0x4716, 0x2efc, 0x4bdc, 0x8b14,
														 0x6406, 0x4c06, 0x049f, 0x498d, 0x8db0, 0x0326, 0x443d, 0x988c,
														 0x42a9, 0x6f96, 0x49b9, 0x48ab, 0x96f6, 0x5071, 0x8776, 0x2b91,
														 0x84db, 0x0ed3, 0x1877, 0x3752, 0x4c11, 0xac88, 0x9c35, 0xa0e6,
														 0x3187, 0x69c0, 0x7a66, 0x5d0a, 0x70f8, 0xa7e2, 0x65f9, 0x175d};

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);

uint8_t VerifyDataArray(void);
void WriteDataArray(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

uint8_t VerifyDataArray(void) {
	uint16_t ee_result_code;
	uint16_t index;
	uint16_t data;

	for (index = 0; index < DEMO_EEPROM_DATA_LENGTH; index++) {
		ee_result_code = EE_ReadVariable(DEMO_DATA_ADDRESS(index), &data);
		if (ee_result_code != EE_VAR_FOUND) {
			return 0;
		} else if (data != DemoDataTable[index]) {
			return 0;
		}
	}
	return 1;
}

void WriteDataArray(void) {
	uint16_t index;
	for (index = 0; index < DEMO_EEPROM_DATA_LENGTH; index++) {
		EE_WriteVariable(DEMO_DATA_ADDRESS(index), DemoDataTable[index]);
	}
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

	//Initialize EEPROM Virtual Address table
	EepromAllVirtAddrTable[0] = COUNTER_ADDRESS;
	for (uint8_t index=0; index < DEMO_EEPROM_DATA_LENGTH; index++) {
		EepromAllVirtAddrTable[1+index] = DEMO_DATA_ADDRESS(index);
	}

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */

  LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_AFIO);
  LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_PWR);

  NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_4);

  /* System interrupt init*/
  /* SysTick_IRQn interrupt configuration */
  NVIC_SetPriority(SysTick_IRQn, NVIC_EncodePriority(NVIC_GetPriorityGrouping(),15, 0));

  /** NOJTAG: JTAG-DP Disabled and SW-DP Enabled
  */
  LL_GPIO_AF_Remap_SWJ_NOJTAG();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */
  SysTick->CTRL  &= ~SysTick_CTRL_CLKSOURCE_Msk;
  SYS_ClearTick();
  SYS_IncTick();
  SYS_IncTick();
  SYS_ResumeTick();

  /* Unlock the Flash Program Erase controller */
  FLASH_Unlock();

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_IWDG_Init();
  MX_USART1_UART_Init();
  /* USER CODE BEGIN 2 */

  EE_Init(EepromAllVirtAddrTable, TOTAL_EEPROM_DATA_SIZE);		// EEPROM Init
  LOG_ResetLogger();											// Logger Init
  GPIO_BOARD_Led_OFF();

  uint16_t counter = 0;
  uint16_t n_bytes;
  uint16_t ee_result_code;

  ee_result_code = EE_ReadVariable(COUNTER_ADDRESS, &counter);
  if (ee_result_code == EE_VAR_FOUND) { // Not First time start
	  if (VerifyDataArray()) {
		  n_bytes = sprintf((char *)log_buffer, "\r\n\n---> Reset - NOT first time. Counter = %d. Demo data array has been verified.\r\n", counter);
	  } else {
		  n_bytes = sprintf((char *)log_buffer, "\r\n\n---> Reset - NOT first time. Counter = %d. Demo data array verification ERROR (try write it again).\r\n", counter);
		  WriteDataArray();
	  }

  } else if (ee_result_code == EE_VAR_NOT_FOUND) { // First time start
	  n_bytes = sprintf((char *)log_buffer, "\r\n\n---> Reset - FIRST time\r\n");
	  counter = 0;
	  WriteDataArray();

  } else {	// Error
	  n_bytes = sprintf((char *)log_buffer, "\r\n\n---> Reset - EEPROM error - %d\r\n", ee_result_code);

  }

  LOG_SendLog(log_buffer, 0, n_bytes);
  SYS_Delay(250);
  MX_IWDG_Reset();

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
	  counter ++;
	  ee_result_code = EE_WriteVariable(COUNTER_ADDRESS, counter);

	  n_bytes = sprintf((char *)log_buffer, "\r\nCounter = %d, write status = %d", counter, ee_result_code);
	  LOG_SendLog(log_buffer, 0, n_bytes);

    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */

	  GPIO_BOARD_Led_ON();
	  SYS_Delay(100);
	  GPIO_BOARD_Led_OFF();
	  SYS_Delay(900);
	  MX_IWDG_Reset();
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  LL_FLASH_SetLatency(LL_FLASH_LATENCY_0);
  while(LL_FLASH_GetLatency()!= LL_FLASH_LATENCY_0)
  {
  }
  LL_RCC_HSE_Enable();

   /* Wait till HSE is ready */
  while(LL_RCC_HSE_IsReady() != 1)
  {

  }
  LL_RCC_LSI_Enable();

   /* Wait till LSI is ready */
  while(LL_RCC_LSI_IsReady() != 1)
  {

  }
  LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSE_DIV_1, LL_RCC_PLL_MUL_2);
  LL_RCC_PLL_Enable();

   /* Wait till PLL is ready */
  while(LL_RCC_PLL_IsReady() != 1)
  {

  }
  LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
  LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_2);
  LL_RCC_SetAPB2Prescaler(LL_RCC_APB2_DIV_2);
  LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);

   /* Wait till System clock is ready */
  while(LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL)
  {

  }
  LL_Init1msTick(2000000);
  LL_SetSystemCoreClock(16000000);
}

/* USER CODE BEGIN 4 */
void USART1_RX_Callback(void)
{
	//uint8_t data = LL_USART_ReceiveData8(USART1);
	//TODO Process this data !!!!!!!!!!!!!!!!!!!!!!!!
}

void USART1_TX_Callback(void)
{
	LOG_EvaluateDataSend();
	if(!LOG_IsInProgress()) {
		LL_USART_DisableIT_TXE(USART1);
	}
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
