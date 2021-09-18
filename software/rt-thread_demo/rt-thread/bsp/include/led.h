/*
 * led.h
 *
 *  Created on: 2021Äê9ÔÂ15ÈÕ
 *      Author: zhangyuanbin
 */

#ifndef LED_H_
#define LED_H_

#include "system.h"
#include "altera_avalon_pio_regs.h"

// trun on led n
#define rt_hw_led_on(n) IOWR_ALTERA_AVALON_PIO_DATA( \
    LED_BASE,                                        \
    IORD_ALTERA_AVALON_PIO_DATA(LED_BASE) | 1 << n)
// trun off led n
#define rt_hw_led_off(n) IOWR_ALTERA_AVALON_PIO_DATA( \
    LED_BASE,                                         \
    IORD_ALTERA_AVALON_PIO_DATA(LED_BASE) & ~(1 << n))
// toggle led n
#define rt_hw_led_toggle(n) IOWR_ALTERA_AVALON_PIO_DATA( \
    LED_BASE,                                         \
    IORD_ALTERA_AVALON_PIO_DATA(LED_BASE) ^ (1 << n))

#endif /* LED_H_ */
