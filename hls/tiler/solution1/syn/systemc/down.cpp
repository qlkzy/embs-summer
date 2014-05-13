// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.4
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

#include "down.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic down::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic down::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<4> down::ap_ST_st1_fsm_0 = "0000";
const sc_lv<4> down::ap_ST_st2_fsm_1 = "1";
const sc_lv<4> down::ap_ST_st3_fsm_2 = "10";
const sc_lv<4> down::ap_ST_st4_fsm_3 = "11";
const sc_lv<4> down::ap_ST_st5_fsm_4 = "100";
const sc_lv<4> down::ap_ST_st6_fsm_5 = "101";
const sc_lv<4> down::ap_ST_st7_fsm_6 = "110";
const sc_lv<4> down::ap_ST_st8_fsm_7 = "111";
const sc_lv<4> down::ap_ST_st9_fsm_8 = "1000";
const sc_lv<4> down::ap_ST_st10_fsm_9 = "1001";
const sc_lv<4> down::ap_ST_st11_fsm_10 = "1010";
const sc_lv<4> down::ap_ST_st12_fsm_11 = "1011";
const sc_lv<4> down::ap_ST_st13_fsm_12 = "1100";
const sc_lv<4> down::ap_ST_st14_fsm_13 = "1101";
const sc_lv<4> down::ap_ST_st15_fsm_14 = "1110";
const sc_lv<4> down::ap_ST_st16_fsm_15 = "1111";
const sc_lv<1> down::ap_const_lv1_0 = "0";
const sc_lv<16> down::ap_const_lv16_0 = "0000000000000000";
const sc_lv<2> down::ap_const_lv2_0 = "00";
const sc_lv<8> down::ap_const_lv8_1 = "1";
const sc_lv<8> down::ap_const_lv8_FF = "11111111";
const sc_lv<32> down::ap_const_lv32_7 = "111";
const sc_lv<2> down::ap_const_lv2_1 = "1";
const sc_lv<2> down::ap_const_lv2_2 = "10";
const sc_lv<5> down::ap_const_lv5_1F = "11111";
const sc_lv<36> down::ap_const_lv36_FFFFFFFFF = "111111111111111111111111111111111111";
const sc_lv<16> down::ap_const_lv16_1 = "1";
const sc_lv<36> down::ap_const_lv36_1 = "1";
const sc_lv<36> down::ap_const_lv36_0 = "000000000000000000000000000000000000";

down::down(sc_module_name name) : sc_module(name), mVcdFile(0) {
    toplevel_sdiv_9s_9ns_9_12_U1 = new toplevel_sdiv_9s_9ns_9_12<1,12,9,9,9>("toplevel_sdiv_9s_9ns_9_12_U1");
    toplevel_sdiv_9s_9ns_9_12_U1->clk(ap_clk);
    toplevel_sdiv_9s_9ns_9_12_U1->reset(ap_rst);
    toplevel_sdiv_9s_9ns_9_12_U1->start(toplevel_sdiv_9s_9ns_9_12_U1_ap_start);
    toplevel_sdiv_9s_9ns_9_12_U1->din0(grp_fu_185_p0);
    toplevel_sdiv_9s_9ns_9_12_U1->din1(grp_fu_185_p1);
    toplevel_sdiv_9s_9ns_9_12_U1->ce(grp_fu_185_ce);
    toplevel_sdiv_9s_9ns_9_12_U1->dout(grp_fu_185_p2);
    toplevel_udiv_8ns_8ns_8_11_U2 = new toplevel_udiv_8ns_8ns_8_11<2,11,8,8,8>("toplevel_udiv_8ns_8ns_8_11_U2");
    toplevel_udiv_8ns_8ns_8_11_U2->clk(ap_clk);
    toplevel_udiv_8ns_8ns_8_11_U2->reset(ap_rst);
    toplevel_udiv_8ns_8ns_8_11_U2->start(toplevel_udiv_8ns_8ns_8_11_U2_ap_start);
    toplevel_udiv_8ns_8ns_8_11_U2->din0(grp_fu_202_p0);
    toplevel_udiv_8ns_8ns_8_11_U2->din1(grp_fu_202_p1);
    toplevel_udiv_8ns_8ns_8_11_U2->ce(grp_fu_202_ce);
    toplevel_udiv_8ns_8ns_8_11_U2->dout(grp_fu_202_p2);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_6_fu_406_p2 );
    sensitive << ( tmp_8_fu_375_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_6_fu_406_p2 );
    sensitive << ( tmp_8_fu_375_p2 );

    SC_METHOD(thread_avail_V_o);
    sensitive << ( ap_CS_fsm );
    sensitive << ( avail_V_i );
    sensitive << ( tmp_6_fu_406_p2 );
    sensitive << ( tmp_8_fu_375_p2 );
    sensitive << ( tmp_1_fu_428_p2 );

    SC_METHOD(thread_avail_V_o_ap_vld);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_6_fu_406_p2 );
    sensitive << ( tmp_8_fu_375_p2 );

    SC_METHOD(thread_colours_V_address0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_3_fu_332_p1 );

    SC_METHOD(thread_colours_V_address1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_5_fu_337_p1 );

    SC_METHOD(thread_colours_V_ce0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_colours_V_ce1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_cp_V_assign_fu_191_p2);
    sensitive << ( t_V_reg_439 );

    SC_METHOD(thread_cp_V_o);
    sensitive << ( ap_CS_fsm );
    sensitive << ( cp_V_i );
    sensitive << ( cp_V_assign_fu_191_p2 );

    SC_METHOD(thread_cp_V_o_ap_vld);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_grp_fu_185_ce);

    SC_METHOD(thread_grp_fu_185_p0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( cp_V_i );

    SC_METHOD(thread_grp_fu_185_p1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( side_V );

    SC_METHOD(thread_grp_fu_202_ce);

    SC_METHOD(thread_grp_fu_202_p0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( t_V_reg_439 );

    SC_METHOD(thread_grp_fu_202_p1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( side_V );

    SC_METHOD(thread_lhs_V_fu_360_p1);
    sensitive << ( side_V );

    SC_METHOD(thread_p_2_fu_422_p2);
    sensitive << ( r_V_12_fu_390_p2 );

    SC_METHOD(thread_p_5_i_fu_321_p3);
    sensitive << ( tmp_32_reg_485 );
    sensitive << ( tmp_65_i_cast_fu_317_p1 );

    SC_METHOD(thread_p_i_fu_306_p3);
    sensitive << ( tmp_31_reg_469 );
    sensitive << ( tmp_63_i_cast_fu_302_p1 );

    SC_METHOD(thread_possible_V_1_fu_346_p3);
    sensitive << ( colours_V_q0 );
    sensitive << ( tmp_31_reg_469 );

    SC_METHOD(thread_possible_V_2_fu_353_p3);
    sensitive << ( colours_V_q1 );
    sensitive << ( tmp_32_reg_485 );

    SC_METHOD(thread_pp_rot_V_address0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_i_i_fu_244_p1 );
    sensitive << ( tmp_7_fu_412_p1 );

    SC_METHOD(thread_pp_rot_V_address1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_i23_i_fu_258_p1 );

    SC_METHOD(thread_pp_rot_V_ce0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_pp_rot_V_ce1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_pp_rot_V_d0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_pp_rot_V_we0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_6_fu_406_p2 );
    sensitive << ( tmp_8_fu_375_p2 );

    SC_METHOD(thread_pp_tile_V_address0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_i_i_fu_244_p1 );
    sensitive << ( tmp_7_fu_412_p1 );

    SC_METHOD(thread_pp_tile_V_address1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_i23_i_fu_258_p1 );

    SC_METHOD(thread_pp_tile_V_ce0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_pp_tile_V_ce1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_pp_tile_V_d0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( op2_assign_reg_157 );

    SC_METHOD(thread_pp_tile_V_we0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_6_fu_406_p2 );
    sensitive << ( tmp_8_fu_375_p2 );

    SC_METHOD(thread_r_V_11_fu_211_p1);
    sensitive << ( grp_fu_185_p2 );

    SC_METHOD(thread_r_V_12_fu_390_p2);
    sensitive << ( tmp_s_fu_386_p1 );

    SC_METHOD(thread_r_V_1_fu_283_p2);
    sensitive << ( pp_rot_V_q1 );

    SC_METHOD(thread_r_V_4_fu_401_p2);
    sensitive << ( tmp_reg_536 );
    sensitive << ( tmp3_fu_396_p2 );

    SC_METHOD(thread_r_V_fu_363_p0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( lhs_V_fu_360_p1 );

    SC_METHOD(thread_r_V_fu_363_p1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( lhs_V_fu_360_p1 );

    SC_METHOD(thread_r_V_fu_363_p2);
    sensitive << ( r_V_fu_363_p0 );
    sensitive << ( r_V_fu_363_p1 );

    SC_METHOD(thread_r_V_s_fu_264_p2);
    sensitive << ( pp_rot_V_q0 );

    SC_METHOD(thread_t_fu_380_p2);
    sensitive << ( op2_assign_reg_157 );

    SC_METHOD(thread_this_assign_i_fu_229_p3);
    sensitive << ( t_V_reg_439 );
    sensitive << ( tmp_61_i_fu_223_p2 );

    SC_METHOD(thread_tiles_V_address0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_20_fu_278_p1 );

    SC_METHOD(thread_tiles_V_address1);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_22_fu_297_p1 );

    SC_METHOD(thread_tiles_V_ce0);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_tiles_V_ce1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_tmp3_fu_396_p2);
    sensitive << ( possible_V_2_reg_526 );
    sensitive << ( r_V_12_fu_390_p2 );

    SC_METHOD(thread_tmp_19_fu_270_p3);
    sensitive << ( pp_tile_V_q0 );
    sensitive << ( r_V_s_fu_264_p2 );

    SC_METHOD(thread_tmp_1_fu_428_p2);
    sensitive << ( possible_V_reg_521 );
    sensitive << ( p_2_fu_422_p2 );

    SC_METHOD(thread_tmp_20_fu_278_p1);
    sensitive << ( tmp_19_fu_270_p3 );

    SC_METHOD(thread_tmp_21_fu_289_p3);
    sensitive << ( pp_tile_V_q1 );
    sensitive << ( r_V_1_fu_283_p2 );

    SC_METHOD(thread_tmp_22_fu_297_p1);
    sensitive << ( tmp_21_fu_289_p3 );

    SC_METHOD(thread_tmp_3_fu_332_p0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( p_i_fu_306_p3 );

    SC_METHOD(thread_tmp_3_fu_332_p1);
    sensitive << ( tmp_3_fu_332_p0 );

    SC_METHOD(thread_tmp_5_fu_337_p0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( p_5_i_fu_321_p3 );

    SC_METHOD(thread_tmp_5_fu_337_p1);
    sensitive << ( tmp_5_fu_337_p0 );

    SC_METHOD(thread_tmp_60_i_cast_fu_219_p1);
    sensitive << ( grp_fu_202_p2 );

    SC_METHOD(thread_tmp_61_i_fu_223_p0);
    sensitive << ( ap_CS_fsm );
    sensitive << ( r_V_11_fu_211_p1 );

    SC_METHOD(thread_tmp_61_i_fu_223_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_61_i_fu_223_p0 );
    sensitive << ( tmp_60_i_cast_fu_219_p1 );

    SC_METHOD(thread_tmp_63_i_cast_fu_302_p1);
    sensitive << ( tiles_V_q0 );

    SC_METHOD(thread_tmp_65_i_cast_fu_317_p1);
    sensitive << ( tiles_V_q1 );

    SC_METHOD(thread_tmp_6_fu_406_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_8_fu_375_p2 );
    sensitive << ( r_V_4_fu_401_p2 );

    SC_METHOD(thread_tmp_7_fu_412_p1);
    sensitive << ( cp_V_assign_reg_462 );

    SC_METHOD(thread_tmp_8_fu_375_p2);
    sensitive << ( ap_CS_fsm );
    sensitive << ( r_V_reg_531 );
    sensitive << ( op2_assign_reg_157 );

    SC_METHOD(thread_tmp_fu_369_p2);
    sensitive << ( avail_V_i );
    sensitive << ( possible_V_1_fu_346_p3 );

    SC_METHOD(thread_tmp_i23_i_fu_258_p1);
    sensitive << ( up_V_fu_207_p2 );

    SC_METHOD(thread_tmp_i_i_fu_244_p1);
    sensitive << ( this_assign_i_fu_229_p3 );

    SC_METHOD(thread_tmp_s_fu_386_p1);
    sensitive << ( op2_assign_reg_157 );

    SC_METHOD(thread_toplevel_sdiv_9s_9ns_9_12_U1_ap_start);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_toplevel_udiv_8ns_8ns_8_11_U2_ap_start);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_up_V_fu_207_p2);
    sensitive << ( side_V );
    sensitive << ( cp_V_assign_reg_462 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( tmp_6_fu_406_p2 );
    sensitive << ( tmp_8_fu_375_p2 );

    ap_CS_fsm = "0000";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "down_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, avail_V_i, "(port)avail_V_i");
    sc_trace(mVcdFile, avail_V_o, "(port)avail_V_o");
    sc_trace(mVcdFile, avail_V_o_ap_vld, "(port)avail_V_o_ap_vld");
    sc_trace(mVcdFile, cp_V_i, "(port)cp_V_i");
    sc_trace(mVcdFile, cp_V_o, "(port)cp_V_o");
    sc_trace(mVcdFile, cp_V_o_ap_vld, "(port)cp_V_o_ap_vld");
    sc_trace(mVcdFile, side_V, "(port)side_V");
    sc_trace(mVcdFile, pp_tile_V_address0, "(port)pp_tile_V_address0");
    sc_trace(mVcdFile, pp_tile_V_ce0, "(port)pp_tile_V_ce0");
    sc_trace(mVcdFile, pp_tile_V_we0, "(port)pp_tile_V_we0");
    sc_trace(mVcdFile, pp_tile_V_d0, "(port)pp_tile_V_d0");
    sc_trace(mVcdFile, pp_tile_V_q0, "(port)pp_tile_V_q0");
    sc_trace(mVcdFile, pp_tile_V_address1, "(port)pp_tile_V_address1");
    sc_trace(mVcdFile, pp_tile_V_ce1, "(port)pp_tile_V_ce1");
    sc_trace(mVcdFile, pp_tile_V_q1, "(port)pp_tile_V_q1");
    sc_trace(mVcdFile, pp_rot_V_address0, "(port)pp_rot_V_address0");
    sc_trace(mVcdFile, pp_rot_V_ce0, "(port)pp_rot_V_ce0");
    sc_trace(mVcdFile, pp_rot_V_we0, "(port)pp_rot_V_we0");
    sc_trace(mVcdFile, pp_rot_V_d0, "(port)pp_rot_V_d0");
    sc_trace(mVcdFile, pp_rot_V_q0, "(port)pp_rot_V_q0");
    sc_trace(mVcdFile, pp_rot_V_address1, "(port)pp_rot_V_address1");
    sc_trace(mVcdFile, pp_rot_V_ce1, "(port)pp_rot_V_ce1");
    sc_trace(mVcdFile, pp_rot_V_q1, "(port)pp_rot_V_q1");
    sc_trace(mVcdFile, tiles_V_address0, "(port)tiles_V_address0");
    sc_trace(mVcdFile, tiles_V_ce0, "(port)tiles_V_ce0");
    sc_trace(mVcdFile, tiles_V_q0, "(port)tiles_V_q0");
    sc_trace(mVcdFile, tiles_V_address1, "(port)tiles_V_address1");
    sc_trace(mVcdFile, tiles_V_ce1, "(port)tiles_V_ce1");
    sc_trace(mVcdFile, tiles_V_q1, "(port)tiles_V_q1");
    sc_trace(mVcdFile, colours_V_address0, "(port)colours_V_address0");
    sc_trace(mVcdFile, colours_V_ce0, "(port)colours_V_ce0");
    sc_trace(mVcdFile, colours_V_q0, "(port)colours_V_q0");
    sc_trace(mVcdFile, colours_V_address1, "(port)colours_V_address1");
    sc_trace(mVcdFile, colours_V_ce1, "(port)colours_V_ce1");
    sc_trace(mVcdFile, colours_V_q1, "(port)colours_V_q1");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, t_V_reg_439, "t_V_reg_439");
    sc_trace(mVcdFile, cp_V_assign_fu_191_p2, "cp_V_assign_fu_191_p2");
    sc_trace(mVcdFile, cp_V_assign_reg_462, "cp_V_assign_reg_462");
    sc_trace(mVcdFile, tmp_31_reg_469, "tmp_31_reg_469");
    sc_trace(mVcdFile, tmp_32_reg_485, "tmp_32_reg_485");
    sc_trace(mVcdFile, possible_V_reg_521, "possible_V_reg_521");
    sc_trace(mVcdFile, possible_V_2_fu_353_p3, "possible_V_2_fu_353_p3");
    sc_trace(mVcdFile, possible_V_2_reg_526, "possible_V_2_reg_526");
    sc_trace(mVcdFile, r_V_fu_363_p2, "r_V_fu_363_p2");
    sc_trace(mVcdFile, r_V_reg_531, "r_V_reg_531");
    sc_trace(mVcdFile, tmp_fu_369_p2, "tmp_fu_369_p2");
    sc_trace(mVcdFile, tmp_reg_536, "tmp_reg_536");
    sc_trace(mVcdFile, t_fu_380_p2, "t_fu_380_p2");
    sc_trace(mVcdFile, op2_assign_reg_157, "op2_assign_reg_157");
    sc_trace(mVcdFile, tmp_6_fu_406_p2, "tmp_6_fu_406_p2");
    sc_trace(mVcdFile, tmp_8_fu_375_p2, "tmp_8_fu_375_p2");
    sc_trace(mVcdFile, tmp_i_i_fu_244_p1, "tmp_i_i_fu_244_p1");
    sc_trace(mVcdFile, tmp_i23_i_fu_258_p1, "tmp_i23_i_fu_258_p1");
    sc_trace(mVcdFile, tmp_20_fu_278_p1, "tmp_20_fu_278_p1");
    sc_trace(mVcdFile, tmp_22_fu_297_p1, "tmp_22_fu_297_p1");
    sc_trace(mVcdFile, tmp_3_fu_332_p1, "tmp_3_fu_332_p1");
    sc_trace(mVcdFile, tmp_5_fu_337_p1, "tmp_5_fu_337_p1");
    sc_trace(mVcdFile, tmp_7_fu_412_p1, "tmp_7_fu_412_p1");
    sc_trace(mVcdFile, tmp_1_fu_428_p2, "tmp_1_fu_428_p2");
    sc_trace(mVcdFile, grp_fu_185_p0, "grp_fu_185_p0");
    sc_trace(mVcdFile, grp_fu_185_p1, "grp_fu_185_p1");
    sc_trace(mVcdFile, grp_fu_202_p0, "grp_fu_202_p0");
    sc_trace(mVcdFile, grp_fu_202_p1, "grp_fu_202_p1");
    sc_trace(mVcdFile, grp_fu_185_p2, "grp_fu_185_p2");
    sc_trace(mVcdFile, r_V_11_fu_211_p1, "r_V_11_fu_211_p1");
    sc_trace(mVcdFile, grp_fu_202_p2, "grp_fu_202_p2");
    sc_trace(mVcdFile, tmp_61_i_fu_223_p0, "tmp_61_i_fu_223_p0");
    sc_trace(mVcdFile, tmp_60_i_cast_fu_219_p1, "tmp_60_i_cast_fu_219_p1");
    sc_trace(mVcdFile, tmp_61_i_fu_223_p2, "tmp_61_i_fu_223_p2");
    sc_trace(mVcdFile, this_assign_i_fu_229_p3, "this_assign_i_fu_229_p3");
    sc_trace(mVcdFile, up_V_fu_207_p2, "up_V_fu_207_p2");
    sc_trace(mVcdFile, r_V_s_fu_264_p2, "r_V_s_fu_264_p2");
    sc_trace(mVcdFile, tmp_19_fu_270_p3, "tmp_19_fu_270_p3");
    sc_trace(mVcdFile, r_V_1_fu_283_p2, "r_V_1_fu_283_p2");
    sc_trace(mVcdFile, tmp_21_fu_289_p3, "tmp_21_fu_289_p3");
    sc_trace(mVcdFile, tmp_63_i_cast_fu_302_p1, "tmp_63_i_cast_fu_302_p1");
    sc_trace(mVcdFile, p_i_fu_306_p3, "p_i_fu_306_p3");
    sc_trace(mVcdFile, tmp_65_i_cast_fu_317_p1, "tmp_65_i_cast_fu_317_p1");
    sc_trace(mVcdFile, p_5_i_fu_321_p3, "p_5_i_fu_321_p3");
    sc_trace(mVcdFile, tmp_3_fu_332_p0, "tmp_3_fu_332_p0");
    sc_trace(mVcdFile, tmp_5_fu_337_p0, "tmp_5_fu_337_p0");
    sc_trace(mVcdFile, r_V_fu_363_p0, "r_V_fu_363_p0");
    sc_trace(mVcdFile, lhs_V_fu_360_p1, "lhs_V_fu_360_p1");
    sc_trace(mVcdFile, r_V_fu_363_p1, "r_V_fu_363_p1");
    sc_trace(mVcdFile, possible_V_1_fu_346_p3, "possible_V_1_fu_346_p3");
    sc_trace(mVcdFile, tmp_s_fu_386_p1, "tmp_s_fu_386_p1");
    sc_trace(mVcdFile, r_V_12_fu_390_p2, "r_V_12_fu_390_p2");
    sc_trace(mVcdFile, tmp3_fu_396_p2, "tmp3_fu_396_p2");
    sc_trace(mVcdFile, r_V_4_fu_401_p2, "r_V_4_fu_401_p2");
    sc_trace(mVcdFile, p_2_fu_422_p2, "p_2_fu_422_p2");
    sc_trace(mVcdFile, toplevel_sdiv_9s_9ns_9_12_U1_ap_start, "toplevel_sdiv_9s_9ns_9_12_U1_ap_start");
    sc_trace(mVcdFile, grp_fu_185_ce, "grp_fu_185_ce");
    sc_trace(mVcdFile, toplevel_udiv_8ns_8ns_8_11_U2_ap_start, "toplevel_udiv_8ns_8ns_8_11_U2_ap_start");
    sc_trace(mVcdFile, grp_fu_202_ce, "grp_fu_202_ce");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

down::~down() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete toplevel_sdiv_9s_9ns_9_12_U1;
    delete toplevel_udiv_8ns_8ns_8_11_U2;
}

void down::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_406_p2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_fu_375_p2.read()))) {
        op2_assign_reg_157 = t_fu_380_p2.read();
    } else if (esl_seteq<1,4,4>(ap_ST_st15_fsm_14, ap_CS_fsm.read())) {
        op2_assign_reg_157 = ap_const_lv16_0;
    }
    if (esl_seteq<1,4,4>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        cp_V_assign_reg_462 = cp_V_assign_fu_191_p2.read();
    }
    if (esl_seteq<1,4,4>(ap_ST_st15_fsm_14, ap_CS_fsm.read())) {
        possible_V_2_reg_526 = possible_V_2_fu_353_p3.read();
        possible_V_reg_521 = avail_V_i.read();
        r_V_reg_531 = r_V_fu_363_p2.read();
        tmp_reg_536 = tmp_fu_369_p2.read();
    }
    if ((esl_seteq<1,4,4>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        t_V_reg_439 = cp_V_i.read();
    }
    if (esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read())) {
        tmp_31_reg_469 = this_assign_i_fu_229_p3.read().range(7, 7);
        tmp_32_reg_485 = up_V_fu_207_p2.read().range(7, 7);
    }
}

void down::thread_ap_done() {
    if (((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
          esl_seteq<1,4,4>(ap_ST_st1_fsm_0, ap_CS_fsm.read())) || 
         (esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_406_p2.read()) || 
           esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_fu_375_p2.read()))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void down::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,4,4>(ap_ST_st1_fsm_0, ap_CS_fsm.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void down::thread_ap_ready() {
    if ((esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_406_p2.read()) || 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_fu_375_p2.read())))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void down::thread_avail_V_o() {
    if ((esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_406_p2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_fu_375_p2.read()))) {
        avail_V_o = tmp_1_fu_428_p2.read();
    } else {
        avail_V_o = avail_V_i.read();
    }
}

void down::thread_avail_V_o_ap_vld() {
    if ((esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_406_p2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_fu_375_p2.read()))) {
        avail_V_o_ap_vld = ap_const_logic_1;
    } else {
        avail_V_o_ap_vld = ap_const_logic_0;
    }
}

void down::thread_colours_V_address0() {
    colours_V_address0 =  (sc_lv<4>) (tmp_3_fu_332_p1.read());
}

void down::thread_colours_V_address1() {
    colours_V_address1 =  (sc_lv<4>) (tmp_5_fu_337_p1.read());
}

void down::thread_colours_V_ce0() {
    if (esl_seteq<1,4,4>(ap_ST_st14_fsm_13, ap_CS_fsm.read())) {
        colours_V_ce0 = ap_const_logic_1;
    } else {
        colours_V_ce0 = ap_const_logic_0;
    }
}

void down::thread_colours_V_ce1() {
    if (esl_seteq<1,4,4>(ap_ST_st14_fsm_13, ap_CS_fsm.read())) {
        colours_V_ce1 = ap_const_logic_1;
    } else {
        colours_V_ce1 = ap_const_logic_0;
    }
}

void down::thread_cp_V_assign_fu_191_p2() {
    cp_V_assign_fu_191_p2 = (!t_V_reg_439.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_bigint<8>(t_V_reg_439.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void down::thread_cp_V_o() {
    if (esl_seteq<1,4,4>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        cp_V_o = cp_V_assign_fu_191_p2.read();
    } else {
        cp_V_o = cp_V_i.read();
    }
}

void down::thread_cp_V_o_ap_vld() {
    if (esl_seteq<1,4,4>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        cp_V_o_ap_vld = ap_const_logic_1;
    } else {
        cp_V_o_ap_vld = ap_const_logic_0;
    }
}

void down::thread_grp_fu_185_ce() {
    grp_fu_185_ce = ap_const_logic_1;
}

void down::thread_grp_fu_185_p0() {
    grp_fu_185_p0 = esl_sext<9,8>(cp_V_i.read());
}

void down::thread_grp_fu_185_p1() {
    grp_fu_185_p1 = esl_zext<9,8>(side_V.read());
}

void down::thread_grp_fu_202_ce() {
    grp_fu_202_ce = ap_const_logic_1;
}

void down::thread_grp_fu_202_p0() {
    grp_fu_202_p0 = (!t_V_reg_439.read().is_01() || !ap_const_lv8_1.is_01())? sc_lv<8>(): (sc_bigint<8>(t_V_reg_439.read()) + sc_biguint<8>(ap_const_lv8_1));
}

void down::thread_grp_fu_202_p1() {
    grp_fu_202_p1 = side_V.read();
}

void down::thread_lhs_V_fu_360_p1() {
    lhs_V_fu_360_p1 = esl_zext<16,8>(side_V.read());
}

void down::thread_p_2_fu_422_p2() {
    p_2_fu_422_p2 = (r_V_12_fu_390_p2.read() ^ ap_const_lv36_FFFFFFFFF);
}

void down::thread_p_5_i_fu_321_p3() {
    p_5_i_fu_321_p3 = (!tmp_32_reg_485.read()[0].is_01())? sc_lv<5>(): ((tmp_32_reg_485.read()[0].to_bool())? ap_const_lv5_1F: tmp_65_i_cast_fu_317_p1.read());
}

void down::thread_p_i_fu_306_p3() {
    p_i_fu_306_p3 = (!tmp_31_reg_469.read()[0].is_01())? sc_lv<5>(): ((tmp_31_reg_469.read()[0].to_bool())? ap_const_lv5_1F: tmp_63_i_cast_fu_302_p1.read());
}

void down::thread_possible_V_1_fu_346_p3() {
    possible_V_1_fu_346_p3 = (!tmp_31_reg_469.read()[0].is_01())? sc_lv<36>(): ((tmp_31_reg_469.read()[0].to_bool())? ap_const_lv36_FFFFFFFFF: colours_V_q0.read());
}

void down::thread_possible_V_2_fu_353_p3() {
    possible_V_2_fu_353_p3 = (!tmp_32_reg_485.read()[0].is_01())? sc_lv<36>(): ((tmp_32_reg_485.read()[0].to_bool())? ap_const_lv36_FFFFFFFFF: colours_V_q1.read());
}

void down::thread_pp_rot_V_address0() {
    if (esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        pp_rot_V_address0 =  (sc_lv<6>) (tmp_7_fu_412_p1.read());
    } else if (esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read())) {
        pp_rot_V_address0 =  (sc_lv<6>) (tmp_i_i_fu_244_p1.read());
    } else {
        pp_rot_V_address0 = "XXXXXX";
    }
}

void down::thread_pp_rot_V_address1() {
    pp_rot_V_address1 =  (sc_lv<6>) (tmp_i23_i_fu_258_p1.read());
}

void down::thread_pp_rot_V_ce0() {
    if ((esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) || 
         esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()))) {
        pp_rot_V_ce0 = ap_const_logic_1;
    } else {
        pp_rot_V_ce0 = ap_const_logic_0;
    }
}

void down::thread_pp_rot_V_ce1() {
    if (esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read())) {
        pp_rot_V_ce1 = ap_const_logic_1;
    } else {
        pp_rot_V_ce1 = ap_const_logic_0;
    }
}

void down::thread_pp_rot_V_d0() {
    pp_rot_V_d0 = ap_const_lv2_0;
}

void down::thread_pp_rot_V_we0() {
    if (((esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_406_p2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_fu_375_p2.read())))) {
        pp_rot_V_we0 = ap_const_logic_1;
    } else {
        pp_rot_V_we0 = ap_const_logic_0;
    }
}

void down::thread_pp_tile_V_address0() {
    if (esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read())) {
        pp_tile_V_address0 =  (sc_lv<6>) (tmp_7_fu_412_p1.read());
    } else if (esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read())) {
        pp_tile_V_address0 =  (sc_lv<6>) (tmp_i_i_fu_244_p1.read());
    } else {
        pp_tile_V_address0 = "XXXXXX";
    }
}

void down::thread_pp_tile_V_address1() {
    pp_tile_V_address1 =  (sc_lv<6>) (tmp_i23_i_fu_258_p1.read());
}

void down::thread_pp_tile_V_ce0() {
    if ((esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read()) || 
         esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()))) {
        pp_tile_V_ce0 = ap_const_logic_1;
    } else {
        pp_tile_V_ce0 = ap_const_logic_0;
    }
}

void down::thread_pp_tile_V_ce1() {
    if (esl_seteq<1,4,4>(ap_ST_st12_fsm_11, ap_CS_fsm.read())) {
        pp_tile_V_ce1 = ap_const_logic_1;
    } else {
        pp_tile_V_ce1 = ap_const_logic_0;
    }
}

void down::thread_pp_tile_V_d0() {
    pp_tile_V_d0 = op2_assign_reg_157.read().range(8-1, 0);
}

void down::thread_pp_tile_V_we0() {
    if (((esl_seteq<1,4,4>(ap_ST_st16_fsm_15, ap_CS_fsm.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_406_p2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_fu_375_p2.read())))) {
        pp_tile_V_we0 = ap_const_logic_1;
    } else {
        pp_tile_V_we0 = ap_const_logic_0;
    }
}

void down::thread_r_V_11_fu_211_p1() {
    r_V_11_fu_211_p1 = grp_fu_185_p2.read().range(8-1, 0);
}

void down::thread_r_V_12_fu_390_p2() {
    r_V_12_fu_390_p2 = (!tmp_s_fu_386_p1.read().is_01())? sc_lv<36>(): ap_const_lv36_1 << (unsigned short)tmp_s_fu_386_p1.read().to_uint();
}

void down::thread_r_V_1_fu_283_p2() {
    r_V_1_fu_283_p2 = (pp_rot_V_q1.read() ^ ap_const_lv2_2);
}

void down::thread_r_V_4_fu_401_p2() {
    r_V_4_fu_401_p2 = (tmp3_fu_396_p2.read() & tmp_reg_536.read());
}

void down::thread_r_V_fu_363_p0() {
    r_V_fu_363_p0 =  (sc_lv<8>) (lhs_V_fu_360_p1.read());
}

void down::thread_r_V_fu_363_p1() {
    r_V_fu_363_p1 =  (sc_lv<8>) (lhs_V_fu_360_p1.read());
}

void down::thread_r_V_fu_363_p2() {
    r_V_fu_363_p2 = (!r_V_fu_363_p0.read().is_01() || !r_V_fu_363_p1.read().is_01())? sc_lv<16>(): sc_biguint<8>(r_V_fu_363_p0.read()) * sc_biguint<8>(r_V_fu_363_p1.read());
}

void down::thread_r_V_s_fu_264_p2() {
    r_V_s_fu_264_p2 = (!pp_rot_V_q0.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_bigint<2>(pp_rot_V_q0.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void down::thread_t_fu_380_p2() {
    t_fu_380_p2 = (!op2_assign_reg_157.read().is_01() || !ap_const_lv16_1.is_01())? sc_lv<16>(): (sc_bigint<16>(op2_assign_reg_157.read()) + sc_biguint<16>(ap_const_lv16_1));
}

void down::thread_this_assign_i_fu_229_p3() {
    this_assign_i_fu_229_p3 = (!tmp_61_i_fu_223_p2.read()[0].is_01())? sc_lv<8>(): ((tmp_61_i_fu_223_p2.read()[0].to_bool())? t_V_reg_439.read(): ap_const_lv8_FF);
}

void down::thread_tiles_V_address0() {
    tiles_V_address0 =  (sc_lv<8>) (tmp_20_fu_278_p1.read());
}

void down::thread_tiles_V_address1() {
    tiles_V_address1 =  (sc_lv<8>) (tmp_22_fu_297_p1.read());
}

void down::thread_tiles_V_ce0() {
    if (esl_seteq<1,4,4>(ap_ST_st13_fsm_12, ap_CS_fsm.read())) {
        tiles_V_ce0 = ap_const_logic_1;
    } else {
        tiles_V_ce0 = ap_const_logic_0;
    }
}

void down::thread_tiles_V_ce1() {
    if (esl_seteq<1,4,4>(ap_ST_st13_fsm_12, ap_CS_fsm.read())) {
        tiles_V_ce1 = ap_const_logic_1;
    } else {
        tiles_V_ce1 = ap_const_logic_0;
    }
}

void down::thread_tmp3_fu_396_p2() {
    tmp3_fu_396_p2 = (possible_V_2_reg_526.read() & r_V_12_fu_390_p2.read());
}

void down::thread_tmp_19_fu_270_p3() {
    tmp_19_fu_270_p3 = esl_concat<8,2>(pp_tile_V_q0.read(), r_V_s_fu_264_p2.read());
}

void down::thread_tmp_1_fu_428_p2() {
    tmp_1_fu_428_p2 = (possible_V_reg_521.read() & p_2_fu_422_p2.read());
}

void down::thread_tmp_20_fu_278_p1() {
    tmp_20_fu_278_p1 = esl_zext<64,10>(tmp_19_fu_270_p3.read());
}

void down::thread_tmp_21_fu_289_p3() {
    tmp_21_fu_289_p3 = esl_concat<8,2>(pp_tile_V_q1.read(), r_V_1_fu_283_p2.read());
}

void down::thread_tmp_22_fu_297_p1() {
    tmp_22_fu_297_p1 = esl_zext<64,10>(tmp_21_fu_289_p3.read());
}

void down::thread_tmp_3_fu_332_p0() {
    tmp_3_fu_332_p0 = esl_sext<8,5>(p_i_fu_306_p3.read());
}

void down::thread_tmp_3_fu_332_p1() {
    tmp_3_fu_332_p1 = esl_zext<64,8>(tmp_3_fu_332_p0.read());
}

void down::thread_tmp_5_fu_337_p0() {
    tmp_5_fu_337_p0 = esl_sext<8,5>(p_5_i_fu_321_p3.read());
}

void down::thread_tmp_5_fu_337_p1() {
    tmp_5_fu_337_p1 = esl_zext<64,8>(tmp_5_fu_337_p0.read());
}

void down::thread_tmp_60_i_cast_fu_219_p1() {
    tmp_60_i_cast_fu_219_p1 = esl_zext<9,8>(grp_fu_202_p2.read());
}

void down::thread_tmp_61_i_fu_223_p0() {
    tmp_61_i_fu_223_p0 = esl_sext<9,8>(r_V_11_fu_211_p1.read());
}

void down::thread_tmp_61_i_fu_223_p2() {
    tmp_61_i_fu_223_p2 = (!tmp_61_i_fu_223_p0.read().is_01() || !tmp_60_i_cast_fu_219_p1.read().is_01())? sc_lv<1>(): sc_lv<1>(tmp_61_i_fu_223_p0.read() == tmp_60_i_cast_fu_219_p1.read());
}

void down::thread_tmp_63_i_cast_fu_302_p1() {
    tmp_63_i_cast_fu_302_p1 = esl_zext<5,4>(tiles_V_q0.read());
}

void down::thread_tmp_65_i_cast_fu_317_p1() {
    tmp_65_i_cast_fu_317_p1 = esl_zext<5,4>(tiles_V_q1.read());
}

void down::thread_tmp_6_fu_406_p2() {
    tmp_6_fu_406_p2 = (!r_V_4_fu_401_p2.read().is_01() || !ap_const_lv36_0.is_01())? sc_lv<1>(): sc_lv<1>(r_V_4_fu_401_p2.read() == ap_const_lv36_0);
}

void down::thread_tmp_7_fu_412_p1() {
    tmp_7_fu_412_p1 = esl_zext<64,8>(cp_V_assign_reg_462.read());
}

void down::thread_tmp_8_fu_375_p2() {
    tmp_8_fu_375_p2 = (!op2_assign_reg_157.read().is_01() || !r_V_reg_531.read().is_01())? sc_lv<1>(): (sc_biguint<16>(op2_assign_reg_157.read()) < sc_biguint<16>(r_V_reg_531.read()));
}

void down::thread_tmp_fu_369_p2() {
    tmp_fu_369_p2 = (avail_V_i.read() & possible_V_1_fu_346_p3.read());
}

void down::thread_tmp_i23_i_fu_258_p1() {
    tmp_i23_i_fu_258_p1 = esl_zext<64,8>(up_V_fu_207_p2.read());
}

void down::thread_tmp_i_i_fu_244_p1() {
    tmp_i_i_fu_244_p1 = esl_zext<64,8>(this_assign_i_fu_229_p3.read());
}

void down::thread_tmp_s_fu_386_p1() {
    tmp_s_fu_386_p1 = esl_zext<36,16>(op2_assign_reg_157.read());
}

void down::thread_toplevel_sdiv_9s_9ns_9_12_U1_ap_start() {
    if ((esl_seteq<1,4,4>(ap_ST_st1_fsm_0, ap_CS_fsm.read()) && 
         !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        toplevel_sdiv_9s_9ns_9_12_U1_ap_start = ap_const_logic_1;
    } else {
        toplevel_sdiv_9s_9ns_9_12_U1_ap_start = ap_const_logic_0;
    }
}

void down::thread_toplevel_udiv_8ns_8ns_8_11_U2_ap_start() {
    if (esl_seteq<1,4,4>(ap_ST_st2_fsm_1, ap_CS_fsm.read())) {
        toplevel_udiv_8ns_8ns_8_11_U2_ap_start = ap_const_logic_1;
    } else {
        toplevel_udiv_8ns_8ns_8_11_U2_ap_start = ap_const_logic_0;
    }
}

void down::thread_up_V_fu_207_p2() {
    up_V_fu_207_p2 = (!cp_V_assign_reg_462.read().is_01() || !side_V.read().is_01())? sc_lv<8>(): (sc_bigint<8>(cp_V_assign_reg_462.read()) - sc_biguint<8>(side_V.read()));
}

void down::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint()) {
        case 0 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 1 : 
            ap_NS_fsm = ap_ST_st3_fsm_2;
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
            break;
        case 3 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 5 : 
            ap_NS_fsm = ap_ST_st7_fsm_6;
            break;
        case 6 : 
            ap_NS_fsm = ap_ST_st8_fsm_7;
            break;
        case 7 : 
            ap_NS_fsm = ap_ST_st9_fsm_8;
            break;
        case 8 : 
            ap_NS_fsm = ap_ST_st10_fsm_9;
            break;
        case 9 : 
            ap_NS_fsm = ap_ST_st11_fsm_10;
            break;
        case 10 : 
            ap_NS_fsm = ap_ST_st12_fsm_11;
            break;
        case 11 : 
            ap_NS_fsm = ap_ST_st13_fsm_12;
            break;
        case 12 : 
            ap_NS_fsm = ap_ST_st14_fsm_13;
            break;
        case 13 : 
            ap_NS_fsm = ap_ST_st15_fsm_14;
            break;
        case 14 : 
            ap_NS_fsm = ap_ST_st16_fsm_15;
            break;
        case 15 : 
            if ((esl_seteq<1,1,1>(ap_const_lv1_0, tmp_6_fu_406_p2.read()) || esl_seteq<1,1,1>(ap_const_lv1_0, tmp_8_fu_375_p2.read()))) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st16_fsm_15;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<4>) ("XXXX");
            break;
    }
}
}
