set moduleName backtrack
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName backtrack
set C_modelType { void 0 }
set C_modelArgList { 
	{ cp_V int 8 regular {pointer 2} {global 2}  }
	{ pp_rot_V int 2 regular {array 36 { 2 1 } 1 1 } {global 2}  }
	{ pp_tile_V int 8 regular {array 36 { 2 1 } 1 1 } {global 2}  }
	{ avail_V int 36 regular {pointer 2} {global 2}  }
	{ side_V int 8 regular {pointer 0} {global 0}  }
	{ tiles_V int 4 regular {array 144 { 1 1 } 1 1 } {global 0}  }
	{ colours_V int 36 regular {array 10 { 1 3 } 1 1 } {global 0}  }
	{ ntiles_V int 8 regular {pointer 0} {global 0}  }
	{ terminate int 1 regular {pointer 2} {global 2}  }
}
set C_modelArgMapList {[ 
]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ cp_V_i sc_in sc_lv 8 signal 0 } 
	{ cp_V_o sc_out sc_lv 8 signal 0 } 
	{ cp_V_o_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ pp_rot_V_address0 sc_out sc_lv 6 signal 1 } 
	{ pp_rot_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ pp_rot_V_we0 sc_out sc_logic 1 signal 1 } 
	{ pp_rot_V_d0 sc_out sc_lv 2 signal 1 } 
	{ pp_rot_V_q0 sc_in sc_lv 2 signal 1 } 
	{ pp_rot_V_address1 sc_out sc_lv 6 signal 1 } 
	{ pp_rot_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ pp_rot_V_q1 sc_in sc_lv 2 signal 1 } 
	{ pp_tile_V_address0 sc_out sc_lv 6 signal 2 } 
	{ pp_tile_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ pp_tile_V_we0 sc_out sc_logic 1 signal 2 } 
	{ pp_tile_V_d0 sc_out sc_lv 8 signal 2 } 
	{ pp_tile_V_q0 sc_in sc_lv 8 signal 2 } 
	{ pp_tile_V_address1 sc_out sc_lv 6 signal 2 } 
	{ pp_tile_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ pp_tile_V_q1 sc_in sc_lv 8 signal 2 } 
	{ avail_V_i sc_in sc_lv 36 signal 3 } 
	{ avail_V_o sc_out sc_lv 36 signal 3 } 
	{ avail_V_o_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ side_V sc_in sc_lv 8 signal 4 } 
	{ tiles_V_address0 sc_out sc_lv 8 signal 5 } 
	{ tiles_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ tiles_V_q0 sc_in sc_lv 4 signal 5 } 
	{ tiles_V_address1 sc_out sc_lv 8 signal 5 } 
	{ tiles_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ tiles_V_q1 sc_in sc_lv 4 signal 5 } 
	{ colours_V_address0 sc_out sc_lv 4 signal 6 } 
	{ colours_V_ce0 sc_out sc_logic 1 signal 6 } 
	{ colours_V_q0 sc_in sc_lv 36 signal 6 } 
	{ ntiles_V sc_in sc_lv 8 signal 7 } 
	{ terminate_i sc_in sc_lv 1 signal 8 } 
	{ terminate_o sc_out sc_lv 1 signal 8 } 
	{ terminate_o_ap_vld sc_out sc_logic 1 outvld 8 } 
}

set Spec2ImplPortList { 
	cp_V { ap_ovld {  { cp_V_i in_data 0 8 }  { cp_V_o out_data 1 8 }  { cp_V_o_ap_vld out_vld 1 1 } } }
	pp_rot_V { ap_memory {  { pp_rot_V_address0 mem_address 1 6 }  { pp_rot_V_ce0 mem_ce 1 1 }  { pp_rot_V_we0 mem_we 1 1 }  { pp_rot_V_d0 mem_din 1 2 }  { pp_rot_V_q0 mem_dout 0 2 }  { pp_rot_V_address1 mem_address 1 6 }  { pp_rot_V_ce1 mem_ce 1 1 }  { pp_rot_V_q1 mem_dout 0 2 } } }
	pp_tile_V { ap_memory {  { pp_tile_V_address0 mem_address 1 6 }  { pp_tile_V_ce0 mem_ce 1 1 }  { pp_tile_V_we0 mem_we 1 1 }  { pp_tile_V_d0 mem_din 1 8 }  { pp_tile_V_q0 mem_dout 0 8 }  { pp_tile_V_address1 mem_address 1 6 }  { pp_tile_V_ce1 mem_ce 1 1 }  { pp_tile_V_q1 mem_dout 0 8 } } }
	avail_V { ap_ovld {  { avail_V_i in_data 0 36 }  { avail_V_o out_data 1 36 }  { avail_V_o_ap_vld out_vld 1 1 } } }
	side_V { ap_none {  { side_V in_data 0 8 } } }
	tiles_V { ap_memory {  { tiles_V_address0 mem_address 1 8 }  { tiles_V_ce0 mem_ce 1 1 }  { tiles_V_q0 mem_dout 0 4 }  { tiles_V_address1 mem_address 1 8 }  { tiles_V_ce1 mem_ce 1 1 }  { tiles_V_q1 mem_dout 0 4 } } }
	colours_V { ap_memory {  { colours_V_address0 mem_address 1 4 }  { colours_V_ce0 mem_ce 1 1 }  { colours_V_q0 mem_dout 0 36 } } }
	ntiles_V { ap_none {  { ntiles_V in_data 0 8 } } }
	terminate { ap_ovld {  { terminate_i in_data 0 1 }  { terminate_o out_data 1 1 }  { terminate_o_ap_vld out_vld 1 1 } } }
}
