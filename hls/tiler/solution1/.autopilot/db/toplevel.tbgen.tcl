set moduleName toplevel
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set C_modelName toplevel
set C_modelType { void 0 }
set C_modelArgList { 
	{ input_V_V int 32 regular {fifo 0 volatile }  }
	{ output_V_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "rtlName" : "input_V_V","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "input.V.V","cData": "uint32","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "rtlName" : "output_V_V","bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "output.V.V","cData": "uint32","cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ input_V_V_dout sc_in sc_lv 32 signal 0 } 
	{ input_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ input_V_V_read sc_out sc_logic 1 signal 0 } 
	{ output_V_V_din sc_out sc_lv 32 signal 1 } 
	{ output_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ output_V_V_write sc_out sc_logic 1 signal 1 } 
}

set Spec2ImplPortList { 
	input_V_V { ap_fifo {  { input_V_V_dout fifo_data 0 32 }  { input_V_V_empty_n fifo_status 0 1 }  { input_V_V_read fifo_update 1 1 } } }
	output_V_V { ap_fifo {  { output_V_V_din fifo_data 1 32 }  { output_V_V_full_n fifo_status 0 1 }  { output_V_V_write fifo_update 1 1 } } }
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	input_V_V { fifo_read 6 has_conditional }
	output_V_V { fifo_write 6 has_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
