set moduleName check
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set C_modelName check
set C_modelType { int 1 }
set C_modelArgList { 
	{ p_V int 8 regular  }
	{ side_V int 8 regular {pointer 0} {global 0}  }
	{ pp_tile_V int 8 regular {array 36 { 1 1 } 1 1 } {global 0}  }
	{ pp_rot_V int 2 regular {array 36 { 1 1 } 1 1 } {global 0}  }
	{ tiles_V int 4 regular {array 144 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_V sc_in sc_lv 8 signal 0 } 
	{ side_V sc_in sc_lv 8 signal 1 } 
	{ pp_tile_V_address0 sc_out sc_lv 6 signal 2 } 
	{ pp_tile_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ pp_tile_V_q0 sc_in sc_lv 8 signal 2 } 
	{ pp_tile_V_address1 sc_out sc_lv 6 signal 2 } 
	{ pp_tile_V_ce1 sc_out sc_logic 1 signal 2 } 
	{ pp_tile_V_q1 sc_in sc_lv 8 signal 2 } 
	{ pp_rot_V_address0 sc_out sc_lv 6 signal 3 } 
	{ pp_rot_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ pp_rot_V_q0 sc_in sc_lv 2 signal 3 } 
	{ pp_rot_V_address1 sc_out sc_lv 6 signal 3 } 
	{ pp_rot_V_ce1 sc_out sc_logic 1 signal 3 } 
	{ pp_rot_V_q1 sc_in sc_lv 2 signal 3 } 
	{ tiles_V_address0 sc_out sc_lv 8 signal 4 } 
	{ tiles_V_ce0 sc_out sc_logic 1 signal 4 } 
	{ tiles_V_q0 sc_in sc_lv 4 signal 4 } 
	{ tiles_V_address1 sc_out sc_lv 8 signal 4 } 
	{ tiles_V_ce1 sc_out sc_logic 1 signal 4 } 
	{ tiles_V_q1 sc_in sc_lv 4 signal 4 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}

set Spec2ImplPortList { 
	p_V { ap_none {  { p_V in_data 0 8 } } }
	side_V { ap_none {  { side_V in_data 0 8 } } }
	pp_tile_V { ap_memory {  { pp_tile_V_address0 mem_address 1 6 }  { pp_tile_V_ce0 mem_ce 1 1 }  { pp_tile_V_q0 mem_dout 0 8 }  { pp_tile_V_address1 mem_address 1 6 }  { pp_tile_V_ce1 mem_ce 1 1 }  { pp_tile_V_q1 mem_dout 0 8 } } }
	pp_rot_V { ap_memory {  { pp_rot_V_address0 mem_address 1 6 }  { pp_rot_V_ce0 mem_ce 1 1 }  { pp_rot_V_q0 mem_dout 0 2 }  { pp_rot_V_address1 mem_address 1 6 }  { pp_rot_V_ce1 mem_ce 1 1 }  { pp_rot_V_q1 mem_dout 0 2 } } }
	tiles_V { ap_memory {  { tiles_V_address0 mem_address 1 8 }  { tiles_V_ce0 mem_ce 1 1 }  { tiles_V_q0 mem_dout 0 4 }  { tiles_V_address1 mem_address 1 8 }  { tiles_V_ce1 mem_ce 1 1 }  { tiles_V_q1 mem_dout 0 4 } } }
}
