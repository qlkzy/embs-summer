// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.4
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#ifndef _down_HH_
#define _down_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "toplevel_sdiv_9s_9ns_9_12.h"
#include "toplevel_udiv_8ns_8ns_8_11.h"

namespace ap_rtl {

struct down : public sc_module {
    // Port declarations 41
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<36> > avail_V_i;
    sc_out< sc_lv<36> > avail_V_o;
    sc_out< sc_logic > avail_V_o_ap_vld;
    sc_in< sc_lv<8> > cp_V_i;
    sc_out< sc_lv<8> > cp_V_o;
    sc_out< sc_logic > cp_V_o_ap_vld;
    sc_in< sc_lv<8> > side_V;
    sc_out< sc_lv<6> > pp_tile_V_address0;
    sc_out< sc_logic > pp_tile_V_ce0;
    sc_out< sc_logic > pp_tile_V_we0;
    sc_out< sc_lv<8> > pp_tile_V_d0;
    sc_in< sc_lv<8> > pp_tile_V_q0;
    sc_out< sc_lv<6> > pp_tile_V_address1;
    sc_out< sc_logic > pp_tile_V_ce1;
    sc_in< sc_lv<8> > pp_tile_V_q1;
    sc_out< sc_lv<6> > pp_rot_V_address0;
    sc_out< sc_logic > pp_rot_V_ce0;
    sc_out< sc_logic > pp_rot_V_we0;
    sc_out< sc_lv<2> > pp_rot_V_d0;
    sc_in< sc_lv<2> > pp_rot_V_q0;
    sc_out< sc_lv<6> > pp_rot_V_address1;
    sc_out< sc_logic > pp_rot_V_ce1;
    sc_in< sc_lv<2> > pp_rot_V_q1;
    sc_out< sc_lv<8> > tiles_V_address0;
    sc_out< sc_logic > tiles_V_ce0;
    sc_in< sc_lv<4> > tiles_V_q0;
    sc_out< sc_lv<8> > tiles_V_address1;
    sc_out< sc_logic > tiles_V_ce1;
    sc_in< sc_lv<4> > tiles_V_q1;
    sc_out< sc_lv<4> > colours_V_address0;
    sc_out< sc_logic > colours_V_ce0;
    sc_in< sc_lv<36> > colours_V_q0;
    sc_out< sc_lv<4> > colours_V_address1;
    sc_out< sc_logic > colours_V_ce1;
    sc_in< sc_lv<36> > colours_V_q1;


    // Module declarations
    down(sc_module_name name);
    SC_HAS_PROCESS(down);

    ~down();

    sc_trace_file* mVcdFile;

    toplevel_sdiv_9s_9ns_9_12<1,12,9,9,9>* toplevel_sdiv_9s_9ns_9_12_U1;
    toplevel_udiv_8ns_8ns_8_11<2,11,8,8,8>* toplevel_udiv_8ns_8ns_8_11_U2;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_lv<8> > t_V_reg_439;
    sc_signal< sc_lv<8> > cp_V_assign_fu_191_p2;
    sc_signal< sc_lv<8> > cp_V_assign_reg_462;
    sc_signal< sc_lv<1> > tmp_31_reg_469;
    sc_signal< sc_lv<1> > tmp_32_reg_485;
    sc_signal< sc_lv<36> > possible_V_reg_521;
    sc_signal< sc_lv<36> > possible_V_2_fu_353_p3;
    sc_signal< sc_lv<36> > possible_V_2_reg_526;
    sc_signal< sc_lv<16> > r_V_fu_363_p2;
    sc_signal< sc_lv<16> > r_V_reg_531;
    sc_signal< sc_lv<36> > tmp_fu_369_p2;
    sc_signal< sc_lv<36> > tmp_reg_536;
    sc_signal< sc_lv<16> > t_fu_380_p2;
    sc_signal< sc_lv<16> > op2_assign_reg_157;
    sc_signal< sc_lv<1> > tmp_6_fu_406_p2;
    sc_signal< sc_lv<1> > tmp_8_fu_375_p2;
    sc_signal< sc_lv<64> > tmp_i_i_fu_244_p1;
    sc_signal< sc_lv<64> > tmp_i23_i_fu_258_p1;
    sc_signal< sc_lv<64> > tmp_20_fu_278_p1;
    sc_signal< sc_lv<64> > tmp_22_fu_297_p1;
    sc_signal< sc_lv<64> > tmp_3_fu_332_p1;
    sc_signal< sc_lv<64> > tmp_5_fu_337_p1;
    sc_signal< sc_lv<64> > tmp_7_fu_412_p1;
    sc_signal< sc_lv<36> > tmp_1_fu_428_p2;
    sc_signal< sc_lv<9> > grp_fu_185_p0;
    sc_signal< sc_lv<9> > grp_fu_185_p1;
    sc_signal< sc_lv<8> > grp_fu_202_p0;
    sc_signal< sc_lv<8> > grp_fu_202_p1;
    sc_signal< sc_lv<9> > grp_fu_185_p2;
    sc_signal< sc_lv<8> > r_V_11_fu_211_p1;
    sc_signal< sc_lv<8> > grp_fu_202_p2;
    sc_signal< sc_lv<9> > tmp_61_i_fu_223_p0;
    sc_signal< sc_lv<9> > tmp_60_i_cast_fu_219_p1;
    sc_signal< sc_lv<1> > tmp_61_i_fu_223_p2;
    sc_signal< sc_lv<8> > this_assign_i_fu_229_p3;
    sc_signal< sc_lv<8> > up_V_fu_207_p2;
    sc_signal< sc_lv<2> > r_V_s_fu_264_p2;
    sc_signal< sc_lv<10> > tmp_19_fu_270_p3;
    sc_signal< sc_lv<2> > r_V_1_fu_283_p2;
    sc_signal< sc_lv<10> > tmp_21_fu_289_p3;
    sc_signal< sc_lv<5> > tmp_63_i_cast_fu_302_p1;
    sc_signal< sc_lv<5> > p_i_fu_306_p3;
    sc_signal< sc_lv<5> > tmp_65_i_cast_fu_317_p1;
    sc_signal< sc_lv<5> > p_5_i_fu_321_p3;
    sc_signal< sc_lv<8> > tmp_3_fu_332_p0;
    sc_signal< sc_lv<8> > tmp_5_fu_337_p0;
    sc_signal< sc_lv<8> > r_V_fu_363_p0;
    sc_signal< sc_lv<16> > lhs_V_fu_360_p1;
    sc_signal< sc_lv<8> > r_V_fu_363_p1;
    sc_signal< sc_lv<36> > possible_V_1_fu_346_p3;
    sc_signal< sc_lv<36> > tmp_s_fu_386_p1;
    sc_signal< sc_lv<36> > r_V_12_fu_390_p2;
    sc_signal< sc_lv<36> > tmp3_fu_396_p2;
    sc_signal< sc_lv<36> > r_V_4_fu_401_p2;
    sc_signal< sc_lv<36> > p_2_fu_422_p2;
    sc_signal< sc_logic > toplevel_sdiv_9s_9ns_9_12_U1_ap_start;
    sc_signal< sc_logic > grp_fu_185_ce;
    sc_signal< sc_logic > toplevel_udiv_8ns_8ns_8_11_U2_ap_start;
    sc_signal< sc_logic > grp_fu_202_ce;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_st1_fsm_0;
    static const sc_lv<4> ap_ST_st2_fsm_1;
    static const sc_lv<4> ap_ST_st3_fsm_2;
    static const sc_lv<4> ap_ST_st4_fsm_3;
    static const sc_lv<4> ap_ST_st5_fsm_4;
    static const sc_lv<4> ap_ST_st6_fsm_5;
    static const sc_lv<4> ap_ST_st7_fsm_6;
    static const sc_lv<4> ap_ST_st8_fsm_7;
    static const sc_lv<4> ap_ST_st9_fsm_8;
    static const sc_lv<4> ap_ST_st10_fsm_9;
    static const sc_lv<4> ap_ST_st11_fsm_10;
    static const sc_lv<4> ap_ST_st12_fsm_11;
    static const sc_lv<4> ap_ST_st13_fsm_12;
    static const sc_lv<4> ap_ST_st14_fsm_13;
    static const sc_lv<4> ap_ST_st15_fsm_14;
    static const sc_lv<4> ap_ST_st16_fsm_15;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<5> ap_const_lv5_1F;
    static const sc_lv<36> ap_const_lv36_FFFFFFFFF;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<36> ap_const_lv36_1;
    static const sc_lv<36> ap_const_lv36_0;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_avail_V_o();
    void thread_avail_V_o_ap_vld();
    void thread_colours_V_address0();
    void thread_colours_V_address1();
    void thread_colours_V_ce0();
    void thread_colours_V_ce1();
    void thread_cp_V_assign_fu_191_p2();
    void thread_cp_V_o();
    void thread_cp_V_o_ap_vld();
    void thread_grp_fu_185_ce();
    void thread_grp_fu_185_p0();
    void thread_grp_fu_185_p1();
    void thread_grp_fu_202_ce();
    void thread_grp_fu_202_p0();
    void thread_grp_fu_202_p1();
    void thread_lhs_V_fu_360_p1();
    void thread_p_2_fu_422_p2();
    void thread_p_5_i_fu_321_p3();
    void thread_p_i_fu_306_p3();
    void thread_possible_V_1_fu_346_p3();
    void thread_possible_V_2_fu_353_p3();
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
    void thread_r_V_11_fu_211_p1();
    void thread_r_V_12_fu_390_p2();
    void thread_r_V_1_fu_283_p2();
    void thread_r_V_4_fu_401_p2();
    void thread_r_V_fu_363_p0();
    void thread_r_V_fu_363_p1();
    void thread_r_V_fu_363_p2();
    void thread_r_V_s_fu_264_p2();
    void thread_t_fu_380_p2();
    void thread_this_assign_i_fu_229_p3();
    void thread_tiles_V_address0();
    void thread_tiles_V_address1();
    void thread_tiles_V_ce0();
    void thread_tiles_V_ce1();
    void thread_tmp3_fu_396_p2();
    void thread_tmp_19_fu_270_p3();
    void thread_tmp_1_fu_428_p2();
    void thread_tmp_20_fu_278_p1();
    void thread_tmp_21_fu_289_p3();
    void thread_tmp_22_fu_297_p1();
    void thread_tmp_3_fu_332_p0();
    void thread_tmp_3_fu_332_p1();
    void thread_tmp_5_fu_337_p0();
    void thread_tmp_5_fu_337_p1();
    void thread_tmp_60_i_cast_fu_219_p1();
    void thread_tmp_61_i_fu_223_p0();
    void thread_tmp_61_i_fu_223_p2();
    void thread_tmp_63_i_cast_fu_302_p1();
    void thread_tmp_65_i_cast_fu_317_p1();
    void thread_tmp_6_fu_406_p2();
    void thread_tmp_7_fu_412_p1();
    void thread_tmp_8_fu_375_p2();
    void thread_tmp_fu_369_p2();
    void thread_tmp_i23_i_fu_258_p1();
    void thread_tmp_i_i_fu_244_p1();
    void thread_tmp_s_fu_386_p1();
    void thread_toplevel_sdiv_9s_9ns_9_12_U1_ap_start();
    void thread_toplevel_udiv_8ns_8ns_8_11_U2_ap_start();
    void thread_up_V_fu_207_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif