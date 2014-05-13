#include "xparameters.h"
#include <stdio.h>
#include "xil_types.h"
#include "xuartlite_l.h"
#include "xemaclite.h"



#define WIDTH          640
#define HEIGHT         480
#define BITS_PER_PIXEL 4

#define QVGA_HEIGHT 240
#define QVGA_WIDTH  320
#define TILE_WIDTH 40
#define TILE_HEIGHT 40

#define MAX_SIDE 6

#define NELEM(x) (sizeof(x) / sizeof(x[0]))
#define SENTINEL(x) (&x[NELEM(x)])

#define SIDE 6

// Set frame buffer location to start of DDR
#define FRAME_BUFFER XPAR_DDR_SDRAM_MPMC_BASEADDR

static u8 colours[2][10] = {
        {
                0x44,  // Red
                0x22,  // Green
                0x11,  // Blue
                0x33,  // Cyan
                0x55,  // Magenta
                0x66,  // Yellow
                0x77,  // White
                0x00,  // Black
                0x07,  // Vertical stripes
                0x00,  // Horizontal stripe
        },
        {

                0x44,  // Red
                0x22,  // Green
                0x11,  // Blue
                0x33,  // Cyan
                0x55,  // Magenta
                0x66,  // Yellow
                0x77,  // White
                0x00,  // Black
                0x07,  // Vertical stripes
                0x77,  // Horizontal stripe
        }
};

static u8 tiles[MAX_SIDE * MAX_SIDE * 4];

XEmacLite ether;

static const u8 mac_address[] = {0x00, 0x11, 0x22, 0x33, 0x00, 0x12};
static const u8 server_mac[] = {0x00, 0x11, 0x22, 0x44, 0x00, 0x50};

#define DATA_OFFSET 14
#define TILES_OFFSET 7

/*
 * Buffers used for Transmission and Reception of Packets. These are declared
 * as global so that they are not a part of the stack.
 */
static u8 tx_buffer[DATA_OFFSET + TILES_OFFSET + 2];
static u8 rx_buffer[DATA_OFFSET + TILES_OFFSET + (MAX_SIDE * MAX_SIDE * 4)];

static u8 * const destaddr = &tx_buffer[NELEM(mac_address)-1];


static void uart_putc(char c)
{
    if (c == '\n')
        XUartLite_SendByte(XPAR_RS232_DTE_BASEADDR, '\r');
    XUartLite_SendByte(XPAR_RS232_DTE_BASEADDR, c);
}

static int uart_getc()
{
    return XUartLite_RecvByte(XPAR_RS232_DTE_BASEADDR);
}

static int uart_getc_echo()
{
    char c = uart_getc();
    uart_putc(c);
    return c;
}
static u8 hex2i(char c)
{
    if (c >= 'a') {
        return c-'a';
    } else if (c >= 'A') {
        return c-'A';
    } else {
        return c-'0';
    }
}

static char nyb2hex(u8 nyb)
{
    return "0123456789ABCDEF"[nyb & 0xf];
}

// do constant setup stuff
static u8 *setup_buffer()
{
    u8 *txbuf = tx_buffer;

    // destination address
    memcpy(txbuf, server_mac, NELEM(server_mac));
    txbuf += NELEM(server_mac);

    // source address
    memcpy(txbuf, mac_address, NELEM(mac_address));
    txbuf += NELEM(mac_address);

    // type field
    *txbuf++ = 0x55;
    *txbuf++ = 0xab;

    // return fill pointer
    return txbuf;
}

static void display_packet(u8 *buf)
{
    int i;
    print("\r\nDest MAC: ");

    for (i = 0; i < 6; i++) {
        print("0x");
        uart_putc(nyb2hex(*buf >> 4));
        uart_putc(nyb2hex(*buf));
        buf++;
        print(", ");
    }

    print("\r\nSource MAC: ");
    for (i = 0; i < 6; i++) {
        print("0x");
        uart_putc(nyb2hex(*buf >> 4));
        uart_putc(nyb2hex(*buf));
        buf++;
        print(", ");
    }

    print("\r\nType: ");
    for (i = 0; i < 2; i++) {
        print("0x");
        uart_putc(nyb2hex(*buf >> 4));
        uart_putc(nyb2hex(*buf));
        buf++;
        print(", ");
    }

    print("\r\nMarker: ");
    print("0x");
    uart_putc(nyb2hex(*buf >> 4));
    uart_putc(nyb2hex(*buf));
    buf++;
    print("\r\n");

    print("\r\nSize: ");
    print("0x");
    uart_putc(nyb2hex(*buf >> 4));
    uart_putc(nyb2hex(*buf));
    buf++;
    print("\r\n");


    print("\r\nRandom: ");
    for (i = 0; i < 4; i++) {
        print("0x");
        uart_putc(nyb2hex(*buf >> 4));
        uart_putc(nyb2hex(*buf));
        buf++;
        print(", ");
    }
    print("\r\n");


    print("\r\nMax Colours: ");
    print("0x");
    uart_putc(nyb2hex(*buf >> 4));
    uart_putc(nyb2hex(*buf));
    buf++;
    print("\r\n");
}

static void request_puzzle()
{
    u8 *txbuf = setup_buffer();
    u8 req[] = {
            0x01,
            SIDE,
            0x00, 0x00, 0x00, 0x00,
            10,
            0x00,
    };

    memcpy(&tx_buffer[DATA_OFFSET], req, NELEM(req));

    display_packet(tx_buffer);

    XEmacLite_FlushReceive(&ether); //Clear any received messages
    XEmacLite_Send(&ether, tx_buffer, NELEM(req) + XEL_HEADER_SIZE);
}


void drawTile(volatile u8 *offset_fb, u8 *start_edge)
{
    int r, c, i;
    int e = 0;
    int d1 = 0;
    int d2 = TILE_WIDTH;
    // 2-pixel rows
    for (r = 0; r < TILE_HEIGHT / 2; r++) {
        // interleaved rows (for striping)
        for (i = 0; i < 2; i++) {
            // columns
            for (c = 0; c < TILE_WIDTH; c++) {
                if (c > d1 && c < d2) {
                    e = 0;
                } else if (c > d1 && c > d2) {
                    e = 1;
                } else if (c < d1 && c > d2) {
                    e = 2;
                } else if (c < d1 && c < d2) {
                    e = 3;
                } else {
                    *offset_fb++ = 0;
                    continue;
                }
                *offset_fb++ = colours[i][*(start_edge + e)];
            }
            d1++;
            d2--;
            offset_fb += QVGA_WIDTH - TILE_WIDTH;
        }
    }
}

void drawBoard(int side, u8 *tiles)
{
    int r, c;
    volatile u8 *fb = (volatile u8*)FRAME_BUFFER;

    for (r = 0; r < side; r++) {
        for (c = 0; c < side; c++) {
            drawTile(fb + (TILE_WIDTH * c) + (QVGA_WIDTH * TILE_HEIGHT * r), &tiles[(r * side + c) * 4]);
        }
    }
}

void clearScreen(void)
{
    int i;
    volatile u8 *fb = (volatile u8*)FRAME_BUFFER;

    for (i = 0; i < QVGA_WIDTH * QVGA_HEIGHT * 2; i++) {
        *fb++ = 0;
    }
}

// Waits for any byte to be received over UART
void waitForKey(void) {
	XUartLite_RecvByte(XPAR_RS232_DTE_BASEADDR);
}


static void receive_tiles()
{
    int done = 0;
    //Poll for receive packet. rx_len must be defined as volatile!
    volatile int rx_len = 0;

    while (!done) {
        while (rx_len == 0)
            rx_len = XEmacLite_Recv(&ether, rx_buffer);

        if (rx_buffer[0] != 0xff) {
            done = 1;
        } else {
            print("Received unwanted packet");
            continue;
        }

        if (rx_len) {
            u8 *buffer = &rx_buffer[DATA_OFFSET];

            display_packet(rx_buffer);

            memcpy(tiles, buffer+7, SIDE * SIDE * 4);
//            drawBoard(SIDE, buffer+7);
        }
    }
}


int main(void) {
    print("\n\n\rSTARTING...\n\r\n");

    //Initialise the driver
    XEmacLite_Config *etherconfig = XEmacLite_LookupConfig(XPAR_EMACLITE_0_DEVICE_ID);
    XEmacLite_CfgInitialize(&ether, etherconfig, etherconfig->BaseAddress);

    XEmacLite_SetMacAddress(&ether, mac_address); //Set our sending MAC address

    XEmacLite_FlushReceive(&ether); //Clear any received messages

	print("\r\n----\r\nVGA test running. Press any key to enable output.\r\n");

	// Set VGA core frame buffer location
	*((volatile unsigned int *) XPAR_EMBS_VGA_0_BASEADDR) = FRAME_BUFFER;

	// Enable VGA core
	*((volatile unsigned int *) XPAR_EMBS_VGA_0_BASEADDR + 1) = 1;

	while (1) {
	    print("\r\nRequesting tiles\r\n");
	    request_puzzle();
	    print("\r\nTiles requested\r\n");
	    clearScreen();
	    receive_tiles();
	    print("\r\nTiles received\r\n");
        drawBoard(SIDE, tiles);
//	    drawBoard(2, tiles);
	    waitForKey();
	}

	return 0;
}
