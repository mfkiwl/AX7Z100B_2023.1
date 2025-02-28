// file: ibert.v
//////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version : 2012.3
//  \   \         Application : IBERT 7Series 
//  /   /         Filename : example_ibert
// /___/   /\     
// \   \  /  \ 
//  \___\/\___\
//
//
// Module example_ibert
// Generated by Xilinx IBERT_7S 
//////////////////////////////////////////////////////////////////////////////


`define C_NUM_QUADS 1
`define C_REFCLKS_USED 1
module example_ibert
(
  output[1:0]                 tx_disable,
  // GT top level ports
  output [(4*`C_NUM_QUADS)-1:0]		TXN_O,
  output [(4*`C_NUM_QUADS)-1:0]		TXP_O,
  input  [(4*`C_NUM_QUADS)-1:0]    	RXN_I,
  input  [(4*`C_NUM_QUADS)-1:0]   	RXP_I,
  input  [`C_REFCLKS_USED-1:0]        	GTREFCLK0P_I,
  input  [`C_REFCLKS_USED-1:0]        	GTREFCLK0N_I,
  input  [`C_REFCLKS_USED-1:0]        	GTREFCLK1P_I,
  input  [`C_REFCLKS_USED-1:0]        	GTREFCLK1N_I
);

  //
  // Ibert refclk internal signals
  //
  wire   [`C_NUM_QUADS-1:0]        	gtrefclk0_i;
  wire   [`C_NUM_QUADS-1:0]        	gtrefclk1_i;
  wire   [`C_REFCLKS_USED-1:0]        	refclk0_i;
  wire   [`C_REFCLKS_USED-1:0]        	refclk1_i;


assign tx_disable = 2'b00; 
  //
  // Refclk IBUFDS instantiations
  //

    IBUFDS_GTE2 u_buf_q1_clk0
      (
        .O            (refclk0_i[0]),
        .ODIV2        (),
        .CEB          (1'b0),
        .I            (GTREFCLK0P_I[0]),
        .IB           (GTREFCLK0N_I[0])
      );

    IBUFDS_GTE2 u_buf_q1_clk1
      (
        .O            (refclk1_i[0]),
        .ODIV2        (),
        .CEB          (1'b0),
        .I            (GTREFCLK1P_I[0]),
        .IB           (GTREFCLK1N_I[0])
      );

  //
  // Refclk connection from each IBUFDS to respective quads depending on the source selected in gui
  //
  assign gtrefclk0_i[0] = refclk0_i[0];
  assign gtrefclk1_i[0] = refclk1_i[0];





  //
  // IBERT core instantiation
  //
  ibert u_ibert_core
    (
      .TXN_O(TXN_O),
      .TXP_O(TXP_O),
      .RXN_I(RXN_I),
      .RXP_I(RXP_I),
      .GTREFCLK0_I(gtrefclk0_i),
      .GTREFCLK1_I(gtrefclk1_i)
    );

endmodule
