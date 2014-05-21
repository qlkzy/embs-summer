/* EMBS Summer Assessment Y8143160 */


#include "toplevel.h"

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

/* implicit search tree of placements. We call it pp because it's everywhere */
static Placement pp[MAX_TILES];

/* big set of tiles */
static u4 tiles[MAX_TILES][4];

/* bitmask set of available tiles*/
static u36 avail;

/* bitmask constant for all tiles */
static const u36 all_tiles = 0xfffffffff;

/* lookup table from colours to bitmask set of tiles having that colour */
static u36 colours[MAX_COLOURS];

/* current position in tree */
static s8 cp;

/* side length of square to tile */
static u8 side;

/* number of tiles */
static u8 ntiles;

/* flag to indicate finishing */
static bool terminate;

/* map from a placement-index and an edge to the colour on that edge */
static inline u4 colour(u8 p, u2 edge)
{
    const u8 tile = pp[p].tile;
    const u2 rot = pp[p].rot;
    return tiles[tile][(edge + rot) % 4];
}

static bool left_colour_match(s8 p)
{
	if (p == 0 || (p % side) == 0)
		return true;
	return colour(p - 1, 1) == colour(p, 3);
}

static bool up_colour_match(s8 p)
{
	s8 up = p - side;
	if (up < 0)
		return true;
	return colour(up, 2) == colour(p, 0);
}

static u36 left_possible_mask(s8 p)
{
	s8 left = p - 1;
	if (p == 0)
		return all_tiles;
	if ((left / side) != (p / side))
		return all_tiles;
	return colours[colour(left, 1)];
}

static u36 up_possible_mask(s8 p)
{
	s8 up = p - side;
	if (up < 0)
		return all_tiles;
	return colours[colour(up, 2)];
}

/* check that the most-recent tile fits with the rest */
static inline bool check(s8 p)
{
	return left_colour_match(p) && up_colour_match(p);
}

/* move down the search tree */
static bool down(void)
{
    u36 possible;

    /* ensure that cp stays in range */
    if (cp >= (ntiles - 1))
    	return false;

    /* move current position down the tree */
    cp++;

    /* filter tiles to those which are unused */
    possible = avail;
    /* filter tiles to those which include the colours of neighbours*/
    possible &= left_possible_mask(cp);
    possible &= up_possible_mask(cp);

    /* choose the next possible tile */
    for (int t = 0; t < ntiles; t++) {
        if (possible & BIT36(t)) {
            pp[cp].tile = t;
            pp[cp].rot = 0;
            avail &= ~BIT36(t);
            return true;
        }
    }

    return false;
}

/* move right to the next sibling in the search tree */
static bool right(void)
{
    u36 possible;
    /* if we can, find a sibling to try by rotating this tile */
    if (pp[cp].rot < 3) {
        pp[cp].rot++;
        return true;
    }

    /* otherwise, find a new tile */
    avail |= BIT36(pp[cp].tile);

    /* filter tiles to those which are unused */
    possible = avail;

    /* filter tiles to those which include the colours of neighbours*/
    possible &= left_possible_mask(cp);
    possible &= up_possible_mask(cp);

    /* choose the first available tile, slowly */
    for (u8 t = pp[cp].tile + 1; t < ntiles; t++) {
        if (possible & BIT36(t)) {
            pp[cp].tile = t;
            pp[cp].rot = 0;
            avail &= ~BIT36(t);
            return true;
        }
    }

    return false;
}

/* move up the search tree */
static bool up(void)
{
    avail |= BIT36(pp[cp].tile);
    pp[cp].tile = 0;
    cp--;
    if (cp < 0)
    	terminate = true;
 	return true;
}

/* move up and right in the search tree until we reach a valid state */
static void backtrack(void)
{
    do {
        while (!right() && !terminate)
            up();
    } while (!check(cp) && !terminate);
}

/* step to the next valid state in the search tree,
 * going down if possible and otherwise backtracking */
static void step(void)
{
	if (!down())
		backtrack();

    if (!check(cp))
    	backtrack();
}

/* run the solver until a solution is found */
static void solve(void)
{
    do {
        step();
    } while ((cp < ntiles - 1) && !terminate);
}

/* reset all data structures */
static void init(void)
{
	/* reset position */
    cp = 0;

    /* reset termination flag */
    terminate = false;

    // reset available set
    for (u8 t = 0; t < MAX_TILES; t++)
        avail |= BIT36(t);

    // reset colour sets
    for (u4 c = 0; c < MAX_COLOURS; c++)
    	colours[c] = 0;

    for (u8 p = 0; p < MAX_TILES; p++) {
    	pp[p].tile = 0;
    	pp[p].rot = 0;
    }
}

/* build the colour -> valid tile sets lookup table */
static void mapcolours(void)
{
    for (int t = 0; t < ntiles; t++)
        for (int e = 0; e < 4; e++)
            colours[tiles[t][e]] |= BIT36(t);
}

/* magic flag to enforce sequencing */
volatile bool seq;

//Top-level function
void toplevel(hls::stream<uint32> &input, hls::stream<uint32> &output) {
#pragma HLS INTERFACE ap_fifo port=input
#pragma HLS INTERFACE ap_fifo port=output
#pragma HLS RESOURCE variable=input core=AXI4Stream
#pragma HLS RESOURCE variable=output core=AXI4Stream
#pragma HLS INTERFACE ap_ctrl_none port=return

		uint32 command;

		init();

		side = input.read();
		ntiles = side * side;

		for(u8 t = 0; t < ntiles; t++)
			for (u8 e = 0; e < 4; e++)
				tiles[t][e] = input.read();

		mapcolours();

		// we start off with tile 0 in position 0
	    avail &= ~BIT36(0);

	    seq = 1;
	    while (!terminate) {
	    	if (seq == 1)
	    		solve();

			if (terminate) {
				output.write(0);
				break;
			}

			/* use magic flag to enforce sequencing */
			seq = 0;
			output.write(1);
			if (seq == 0)
				command = input.read();
			seq = 1;

			/* command 0: terminate */
			if (command == 0)
				break;

			/* command 1: write output */
			if (command == 1)
				for (u8 p = 0; p < ntiles; p++)
					for(u8 e = 0; e < 4; e++)
						output.write(colour(p, e));

			/* any other command (canonically 2) will cause search
			 * to continue without output */
			if (seq == 0)
				backtrack();
			seq = 1;
	    }
}
