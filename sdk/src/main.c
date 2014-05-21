/* EMBS Summer Assessment Y8143160 */

#include "uart.h"
#include "vga.h"
#include "eth.h"
#include "config.h"

#include "xparameters.h"

#include "xil_types.h"
#include "fsl.h"

#include <stdio.h>
#include <ctype.h>


#define NELEM(x) (sizeof(x) / sizeof(x[0]))
#define SENTINEL(x) (&x[NELEM(x)])

static u8 tiles[MAX_SIDE * MAX_SIDE * 4];
static u8 *init_tiles;

static u8 max_colours = 10;
static u32 seed = 0;
static u8 side = 4;
static int run = 0;

static void do_command(void)
{
    int command;
    while (isspace(command = uart_getc_echo()))
        ;
    switch (command) {
    case 'c':
        max_colours = uart_read_u32();
        break;
    case 's':
        seed = uart_read_u32();
        break;
    case 'd':
        side = uart_read_u32();
        break;
    case 'r':
        run = 1;
        break;
    }
}



void print_board(int side, u8 *tiles)
{
    int r, c;
    uart_putc('\n');
    for (r = 0; r < side; r++) {
        for (c = 0; c < side; c++) {
            uart_putc(' ');
            uart_print_u32(tiles[(r * side + c) * 4]);
            uart_putc(' ');
        }
        uart_putc('\n');
        for (c = 0; c < side; c++) {
            uart_print_u32(tiles[(r * side + c) * 4 + 3]);
            uart_putc(' ');
            uart_print_u32(tiles[(r * side + c) * 4 + 1]);
        }
        uart_putc('\n');
        for (c = 0; c < side; c++) {
            uart_putc(' ');
            uart_print_u32(tiles[(r * side + c) * 4 + 2]);
            uart_putc(' ');
        }
        uart_putc('\n');
    }
}


void hls_send_tiles(void)
{
    int e;
    putfslx(side, 0, FSL_DEFAULT);
    for (e = 0; e < side * side * 4; e++) {
        putfslx(init_tiles[e], 0, FSL_DEFAULT);
    }
}

void hls_receive_tiles(void)
{
    int e;
    for (e = 0; e < side * side * 4; e++) {
        getfslx(tiles[e], 0, FSL_DEFAULT);
    }
}

/* solve using hardware. a little convoluted because previous==restart+fast-forward*/
void solve(void)
{
    int response;
    int command;
    int done = 0;
    int solution = 0;
    int target_solution = 1;

    hls_send_tiles();

    uart_print_str("Solving...");

    while (!done) {

        getfslx(response, 0, FSL_DEFAULT);

        if (response == 0) {
            uart_print_str("no more solutions to display...");
            return;
        }

        uart_print_str("solution found");

        UART_PRINTVAR(solution);
        UART_PRINTVAR(target_solution);
        solution++;
        if (target_solution > solution) {
            uart_print_str("...");
            putfslx(2, 0, FSL_DEFAULT);
            continue;
        }

        putfslx(1, 0, FSL_DEFAULT);

        hls_receive_tiles();

        vga_clear_screen();
        vga_draw_board(side, tiles);
        print_board(side, tiles);

        while (1) {
            command = uart_getc();

            if (command == 'a') {
                done = 1;
                break;
            } else if (command == 'p') {
                target_solution--;
                if (target_solution < 0)
                    target_solution = 0;
                getfslx(response, 0, FSL_DEFAULT);
                if (response == 0)
                    return;
                putfslx(0, 0, FSL_DEFAULT);
                hls_send_tiles();
                solution = 0;
                break;
            } else if (command == 'n') {
                target_solution++;
                break;
            }
        }

        uart_print_str("next solution...");
    }

    getfslx(response, 0, FSL_DEFAULT);
    if (response != 0)
        putfslx(0, 0, FSL_DEFAULT);

}

int main(void) {
    uart_print_str("\n\nSTARTING...\n\n");

    vga_init();

	while (1) {


	    while (!run) {
	        uart_print_str("\nEnter a command: ");
	        do_command();
	    }
        run = 0;

        UART_PRINTVAR(seed);

	    uart_print_str("\nRequesting puzzle...");
	    eth_request_tiles(side, seed, max_colours, &init_tiles);
	    uart_print_str("received.\n");

	    UART_PRINTVAR(seed);

	    uart_print_str("Solving...");
	    solve();
	    uart_print_str("done.\n");
	}

	return 0;
}
