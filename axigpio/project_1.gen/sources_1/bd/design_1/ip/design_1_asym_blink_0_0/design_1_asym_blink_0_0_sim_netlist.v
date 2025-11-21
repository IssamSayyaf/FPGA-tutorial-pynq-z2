// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Nov 20 22:59:45 2025
// Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/issam/FPGA/repo/axigpio/project_1.gen/sources_1/bd/design_1/ip/design_1_asym_blink_0_0/design_1_asym_blink_0_0_sim_netlist.v
// Design      : design_1_asym_blink_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_asym_blink_0_0,asym_blink,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "asym_blink,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_asym_blink_0_0
   (clk,
    count,
    blink_on,
    blink_off,
    led);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input [20:0]count;
  input [20:0]blink_on;
  input [20:0]blink_off;
  output led;

  wire [20:0]blink_on;
  wire clk;
  wire [20:0]count;
  wire led;

  design_1_asym_blink_0_0_asym_blink U0
       (.blink_on(blink_on),
        .clk(clk),
        .count(count),
        .led(led));
endmodule

(* ORIG_REF_NAME = "asym_blink" *) 
module design_1_asym_blink_0_0_asym_blink
   (led,
    blink_on,
    count,
    clk);
  output led;
  input [20:0]blink_on;
  input [20:0]count;
  input clk;

  wire [20:0]blink_on;
  wire clk;
  wire [20:0]count;
  wire led;
  wire led_i_10_n_0;
  wire led_i_11_n_0;
  wire led_i_12_n_0;
  wire led_i_13_n_0;
  wire led_i_14_n_0;
  wire led_i_15_n_0;
  wire led_i_16_n_0;
  wire led_i_17_n_0;
  wire led_i_18_n_0;
  wire led_i_19_n_0;
  wire led_i_20_n_0;
  wire led_i_21_n_0;
  wire led_i_22_n_0;
  wire led_i_23_n_0;
  wire led_i_24_n_0;
  wire led_i_25_n_0;
  wire led_i_3_n_0;
  wire led_i_4_n_0;
  wire led_i_5_n_0;
  wire led_i_6_n_0;
  wire led_i_7_n_0;
  wire led_i_8_n_0;
  wire led_reg_i_1_n_2;
  wire led_reg_i_1_n_3;
  wire led_reg_i_2_n_0;
  wire led_reg_i_2_n_1;
  wire led_reg_i_2_n_2;
  wire led_reg_i_2_n_3;
  wire led_reg_i_9_n_0;
  wire led_reg_i_9_n_1;
  wire led_reg_i_9_n_2;
  wire led_reg_i_9_n_3;
  wire p_0_in;
  wire [3:3]NLW_led_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_led_reg_i_1_O_UNCONNECTED;
  wire [3:0]NLW_led_reg_i_2_O_UNCONNECTED;
  wire [3:0]NLW_led_reg_i_9_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h2F02)) 
    led_i_10
       (.I0(blink_on[14]),
        .I1(count[14]),
        .I2(count[15]),
        .I3(blink_on[15]),
        .O(led_i_10_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    led_i_11
       (.I0(blink_on[12]),
        .I1(count[12]),
        .I2(count[13]),
        .I3(blink_on[13]),
        .O(led_i_11_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    led_i_12
       (.I0(blink_on[10]),
        .I1(count[10]),
        .I2(count[11]),
        .I3(blink_on[11]),
        .O(led_i_12_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    led_i_13
       (.I0(blink_on[8]),
        .I1(count[8]),
        .I2(count[9]),
        .I3(blink_on[9]),
        .O(led_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_i_14
       (.I0(blink_on[14]),
        .I1(count[14]),
        .I2(blink_on[15]),
        .I3(count[15]),
        .O(led_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_i_15
       (.I0(blink_on[12]),
        .I1(count[12]),
        .I2(blink_on[13]),
        .I3(count[13]),
        .O(led_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_i_16
       (.I0(blink_on[10]),
        .I1(count[10]),
        .I2(blink_on[11]),
        .I3(count[11]),
        .O(led_i_16_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_i_17
       (.I0(blink_on[8]),
        .I1(count[8]),
        .I2(blink_on[9]),
        .I3(count[9]),
        .O(led_i_17_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    led_i_18
       (.I0(blink_on[6]),
        .I1(count[6]),
        .I2(count[7]),
        .I3(blink_on[7]),
        .O(led_i_18_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    led_i_19
       (.I0(blink_on[4]),
        .I1(count[4]),
        .I2(count[5]),
        .I3(blink_on[5]),
        .O(led_i_19_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    led_i_20
       (.I0(blink_on[2]),
        .I1(count[2]),
        .I2(count[3]),
        .I3(blink_on[3]),
        .O(led_i_20_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    led_i_21
       (.I0(blink_on[0]),
        .I1(count[0]),
        .I2(count[1]),
        .I3(blink_on[1]),
        .O(led_i_21_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_i_22
       (.I0(blink_on[6]),
        .I1(count[6]),
        .I2(blink_on[7]),
        .I3(count[7]),
        .O(led_i_22_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_i_23
       (.I0(blink_on[4]),
        .I1(count[4]),
        .I2(blink_on[5]),
        .I3(count[5]),
        .O(led_i_23_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_i_24
       (.I0(blink_on[2]),
        .I1(count[2]),
        .I2(blink_on[3]),
        .I3(count[3]),
        .O(led_i_24_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_i_25
       (.I0(blink_on[0]),
        .I1(count[0]),
        .I2(blink_on[1]),
        .I3(count[1]),
        .O(led_i_25_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    led_i_3
       (.I0(blink_on[20]),
        .I1(count[20]),
        .O(led_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    led_i_4
       (.I0(blink_on[18]),
        .I1(count[18]),
        .I2(count[19]),
        .I3(blink_on[19]),
        .O(led_i_4_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    led_i_5
       (.I0(blink_on[16]),
        .I1(count[16]),
        .I2(count[17]),
        .I3(blink_on[17]),
        .O(led_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    led_i_6
       (.I0(count[20]),
        .I1(blink_on[20]),
        .O(led_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_i_7
       (.I0(blink_on[18]),
        .I1(count[18]),
        .I2(blink_on[19]),
        .I3(count[19]),
        .O(led_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    led_i_8
       (.I0(blink_on[16]),
        .I1(count[16]),
        .I2(blink_on[17]),
        .I3(count[17]),
        .O(led_i_8_n_0));
  FDRE led_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(led),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 led_reg_i_1
       (.CI(led_reg_i_2_n_0),
        .CO({NLW_led_reg_i_1_CO_UNCONNECTED[3],p_0_in,led_reg_i_1_n_2,led_reg_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,led_i_3_n_0,led_i_4_n_0,led_i_5_n_0}),
        .O(NLW_led_reg_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,led_i_6_n_0,led_i_7_n_0,led_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 led_reg_i_2
       (.CI(led_reg_i_9_n_0),
        .CO({led_reg_i_2_n_0,led_reg_i_2_n_1,led_reg_i_2_n_2,led_reg_i_2_n_3}),
        .CYINIT(1'b0),
        .DI({led_i_10_n_0,led_i_11_n_0,led_i_12_n_0,led_i_13_n_0}),
        .O(NLW_led_reg_i_2_O_UNCONNECTED[3:0]),
        .S({led_i_14_n_0,led_i_15_n_0,led_i_16_n_0,led_i_17_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 led_reg_i_9
       (.CI(1'b0),
        .CO({led_reg_i_9_n_0,led_reg_i_9_n_1,led_reg_i_9_n_2,led_reg_i_9_n_3}),
        .CYINIT(1'b0),
        .DI({led_i_18_n_0,led_i_19_n_0,led_i_20_n_0,led_i_21_n_0}),
        .O(NLW_led_reg_i_9_O_UNCONNECTED[3:0]),
        .S({led_i_22_n_0,led_i_23_n_0,led_i_24_n_0,led_i_25_n_0}));
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
