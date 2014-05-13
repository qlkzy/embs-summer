#define NOVERB
#include "util.h"

#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

#define BIT(n) (1 << (n))
#define BIT64(n) (((u64)1) << (n))

#define MAX_SIDE  6
#define MAX_TILES (MAX_SIDE * MAX_SIDE)
#define MAX_COLOURS 10

typedef uint64_t u64;
typedef uint8_t u8;
typedef int8_t s8;
typedef bit u8;

typedef struct {
    int tile;
    int rot;
} Placement;

static Placement pp[MAX_TILES];
/* static int avail[MAX_TILES]; */
static u64 avail;
static u8 tiles[MAX_TILES][4];
static u64 colours[MAX_COLOURS];

/* static int avail_tiles; */

static int cp;

static int side;

static int c_left = -1;
static int c_up = -1;

/* static u64 rotations = 0; */
/* static u64 substitutions = 0; */

static inline int colour(int p, int edge)
{
    const int tile = pp[p].tile;
    const int rot = pp[p].rot;
    return tiles[tile][(edge + rot) % 4];
}

static void left_up_colours(void)
{
    int left = cp - 1;
    int up = cp - side;

    if (left / side != cp / side)
        left = -1;

    c_left = left >= 0 ? colour(left, 1) : -1;

    c_up = up >= 0 ? colour(up, 2) : -1;
}

static inline int check(void)
{
    left_up_colours();

    if (c_left >= 0 && colour(cp, 3) != c_left)
        return 0;

    if (c_up >= 0 && colour(cp, 0) != c_up)
        return 0;

    VERB("Check passed");

    return 1;
}

static inline int down(void)
{
    u64 possible = avail;

    VERB("GOING DOWN");

    cp++;

    left_up_colours();
    
    if (c_left >= 0)
        possible &= colours[c_left];

    if (c_up >= 0)
        possible &= colours[c_up];

    VERB("possible=%" PRIX64, possible);    
    
    for (int t = 0; t < side * side; t++) {
        if (possible & BIT64(t)) {
            VERB("Choosing tile %d for place %d", t, cp);
            pp[cp].tile = t;
            pp[cp].rot = 0;
            avail &= ~BIT64(t);
            return 1;
        }
    }

    VERB("Unable to move down, cp=%d", cp);
    return 0;
}

static inline int right(void)
{
    u64 possible;
    VERB("GOING RIGHT");
    /* if we can, find a sibling to try by rotating this tile */
    if (pp[cp].rot < 3) {
        pp[cp].rot++;
        VERB("Tile %d in place %d at rotation %d", pp[cp].tile, cp, pp[cp].rot);
        return 1;
    }

    /* otherwise, find a new tile */
    avail |= BIT64(pp[cp].tile);

    possible = avail;

    left_up_colours();

    if (c_left >= 0)
        possible &= colours[c_left];

    if (c_up >= 0)
        possible &= colours[c_up];

    
    VERB("possible=%" PRIX64, possible);
    
    int t;
    for (t = pp[cp].tile + 1; t < side * side; t++) {
        if (possible & BIT64(t)) {
            /* substitutions++; */
            VERB("Moving right, choosing tile %d for place %d", t, cp);
            pp[cp].tile = t;
            pp[cp].rot = 0;
            avail &= ~BIT64(t);
            return 1;
        }
    }

    VERB("No more distance to move right, cp=%d", cp);

    return 0;
}

static int up(void)
{
    VERB("GOING UP");
    avail |= BIT64(pp[cp].tile);
    pp[cp].tile = 0;
    cp--;
    if (cp == 1)
        INFO("Went up to tile 3");
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
    avail &= ~BIT64(0);
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
        avail |= BIT64(t);
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

static void mapcolours(void)
{
    for (int t = 0; t < side * side; t++)
        for (int e = 0; e < 4; e++)
            colours[tiles[t][e]] |= BIT64(t);
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

    mapcolours();

    solve();

    /* for (int p = 0; p < side * side; p++) */
        /* INFO("p=%d: pp[p].tile=%d; pp[p].rot=%d", p, pp[p].tile, pp[p].rot); */
    
    print();

    return 0;
}
