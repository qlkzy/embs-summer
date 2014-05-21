// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2013.4
// Copyright (C) 2013 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module check (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_V,
        side_V,
        pp_tile_V_address0,
        pp_tile_V_ce0,
        pp_tile_V_q0,
        pp_tile_V_address1,
        pp_tile_V_ce1,
        pp_tile_V_q1,
        pp_rot_V_address0,
        pp_rot_V_ce0,
        pp_rot_V_q0,
        pp_rot_V_address1,
        pp_rot_V_ce1,
        pp_rot_V_q1,
        tiles_V_address0,
        tiles_V_ce0,
        tiles_V_q0,
        tiles_V_address1,
        tiles_V_ce1,
        tiles_V_q1,
        ap_return
);

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [7:0] p_V;
input  [7:0] side_V;
output  [5:0] pp_tile_V_address0;
output   pp_tile_V_ce0;
input  [7:0] pp_tile_V_q0;
output  [5:0] pp_tile_V_address1;
output   pp_tile_V_ce1;
input  [7:0] pp_tile_V_q1;
output  [5:0] pp_rot_V_address0;
output   pp_rot_V_ce0;
input  [1:0] pp_rot_V_q0;
output  [5:0] pp_rot_V_address1;
output   pp_rot_V_ce1;
input  [1:0] pp_rot_V_q1;
output  [7:0] tiles_V_address0;
output   tiles_V_ce0;
input  [3:0] tiles_V_q0;
output  [7:0] tiles_V_address1;
output   tiles_V_ce1;
input  [3:0] tiles_V_q1;
output  [0:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[5:0] pp_tile_V_address0;
reg pp_tile_V_ce0;
reg[5:0] pp_tile_V_address1;
reg pp_tile_V_ce1;
reg[5:0] pp_rot_V_address0;
reg pp_rot_V_ce0;
reg[5:0] pp_rot_V_address1;
reg pp_rot_V_ce1;
reg[7:0] tiles_V_address0;
reg tiles_V_ce0;
reg[7:0] tiles_V_address1;
reg tiles_V_ce1;
reg[0:0] ap_return;
reg   [4:0] ap_CS_fsm = 5'b00000;
wire   [0:0] tmp_i_fu_184_p2;
reg   [0:0] tmp_i_reg_332;
wire   [0:0] tmp_28_i_fu_208_p2;
reg   [0:0] tmp_28_i_reg_346;
wire   [0:0] grp_fu_177_p2;
reg   [0:0] tmp_29_i_reg_380;
wire   [0:0] tmp_32_fu_273_p3;
reg   [0:0] tmp_32_reg_384;
reg   [0:0] tmp_s_phi_fu_162_p6;
reg   [0:0] tmp_s_reg_157;
wire   [63:0] tmp_i_i_fu_219_p1;
wire   [63:0] tmp_i2_i_fu_225_p1;
wire   [63:0] tmp_23_fu_244_p1;
wire   [63:0] tmp_25_fu_263_p1;
wire   [63:0] tmp_i_i3_fu_281_p1;
wire   [63:0] tmp_i3_i_fu_287_p1;
wire   [63:0] tmp_27_fu_306_p1;
wire   [63:0] tmp_29_fu_319_p1;
wire   [9:0] grp_fu_198_p0;
wire   [9:0] grp_fu_198_p1;
wire   [9:0] grp_fu_198_p2;
wire   [7:0] r_V_fu_204_p1;
wire   [7:0] this_assign_i_fu_214_p2;
wire   [1:0] r_V_9_fu_230_p2;
wire   [9:0] tmp_fu_236_p3;
wire   [1:0] r_V_s_fu_249_p2;
wire   [9:0] tmp_24_fu_255_p3;
wire   [7:0] up_V_fu_268_p2;
wire   [1:0] r_V_1_fu_292_p2;
wire   [9:0] tmp_26_fu_298_p3;
wire   [9:0] tmp_28_fu_311_p3;
reg    toplevel_srem_10s_10ns_10_13_U31_ap_start;
wire    grp_fu_198_ce;
reg   [0:0] ap_return_preg = 1'b0;
reg   [4:0] ap_NS_fsm;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 5'b00000;
parameter    ap_ST_st2_fsm_1 = 5'b1;
parameter    ap_ST_st3_fsm_2 = 5'b10;
parameter    ap_ST_st4_fsm_3 = 5'b11;
parameter    ap_ST_st5_fsm_4 = 5'b100;
parameter    ap_ST_st6_fsm_5 = 5'b101;
parameter    ap_ST_st7_fsm_6 = 5'b110;
parameter    ap_ST_st8_fsm_7 = 5'b111;
parameter    ap_ST_st9_fsm_8 = 5'b1000;
parameter    ap_ST_st10_fsm_9 = 5'b1001;
parameter    ap_ST_st11_fsm_10 = 5'b1010;
parameter    ap_ST_st12_fsm_11 = 5'b1011;
parameter    ap_ST_st13_fsm_12 = 5'b1100;
parameter    ap_ST_st14_fsm_13 = 5'b1101;
parameter    ap_ST_st15_fsm_14 = 5'b1110;
parameter    ap_ST_st16_fsm_15 = 5'b1111;
parameter    ap_ST_st17_fsm_16 = 5'b10000;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv8_FF = 8'b11111111;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv2_3 = 2'b11;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_const_lv2_2 = 2'b10;
parameter    ap_true = 1'b1;


toplevel_srem_10s_10ns_10_13 #(
    .ID( 31 ),
    .NUM_STAGE( 13 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 10 ))
toplevel_srem_10s_10ns_10_13_U31(
    .clk( ap_clk ),
    .reset( ap_rst ),
    .start( toplevel_srem_10s_10ns_10_13_U31_ap_start ),
    .din0( grp_fu_198_p0 ),
    .din1( grp_fu_198_p1 ),
    .ce( grp_fu_198_ce ),
    .dout( grp_fu_198_p2 )
);



/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_return_preg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_return_preg
    if (ap_rst == 1'b1) begin
        ap_return_preg <= ap_const_lv1_0;
    end else begin
        if ((ap_ST_st17_fsm_16 == ap_CS_fsm)) begin
            ap_return_preg <= tmp_s_phi_fu_162_p6;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st15_fsm_14 == ap_CS_fsm) & ((~(tmp_i_reg_332 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_32_fu_273_p3)) | (~(ap_const_lv1_0 == tmp_28_i_reg_346) & ~(ap_const_lv1_0 == tmp_32_fu_273_p3)) | (~(ap_const_lv1_0 == grp_fu_177_p2) & ~(ap_const_lv1_0 == tmp_32_fu_273_p3))))) begin
        tmp_s_reg_157 <= ap_const_lv1_1;
    end else if (((ap_ST_st17_fsm_16 == ap_CS_fsm) & ((~(tmp_i_reg_332 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_32_reg_384)) | (~(ap_const_lv1_0 == tmp_28_i_reg_346) & (ap_const_lv1_0 == tmp_32_reg_384)) | ((ap_const_lv1_0 == tmp_32_reg_384) & ~(ap_const_lv1_0 == tmp_29_i_reg_380))))) begin
        tmp_s_reg_157 <= grp_fu_177_p2;
    end else if (((ap_ST_st15_fsm_14 == ap_CS_fsm) & (tmp_i_reg_332 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_28_i_reg_346) & (ap_const_lv1_0 == grp_fu_177_p2))) begin
        tmp_s_reg_157 <= ap_const_lv1_0;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if ((ap_ST_st13_fsm_12 == ap_CS_fsm)) begin
        tmp_28_i_reg_346 <= tmp_28_i_fu_208_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st15_fsm_14 == ap_CS_fsm) & (tmp_i_reg_332 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_28_i_reg_346))) begin
        tmp_29_i_reg_380 <= grp_fu_177_p2;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st15_fsm_14 == ap_CS_fsm) & (~(tmp_i_reg_332 == ap_const_lv1_0) | ~(ap_const_lv1_0 == tmp_28_i_reg_346) | ~(ap_const_lv1_0 == grp_fu_177_p2)))) begin
        tmp_32_reg_384 <= up_V_fu_268_p2[ap_const_lv32_7];
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0))) begin
        tmp_i_reg_332 <= tmp_i_fu_184_p2;
    end
end

/// ap_done assign process. ///
always @ (ap_start or ap_CS_fsm)
begin
    if (((~(ap_const_logic_1 == ap_start) & (ap_ST_st1_fsm_0 == ap_CS_fsm)) | (ap_ST_st17_fsm_16 == ap_CS_fsm))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_CS_fsm)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_ST_st1_fsm_0 == ap_CS_fsm))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st17_fsm_16 == ap_CS_fsm)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_return assign process. ///
always @ (ap_CS_fsm or tmp_s_phi_fu_162_p6 or ap_return_preg)
begin
    if ((ap_ST_st17_fsm_16 == ap_CS_fsm)) begin
        ap_return = tmp_s_phi_fu_162_p6;
    end else begin
        ap_return = ap_return_preg;
    end
end

/// pp_rot_V_address0 assign process. ///
always @ (ap_CS_fsm or tmp_i_i_fu_219_p1 or tmp_i_i3_fu_281_p1)
begin
    if ((ap_ST_st15_fsm_14 == ap_CS_fsm)) begin
        pp_rot_V_address0 = tmp_i_i3_fu_281_p1;
    end else if ((ap_ST_st13_fsm_12 == ap_CS_fsm)) begin
        pp_rot_V_address0 = tmp_i_i_fu_219_p1;
    end else begin
        pp_rot_V_address0 = 'bx;
    end
end

/// pp_rot_V_address1 assign process. ///
always @ (ap_CS_fsm or tmp_i2_i_fu_225_p1 or tmp_i3_i_fu_287_p1)
begin
    if ((ap_ST_st15_fsm_14 == ap_CS_fsm)) begin
        pp_rot_V_address1 = tmp_i3_i_fu_287_p1;
    end else if ((ap_ST_st13_fsm_12 == ap_CS_fsm)) begin
        pp_rot_V_address1 = tmp_i2_i_fu_225_p1;
    end else begin
        pp_rot_V_address1 = 'bx;
    end
end

/// pp_rot_V_ce0 assign process. ///
always @ (ap_CS_fsm)
begin
    if (((ap_ST_st13_fsm_12 == ap_CS_fsm) | (ap_ST_st15_fsm_14 == ap_CS_fsm))) begin
        pp_rot_V_ce0 = ap_const_logic_1;
    end else begin
        pp_rot_V_ce0 = ap_const_logic_0;
    end
end

/// pp_rot_V_ce1 assign process. ///
always @ (ap_CS_fsm)
begin
    if (((ap_ST_st13_fsm_12 == ap_CS_fsm) | (ap_ST_st15_fsm_14 == ap_CS_fsm))) begin
        pp_rot_V_ce1 = ap_const_logic_1;
    end else begin
        pp_rot_V_ce1 = ap_const_logic_0;
    end
end

/// pp_tile_V_address0 assign process. ///
always @ (ap_CS_fsm or tmp_i_i_fu_219_p1 or tmp_i_i3_fu_281_p1)
begin
    if ((ap_ST_st15_fsm_14 == ap_CS_fsm)) begin
        pp_tile_V_address0 = tmp_i_i3_fu_281_p1;
    end else if ((ap_ST_st13_fsm_12 == ap_CS_fsm)) begin
        pp_tile_V_address0 = tmp_i_i_fu_219_p1;
    end else begin
        pp_tile_V_address0 = 'bx;
    end
end

/// pp_tile_V_address1 assign process. ///
always @ (ap_CS_fsm or tmp_i2_i_fu_225_p1 or tmp_i3_i_fu_287_p1)
begin
    if ((ap_ST_st15_fsm_14 == ap_CS_fsm)) begin
        pp_tile_V_address1 = tmp_i3_i_fu_287_p1;
    end else if ((ap_ST_st13_fsm_12 == ap_CS_fsm)) begin
        pp_tile_V_address1 = tmp_i2_i_fu_225_p1;
    end else begin
        pp_tile_V_address1 = 'bx;
    end
end

/// pp_tile_V_ce0 assign process. ///
always @ (ap_CS_fsm)
begin
    if (((ap_ST_st13_fsm_12 == ap_CS_fsm) | (ap_ST_st15_fsm_14 == ap_CS_fsm))) begin
        pp_tile_V_ce0 = ap_const_logic_1;
    end else begin
        pp_tile_V_ce0 = ap_const_logic_0;
    end
end

/// pp_tile_V_ce1 assign process. ///
always @ (ap_CS_fsm)
begin
    if (((ap_ST_st13_fsm_12 == ap_CS_fsm) | (ap_ST_st15_fsm_14 == ap_CS_fsm))) begin
        pp_tile_V_ce1 = ap_const_logic_1;
    end else begin
        pp_tile_V_ce1 = ap_const_logic_0;
    end
end

/// tiles_V_address0 assign process. ///
always @ (ap_CS_fsm or tmp_23_fu_244_p1 or tmp_27_fu_306_p1)
begin
    if ((ap_ST_st16_fsm_15 == ap_CS_fsm)) begin
        tiles_V_address0 = tmp_27_fu_306_p1;
    end else if ((ap_ST_st14_fsm_13 == ap_CS_fsm)) begin
        tiles_V_address0 = tmp_23_fu_244_p1;
    end else begin
        tiles_V_address0 = 'bx;
    end
end

/// tiles_V_address1 assign process. ///
always @ (ap_CS_fsm or tmp_25_fu_263_p1 or tmp_29_fu_319_p1)
begin
    if ((ap_ST_st16_fsm_15 == ap_CS_fsm)) begin
        tiles_V_address1 = tmp_29_fu_319_p1;
    end else if ((ap_ST_st14_fsm_13 == ap_CS_fsm)) begin
        tiles_V_address1 = tmp_25_fu_263_p1;
    end else begin
        tiles_V_address1 = 'bx;
    end
end

/// tiles_V_ce0 assign process. ///
always @ (ap_CS_fsm)
begin
    if (((ap_ST_st14_fsm_13 == ap_CS_fsm) | (ap_ST_st16_fsm_15 == ap_CS_fsm))) begin
        tiles_V_ce0 = ap_const_logic_1;
    end else begin
        tiles_V_ce0 = ap_const_logic_0;
    end
end

/// tiles_V_ce1 assign process. ///
always @ (ap_CS_fsm)
begin
    if (((ap_ST_st14_fsm_13 == ap_CS_fsm) | (ap_ST_st16_fsm_15 == ap_CS_fsm))) begin
        tiles_V_ce1 = ap_const_logic_1;
    end else begin
        tiles_V_ce1 = ap_const_logic_0;
    end
end

/// tmp_s_phi_fu_162_p6 assign process. ///
always @ (ap_CS_fsm or tmp_i_reg_332 or tmp_28_i_reg_346 or grp_fu_177_p2 or tmp_29_i_reg_380 or tmp_32_reg_384 or tmp_s_reg_157)
begin
    if (((ap_ST_st17_fsm_16 == ap_CS_fsm) & ((~(tmp_i_reg_332 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_32_reg_384)) | (~(ap_const_lv1_0 == tmp_28_i_reg_346) & (ap_const_lv1_0 == tmp_32_reg_384)) | ((ap_const_lv1_0 == tmp_32_reg_384) & ~(ap_const_lv1_0 == tmp_29_i_reg_380))))) begin
        tmp_s_phi_fu_162_p6 = grp_fu_177_p2;
    end else begin
        tmp_s_phi_fu_162_p6 = tmp_s_reg_157;
    end
end

/// toplevel_srem_10s_10ns_10_13_U31_ap_start assign process. ///
always @ (ap_start or ap_CS_fsm or tmp_i_fu_184_p2)
begin
    if (((ap_ST_st1_fsm_0 == ap_CS_fsm) & ~(ap_start == ap_const_logic_0) & (tmp_i_fu_184_p2 == ap_const_lv1_0))) begin
        toplevel_srem_10s_10ns_10_13_U31_ap_start = ap_const_logic_1;
    end else begin
        toplevel_srem_10s_10ns_10_13_U31_ap_start = ap_const_logic_0;
    end
end
always @ (ap_start or ap_CS_fsm or tmp_i_fu_184_p2 or tmp_i_reg_332 or tmp_28_i_fu_208_p2 or tmp_28_i_reg_346 or grp_fu_177_p2 or tmp_32_fu_273_p3)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
            if ((~(ap_start == ap_const_logic_0) & ~(tmp_i_fu_184_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_st15_fsm_14;
            end else if ((~(ap_start == ap_const_logic_0) & (tmp_i_fu_184_p2 == ap_const_lv1_0))) begin
                ap_NS_fsm = ap_ST_st2_fsm_1;
            end else begin
                ap_NS_fsm = ap_ST_st1_fsm_0;
            end
        ap_ST_st2_fsm_1 : 
            ap_NS_fsm = ap_ST_st3_fsm_2;
        ap_ST_st3_fsm_2 : 
            ap_NS_fsm = ap_ST_st4_fsm_3;
        ap_ST_st4_fsm_3 : 
            ap_NS_fsm = ap_ST_st5_fsm_4;
        ap_ST_st5_fsm_4 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
        ap_ST_st6_fsm_5 : 
            ap_NS_fsm = ap_ST_st7_fsm_6;
        ap_ST_st7_fsm_6 : 
            ap_NS_fsm = ap_ST_st8_fsm_7;
        ap_ST_st8_fsm_7 : 
            ap_NS_fsm = ap_ST_st9_fsm_8;
        ap_ST_st9_fsm_8 : 
            ap_NS_fsm = ap_ST_st10_fsm_9;
        ap_ST_st10_fsm_9 : 
            ap_NS_fsm = ap_ST_st11_fsm_10;
        ap_ST_st11_fsm_10 : 
            ap_NS_fsm = ap_ST_st12_fsm_11;
        ap_ST_st12_fsm_11 : 
            ap_NS_fsm = ap_ST_st13_fsm_12;
        ap_ST_st13_fsm_12 : 
            if (~(ap_const_lv1_0 == tmp_28_i_fu_208_p2)) begin
                ap_NS_fsm = ap_ST_st15_fsm_14;
            end else begin
                ap_NS_fsm = ap_ST_st14_fsm_13;
            end
        ap_ST_st14_fsm_13 : 
            ap_NS_fsm = ap_ST_st15_fsm_14;
        ap_ST_st15_fsm_14 : 
            if (((~(tmp_i_reg_332 == ap_const_lv1_0) & (ap_const_lv1_0 == tmp_32_fu_273_p3)) | (~(ap_const_lv1_0 == tmp_28_i_reg_346) & (ap_const_lv1_0 == tmp_32_fu_273_p3)) | (~(ap_const_lv1_0 == grp_fu_177_p2) & (ap_const_lv1_0 == tmp_32_fu_273_p3)))) begin
                ap_NS_fsm = ap_ST_st16_fsm_15;
            end else begin
                ap_NS_fsm = ap_ST_st17_fsm_16;
            end
        ap_ST_st16_fsm_15 : 
            ap_NS_fsm = ap_ST_st17_fsm_16;
        ap_ST_st17_fsm_16 : 
            ap_NS_fsm = ap_ST_st1_fsm_0;
        default : 
            ap_NS_fsm = 'bx;
    endcase
end
assign grp_fu_177_p2 = (tiles_V_q0 == tiles_V_q1? 1'b1: 1'b0);
assign grp_fu_198_ce = ap_const_logic_1;
assign grp_fu_198_p0 = $signed(p_V);
assign grp_fu_198_p1 = $unsigned(side_V);
assign r_V_1_fu_292_p2 = (pp_rot_V_q0 ^ ap_const_lv2_2);
assign r_V_9_fu_230_p2 = (pp_rot_V_q0 + ap_const_lv2_1);
assign r_V_fu_204_p1 = grp_fu_198_p2[7:0];
assign r_V_s_fu_249_p2 = (pp_rot_V_q1 + ap_const_lv2_3);
assign this_assign_i_fu_214_p2 = (p_V + ap_const_lv8_FF);
assign tmp_23_fu_244_p1 = $unsigned(tmp_fu_236_p3);
assign tmp_24_fu_255_p3 = {{pp_tile_V_q1}, {r_V_s_fu_249_p2}};
assign tmp_25_fu_263_p1 = $unsigned(tmp_24_fu_255_p3);
assign tmp_26_fu_298_p3 = {{pp_tile_V_q0}, {r_V_1_fu_292_p2}};
assign tmp_27_fu_306_p1 = $unsigned(tmp_26_fu_298_p3);
assign tmp_28_fu_311_p3 = {{pp_tile_V_q1}, {pp_rot_V_q1}};
assign tmp_28_i_fu_208_p2 = (r_V_fu_204_p1 == ap_const_lv8_0? 1'b1: 1'b0);
assign tmp_29_fu_319_p1 = $unsigned(tmp_28_fu_311_p3);
assign tmp_32_fu_273_p3 = up_V_fu_268_p2[ap_const_lv32_7];
assign tmp_fu_236_p3 = {{pp_tile_V_q0}, {r_V_9_fu_230_p2}};
assign tmp_i2_i_fu_225_p1 = $unsigned(p_V);
assign tmp_i3_i_fu_287_p1 = $unsigned(p_V);
assign tmp_i_fu_184_p2 = (p_V == ap_const_lv8_0? 1'b1: 1'b0);
assign tmp_i_i3_fu_281_p1 = $unsigned(up_V_fu_268_p2);
assign tmp_i_i_fu_219_p1 = $unsigned(this_assign_i_fu_214_p2);
assign up_V_fu_268_p2 = (p_V - side_V);


endmodule //check
