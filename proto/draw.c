#include "util.h"

#include <stdio.h>
#include <stdlib.h>

#define MAX_SIDE 6

static int board[MAX_SIDE][MAX_SIDE][4];
static const char *colours[] = {
    "\x1b[38;5;1m",
    "\x1b[38;5;2m",
    "\x1b[38;5;3m",
    "\x1b[38;5;4m",
    "\x1b[38;5;5m",
    "\x1b[38;5;51m",
    "\x1b[38;5;248m",
    "\x1b[38;5;141m",
    "\x1b[38;5;64m",
    "\x1b[38;5;216m",
    "\x1b[38;5;111m",
    "\x1b[38;5;15m",
};

static const char *colour_reset = "\x1b[0m";
    
static void draw_row(int side, int r);

int main(int argc, char *argv[])
{
    int side;

    if (argc < 2)
        ERROR("Expected at least 1 argument\n");
    
    side = atoi(argv[1]);
    
    if (side <= 1)
        ERROR("Expected a square with a side length of at least 2");

    if (side > MAX_SIDE)
        ERROR("Given side is greater than max_side");
    
    while (!feof(stdin)) {
        for (int r = 0; r < side; r++)
            for (int c = 0; c < side; c++)
                scanf("(%d,%d,%d,%d)\n",
                      &board[r][c][0], &board[r][c][1],
                      &board[r][c][2], &board[r][c][3]);
    
        for (int r = 0; r < side; r++)
            draw_row(side, r);

        printf("\n\n----\n\n");
    }


    /* 
     * for (int c = 0; c < NELEM(colours); c++)
     *     printf("%d: %s\u2588%s\n", c, colours[c], colour_reset);
     */

    return 0;
}

static void draw_row(int side, int r)
{
    for (int c = 0; c < side; c++)
        printf(" %s\u2588%s ",
               colours[board[r][c][0]], colour_reset);

    putchar('\n');

    for (int c = 0; c < side; c++)
        printf("%s\u2588%s%sX%s%s\u2588%s",
               colours[board[r][c][3]], colour_reset,
               colours[11], colour_reset,
               colours[board[r][c][1]], colour_reset);

    putchar('\n');

    for (int c = 0; c < side; c++)
        printf(" %s\u2588%s ",
               colours[board[r][c][2]],
               colour_reset);

    putchar('\n');
}

