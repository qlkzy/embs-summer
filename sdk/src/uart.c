/* EMBS Summer Assessment Y8143160 */


#include "uart.h"
#include "util.h"

#include "xparameters.h"
#include "xuartlite_l.h"

#include <ctype.h>

/* one-character buffer for ungetc */
static int uart_buf = 0;

void uart_ungetc(int c)
{
    uart_buf = c;
}

void uart_putc(int c)
{
    if (c == '\n')
        XUartLite_SendByte(XPAR_RS232_DTE_BASEADDR, '\r');
    XUartLite_SendByte(XPAR_RS232_DTE_BASEADDR, c);
}

int uart_getc()
{
    if (uart_buf) {
        int c = uart_buf;
        uart_buf = 0;
        return c;
    }
    return XUartLite_RecvByte(XPAR_RS232_DTE_BASEADDR);
}

int uart_getc_echo()
{
    if (uart_buf) {
        int c = uart_buf;
        uart_buf = 0;
        return c;
    }
    int c = uart_getc();
    uart_putc(c);
    return c;
}

u32 uart_read_u32(void)
{
    u8 c;
    u32 val = 0;
    while (isspace(c = uart_getc_echo()))
        ;
    uart_ungetc(c);
    while (isdigit(c = uart_getc_echo())) {
        val *= 10;
        val += c - '0';
    }
    uart_ungetc(c);
    return val;
}

void uart_print_u32(u32 val)
{
    char buf[11];
    char *pb = SENTINEL(buf);
    *--pb = '\0';
    do {
        *--pb = '0' + val % 10;
        val /= 10;
    } while (val > 0);
    print(pb);
}

void uart_print_str(const char *val)
{
    while (*val)
        uart_putc(*val++);
}
