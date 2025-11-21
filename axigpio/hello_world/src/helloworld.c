/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#define XPAR_AXILITE_SLAVE_0_BASEADDR 0x40000000
#define XPAR_AXILITE_SLAVE_0_HIGHADDR 0x40000fff

int main()
{
    volatile uint32_t *blink_on_reg = (volatile uint32_t *)XPAR_AXILITE_SLAVE_0_BASEADDR;
    volatile uint32_t *blink_off_reg = (volatile uint32_t *)(XPAR_AXILITE_SLAVE_0_BASEADDR + 0x4);
    uint32_t value;
    
    init_platform();
    
    print("Hello World\n\r");
    
    *blink_on_reg = 0x5555;
    value = *blink_on_reg;
    xil_printf("Blink ON register: 0x%08x\n\r", value);
    
    *blink_off_reg = 0xaaaa;
    value = *blink_off_reg;
    xil_printf("Blink OFF register: 0x%08x\n\r", value);
    
    print("Successfully ran Hello World application\n\r");
    
    cleanup_platform();
    return 0;
}
