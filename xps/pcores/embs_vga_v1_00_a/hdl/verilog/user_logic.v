//----------------------------------------------------------------------------
// user_logic.vhd - module
//----------------------------------------------------------------------------
//
// ***************************************************************************
// ** Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.            **
// **                                                                       **
// ** Xilinx, Inc.                                                          **
// ** XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"         **
// ** AS A COURTESY TO YOU, SOLELY FOR USE IN DEVELOPING PROGRAMS AND       **
// ** SOLUTIONS FOR XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE,        **
// ** OR INFORMATION AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE,        **
// ** APPLICATION OR STANDARD, XILINX IS MAKING NO REPRESENTATION           **
// ** THAT THIS IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,     **
// ** AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE      **
// ** FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY              **
// ** WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE               **
// ** IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR        **
// ** REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF       **
// ** INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS       **
// ** FOR A PARTICULAR PURPOSE.                                             **
// **                                                                       **
// ***************************************************************************
//
//----------------------------------------------------------------------------
// Filename:          user_logic.vhd
// Version:           1.00.a
// Description:       User logic module.
// Date:              Sat Mar  8 22:17:27 2014 (by Create and Import Peripheral Wizard)
// Verilog Standard:  Verilog-2001
//----------------------------------------------------------------------------
// Naming Conventions:
//   active low signals:                    "*_n"
//   clock signals:                         "clk", "clk_div#", "clk_#x"
//   reset signals:                         "rst", "rst_n"
//   generics:                              "C_*"
//   user defined types:                    "*_TYPE"
//   state machine next state:              "*_ns"
//   state machine current state:           "*_cs"
//   combinatorial signals:                 "*_com"
//   pipelined or register delay signals:   "*_d#"
//   counter signals:                       "*cnt*"
//   clock enable signals:                  "*_ce"
//   internal version of output port:       "*_i"
//   device pins:                           "*_pin"
//   ports:                                 "- Names begin with Uppercase"
//   processes:                             "*_PROCESS"
//   component instantiations:              "<ENTITY_>I_<#|FUNC>"
//----------------------------------------------------------------------------

module user_logic
(
  // -- ADD USER PORTS BELOW THIS LINE ---------------
  Red,
  Green,
  Blue,
  HSync,
  VSync,
  Pixel_Clk,

  CS_yCount,
  CS_xCount,
  CS_signalEn,
  CS_memReadState,
  CS_startRead,
  CS_memReadCount,
  CS_fifoWrite,
  CS_fifoRead,
  CS_fifoIn,
  CS_fifoCountW,
  CS_fifoCountR,
  // -- ADD USER PORTS ABOVE THIS LINE ---------------

  // -- DO NOT EDIT BELOW THIS LINE ------------------
  // -- Bus protocol ports, do not add to or delete 
  Bus2IP_Clk,                     // Bus to IP clock
  Bus2IP_Reset,                   // Bus to IP reset
  Bus2IP_Data,                    // Bus to IP data bus
  Bus2IP_BE,                      // Bus to IP byte enables
  Bus2IP_RdCE,                    // Bus to IP read chip enable
  Bus2IP_WrCE,                    // Bus to IP write chip enable
  IP2Bus_Data,                    // IP to Bus data bus
  IP2Bus_RdAck,                   // IP to Bus read transfer acknowledgement
  IP2Bus_WrAck,                   // IP to Bus write transfer acknowledgement
  IP2Bus_Error,                   // IP to Bus error response
  IP2Bus_MstRd_Req,               // IP to Bus master read request
  IP2Bus_MstWr_Req,               // IP to Bus master write request
  IP2Bus_Mst_Addr,                // IP to Bus master address bus
  IP2Bus_Mst_BE,                  // IP to Bus master byte enables
  IP2Bus_Mst_Length,              // IP to Bus master transfer length
  IP2Bus_Mst_Type,                // IP to Bus master transfer type
  IP2Bus_Mst_Lock,                // IP to Bus master lock
  IP2Bus_Mst_Reset,               // IP to Bus master reset
  Bus2IP_Mst_CmdAck,              // Bus to IP master command acknowledgement
  Bus2IP_Mst_Cmplt,               // Bus to IP master transfer completion
  Bus2IP_Mst_Error,               // Bus to IP master error response
  Bus2IP_Mst_Rearbitrate,         // Bus to IP master re-arbitrate
  Bus2IP_Mst_Cmd_Timeout,         // Bus to IP master command timeout
  Bus2IP_MstRd_d,                 // Bus to IP master read data bus
  Bus2IP_MstRd_rem,               // Bus to IP master read remainder
  Bus2IP_MstRd_sof_n,             // Bus to IP master read start of frame
  Bus2IP_MstRd_eof_n,             // Bus to IP master read end of frame
  Bus2IP_MstRd_src_rdy_n,         // Bus to IP master read source ready
  Bus2IP_MstRd_src_dsc_n,         // Bus to IP master read source discontinue
  IP2Bus_MstRd_dst_rdy_n,         // IP to Bus master read destination ready
  IP2Bus_MstRd_dst_dsc_n,         // IP to Bus master read destination discontinue
  IP2Bus_MstWr_d,                 // IP to Bus master write data bus
  IP2Bus_MstWr_rem,               // IP to Bus master write remainder
  IP2Bus_MstWr_sof_n,             // IP to Bus master write start of frame
  IP2Bus_MstWr_eof_n,             // IP to Bus master write end of frame
  IP2Bus_MstWr_src_rdy_n,         // IP to Bus master write source ready
  IP2Bus_MstWr_src_dsc_n,         // IP to Bus master write source discontinue
  Bus2IP_MstWr_dst_rdy_n,         // Bus to IP master write destination ready
  Bus2IP_MstWr_dst_dsc_n          // Bus to IP master write destination discontinue
  // -- DO NOT EDIT ABOVE THIS LINE ------------------
); // user_logic

// -- ADD USER PARAMETERS BELOW THIS LINE ------------
parameter RESOLUTION                     = 1;
parameter PIXEL_WIDTH                    = 1;
parameter CHIPSCOPE                      = 0;
// -- ADD USER PARAMETERS ABOVE THIS LINE ------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol parameters, do not add to or delete
parameter C_SLV_DWIDTH                   = 32;
parameter C_MST_AWIDTH                   = 32;
parameter C_MST_DWIDTH                   = 32;
parameter C_NUM_REG                      = 6;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

// -- ADD USER PORTS BELOW THIS LINE -----------------
output                                    Red;
output                                    Green;
output                                    Blue;
output                                    HSync;
output                                    VSync;
input                                     Pixel_Clk;

output     [10:0]                         CS_xCount;
output     [ 9:0]                         CS_yCount;
output                                    CS_signalEn;
output     [ 4:0]                         CS_memReadState;
output                                    CS_startRead;
output     [0:19]                         CS_memReadCount;
output                                    CS_fifoWrite;
output                                    CS_fifoRead;
output     [11:0]                         CS_fifoIn;
output     [ 8:0]                         CS_fifoCountW;
output     [10:0]                         CS_fifoCountR;
// -- ADD USER PORTS ABOVE THIS LINE -----------------

// -- DO NOT EDIT BELOW THIS LINE --------------------
// -- Bus protocol ports, do not add to or delete
input                                     Bus2IP_Clk;
input                                     Bus2IP_Reset;
input      [0 : C_SLV_DWIDTH-1]           Bus2IP_Data;
input      [0 : C_SLV_DWIDTH/8-1]         Bus2IP_BE;
input      [0 : C_NUM_REG-1]              Bus2IP_RdCE;
input      [0 : C_NUM_REG-1]              Bus2IP_WrCE;
output     [0 : C_SLV_DWIDTH-1]           IP2Bus_Data;
output                                    IP2Bus_RdAck;
output                                    IP2Bus_WrAck;
output                                    IP2Bus_Error;
output                                    IP2Bus_MstRd_Req;
output                                    IP2Bus_MstWr_Req;
output     [0 : C_MST_AWIDTH-1]           IP2Bus_Mst_Addr;
output     [0 : C_MST_DWIDTH/8-1]         IP2Bus_Mst_BE;
output     [0 : 11]                       IP2Bus_Mst_Length;
output                                    IP2Bus_Mst_Type;
output                                    IP2Bus_Mst_Lock;
output                                    IP2Bus_Mst_Reset;
input                                     Bus2IP_Mst_CmdAck;
input                                     Bus2IP_Mst_Cmplt;
input                                     Bus2IP_Mst_Error;
input                                     Bus2IP_Mst_Rearbitrate;
input                                     Bus2IP_Mst_Cmd_Timeout;
input      [0 : C_MST_DWIDTH-1]           Bus2IP_MstRd_d;
input      [0 : C_MST_DWIDTH/8-1]         Bus2IP_MstRd_rem;
input                                     Bus2IP_MstRd_sof_n;
input                                     Bus2IP_MstRd_eof_n;
input                                     Bus2IP_MstRd_src_rdy_n;
input                                     Bus2IP_MstRd_src_dsc_n;
output                                    IP2Bus_MstRd_dst_rdy_n;
output                                    IP2Bus_MstRd_dst_dsc_n;
output     [0 : C_MST_DWIDTH-1]           IP2Bus_MstWr_d;
output     [0 : C_MST_DWIDTH/8-1]         IP2Bus_MstWr_rem;
output                                    IP2Bus_MstWr_sof_n;
output                                    IP2Bus_MstWr_eof_n;
output                                    IP2Bus_MstWr_src_rdy_n;
output                                    IP2Bus_MstWr_src_dsc_n;
input                                     Bus2IP_MstWr_dst_rdy_n;
input                                     Bus2IP_MstWr_dst_dsc_n;
// -- DO NOT EDIT ABOVE THIS LINE --------------------

//----------------------------------------------------------------------------
// Implementation
//----------------------------------------------------------------------------

  // Nets for user logic slave model s/w accessible register example
  reg        [0 : C_SLV_DWIDTH-1]           slv_reg0;
  reg        [0 : C_SLV_DWIDTH-1]           slv_reg1;
  wire       [0 : 1]                        slv_reg_write_sel;
  wire       [0 : 1]                        slv_reg_read_sel;
  reg        [0 : C_SLV_DWIDTH-1]           slv_ip2bus_data;
  wire                                      slv_read_ack;
  wire                                      slv_write_ack;
  integer                                   byte_index, bit_index;

  
  // Intantiate VGA controller module
  vga # (
    .RESOLUTION             (RESOLUTION),
    .PIXEL_WIDTH            (PIXEL_WIDTH),
    .CHIPSCOPE              (CHIPSCOPE)
  ) vga_i (
    // Inputs
    .Pixel_Clk              (Pixel_Clk),
    .FrameAddress           (slv_reg0),
    .OutputEnable           (slv_reg1[31]),
    .Bus2IP_Clk             (Bus2IP_Clk),
    .Bus2IP_Reset           (Bus2IP_Reset),
    .Bus2IP_Mst_CmdAck      (Bus2IP_Mst_CmdAck),
    .Bus2IP_MstRd_d         (Bus2IP_MstRd_d),
    .Bus2IP_MstRd_sof_n     (Bus2IP_MstRd_sof_n),
    .Bus2IP_MstRd_eof_n     (Bus2IP_MstRd_eof_n),
    .Bus2IP_MstRd_src_rdy_n (Bus2IP_MstRd_src_rdy_n),

    // Outputs
    .Red                    (Red),
    .Green                  (Green),
    .Blue                   (Blue),
    .HSync                  (HSync),
    .VSync                  (VSync),
    .IP2Bus_MstRd_Req       (IP2Bus_MstRd_Req),
    .IP2Bus_Mst_Addr        (IP2Bus_Mst_Addr),
    .IP2Bus_Mst_Length      (IP2Bus_Mst_Length),
    .IP2Bus_Mst_Type        (IP2Bus_Mst_Type),

    // Chipscope signals
    .CS_xCount               (CS_xCount),
    .CS_yCount               (CS_yCount),
    .CS_signalEn             (CS_signalEn),
    .CS_memReadState         (CS_memReadState),
    .CS_startRead            (CS_startRead),
    .CS_memReadCount         (CS_memReadCount),
    .CS_fifoWrite            (CS_fifoWrite),
    .CS_fifoRead             (CS_fifoRead),
    .CS_fifoIn               (CS_fifoIn),
    .CS_fifoCountW           (CS_fifoCountW),
    .CS_fifoCountR           (CS_fifoCountR)
  );


  // ------------------------------------------------------
  // Example code to read/write user logic slave model s/w accessible registers
  // 
  // Note:
  // The example code presented here is to show you one way of reading/writing
  // software accessible registers implemented in the user logic slave model.
  // Each bit of the Bus2IP_WrCE/Bus2IP_RdCE signals is configured to correspond
  // to one software accessible register by the top level template. For example,
  // if you have four 32 bit software accessible registers in the user logic,
  // you are basically operating on the following memory mapped registers:
  // 
  //    Bus2IP_WrCE/Bus2IP_RdCE   Memory Mapped Register
  //                     "1000"   C_BASEADDR + 0x0
  //                     "0100"   C_BASEADDR + 0x4
  //                     "0010"   C_BASEADDR + 0x8
  //                     "0001"   C_BASEADDR + 0xC
  // 
  // ------------------------------------------------------

  assign
    slv_reg_write_sel = Bus2IP_WrCE[0:1],
    slv_reg_read_sel  = Bus2IP_RdCE[0:1],
    slv_write_ack     = Bus2IP_WrCE[0] || Bus2IP_WrCE[1],
    slv_read_ack      = Bus2IP_RdCE[0] || Bus2IP_RdCE[1];

  // implement slave model register(s)
  always @( posedge Bus2IP_Clk )
    begin: SLAVE_REG_WRITE_PROC

      if ( Bus2IP_Reset == 1 )
        begin
          slv_reg0 <= 0;
          slv_reg1 <= 0;
        end
      else
        case ( slv_reg_write_sel )
          2'b10 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                for ( bit_index = byte_index*8; bit_index <= byte_index*8+7; bit_index = bit_index+1 )
                  slv_reg0[bit_index] <= Bus2IP_Data[bit_index];
          2'b01 :
            for ( byte_index = 0; byte_index <= (C_SLV_DWIDTH/8)-1; byte_index = byte_index+1 )
              if ( Bus2IP_BE[byte_index] == 1 )
                for ( bit_index = byte_index*8; bit_index <= byte_index*8+7; bit_index = bit_index+1 )
                  slv_reg1[bit_index] <= Bus2IP_Data[bit_index];
          default : ;
        endcase

    end // SLAVE_REG_WRITE_PROC

  // implement slave model register read mux
  always @( slv_reg_read_sel or slv_reg0 or slv_reg1 )
    begin: SLAVE_REG_READ_PROC

      case ( slv_reg_read_sel )
        2'b10 : slv_ip2bus_data <= slv_reg0;
        2'b01 : slv_ip2bus_data <= slv_reg1;
        default : slv_ip2bus_data <= 0;
      endcase

    end // SLAVE_REG_READ_PROC

  // ------------------------------------------------------------
  // Example code to drive IP to Bus signals
  // ------------------------------------------------------------

  assign IP2Bus_Data    = slv_ip2bus_data;
  assign IP2Bus_WrAck   = slv_write_ack;
  assign IP2Bus_RdAck   = slv_read_ack;
  assign IP2Bus_Error   = 0;

endmodule
