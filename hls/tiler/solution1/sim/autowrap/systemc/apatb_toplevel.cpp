// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.4
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ==============================================================


#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "autosim_file.h"
#define AP_INT_MAX_W 32678

#include "ap_int.h"

#include "hls_stream.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;




   #define AUTOTB_TVIN_input_V_V  "../tv/cdatafile/c.toplevel.autotvin_input_V_V.dat"
   #define WRAPC_STREAM_SIZE_IN_input_V_V  "../tv/stream_size/stream_size_in_input_V_V.dat"
   #define AUTOTB_TVOUT_output_V_V  "../tv/cdatafile/c.toplevel.autotvout_output_V_V.dat"
   #define AUTOTB_TVIN_output_V_V  "../tv/cdatafile/c.toplevel.autotvin_output_V_V.dat"
   #define WRAPC_STREAM_SIZE_OUT_output_V_V  "../tv/stream_size/stream_size_out_output_V_V.dat"
   #define INTER_TCL  "../tv/cdatafile/ref.tcl"

   #define AUTOTB_TVOUT_PC_output_V_V  "../tv/rtldatafile/rtl.toplevel.autotvout_output_V_V.dat"

class INTER_TCL_FILE {
    public:
//functions
        INTER_TCL_FILE(const char* name) {
            mName = name;
            input_V_V_depth = 0;
            output_V_V_depth = 0;
            trans_num =0;
        }
        ~INTER_TCL_FILE() {
            mFile.open(mName);
            if (!mFile.good() ) {
                cout<<"Failed to open file ref.tcl."<<endl;
                exit (1);
            }
            string total_list = get_depth_list();
            mFile<<"set depth_list {\n";
            mFile<<total_list; 
            mFile<<"}\n";
            mFile<<"set trans_num "<<trans_num<<endl;
            mFile.close();
        }
        string get_depth_list () {
            stringstream total_list;
            total_list<<"   {input_V_V "<< input_V_V_depth << "}\n";
            total_list<<"   {output_V_V "<< output_V_V_depth << "}\n";
            return total_list.str();
        }
        void set_num (int num , int* class_num) {
            (*class_num) = (*class_num) > num ? (*class_num) : num;
        }
    public:
//variables
        int input_V_V_depth;
        int output_V_V_depth;
        int trans_num;
    private:
        ofstream mFile;
        const char* mName;
};

#define toplevel AESL_ORIG_DUT_toplevel
extern void toplevel ( hls::stream< ap_uint<32> > & input,  hls::stream< ap_uint<32> > & output);
#undef toplevel
void toplevel ( hls::stream< ap_uint<32> > & input,  hls::stream< ap_uint<32> > & output) {

    fstream wrapc_switch_file_token;

    wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");

    int AESL_i;

    if (wrapc_switch_file_token.good()) {

        static unsigned AESL_transaction_pc;

        string AESL_token;

        string AESL_num;

        static AESL_FILE_HANDLER aesl_fh;

        aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_V_V, AESL_token); //[[transaction]]

        aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_V_V, AESL_num); //transaction number

        if (atoi(AESL_num.c_str()) == AESL_transaction_pc ) {

            aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_V_V, AESL_token); //pop_size

            int aesl_tmp_1 = atoi(AESL_token.c_str());

            for (int i = 0 ; i < aesl_tmp_1  ; i++) {

                input.read();

            }

            aesl_fh.read(WRAPC_STREAM_SIZE_IN_input_V_V, AESL_token); //[[/transaction]]

        }

        int aesl_tmp_4;

        int aesl_tmp_5 = 0;

        aesl_fh.read(WRAPC_STREAM_SIZE_OUT_output_V_V, AESL_token); //[[transaction]]

        aesl_fh.read(WRAPC_STREAM_SIZE_OUT_output_V_V, AESL_num); //transaction number

        if (atoi(AESL_num.c_str()) == AESL_transaction_pc ) {

            aesl_fh.read(WRAPC_STREAM_SIZE_OUT_output_V_V, AESL_token); //pop_size

            aesl_tmp_4 = atoi(AESL_token.c_str());

            aesl_fh.read(WRAPC_STREAM_SIZE_OUT_output_V_V, AESL_token); //[[/transaction]]

        }

        std::vector<ap_uint<32> > aesl_tmp_3;

        aesl_fh.read(AUTOTB_TVOUT_PC_output_V_V, AESL_token); //[[transaction]]

        if ( AESL_token != "[[transaction]]") {

           exit(1);

        }

        aesl_fh.read(AUTOTB_TVOUT_PC_output_V_V, AESL_num); //transaction number

        if (atoi(AESL_num.c_str()) == AESL_transaction_pc ) {

            aesl_fh.read(AUTOTB_TVOUT_PC_output_V_V, AESL_token); //data

            std::vector < sc_bv<32> > output_V_V_pc_buffer;

            int i = 0;

            while (AESL_token != "[[/transaction]]") {

                bool no_x = false;

                bool err = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('X');

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'output_V_V', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                no_x = false;

                while (!no_x) {

                size_t x_found = AESL_token.find('x', 2);

                if (x_found != string::npos) {

                    if (!err) {

                        cerr << "@W [SIM-201] RTL produces unknown value 'X' on port 'output_V_V', possible cause: There are uninitialized variables in the C design." << endl; 

                        err = true;

                    }

                    AESL_token.replace(x_found, 1, "0");

                } else {

                    no_x = true;

                }

                }

                if (AESL_token != "") {

                    output_V_V_pc_buffer.push_back( AESL_token.c_str() );

                    i++;

                }

                aesl_fh.read(AUTOTB_TVOUT_PC_output_V_V, AESL_token); //data or [[/transaction]]

                if (AESL_token == "[[[/runtime]]]" || aesl_fh.eof(AUTOTB_TVOUT_PC_output_V_V)) {

                   exit(1);

                }

            }

            if (i != aesl_tmp_4) {

               aesl_tmp_4 = i;

            }

            if (aesl_tmp_4 > 0 && aesl_tmp_3.size() < aesl_tmp_4) {

                int aesl_tmp_3_size = aesl_tmp_3.size();

                for (int tmp_aesl_tmp_3 = 0 ; tmp_aesl_tmp_3 < aesl_tmp_4 - aesl_tmp_3_size ; tmp_aesl_tmp_3 ++ ) {

                    ap_uint<32> tmp;

                    aesl_tmp_3.push_back(tmp);

                }

            }

            if (i > 0) {

                AESL_i = 0; //subscript for rtl array

                for (int i_0 = 0; i_0 <= aesl_tmp_4 - aesl_tmp_5 - 1 ; i_0+= 1) {

                    aesl_tmp_3[i_0] = (sc_bv<32>(output_V_V_pc_buffer[0 + AESL_i].range(31, 0))).to_string(SC_BIN).c_str();

                    AESL_i++;

                }

                }

        }

        for (int i = 0; i < aesl_tmp_4; i++) {

            output.write(aesl_tmp_3[i]);

        }

        AESL_transaction_pc ++ ;

    } else {

        static unsigned AESL_transaction;

        static AESL_FILE_HANDLER aesl_fh;

        char* tvin_input_V_V = new char[50];

        char* wrapc_stream_size_in_input_V_V = new char[50];

        char* tvout_output_V_V = new char[50];

        char* tvin_output_V_V = new char[50];

        aesl_fh.touch(AUTOTB_TVIN_output_V_V);

        char* wrapc_stream_size_out_output_V_V = new char[50];

        static INTER_TCL_FILE tcl_file(INTER_TCL);


        int leading_zero;

        std::vector<ap_uint<32> > aesl_tmp_0;

        int aesl_tmp_1 = 0;

        while (!input.empty()) {

            aesl_tmp_0.push_back(input.read());

            aesl_tmp_1 ++;

        }

        std::vector<ap_uint<32> > aesl_tmp_3;

        int aesl_tmp_4 = 0;

        while (!output.empty()) {

            aesl_tmp_3.push_back(output.read());

            aesl_tmp_4 ++;

        }

        for (int i = 0; i < aesl_tmp_1; i++) {

            input.write(aesl_tmp_0[i]);

        }

        AESL_ORIG_DUT_toplevel(input,output);

        int aesl_tmp_2 = input.size();

        int aesl_tmp_5 = aesl_tmp_4;

        while (!output.empty()) {

            aesl_tmp_3.push_back(output.read());

            aesl_tmp_4 ++;

        }

        sprintf(tvin_input_V_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVIN_input_V_V, tvin_input_V_V);

        sc_bv<32> *input_V_V_tvin_wrapc_buffer = new sc_bv<32>[aesl_tmp_1 - aesl_tmp_2];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 0; i_0 <= aesl_tmp_1 - aesl_tmp_2 - 1 ; i_0+= 1) {

            input_V_V_tvin_wrapc_buffer[0 + AESL_i].range(31, 0) = (aesl_tmp_0[i_0]).to_string(2).c_str();

            AESL_i++;

        }

        for (int i = 0; i < aesl_tmp_1 - aesl_tmp_2 ; i++) {

            sprintf(tvin_input_V_V, "%s\n", (input_V_V_tvin_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVIN_input_V_V, tvin_input_V_V);

        }

        tcl_file.set_num(aesl_tmp_1 - aesl_tmp_2,&tcl_file.input_V_V_depth);

        sprintf(tvin_input_V_V, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVIN_input_V_V, tvin_input_V_V);

        delete [] input_V_V_tvin_wrapc_buffer;

        sprintf(wrapc_stream_size_in_input_V_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_V_V, wrapc_stream_size_in_input_V_V);

        sprintf(wrapc_stream_size_in_input_V_V, "%d\n", aesl_tmp_1 - aesl_tmp_2);

        aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_V_V, wrapc_stream_size_in_input_V_V);

        sprintf(wrapc_stream_size_in_input_V_V, "[[/transaction]] \n");

        aesl_fh.write(WRAPC_STREAM_SIZE_IN_input_V_V, wrapc_stream_size_in_input_V_V);

        sprintf(tvout_output_V_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(AUTOTB_TVOUT_output_V_V, tvout_output_V_V);

        sc_bv<32> *output_V_V_tvout_wrapc_buffer = new sc_bv<32>[aesl_tmp_4 - aesl_tmp_5];

        AESL_i = 0; //subscript for rtl array

        for (int i_0 = 0; i_0 <= aesl_tmp_4 - aesl_tmp_5 - 1 ; i_0+= 1) {

            output_V_V_tvout_wrapc_buffer[0 + AESL_i].range(31, 0) = (aesl_tmp_3[i_0]).to_string(2).c_str();

            AESL_i++;

        }

        for (int i = 0; i < aesl_tmp_4 - aesl_tmp_5 ; i++) {

            sprintf(tvout_output_V_V, "%s\n", (output_V_V_tvout_wrapc_buffer[i]).to_string(SC_HEX).c_str());

            aesl_fh.write(AUTOTB_TVOUT_output_V_V, tvout_output_V_V);

        }

        tcl_file.set_num(aesl_tmp_4 - aesl_tmp_5,&tcl_file.output_V_V_depth);

        sprintf(tvout_output_V_V, "[[/transaction]] \n");

        aesl_fh.write(AUTOTB_TVOUT_output_V_V, tvout_output_V_V);

        delete [] output_V_V_tvout_wrapc_buffer;

        sprintf(wrapc_stream_size_out_output_V_V, "[[transaction]] %d\n", AESL_transaction);

        aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_V_V, wrapc_stream_size_out_output_V_V);

        sprintf(wrapc_stream_size_out_output_V_V, "%d\n", aesl_tmp_4 - aesl_tmp_5);

        aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_V_V, wrapc_stream_size_out_output_V_V);

        sprintf(wrapc_stream_size_out_output_V_V, "[[/transaction]] \n");

        aesl_fh.write(WRAPC_STREAM_SIZE_OUT_output_V_V, wrapc_stream_size_out_output_V_V);

        for (int i = 0; i < aesl_tmp_4; i++) {

            output.write(aesl_tmp_3[i]);

        }

        delete [] tvin_input_V_V;

        delete [] wrapc_stream_size_in_input_V_V;

        delete [] tvout_output_V_V;

        delete [] tvin_output_V_V;

        delete [] wrapc_stream_size_out_output_V_V;

        AESL_transaction++;

        tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);

    }
}


