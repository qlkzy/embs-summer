#ifndef TOPLEVEL_H
#define TOPLEVEL_H

#include <stdio.h>
#include <stdlib.h>
#include <ap_int.h>
#include <hls_stream.h>

//Typedefs
typedef ap_uint<32> uint32;
typedef ap_int<32> int32;


//Prototypes
void toplevel(hls::stream<uint32> &input, hls::stream<uint32> &output);


#endif
