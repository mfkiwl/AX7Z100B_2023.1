//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
//                                                                              //
//  Author: meisq                                                               //
//          msq@qq.com                                                          //
//          ALINX(shanghai) Technology Co.,Ltd                                  //
//          heijin                                                              //
//     WEB: http://www.alinx.cn/                                                //
//     BBS: http://www.heijin.org/                                              //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
// Copyright (c) 2017,ALINX(shanghai) Technology Co.,Ltd                        //
//                    All rights reserved                                       //
//                                                                              //
// This source file may be used and distributed without restriction provided    //
// that this copyright statement is not removed from the file and that any      //
// derivative work contains the original copyright notice and the associated    //
// disclaimer.                                                                  //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

//================================================================================
//  Revision History:
//  Date          By            Revision    Change Description
//--------------------------------------------------------------------------------
//  2017/12/28     meisq          1.0         Original
//*******************************************************************************/
module top(
//Differential system clock
    input                    sys_clk_p,
    input                    sys_clk_n,
    output                   hdmi_clk,
    output[23:0]             hdmi_d,
    output                   hdmi_de,
    output                   hdmi_hs,
	output                   hdmi_vs,
    inout                    hdmi_scl,
    inout                    hdmi_sda   
);
wire                            video_clk;
wire                            clk_100mhz;
wire                            video_hs;
wire                            video_vs;
wire                            video_de;
wire[7:0]                       video_r;
wire[7:0]                       video_g;
wire[7:0]                       video_b;
wire                            pll_locked;
wire[9:0]                       lut_index;
wire[31:0]                      lut_data;

wire                            osd_hs;
wire                            osd_vs;
wire                            osd_de;
wire[7:0]                       osd_r;
wire[7:0]                       osd_g;
wire[7:0]                       osd_b;


assign hdmi_clk = video_clk;
assign hdmi_d = {osd_r,osd_g,osd_b};
assign hdmi_de = osd_de;
assign hdmi_hs = osd_hs;
assign hdmi_vs = osd_vs;


color_bar hdmi_color_bar(
	.clk                     (video_clk                  ),
	.rst                     (1'b0                       ),
	.hs                      (video_hs                   ),
	.vs                      (video_vs                   ),
	.de                      (video_de                   ),
	.rgb_r                   (video_r                    ),
	.rgb_g                   (video_g                    ),
	.rgb_b                   (video_b                    )
);

video_pll video_pll_m0
 (
	// Clock in ports
	.clk_in1_p              (sys_clk_p                   ),
	.clk_in1_n              (sys_clk_n                   ),
	// Clock out ports
	.clk_out1               (video_clk                   ),
	.clk_out2               (clk_100mhz                  ),
	// Status and control signals
	.locked                 (pll_locked                  )
 );

//I2C master controller
i2c_config i2c_config_m0(
	.rst                        (~pll_locked              ),
	.clk                        (clk_100mhz               ),
	.clk_div_cnt                (16'd499                  ),
	.i2c_addr_2byte             (1'b0                     ),
	.lut_index                  (lut_index                ),
	.lut_dev_addr               (lut_data[31:24]          ),
	.lut_reg_addr               (lut_data[23:8]           ),
	.lut_reg_data               (lut_data[7:0]            ),
	.error                      (                         ),
	.done                       (                         ),
	.i2c_scl                    (hdmi_scl                 ),
	.i2c_sda                    (hdmi_sda                 )
);
//configure look-up table
lut_adv7511 lut_adv7511_m0(
	.lut_index                  (lut_index                ),
	.lut_data                   (lut_data                 )
); 


osd_display  osd_display_m0(
	.rst_n                 (1'b1                      ),
	.pclk                  (video_clk                  ),
	.i_hs                  (video_hs                   ),
	.i_vs                  (video_vs                   ),
	.i_de                  (video_de                   ),
	.i_data                ({video_r,video_g,video_b}  ),
	.o_hs                  (osd_hs                     ),
	.o_vs                  (osd_vs                     ),
	.o_de                  (osd_de                     ),
	.o_data                ({osd_r,osd_g,osd_b}        )
);

endmodule