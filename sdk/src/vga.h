/* EMBS Summer Assessment Y8143160 */


#ifndef VGA_H
#define VGA_H

#include "xil_types.h"

void vga_init(void);
void vga_clear_screen(void);

void vga_draw_board(int side, u8 *tiles);

#endif /* VGA_H */
