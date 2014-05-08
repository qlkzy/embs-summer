#include "util.h"

#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

#define MAX_SIDE 6

#define BIT(n) (1 << (n))

typedef struct {
    int tile;
    int rot;
} Place;

static Place places[MAX_SIDE * MAX_SIDE];

static int tiles[MAX_SIDE * MAX_SIDE][4];

static int board[MAX_SIDE][MAX_SIDE][4];

static int side;

static int cplace;

static void readargs(int argc, char *argv[]);
static void readboard(void);

static void puttiles(void);

static int check(void);

static void printboard(void);

static int pcolour(int pind, int edge);

static int prow(int pind);
static int pcol(int pind);

static int inboard(int r, int c);

static int placed(int tile);
static void nexttile(void);

int main(int argc, char *argv[])
{
    int loops = 0;
    readargs(argc, argv);

    readboard();

    for (;;) {
        loops++;
        puttiles();

        if (check()) {
            cplace++;
            if (cplace >= side * side)
                break;
            places[cplace].tile = 0;
            nexttile();
        }
        else {
            if (places[cplace].rot < 4) {
                places[cplace].rot++;
            } else {
                nexttile();
                if (places[cplace].tile >= side * side) {
                    places[cplace].tile = 0;
                    cplace--;
                    nexttile();
                }
            }
        }
    }
    
    for (int i = 0; i < side * side; i++) {
        INFO("placement %d: tile %d, rotation %d\n", i, places[i].tile, places[i].rot);
    }

    INFO("loops=%d", loops);
    
    printboard();
}

static void readargs(int argc, char *argv[])
{
    if (argc < 2)
        ERROR("Expected at least 1 argument\n");
    
    side = atoi(argv[1]);
    
    if (side <= 1)
        ERROR("Expected a square with a side length of at least 2");

    if (side > MAX_SIDE)
        ERROR("Given side is greater than max_side");
}

static void readboard(void)
{
    for (int t = 0; t < side * side; t++)
        scanf("(%d,%d,%d,%d)\n",
              &tiles[t][0], &tiles[t][1],
              &tiles[t][2], &tiles[t][3]);
}

static void puttiles(void)
{
    for (int pind = 0; pind <= cplace; pind++) {
        for (int edge = 0; edge < 4; edge++) {
            board[prow(pind)][pcol(pind)][edge] = pcolour(pind, edge);
        }
    }
}

static int check(void)
{
    for (int r = 0; r < side; r++) {
        for (int c = 0; c < side; c++) {
            if (!inboard(r, c)) continue;
            
            if (inboard(r-1, c) && board[r-1][c][2] != board[r][c][0]) return 0;
            if (inboard(r+1, c) && board[r+1][c][0] != board[r][c][2]) return 0;

            if (inboard(r, c-1) && board[r][c-1][1] != board[r][c][3]) return 0;
            if (inboard(r, c+1) && board[r][c+1][3] != board[r][c][1]) return 0;
        }
    }
    return 1;
}

static void printboard(void)
{
    for (int pind = 0; pind <= cplace; pind++) {
        printf("(%d, %d, %d, %d)\n",
               pcolour(pind, 0),
               pcolour(pind, 1),
               pcolour(pind, 2),
               pcolour(pind, 3));
    }
}

static int pcolour(int pind, int edge)
{
    return tiles[places[pind].tile][(edge + places[pind].rot) % 4];
}

static int prow(int pind)
{
    return pind / side;
}

static int pcol(int pind)
{
    return pind % side;
}

static int inboard(int r, int c)
{
    return (r >= 0 && c >= 0 &&
            prow(cplace) >= r &&
            pcol(cplace) >= c);
        
}

static int placed(int tile)
{
    for (int p = 0; p < cplace; p++)
        if (places[p].tile == tile)
            return 1;
    return 0;
}

static void nexttile(void)
{
    places[cplace].rot = 0;
    do {
        places[cplace].tile++;
    } while (placed(places[cplace].tile)
             && places[cplace].tile < side * side);
}
