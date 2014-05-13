#include "toplevel.h"

#define ERROR(...)
#define INFO(...)
#define VERB(...)


#define BIT(n) (1 << (n))
#define BIT36(n) (((u36)1) << (n))

#define MAX_SIDE  6
#define MAX_TILES (MAX_SIDE * MAX_SIDE)
#define MAX_COLOURS 10

typedef ap_uint<36> u36;
typedef ap_uint<8> u8;
typedef ap_int<8> s8;
typedef ap_uint<4> u4;
typedef ap_uint<2> u2;
typedef ap_int<1> u1;

typedef struct {
    u8 tile;
    u2 rot;
} Placement;

static Placement pp[MAX_TILES];
/* static int avail[MAX_TILES]; */
static u36 avail;
static u4 tiles[MAX_TILES][4];
static u36 colours[MAX_COLOURS];

/* static int avail_tiles; */

static u8 cp;

static u8 side;

static s8 c_left = -1;
static s8 c_up = -1;

/* static u36 rotations = 0; */
/* static u36 substitutions = 0; */

static inline u4 colour(u8 p, u2 edge)
{
    const u8 tile = pp[p].tile;
    const u2 rot = pp[p].rot;
    return tiles[tile][(edge + rot) % 4];
}

static void left_up_colours(void)
{
    s8 left = cp - 1;
    s8 up = cp - side;

    if (left / side != cp / side)
        left = -1;

    c_left = (left >= 0) ? (s8)colour(left, 1) : (s8)-1;

    c_up = (up >= 0) ? (s8)colour(up, 2) : (s8)-1;
}

static inline bool check(void)
{
    left_up_colours();

    if (c_left >= 0 && colour(cp, 3) != c_left)
        return false;

    if (c_up >= 0 && colour(cp, 0) != c_up)
        return false;

    VERB("Check passed");

    return true;
}

static inline bool down(void)
{
    u36 possible = avail;

    VERB("GOING DOWN");

    cp++;

    left_up_colours();

    if (c_left >= 0)
        possible &= colours[c_left];

    if (c_up >= 0)
        possible &= colours[c_up];

    VERB("possible=%" PRIX36, possible);

    for (int t = 0; t < side * side; t++) {
        if (possible & BIT36(t)) {
            VERB("Choosing tile %d for place %d", t, cp);
            pp[cp].tile = t;
            pp[cp].rot = 0;
            avail &= ~BIT36(t);
            return true;
        }
    }

    VERB("Unable to move down, cp=%d", cp);
    return false;
}

static inline bool right(void)
{
    u36 possible;
    VERB("GOING RIGHT");
    /* if we can, find a sibling to try by rotating this tile */
    if (pp[cp].rot < 3) {
        pp[cp].rot++;
        VERB("Tile %d in place %d at rotation %d", pp[cp].tile, cp, pp[cp].rot);
        return true;
    }

    /* otherwise, find a new tile */
    avail |= BIT36(pp[cp].tile);

    possible = avail;

    left_up_colours();

    if (c_left >= 0)
        possible &= colours[c_left];

    if (c_up >= 0)
        possible &= colours[c_up];


    VERB("possible=%" PRIX36, possible);

    u8 t;
    for (t = pp[cp].tile + 1; t < side * side; t++) {
        if (possible & BIT36(t)) {
            /* substitutions++; */
            VERB("Moving right, choosing tile %d for place %d", t, cp);
            pp[cp].tile = t;
            pp[cp].rot = 0;
            avail &= ~BIT36(t);
            return true;
        }
    }

    VERB("No more distance to move right, cp=%d", cp);

    return false;
}

static bool up(void)
{
    VERB("GOING UP");
    avail |= BIT36(pp[cp].tile);
    pp[cp].tile = 0;
    cp--;
    if (cp == 1)
        INFO("Went up to tile 3");
    if (cp < 0)
        ERROR("Tried to rewind past the top of the tree");
    return true;
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
    avail &= ~BIT36(0);
    while (cp < side * side) {
        step();
    }
}

static void init(void)
{
    cp = 0;
    for (int t = 0; t < MAX_TILES; t++)
        avail |= BIT36(t);
}

static void mapcolours(void)
{
    for (int t = 0; t < side * side; t++)
        for (int e = 0; e < 4; e++)
            colours[tiles[t][e]] |= BIT36(t);
}

//Top-level function
void toplevel(hls::stream<uint32> &input, hls::stream<uint32> &output) {
#pragma HLS INTERFACE ap_fifo port=input
#pragma HLS INTERFACE ap_fifo port=output
#pragma HLS RESOURCE variable=input core=AXI4Stream
#pragma HLS RESOURCE variable=output core=AXI4Stream
#pragma HLS INTERFACE ap_ctrl_none port=return

		init();

		side = input.read();

		for(u8 t = 0; t < side * side; t++) {
			for (u8 e = 0; e < 4; e++) {
				tiles[t][e] = input.read();
			}
		}

		mapcolours();

		solve();

		for (u8 p = 0; p < side * side; p++) {
			for(u8 e = 0; e < 4; e++) {
				output.write(colour(p, e));
			}
		}

}
