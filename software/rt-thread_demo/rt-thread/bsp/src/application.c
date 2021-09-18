/*
 * Copyright (c) 2006-2021, RT-Thread Development Team
 *
 * SPDX-License-Identifier: Apache-2.0
 *
 * Change Logs:
 * Date           Author       Notes
 * 2011-02-14     aozima       first implementation for Nios II.
 * 2011-03-04     aozima       add led.
 */

#include <rtthread.h>
#include <stdio.h>
#include "board.h"
#include "led.h"

/**
 * @addtogroup NIOS_II
 */

/*@{*/

/* thread test */
static rt_thread_t tid1 = RT_NULL;
ALIGN(RT_ALIGN_SIZE)
static char thread_led1_stack[1024];
struct rt_thread thread_led1;
void rt_thread_entry_led(void *parameter) {
	rt_uint32_t count = 0;
	rt_uint32_t led_index = (rt_uint32_t) parameter;
	while (1) {
		/* led on */
#ifndef RT_USING_FINSH
		rt_kprintf("led%d on,count : %d\r\n", led_index, count);
#endif
		count++;
		rt_hw_led_on(led_index);
		rt_thread_delay(RT_TICK_PER_SECOND * led_index);

		/* led off */
#ifndef RT_USING_FINSH
		rt_kprintf("led%d off\r\n", led_index);
#endif
		rt_hw_led_off(led_index);
		rt_thread_delay(RT_TICK_PER_SECOND * led_index);
	}
}

/* timer test */
static struct rt_timer timer1;
static rt_timer_t timer2 = RT_NULL;
static unsigned int timer2_count = 0;
void rt_timer1_overtime_handler(void * parameter) {
	rt_hw_led_toggle(3);
}

void rt_timer2_overtime_handler(void * parameter) {
	rt_hw_led_toggle(4);
	/* stop timr1 after toggling led 10 times */
	if (timer2_count > 9) {
		rt_timer_stop(timer2);
	}
	timer2_count++;
}

int rt_application_init() {

	rt_timer_init(&timer1, "timer1", rt_timer1_overtime_handler, RT_NULL,
	RT_TICK_PER_SECOND * 4, RT_TIMER_FLAG_ONE_SHOT | RT_TIMER_FLAG_HARD_TIMER);
	rt_timer_start(&timer1);

	/* creat a dynamic timer in periodic and soft mode named timer1*/
	timer2 = rt_timer_create("timer2", rt_timer2_overtime_handler, RT_NULL,
	RT_TICK_PER_SECOND * 8, RT_TIMER_FLAG_PERIODIC | RT_TIMER_FLAG_SOFT_TIMER);

	/* start timer1 */
	if (timer2 != RT_NULL)
		rt_timer_start(timer2);

	/* set a hook on switch event */
	//rt_scheduler_switch_sethook(hook_of_scheduler);
	/* init static led1 thread */
	rt_thread_init(&thread_led1, "led1", rt_thread_entry_led, (void*) 1,
			&thread_led1_stack[0], sizeof(thread_led1_stack), 11, 5);
	rt_thread_startup(&thread_led1);

	/* create dynamic led2 thread */
	tid1 = rt_thread_create("led2", rt_thread_entry_led, (void*) 2, 1024, 12,
			5);
	if (RT_NULL != tid1)
		rt_thread_startup(tid1);

	return 0;
}

/*@}*/
