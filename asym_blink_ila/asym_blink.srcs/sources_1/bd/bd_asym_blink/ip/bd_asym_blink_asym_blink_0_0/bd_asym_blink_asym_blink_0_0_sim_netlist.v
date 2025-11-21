// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat Nov 15 15:41:06 2025
// Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/issam/FPGA/repo/asym_blink_ila/asym_blink.srcs/sources_1/bd/bd_asym_blink/ip/bd_asym_blink_asym_blink_0_0/bd_asym_blink_asym_blink_0_0_sim_netlist.v
// Design      : bd_asym_blink_asym_blink_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_asym_blink_asym_blink_0_0,asym_blink,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "asym_blink,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module bd_asym_blink_asym_blink_0_0
   (clk,
    count,
    led);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_asym_blink_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [20:0]count;
  output led;

  wire clk;
  wire [20:0]count;
  wire led;

  bd_asym_blink_asym_blink_0_0_asym_blink U0
       (.clk(clk),
        .count(count),
        .led(led));
endmodule

(* ORIG_REF_NAME = "asym_blink" *) 
module bd_asym_blink_asym_blink_0_0_asym_blink
   (led,
    count,
    clk);
  output led;
  input [20:0]count;
  input clk;

  wire clk;
  wire [20:0]count;
  wire led;
  wire led_i_1_n_0;
  wire led_i_2_n_0;
  wire led_i_3_n_0;
  wire led_i_4_n_0;
  wire led_i_5_n_0;
  wire led_i_6_n_0;

  LUT6 #(
    .INIT(64'hCCCCCCCCC8CFCCCC)) 
    led_i_1
       (.I0(led_i_2_n_0),
        .I1(led),
        .I2(led_i_3_n_0),
        .I3(led_i_4_n_0),
        .I4(led_i_5_n_0),
        .I5(led_i_6_n_0),
        .O(led_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    led_i_2
       (.I0(count[17]),
        .I1(count[16]),
        .I2(count[18]),
        .I3(count[10]),
        .I4(count[14]),
        .I5(count[19]),
        .O(led_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    led_i_3
       (.I0(count[20]),
        .I1(count[5]),
        .I2(count[9]),
        .I3(count[4]),
        .I4(count[3]),
        .I5(count[15]),
        .O(led_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    led_i_4
       (.I0(count[17]),
        .I1(count[16]),
        .I2(count[18]),
        .I3(count[19]),
        .I4(count[10]),
        .I5(count[14]),
        .O(led_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    led_i_5
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .O(led_i_5_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    led_i_6
       (.I0(count[7]),
        .I1(count[8]),
        .I2(count[6]),
        .I3(count[12]),
        .I4(count[11]),
        .I5(count[13]),
        .O(led_i_6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    led_reg
       (.C(clk),
        .CE(1'b1),
        .D(led_i_1_n_0),
        .Q(led),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
