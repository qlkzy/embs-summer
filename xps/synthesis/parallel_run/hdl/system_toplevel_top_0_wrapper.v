//-----------------------------------------------------------------------------
// system_toplevel_top_0_wrapper.v
//-----------------------------------------------------------------------------

module system_toplevel_top_0_wrapper
  (
    aclk,
    aresetn,
    input_V_V_TVALID,
    input_V_V_TREADY,
    input_V_V_TDATA,
    output_V_V_TVALID,
    output_V_V_TREADY,
    output_V_V_TDATA
  );
  input aclk;
  input aresetn;
  input input_V_V_TVALID;
  output input_V_V_TREADY;
  input [31:0] input_V_V_TDATA;
  output output_V_V_TVALID;
  input output_V_V_TREADY;
  output [31:0] output_V_V_TDATA;

  toplevel_top
    toplevel_top_0 (
      .aclk ( aclk ),
      .aresetn ( aresetn ),
      .input_V_V_TVALID ( input_V_V_TVALID ),
      .input_V_V_TREADY ( input_V_V_TREADY ),
      .input_V_V_TDATA ( input_V_V_TDATA ),
      .output_V_V_TVALID ( output_V_V_TVALID ),
      .output_V_V_TREADY ( output_V_V_TREADY ),
      .output_V_V_TDATA ( output_V_V_TDATA )
    );

endmodule

