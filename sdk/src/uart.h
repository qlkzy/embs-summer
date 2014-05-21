/* EMBS Summer Assessment Y8143160 */


#ifndef UART_H
#define UART_H

#include "xil_types.h"


int uart_getc(void);
int uart_getc_echo(void);
void uart_ungetc(int c);

void uart_putc(int c);

u32 uart_read_u32(void);
void uart_print_u32(u32 val);

void uart_print_str(const char *str);


#define UART_PRINTVAR(v)          \
    do {                           \
        uart_print_str(#v "=");    \
        uart_print_u32(v);         \
        uart_putc('\n');           \
    } while (0)


#endif /* UART_H */
