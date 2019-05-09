#include "core/stm32f051x8.h"
#include "plib/stm32f0xx_ll_rcc.h"
#include "plib/stm32f0xx_ll_system.h"
#include "plib/stm32f0xx_ll_bus.h"
#include "plib/stm32f0xx_ll_gpio.h"
#include "plib/stm32f0xx_ll_exti.h"
#include "plib/stm32f0xx_ll_utils.h"
#include "plib/stm32f0xx_ll_cortex.h"
#include "plib/stm32f0xx_ll_usart.h"
#include "plib/stm32f0xx_ll_i2c.h"


/**
  * System Clock Configuration
  * The system Clock is configured as follow :
  *    System Clock source            = PLL (HSI/2)
  *    SYSCLK(Hz)                     = 48000000
  *    HCLK(Hz)                       = 48000000
  *    AHB Prescaler                  = 1
  *    APB1 Prescaler                 = 1
  *    HSI Frequency(Hz)              = 8000000
  *    PLLMUL                         = 12
  *    Flash Latency(WS)              = 1
  */
void rcc_config()
{
    /* Set FLASH latency */
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1);

    /* Enable HSI and wait for activation*/
    LL_RCC_HSI_Enable();
    while (LL_RCC_HSI_IsReady() != 1);

    /* Main PLL configuration and activation */
    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2,
                                LL_RCC_PLL_MUL_12);

    LL_RCC_PLL_Enable();
    while (LL_RCC_PLL_IsReady() != 1);

    /* Sysclk activation on the main PLL */
    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL);

    /* Set APB1 prescaler */
    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1);

    /* Update CMSIS variable (which can be updated also
     * through SystemCoreClockUpdate function) */
    SystemCoreClock = 48000000;
}

/*
 * Clock on GPIOC and set two led pins
 */
void gpio_config()
{
    #if defined(INDICATOR)
        /*
         * Init two default LEDs
         */
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);
        LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8, LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9, LL_GPIO_MODE_OUTPUT);
        /*
         * Init port for indicator
         */
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_0,    LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_1,    LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_2,    LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_3,    LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_4,    LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_5,    LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_6,    LL_GPIO_MODE_OUTPUT);
        /*
         * Digits
         */
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_7,    LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_10,   LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_11,   LL_GPIO_MODE_OUTPUT);
        LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_12,   LL_GPIO_MODE_OUTPUT);
        /*
         * Init port for USER button
         */
        LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
        // LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT);
        /*
         * Encoder
         */
        LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_1, LL_GPIO_PULL_DOWN);
        LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_0, LL_GPIO_PULL_DOWN);
    #endif /* INDICATOR */

    #if defined(MPU)

    #endif /* MPU */

    return;
}


/*
 * Configure external interrupts
 */
void exti_config(void)
{
    #if defined(INDICATOR)
      /*
       * Setting up EXTI by button ( +encoder )
       */
      LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_SYSCFG);

      // LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE1);
      LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE0);
      // LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_1);
      LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_0);

      LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_1);
      LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_1);

      LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_0);
      LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_0);
      /*
       * Setting interrupts
       */
      NVIC_EnableIRQ(EXTI0_1_IRQn);
      NVIC_SetPriority(EXTI0_1_IRQn, 0);
    #endif
}


/*
 * Configure system timer to time 1 ms
 */
void systick_config(uint32_t HCLKFrequency, uint32_t Ticks)
{
    LL_InitTick(HCLKFrequency, Ticks);
    LL_SYSTICK_EnableIT();
    NVIC_SetPriority(SysTick_IRQn, 0);
    return;
}

/*
 * Initialize USART module and associated pins
 */
void usart_config(void)
{
    /*
     * Setting USART pins
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    //USART1_TX
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_9, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_8_15(GPIOA, LL_GPIO_PIN_9, LL_GPIO_AF_1);
    LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_9, LL_GPIO_SPEED_FREQ_HIGH);
    //USART1_RX
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_10, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_8_15(GPIOA, LL_GPIO_PIN_10, LL_GPIO_AF_1);
    LL_GPIO_SetPinSpeed(GPIOA, LL_GPIO_PIN_10, LL_GPIO_SPEED_FREQ_HIGH);
    /*
     * USART Set clock source
     */
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_USART1);
    LL_RCC_SetUSARTClockSource(LL_RCC_USART1_CLKSOURCE_PCLK1);
    /*
     * USART Setting
     */
    LL_USART_SetTransferDirection(USART1, LL_USART_DIRECTION_TX_RX);
    LL_USART_SetParity(USART1, LL_USART_PARITY_NONE);
    LL_USART_SetDataWidth(USART1, LL_USART_DATAWIDTH_8B);
    LL_USART_SetStopBitsLength(USART1, LL_USART_STOPBITS_1);
    LL_USART_SetTransferBitOrder(USART1, LL_USART_BITORDER_LSBFIRST);
    LL_USART_SetBaudRate(USART1, SystemCoreClock,
                         LL_USART_OVERSAMPLING_16, 115200);
    /*
     * USART turn on
     */
    LL_USART_Enable(USART1);
    while (!(LL_USART_IsActiveFlag_TEACK(USART1) &&
             LL_USART_IsActiveFlag_REACK(USART1)));
    return;
}


void i2c_config(void)
{
    /*
     * Clock on the I2C port and configure it
     */
    // SCL - GPIOB6
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_6,
                       LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_6,
                             LL_GPIO_OUTPUT_OPENDRAIN);

    LL_GPIO_SetPinPull(GPIOB, LL_GPIO_PIN_6, LL_GPIO_PULL_UP);

    LL_GPIO_SetAFPin_0_7(GPIOB, LL_GPIO_PIN_6, LL_GPIO_AF_1);
    LL_GPIO_SetPinSpeed(GPIOB, LL_GPIO_PIN_6,
                        LL_GPIO_SPEED_FREQ_HIGH);

    // SDA - GPIOB7
    LL_GPIO_SetPinMode(GPIOB, LL_GPIO_PIN_7,
                       LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetPinOutputType(GPIOB, LL_GPIO_PIN_7,
                             LL_GPIO_OUTPUT_OPENDRAIN);

    LL_GPIO_SetPinPull(GPIOB, LL_GPIO_PIN_7, LL_GPIO_PULL_UP);

    LL_GPIO_SetAFPin_0_7(GPIOB, LL_GPIO_PIN_7, LL_GPIO_AF_1);
    LL_GPIO_SetPinSpeed(GPIOB, LL_GPIO_PIN_7,
                        LL_GPIO_SPEED_FREQ_HIGH);
    /*
     * Clock on the I2C peripheral and set it up
     */
    LL_RCC_SetI2CClockSource(LL_RCC_I2C1_CLKSOURCE_SYSCLK);
    LL_I2C_Disable(I2C1);
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_I2C1);
    LL_I2C_DisableAnalogFilter(I2C1);
    LL_I2C_SetDigitalFilter(I2C1, 1);
    /*
     * Set I2C speed to 100 kHz, for further details refer
     * to lecture
     */
    LL_I2C_SetTiming(I2C1, 0x2000090E);
    LL_I2C_DisableClockStretching(I2C1);
    LL_I2C_SetMasterAddressingMode(I2C1, LL_I2C_ADDRESSING_MODE_7BIT);
    LL_I2C_SetMode(I2C1, LL_I2C_MODE_I2C);
    LL_I2C_Enable(I2C1);

    return;
}
