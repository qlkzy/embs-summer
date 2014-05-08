#define NOVERB
#include "util.h"

#include <stdio.h>
#include <stdlib.h>

#define MAX_SIDE  6
#define MAX_TILES (MAX_SIDE * MAX_SIDE)


static int down(void);
static int right(void);
static int up(void);

typedef struct {
    int tile;
    int rot;
} Placement;

static Placement pp[MAX_TILES];
static int avail[MAX_TILES];
static int tiles[MAX_TILES][4];

/* static int avail_tiles; */

static int cp;

static int side;

static int colour(int p, int edge)
{
    const int tile = pp[p].tile;
    const int rot = pp[p].rot;
    return tiles[tile][(edge + rot) % 4];
}

static int check(void)
{
    int left = cp - 1;
    int up = cp - side;
    
    if (left / side != cp / side)
        left = -1;
    
    if (left >= 0 && colour(cp, 3) != colour(left, 1))
        return 0;
    
    if (up >= 0 && (colour(cp, 0) != colour(up, 2)))
        return 0;

    /* 
     * if (up >= 0)
     *     VERB("cp=%d, up=%d; colour(cp, 0)=%d, colour(up, 2)=%d", cp, up, colour(cp, 0), colour(up, 2));
     *     /\* return 0; *\/
     */
        
    VERB("Check passed");
    
    return 1;
}

static int down(void)
{
    VERB("GOING DOWN");

    cp++;
    for (int t = 0; t < side * side; t++) {
        if (avail[t]) {
            VERB("Choosing tile %d for place %d", t, cp);
            pp[cp].tile = t;
            avail[t] = 0;
            return 1;
        }
    }

    VERB("Unable to move down, cp=%d", cp);
    return 0;
}

static int right(void)
{
    VERB("GOING RIGHT");
    /* if we can, find a sibling to try by rotating this tile */
    if (pp[cp].rot < 4) {
        pp[cp].rot++;
        return 1;
    }
    
    /* otherwise, find a new tile */
    avail[pp[cp].tile] = 1;

    int t;
    for (t = pp[cp].tile + 1; t < side * side; t++) {
        if (avail[t]) {
            VERB("Moving right, choosing tile %d for place %d", t, cp);
            pp[cp].tile = t;
            avail[t] = 0;
            return 1;
        }
    }
    
    VERB("No more distance to move right, cp=%d", cp);
    
    return 0;
}

static int up(void)
{
    VERB("GOING UP");
    avail[pp[cp].tile] = 1;
    pp[cp].tile = 0;
    cp--;
    if (cp < 0)
        ERROR("Tried to rewind past the top of the tree");
    return 1;
}

static void step(void)
{
    VERB("Stepping, cp=%d", cp);

    down();

    if (cp == side * side)
        return;
    
    if (check())
        return;
    
    do {
        while (!right()) {
            up();
        }
    } while (!check());
}

static void solve(void)
{
    int steps = 0;
    avail[0] = 0;
    while (cp < side * side) {
        step();
        steps++;
    }
    INFO("Solution took %d steps", steps);
}

static void init(void)
{
    cp = 0;
    for (int t = 0; t < MAX_TILES; t++)
        avail[t] = 1;
}

static void readargs(int argc, char *argv[])
{
    if (argc < 2)
        ERROR("Expected at least 1 argument\n");
    
    side = atoi(argv[1]);
    
    if (side < 2)
        ERROR("Given side length (%d) is less than two", side);

    if (side > MAX_SIDE)
        ERROR("Given side (%d) is greater than MAX_SIDE (%d)", side, MAX_SIDE);
}

static void readtiles(void)
{
    for (int t = 0; t < side * side; t++)
        scanf("(%d,%d,%d,%d)\n",
              &tiles[t][0], &tiles[t][1],
              &tiles[t][2], &tiles[t][3]);
}

static void print(void)
{
    for (int p = 0; p < side * side; p++) {
        printf("(%d, %d, %d, %d)\n",
               colour(p, 0),
               colour(p, 1),
               colour(p, 2),
               colour(p, 3));
    }
}

int main(int argc, char *argv[])
{
    init();
    
    readargs(argc, argv);
    
    readtiles();
    
    solve();

    /* 
     * for (int t = 0; t < side * side; t++)
     *     pp[t].tile = t;
     */
    
    print();
    
    return 0;
}
