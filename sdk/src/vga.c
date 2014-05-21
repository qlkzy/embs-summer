/* EMBS Summer Assessment Y8143160 */


#include "vga.h"

#include "xparameters.h"


#define WIDTH          640
#define HEIGHT         480
#define BITS_PER_PIXEL 4

#define QVGA_HEIGHT 240
#define QVGA_WIDTH  320
#define TILE_WIDTH  40
#define TILE_HEIGHT 40

// Set frame buffer location to start of DDR
#define FRAME_BUFFER XPAR_DDR_SDRAM_MPMC_BASEADDR

static const u8 colours[2][10] = {
        {
                0x44,  // Red
                0x22,  // Green
                0x11,  // Blue
                0x33,  // Cyan
                0x55,  // Magenta
                0x66,  // Yellow
                0x77,  // White
                0x00,  // Black
                0x70,  // Vertical stripes
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
                0x70,  // Vertical stripes
                0x77,  // Horizontal stripe
        }
};

static void draw_tile(volatile u8 *offset_fb, u8 *start_edge);

void vga_init()
{
    // Set VGA core frame buffer location
    *((volatile unsigned int *) XPAR_EMBS_VGA_0_BASEADDR) = FRAME_BUFFER;

    // Enable VGA core
    *((volatile unsigned int *) XPAR_EMBS_VGA_0_BASEADDR + 1) = 1;
}

void vga_clear_screen(void)
{
    int i;
    volatile u8 *fb = (volatile u8*)FRAME_BUFFER;

    for (i = 0; i < QVGA_WIDTH * QVGA_HEIGHT * 2; i++) {
        *fb++ = 0;
    }
}


void vga_draw_board(int side, u8 *tiles)
{
    int r, c;
    volatile u8 *fb = (volatile u8*)FRAME_BUFFER;

    for (r = 0; r < side; r++) {
        for (c = 0; c < side; c++) {
            draw_tile(fb + (TILE_WIDTH * c) + (QVGA_WIDTH * TILE_HEIGHT * 2 * r), &tiles[(r * side + c) * 4]);
        }
    }
}


static void draw_tile(volatile u8 *offset_fb, u8 *start_edge)
{
    int r, c, i;
    int e = 0;
    int d1 = 0;
    int d2 = TILE_WIDTH;
    // 2-pixel rows
    for (r = 0; r < TILE_HEIGHT; r++) {
        // interleaved rows (for striping)
        for (i = 0; i < 2; i++) {
            // columns
            for (c = 0; c < TILE_WIDTH; c++) {
                if (c == 0 ||  r+i == 0 ||
                    c == d1 || c == d2) {
                    *offset_fb++ = 0;
                    continue;
                }

                if (c > d1 && c < d2) {
                    e = 0;
                } else if (c > d1 && c > d2) {
                    e = 1;
                } else if (c < d1 && c > d2) {
                    e = 2;
                } else if (c < d1 && c < d2) {
                    e = 3;
                } else {
                }
                *offset_fb++ = colours[i][*(start_edge + e)];
            }
            offset_fb += QVGA_WIDTH - TILE_WIDTH;
        }
        d1++;
        d2--;
    }
}
