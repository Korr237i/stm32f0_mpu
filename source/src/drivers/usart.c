#include "../../core/stm32f051x8.h"

#include "../../plib/stm32f0xx_ll_usart.h"

#include "../library/xprintf.h"
#include "usart.h"



char usart_getc(void)
{
    while (!(LL_USART_IsActiveFlag_RXNE(USART1)));
    return LL_USART_ReceiveData8(USART1);
}


void usart_putc(char symbol)
{
    while (!LL_USART_IsActiveFlag_TXE(USART1));
    LL_USART_TransmitData8(USART1, symbol);
    while (!LL_USART_IsActiveFlag_TC(USART1));
}


/*
 * Set callback for out device
 */
void printf_config(void)
{
    xdev_out(usart_putc);
    xdev_in(usart_getc);
    return;
}
