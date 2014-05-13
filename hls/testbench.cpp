#include "toplevel.h"

//uint32 testboard[][4] = {
//		{0, 0, 1, 2},
//		{2, 2, 3, 0},
//		{1, 1, 0, 3},
//		{3, 1, 0, 1}
//};
uint32 testboard[][4] = {
		{8, 4, 5, 2},
		{6, 3, 2, 0},
		{4, 5, 3, 0},
		{9, 5, 5, 2},
		{3, 7, 4, 0},
		{2, 0, 8, 0},
		{5, 9, 8, 4},
		{0, 0, 0, 6},
		{9, 3, 5, 0},
		{8, 7, 8, 9},
		{8, 3, 2, 8},
		{2, 5, 1, 0},
		{2, 6, 0, 5},
		{6, 2, 5, 1},
		{6, 0, 2, 1},
		{9, 5, 8, 8},
		{4, 5, 9, 5},
		{2, 2, 3, 9},
		{4, 0, 9, 0},
		{2, 6, 9, 7},
		{2, 4, 7, 8},
		{8, 9, 0, 3},
		{8, 3, 8, 2},
		{2, 1, 1, 7},
		{8, 2, 8, 8},
		{3, 7, 0, 6},
		{0, 2, 1, 9},
		{0, 2, 1, 2},
		{8, 4, 9, 4},
		{8, 5, 5, 7},
		{8, 4, 3, 8},
		{0, 6, 5, 4},
		{2, 6, 0, 2},
		{7, 4, 2, 7},
		{5, 2, 2, 6},
		{5, 7, 8, 6},
};

uint32 resultboard[36][4];

int main() {
    hls::stream<uint32> to_hw, from_hw;

    to_hw.write(6);

    //Write input data
    for(int i = 0; i < 6 * 6; i++) {
    	for (int e = 0; e < 4; e++) {
        	to_hw.write(testboard[i][e]);
    	}
    }

    //Run the hardware
    toplevel(to_hw, from_hw);

    for (int i = 0; i < 6 * 6; i++) {
    	for (int e = 0; e < 4; e++) {
    		resultboard[i][e] = from_hw.read();
    	}
    }

    for (int t = 0; t < 6 * 6; t++) {
        printf("(%d, %d, %d, %d)\n",
        		(int)resultboard[t][0],
        		(int)resultboard[t][1],
        		(int)resultboard[t][2],
        		(int)resultboard[t][3]);
    }
}
