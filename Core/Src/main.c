/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "i2c.h"
#include "i2s.h"
#include "spi.h"
#include "tim.h"
#include "usart.h"
#include "usb_host.h"
#include "gpio.h"



/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
#include "../../keydata/key0.h"
#include "../../keydata/key1.h"
#include "../../keydata/key2.h"
#include "../../keydata/key3.h"
#include "../../keydata/key4.h"
#include <math.h>
#include <stdlib.h>
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void MX_USB_HOST_Process(void);

/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

int _write(int file, char *ptr, int len)
{
	int i = 0;
	 for( i = 0 ; i < len; i++) {
		 ITM_SendChar((*ptr++));
	 }
	 return len;
}

int buff[150];
int buf_index;
int buf_read_index;

void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *tim)
{
	static int pv = 0;
	static int cv = 0;
	int diff;
	cv = HAL_TIM_ReadCapturedValue(tim, TIM_CHANNEL_1);

	if(cv >= pv)
		diff = cv - pv;
	else
		diff = 0xffff - pv + 1 + cv;

	buff[buf_index++] = diff;
	if(buf_index >= 150) buf_index = 0;

	pv = cv;
}

int match(const int buff1[], int buff2[], int size)
{
	  int match = 0;
	  for(int i = 0; i < 68; i++) {
		  if(abs(buff1[i] - buff2[i])  < 10) {
			  match++;
		  }

	  }
	  return match;
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */
  

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_I2C1_Init();
  MX_I2S3_Init();
  MX_SPI1_Init();
  MX_USB_HOST_Init();
  MX_TIM1_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */

  HAL_TIM_IC_Start_IT(&htim1, TIM_CHANNEL_1);
  /* USER CODE END 2 */
 
 

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  int s = sizeof(key0)/sizeof(int);
  printf("key0 size = %d\n", s);
   s = sizeof(key1)/sizeof(int);
  printf("key1 size = %d\n", s);
   s = sizeof(key2)/sizeof(int);
  printf("key2 size = %d\n", s);
   s = sizeof(key3)/sizeof(int);
  printf("key3 size = %d\n", s);
   s = sizeof(key4)/sizeof(int);
  printf("key4 size = %d\n", s);

  while (1)
  {
    /* USER CODE END WHILE */
  //  MX_USB_HOST_Process();

    /* USER CODE BEGIN 3 */
//    printf("HeLLO\n");
	  if( buf_index >= 69) {
		  printf("pressed\n");
		  //HAL_Delay(300);

		  if(1) {//always pass
			  int matchvalue;

			  matchvalue = match(key0, &buff[1], 68);
			  if(matchvalue == 68) {
				  GPIOD->ODR &= ~( (1<<12) |(1<<13) |(1<<14) |(1<<15) ) ;
				  printf("KEY0 MATCHING\n");
			  }

			  matchvalue = match(key1, &buff[1], 68);
			  if(matchvalue == 68) {
				  GPIOD->ODR ^= 1<<12;
				  printf("KEY1 MATCHING\n");
			  }

			  matchvalue = match(key2, &buff[1], 68);
			  if(matchvalue == 68) {
				  GPIOD->ODR ^= 1<<13;
				  printf("KEY2 MATCHING\n");
			  }

			  matchvalue = match(key3, &buff[1], 68);
			  if(matchvalue == 68) {
				  GPIOD->ODR ^= 1<<14;
				  printf("KEY3 MATCHING\n");
			  }

			  matchvalue = match(key4, &buff[1], 68);
			  if(matchvalue == 68) {
				  GPIOD->ODR ^= 1<<15;
				  printf("KEY4 MATCHING\n");
			  }

		  }


		  HAL_Delay(400);
		  buf_read_index = 0;
		  buf_index = 0;
	  }


  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /** Configure the main internal regulator output voltage 
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 8;
  RCC_OscInitStruct.PLL.PLLN = 336;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 7;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_I2S;
  PeriphClkInitStruct.PLLI2S.PLLI2SN = 192;
  PeriphClkInitStruct.PLLI2S.PLLI2SR = 2;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

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
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
