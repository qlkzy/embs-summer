#include "util.h"

#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define MAX_SIDE 6

static int field[MAX_SIDE * 3][MAX_SIDE * 3];

static void print_tile(int x, int y);

int main(int argc, char *argv[])
{
    int side, maxcolour;

    srand(time(NULL));
    
    if (argc < 3)
        ERROR("Expected at least 2 arguments\n");
    
    side = atoi(argv[1]);
    
    if (side <= 1)
        ERROR("Expected a square with a side length of at least 2");

    if (side > MAX_SIDE)
        ERROR("Given side is greater than max_side");

    maxcolour = atoi(argv[2]);
    
    if (maxcolour <= 1)
        ERROR("Expected at least 2 colours");
    
    /* initialise random field */
    for (unsigned int r = 0; r < NELEM(field); r++)
        for (unsigned int c = 0; c < NELEM(field[0]); c++)
            field[r][c] = rand() % maxcolour;
    
    for (int x = 0; x < side; x++)
        for (int y = 0; y < side; y++)
            print_tile(x, y);
    
    return 0;
}

static void print_tile(int x, int y)
{
    int or = 2 * y;
    int oc = 2 * x;
    printf("(%d, %d, %d, %d)\n",
           field[or+1][oc],
           field[or+2][oc+1],
           field[or+1][oc+2],
           field[or][oc+1]);
}
