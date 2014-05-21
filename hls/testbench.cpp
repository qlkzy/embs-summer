#include "toplevel.h"

//uint32 testboard[][4] = {
//		{0, 0, 1, 2},
//		{2, 2, 3, 0},
//		{1, 1, 0, 3},
//		{3, 1, 0, 1}
//};
uint32 testboard[][4] = {
		{2, 8, 9, 3},
		{2, 1, 0, 0},
		{0, 4, 3, 3},
		{0, 7, 3, 4},
		{1, 8, 8, 0},
		{8, 6, 8, 8},
		{6, 1, 8, 9},
		{3, 1, 3, 3},
		{7, 1, 5, 1},
		{0, 0, 8, 5},
		{6, 9, 1, 2},
		{2, 6, 9, 7},
		{5, 1, 0, 0},
		{7, 2, 7, 7},
		{5, 6, 7, 7},
		{1, 3, 5, 6},
		{4, 8, 7, 8},
		{8, 2, 5, 1},
		{9, 7, 7, 5},
		{2, 8, 0, 9},
		{6, 8, 2, 7},
		{6, 2, 1, 4},
		{3, 9, 5, 2},
		{6, 8, 7, 4},
		{3, 4, 6, 0},
		{7, 7, 7, 9},
		{4, 8, 8, 1},
		{6, 2, 8, 5},
		{3, 3, 7, 4},
		{8, 9, 8, 0},
		{7, 8, 8, 3},
		{7, 8, 9, 3},
		{8, 9, 3, 7},
		{5, 6, 3, 8},
		{7, 3, 8, 5},
		{3, 9, 7, 3},
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

    to_hw.write(1);
    to_hw.write(1);
    to_hw.write(1);
    to_hw.write(1);
    to_hw.write(0);

    //Run the hardware
    toplevel(to_hw, from_hw);

    for (int x = 0; x < 4; x++) {
    	from_hw.read();
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
    from_hw.read();
}
