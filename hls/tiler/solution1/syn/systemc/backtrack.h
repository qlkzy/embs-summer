// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.4
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _backtrack_HH_
#define _backtrack_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "right_r.h"
#include "toplevel_srem_10s_10ns_10_13.h"

namespace ap_rtl {

struct backtrack : public sc_module {
    // Port declarations 42
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > cp_V_i;
    sc_out< sc_lv<8> > cp_V_o;
    sc_out< sc_logic > cp_V_o_ap_vld;
    sc_out< sc_lv<6> > pp_rot_V_address0;
    sc_out< sc_logic > pp_rot_V_ce0;
    sc_out< sc_logic > pp_rot_V_we0;
    sc_out< sc_lv<2> > pp_rot_V_d0;
    sc_in< sc_lv<2> > pp_rot_V_q0;
    sc_out< sc_lv<6> > pp_rot_V_address1;
    sc_out< sc_logic > pp_rot_V_ce1;
    sc_in< sc_lv<2> > pp_rot_V_q1;
    sc_out< sc_lv<6> > pp_tile_V_address0;
    sc_out< sc_logic > pp_tile_V_ce0;
    sc_out< sc_logic > pp_tile_V_we0;
    sc_out< sc_lv<8> > pp_tile_V_d0;
    sc_in< sc_lv<8> > pp_tile_V_q0;
    sc_out< sc_lv<6> > pp_tile_V_address1;
    sc_out< sc_logic > pp_tile_V_ce1;
    sc_in< sc_lv<8> > pp_tile_V_q1;
    sc_in< sc_lv<36> > avail_V_i;
    sc_out< sc_lv<36> > avail_V_o;
    sc_out< sc_logic > avail_V_o_ap_vld;
    sc_in< sc_lv<8> > side_V;
    sc_out< sc_lv<8> > tiles_V_address0;
    sc_out< sc_logic > tiles_V_ce0;
    sc_in< sc_lv<4> > tiles_V_q0;
    sc_out< sc_lv<8> > tiles_V_address1;
    sc_out< sc_logic > tiles_V_ce1;
    sc_in< sc_lv<4> > tiles_V_q1;
    sc_out< sc_lv<4> > colours_V_address0;
    sc_out< sc_logic > colours_V_ce0;
    sc_in< sc_lv<36> > colours_V_q0;
    sc_in< sc_lv<8> > ntiles_V;
    sc_in< sc_lv<1> > terminate_i;
    sc_out< sc_lv<1> > terminate_o;
    sc_out< sc_logic > terminate_o_ap_vld;


    // Module declarations
    backtrack(sc_module_name name);
    SC_HAS_PROCESS(backtrack);

    ~backtrack();

    sc_trace_file* mVcdFile;

    right_r* grp_right_r_fu_186;
    toplevel_srem_10s_10ns_10_13<21,13,10,10,10>* toplevel_srem_10s_10ns_10_13_U21;
    sc_signal< sc_lv<5> > ap_CS_fsm;
    sc_signal< sc_lv<1> > terminate_load_reg_426;
    sc_signal< sc_logic > grp_right_r_fu_186_ap_done;
    sc_signal< sc_lv<8> > t_V_reg_434;
    sc_signal< sc_lv<1> > tmp_i_i_fu_236_p2;
    sc_signal< sc_lv<1> > tmp_i_i_reg_443;
    sc_signal< sc_lv<1> > or_cond_demorgan_fu_226_p2;
    sc_signal< sc_lv<6> > pp_tile_V_addr_reg_457;
    sc_signal< sc_lv<1> > tmp_28_i_i_fu_310_p2;
    sc_signal< sc_lv<1> > tmp_28_i_i_reg_465;
    sc_signal< sc_lv<1> > grp_fu_215_p2;
    sc_signal< sc_lv<1> > tmp_29_i_i_reg_499;
    sc_signal< sc_lv<1> > tmp_22_fu_370_p3;
    sc_signal< sc_lv<1> > tmp_22_reg_503;
    sc_signal< sc_logic > grp_right_r_fu_186_ap_start;
    sc_signal< sc_logic > grp_right_r_fu_186_ap_idle;
    sc_signal< sc_logic > grp_right_r_fu_186_ap_ready;
    sc_signal< sc_lv<8> > grp_right_r_fu_186_cp_V;
    sc_signal< sc_lv<6> > grp_right_r_fu_186_pp_rot_V_address0;
    sc_signal< sc_logic > grp_right_r_fu_186_pp_rot_V_ce0;
    sc_signal< sc_logic > grp_right_r_fu_186_pp_rot_V_we0;
    sc_signal< sc_lv<2> > grp_right_r_fu_186_pp_rot_V_d0;
    sc_signal< sc_lv<2> > grp_right_r_fu_186_pp_rot_V_q0;
    sc_signal< sc_lv<6> > grp_right_r_fu_186_pp_tile_V_address0;
    sc_signal< sc_logic > grp_right_r_fu_186_pp_tile_V_ce0;
    sc_signal< sc_logic > grp_right_r_fu_186_pp_tile_V_we0;
    sc_signal< sc_lv<8> > grp_right_r_fu_186_pp_tile_V_d0;
    sc_signal< sc_lv<8> > grp_right_r_fu_186_pp_tile_V_q0;
    sc_signal< sc_lv<36> > grp_right_r_fu_186_avail_V_i;
    sc_signal< sc_lv<36> > grp_right_r_fu_186_avail_V_o;
    sc_signal< sc_logic > grp_right_r_fu_186_avail_V_o_ap_vld;
    sc_signal< sc_lv<8> > grp_right_r_fu_186_side_V;
    sc_signal< sc_lv<8> > grp_right_r_fu_186_tiles_V_address0;
    sc_signal< sc_logic > grp_right_r_fu_186_tiles_V_ce0;
    sc_signal< sc_lv<4> > grp_right_r_fu_186_tiles_V_q0;
    sc_signal< sc_lv<4> > grp_right_r_fu_186_colours_V_address0;
    sc_signal< sc_logic > grp_right_r_fu_186_colours_V_ce0;
    sc_signal< sc_lv<36> > grp_right_r_fu_186_colours_V_q0;
    sc_signal< sc_lv<8> > grp_right_r_fu_186_ntiles_V;
    sc_signal< sc_lv<1> > grp_right_r_fu_186_ap_return;
    sc_signal< sc_lv<1> > tmp_i1_phi_fu_175_p6;
    sc_signal< sc_lv<1> > tmp_i1_reg_170;
    sc_signal< sc_logic > grp_right_r_fu_186_ap_start_ap_start_reg;
    sc_signal< sc_lv<64> > tmp_i_fu_256_p1;
    sc_signal< sc_lv<64> > tmp_i_i_i_fu_316_p1;
    sc_signal< sc_lv<64> > tmp_i2_i_i_fu_322_p1;
    sc_signal< sc_lv<64> > tmp_12_fu_341_p1;
    sc_signal< sc_lv<64> > tmp_14_fu_360_p1;
    sc_signal< sc_lv<64> > tmp_i_i3_i_fu_378_p1;
    sc_signal< sc_lv<64> > tmp_i3_i_i_fu_384_p1;
    sc_signal< sc_lv<64> > tmp_16_fu_403_p1;
    sc_signal< sc_lv<64> > tmp_18_fu_416_p1;
    sc_signal< sc_lv<36> > tmp_22_i_fu_274_p2;
    sc_signal< sc_lv<8> > grp_fu_210_p2;
    sc_signal< sc_lv<1> > tmp_20_fu_292_p3;
    sc_signal< sc_lv<10> > grp_fu_250_p0;
    sc_signal< sc_lv<10> > grp_fu_250_p1;
    sc_signal< sc_lv<36> > tmp_i_23_fu_260_p1;
    sc_signal< sc_lv<36> > r_V_fu_264_p2;
    sc_signal< sc_lv<10> > grp_fu_250_p2;
    sc_signal< sc_lv<8> > r_V_4_fu_306_p1;
    sc_signal< sc_lv<2> > r_V_9_i_fu_327_p2;
    sc_signal< sc_lv<10> > tmp_s_fu_333_p3;
    sc_signal< sc_lv<2> > r_V_10_i_fu_346_p2;
    sc_signal< sc_lv<10> > tmp_13_fu_352_p3;
    sc_signal< sc_lv<8> > up_V_fu_365_p2;
    sc_signal< sc_lv<2> > r_V_11_i_fu_389_p2;
    sc_signal< sc_lv<10> > tmp_15_fu_395_p3;
    sc_signal< sc_lv<10> > tmp_17_fu_408_p3;
    sc_signal< sc_logic > toplevel_srem_10s_10ns_10_13_U21_ap_start;
    sc_signal< sc_logic > grp_fu_250_ce;
    sc_signal< sc_lv<1> > or_cond5_demorgan_fu_421_p2;
    sc_signal< sc_lv<5> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<5> ap_ST_st1_fsm_0;
    static const sc_lv<5> ap_ST_st2_fsm_1;
    static const sc_lv<5> ap_ST_st3_fsm_2;
    static const sc_lv<5> ap_ST_st4_fsm_3;
    static const sc_lv<5> ap_ST_st5_fsm_4;
    static const sc_lv<5> ap_ST_st6_fsm_5;
    static const sc_lv<5> ap_ST_st7_fsm_6;
    static const sc_lv<5> ap_ST_st8_fsm_7;
    static const sc_lv<5> ap_ST_st9_fsm_8;
    static const sc_lv<5> ap_ST_st10_fsm_9;
    static const sc_lv<5> ap_ST_st11_fsm_10;
    static const sc_lv<5> ap_ST_st12_fsm_11;
    static const sc_lv<5> ap_ST_st13_fsm_12;
    static const sc_lv<5> ap_ST_st14_fsm_13;
    static const sc_lv<5> ap_ST_st15_fsm_14;
    static const sc_lv<5> ap_ST_st16_fsm_15;
    static const sc_lv<5> ap_ST_st17_fsm_16;
    static const sc_lv<5> ap_ST_st18_fsm_17;
    static const sc_lv<5> ap_ST_st19_fsm_18;
    static const sc_lv<5> ap_ST_st20_fsm_19;
    static const sc_lv<5> ap_ST_st21_fsm_20;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<36> ap_const_lv36_1;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<2> ap_const_lv2_2;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_avail_V_o();
    void thread_avail_V_o_ap_vld();
    void thread_colours_V_address0();
    void thread_colours_V_ce0();
    void thread_cp_V_o();
    void thread_cp_V_o_ap_vld();
    void thread_grp_fu_210_p2();
    void thread_grp_fu_215_p2();
    void thread_grp_fu_250_ce();
    void thread_grp_fu_250_p0();
    void thread_grp_fu_250_p1();
    void thread_grp_right_r_fu_186_ap_start();
    void thread_grp_right_r_fu_186_avail_V_i();
    void thread_grp_right_r_fu_186_colours_V_q0();
    void thread_grp_right_r_fu_186_cp_V();
    void thread_grp_right_r_fu_186_ntiles_V();
    void thread_grp_right_r_fu_186_pp_rot_V_q0();
    void thread_grp_right_r_fu_186_pp_tile_V_q0();
    void thread_grp_right_r_fu_186_side_V();
    void thread_grp_right_r_fu_186_tiles_V_q0();
    void thread_or_cond5_demorgan_fu_421_p2();
    void thread_or_cond_demorgan_fu_226_p2();
    void thread_pp_rot_V_address0();
    void thread_pp_rot_V_address1();
    void thread_pp_rot_V_ce0();
    void thread_pp_rot_V_ce1();
    void thread_pp_rot_V_d0();
    void thread_pp_rot_V_we0();
    void thread_pp_tile_V_address0();
    void thread_pp_tile_V_address1();
    void thread_pp_tile_V_ce0();
    void thread_pp_tile_V_ce1();
    void thread_pp_tile_V_d0();
    void thread_pp_tile_V_we0();
    void thread_r_V_10_i_fu_346_p2();
    void thread_r_V_11_i_fu_389_p2();
    void thread_r_V_4_fu_306_p1();
    void thread_r_V_9_i_fu_327_p2();
    void thread_r_V_fu_264_p2();
    void thread_terminate_o();
    void thread_terminate_o_ap_vld();
    void thread_tiles_V_address0();
    void thread_tiles_V_address1();
    void thread_tiles_V_ce0();
    void thread_tiles_V_ce1();
    void thread_tmp_12_fu_341_p1();
    void thread_tmp_13_fu_352_p3();
    void thread_tmp_14_fu_360_p1();
    void thread_tmp_15_fu_395_p3();
    void thread_tmp_16_fu_403_p1();
    void thread_tmp_17_fu_408_p3();
    void thread_tmp_18_fu_416_p1();
    void thread_tmp_20_fu_292_p3();
    void thread_tmp_22_fu_370_p3();
    void thread_tmp_22_i_fu_274_p2();
    void thread_tmp_28_i_i_fu_310_p2();
    void thread_tmp_i1_phi_fu_175_p6();
    void thread_tmp_i2_i_i_fu_322_p1();
    void thread_tmp_i3_i_i_fu_384_p1();
    void thread_tmp_i_23_fu_260_p1();
    void thread_tmp_i_fu_256_p1();
    void thread_tmp_i_i3_i_fu_378_p1();
    void thread_tmp_i_i_fu_236_p2();
    void thread_tmp_i_i_i_fu_316_p1();
    void thread_tmp_s_fu_333_p3();
    void thread_toplevel_srem_10s_10ns_10_13_U21_ap_start();
    void thread_up_V_fu_365_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
