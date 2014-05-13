/*********************
 * VGA Core for EMBS
 * Russell Joyce, March 2014
 * Department of Computer Science, University of York
 *********************
 * 640x480/800x600/1024x768 8-colour VGA output for Spartan-3E Starter Kit
 *********************/

module vga #
(
  parameter     RESOLUTION  = 1, // 0 = 640x480, 1 = 800x600, 2 = 1024x768
  parameter     PIXEL_WIDTH = 1, // 1 = 8-bits per pixel, 2 = 4-bits per pixel
  parameter     CHIPSCOPE   = 0  // 1 = include ChipScope outputs
)(
  input         Pixel_Clk,
  input  [0:31] FrameAddress,
  input         OutputEnable,
  input         Bus2IP_Clk,
  input         Bus2IP_Reset,
  input         Bus2IP_Mst_CmdAck,
  input  [0:31] Bus2IP_MstRd_d,
  input         Bus2IP_MstRd_sof_n,
  input         Bus2IP_MstRd_eof_n,
  input         Bus2IP_MstRd_src_rdy_n,

  output        Red,
  output        Green,
  output        Blue,
  output        HSync,
  output        VSync,
  output        IP2Bus_MstRd_Req,
  output [0:31] IP2Bus_Mst_Addr,
  output [0:11] IP2Bus_Mst_Length,
  output        IP2Bus_Mst_Type,

  output [10:0] CS_xCount,
  output [ 9:0] CS_yCount,
  output        CS_signalEn,
  output [ 4:0] CS_memReadState,
  output        CS_startRead,
  output [0:19] CS_memReadCount,
  output        CS_fifoWrite,
  output        CS_fifoRead,
  output [(12*PIXEL_WIDTH)-1:0] CS_fifoIn,
  output [ 8:0] CS_fifoCountW,
  output [10:0] CS_fifoCountR
);


  reg  [10:0] xCount;
  reg  [ 9:0] yCount;
  reg         vgaHS;
  reg         vgaVS;
  reg         signalEn;
  wire [ 2:0] colour;
  reg  [ 4:0] memReadState;
  wire        startRead;
  reg  [0:19] memReadCount;

  wire        fifoWrite;
  wire        fifoRead;
  wire [(12*PIXEL_WIDTH)-1:0] fifoIn;

  reg         synced;
  reg         lineAvailable;


  // Convert 32-bit data from DDR into 12-bit/24-bit for FIFO
  function [(12*PIXEL_WIDTH)-1:0] calcPixels;
  input [0:31] in;
    if (PIXEL_WIDTH == 1)
      calcPixels = {in[ 5: 7],
                    in[13:15],
                    in[21:23],
                    in[29:31]};
    else if (PIXEL_WIDTH == 2)
      calcPixels = {in[ 1: 3],
                    in[ 5: 7],
                    in[ 9:11],
                    in[13:15],
                    in[17:19],
                    in[21:23],
                    in[25:27],
                    in[29:31]};
  endfunction


  // Assign ChipScope outputs, if enabled
  generate
    if (CHIPSCOPE == 1)
      assign
        CS_xCount           = xCount,
        CS_yCount           = yCount,
        CS_signalEn         = signalEn,
        CS_memReadState     = memReadState,
        CS_startRead        = startRead,
        CS_memReadCount     = memReadCount,
        CS_fifoWrite        = fifoWrite,
        CS_fifoRead         = fifoRead,
        CS_fifoIn           = fifoIn;
  endgenerate


  // Async FIFO for pixel data (with either 12- or 24-bit input and 3-bit output)
  generate
    if (PIXEL_WIDTH == 1)
      vga_fifo_x1 vga_fifo (
        // Inputs
        .rst    (Bus2IP_Reset || ~OutputEnable),
        .wr_clk (Bus2IP_Clk),
        .rd_clk (Pixel_Clk),
        .din    (fifoIn),
        .wr_en  (fifoWrite),
        .rd_en  (fifoRead),
        
        // Outputs
        .dout   (colour),
        .full   (), 
        .empty  (),
        .rd_data_count (CS_fifoCountR),
        .wr_data_count (CS_fifoCountW)
      );
    else if (PIXEL_WIDTH == 2)
      vga_fifo_x2 vga_fifo (
        // Inputs
        .rst    (Bus2IP_Reset || ~OutputEnable),
        .wr_clk (Bus2IP_Clk),
        .rd_clk (Pixel_Clk),
        .din    (fifoIn),
        .wr_en  (fifoWrite),
        .rd_en  (fifoRead),
        
        // Outputs
        .dout   (colour),
        .full   (), 
        .empty  (),
        .rd_data_count (CS_fifoCountR),
        .wr_data_count (CS_fifoCountW)
      );
  endgenerate


  // Resolution 0: 640x480@60  - 25MHz pixel clock
  // Resolution 1: 800x600@60  - 40MHz pixel clock
  // Resolution 2: 1024x768@60 - 65MHz pixel clock
  localparam
    VIS_H    = (RESOLUTION == 2) ? 1024 : (RESOLUTION == 1) ?  800 : 640,
    FPORCH_H = (RESOLUTION == 2) ?   24 : (RESOLUTION == 1) ?   40 :  16,
    SYNC_H   = (RESOLUTION == 2) ?  136 : (RESOLUTION == 1) ?  128 :  96,
    BPORCH_H = (RESOLUTION == 2) ?  160 : (RESOLUTION == 1) ?   88 :  48,
    LINE     = (RESOLUTION == 2) ? 1344 : (RESOLUTION == 1) ? 1056 : 780,
    VIS_V    = (RESOLUTION == 2) ?  768 : (RESOLUTION == 1) ?  600 : 480,
    FPORCH_V = (RESOLUTION == 2) ?    3 : (RESOLUTION == 1) ?    1 :  10,
    SYNC_V   = (RESOLUTION == 2) ?    6 : (RESOLUTION == 1) ?    4 :   2,
    BPORCH_V = (RESOLUTION == 2) ?   29 : (RESOLUTION == 1) ?   23 :  33,
    FRAME    = (RESOLUTION == 2) ?  806 : (RESOLUTION == 1) ?  628 : 525,
    NEW_READ = (RESOLUTION == 2) ?  800 : (RESOLUTION == 1) ?  700 : 600;


  localparam
    IDLE       = 5'b00001,
    SET_ADDR   = 5'b00010,
    READ_DATA  = 5'b00100,
    WRITE_DATA = 5'b01000,
    LINE_DONE  = 5'b10000;


  assign
    Red   = colour[2] & signalEn,
    Green = colour[1] & signalEn,
    Blue  = colour[0] & signalEn,
    HSync = ~vgaHS,
    VSync = ~vgaVS;

  assign
    xCountMax = (xCount == (LINE-1)),
    yCountMax = (yCount == (FRAME-1));

  assign
    fifoRead  = signalEn && synced && lineAvailable,
    startRead = ((xCount > NEW_READ) && (xCount < (NEW_READ+20)) && (yCount < VIS_V));


  always @(posedge Pixel_Clk)
  begin
    if (Bus2IP_Reset == 1'b1 || OutputEnable == 1'b0)
    begin
      xCount <= 0;
      yCount <= 0;
    end
    else
    begin
      if(xCountMax)
      begin
        xCount <= 0;
        if(yCountMax)
          yCount <= 0;
        else
          yCount <= yCount + 1;
      end
      else
        xCount <= xCount + 1;
    end
  end


  always @(posedge Pixel_Clk)
  begin
    if (Bus2IP_Reset == 1'b1 || OutputEnable == 1'b0)
    begin
      vgaHS    <= 0;
      vgaVS    <= 0;
      signalEn <= 0;
      synced   <= 0;
    end
    else
    begin
      vgaHS    <= (xCount >= (VIS_H+FPORCH_H) && xCount < (VIS_H+FPORCH_H+SYNC_H));
      vgaVS    <= (yCount >= (VIS_V+FPORCH_V) && yCount < (VIS_V+FPORCH_V+SYNC_V));
      signalEn <= (xCount < VIS_H && yCount < VIS_V);
      synced   <= synced || (yCount == (VIS_V-1));
    end
  end


  assign
    IP2Bus_Mst_Addr   = FrameAddress + memReadCount,
    IP2Bus_Mst_Length = VIS_H/PIXEL_WIDTH,
    IP2Bus_Mst_Type   = 1'b1,
    IP2Bus_MstRd_Req  = (memReadState == SET_ADDR) ? 1'b1 : 1'b0,
    fifoIn            = calcPixels(Bus2IP_MstRd_d),
    fifoWrite         = (memReadState == WRITE_DATA) ? ~Bus2IP_MstRd_src_rdy_n & OutputEnable : 0'b0;


  always @(posedge Bus2IP_Clk)
  begin
    if (Bus2IP_Reset == 1'b1 || OutputEnable == 1'b0)
    begin
      memReadState     <= IDLE;
      memReadCount     <= 0;
      lineAvailable    <= 0;
    end
    else
      case (memReadState)
        IDLE: begin
          if (startRead == 1'b1 && synced == 1'b1)
          begin
            memReadState <= #1 SET_ADDR;
          end
        end
        SET_ADDR: begin
          if (Bus2IP_Mst_CmdAck == 1'b1)
            memReadState <= #1 READ_DATA;
        end
        READ_DATA: begin
          if (Bus2IP_MstRd_sof_n == 1'b0)
          begin
            memReadState <= #1 WRITE_DATA;
          end
        end
        WRITE_DATA: begin
          if (Bus2IP_MstRd_eof_n == 1'b0)
          begin
            memReadState <= #1 LINE_DONE;
          end
        end
        LINE_DONE: begin
          lineAvailable <= 1'b1;
          if (memReadCount == ((VIS_H/PIXEL_WIDTH) * (VIS_V-1)))
          begin
            memReadCount <= 0;
          end
          else
          begin
            memReadCount  <= memReadCount + (VIS_H/PIXEL_WIDTH);
          end
          memReadState <= #1 IDLE;
        end
      endcase
  end


endmodule
