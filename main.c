/*
 * It is just simple and pure template project
 * It does absolutely nothing and indicates that toolchain
 * is installed correctly.
 */
//библиотеки модуля тактирования
#include "stm32f1xx_ll_rcc.h"
#include "stm32f1xx_ll_system.h"
//библиотека тактирования шин АРВ АНВ
#include "stm32f1xx_ll_bus.h"
//библиотека gpio
#include "stm32f1xx_ll_gpio.h"



static void rcc_config()
{
LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);//from stm32f0xx_ll_system.h

LL_RCC_HSE_Enable();//from rcc
while (LL_RCC_HSE_IsReady() != 1);




LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSE_DIV_2,
                            LL_RCC_PLL_MUL_12);
LL_RCC_PLL_Enable();
while (LL_RCC_PLL_IsReady() != 1);
LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);

while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

LL_RCC_SetAPB2Prescaler(LL_RCC_APB2_DIV_1);
}

static void gpio_config(void)
{
    LL_APB2_GRP1_EnableClock(LL_APB2_GRP1_PERIPH_GPIOC);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_13, LL_GPIO_MODE_OUTPUT);
    
  
}


int main(void)
{
    rcc_config();
    gpio_config();

    
 while(1){
	LL_GPIO_SetOutputPin(GPIOC, LL_GPIO_PIN_13);
	//LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_13);
			
		for (int i = 0; i < 1500000; i++)	/* Wait a bit. */
			__asm__("nop");

	LL_GPIO_ResetOutputPin(GPIOC, LL_GPIO_PIN_13);	
		for (int i = 0; i < 1500000; i++)	/* Wait a bit. */
			__asm__("nop");
	};
	


    return 0;
}
