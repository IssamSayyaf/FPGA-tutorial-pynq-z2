// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat Nov 15 16:51:14 2025
// Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/issam/FPGA/repo/asym_blink_ila/asym_blink.srcs/sources_1/bd/bd_asym_blink/ip/bd_asym_blink_c_counter_binary_0_0/bd_asym_blink_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_asym_blink_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_asym_blink_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module bd_asym_blink_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 98571434, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_asym_blink_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 21} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 21}" *) output [20:0]Q;

  wire CLK;
  wire [20:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "21" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_asym_blink_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "0" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "0" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "21" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_asym_blink_c_counter_binary_0_0_c_counter_binary_v12_0_14
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [20:0]L;
  output THRESH0;
  output [20:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [20:0]Q;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "21" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "0" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "0" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  bd_asym_blink_c_counter_binary_0_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.1"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
EJFZwtxl4g9/OL6+bopUV8BP4e67HNukCIy7Ih3E75y7soa6GhqEucPXMiOy+mJrcrNwD+HjZ0/I
BwEKIiA4mA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
rZCGWdmPJXoOuANoS8fyUXk7SyF+uTNJL18BfeKc+fxcyRrCB++WrM02adxoUdICz4/92yY8TQgj
xyPC0eaHZcjSLepbnHHgSReIQ1PL0hmufLbye7QTD0ygUXC4MvFVY8s3KeW9cPCqOxkyCSziJQzs
J5OT9XLQno1e9rIBr9M=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
I7Zo4frj3tO6FFzeDhpSENS0yd34dQZBtiyIrI/GMASFBUeny6muOD2l0HK69ImRJIOyobvK1+9O
DhxptAc4NzRpY4xUZvr4ix1AhM1Kars1OkrQCWz4a7ciGU/XDblidF3IL0Fa7c41gHIZR9c/Usa6
XL7UEu3aSPQYbZLSDOzeao4VtSSn+dCcjsH4X8zVjSqXg8dcN3fd5C15JaMYg00F2yOFtxwWwZWq
Yvwe1q1PG/wcA1cKAOscANbj4o3O4LjfylNIB6L+Mssxosh+e0+oobWNk/ouBa4k1c3/IzXGSCAs
hEvbI+iqkWJJKZrSb9PZk7S7XSJcScrJO/DGkQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DDRecdVJcCPEpbUqhuwKtKWXteF7XhGc5d+lQn2uiREzbHyuZvQ1wDwAGGrPwE75gjqc7CdHPMOY
8+3nqcEwR4Q5USgQcou3Cyc6C0TnzzDD/dLKPHDWA1s52x8Rx+LBH9WCvBpD5BKkE4o1s3rN1tL2
wTdCqzzKD8YlryKQ4U0lr2bX6Mlf4/nIt2K1eyPKbIrHIvKDThmaIF/qLnLnkE04pksWJ9Af1OVB
46iqBssrR5p6wZc241D4CqSRCRamfP/s1JrTi8bBNCcXhC0f0Aa35UAoG8vnFngHlFd3G2J88cas
Fo7UH4k1BTTfgbQ35ec0XfSbS/qQWS+EgAF+wA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
L11p2bsABDhO9HvT3IM+HulCClFvs/UPexuAVExicKtzrLN7tNvUjSouZSn9KwAjR2hg5ZIJ23uy
1elB+eyEl65vQnoH4+s6Q5K4EIcMo5WVKfIKwgu5Q3Sg/jYW+aWT/kGuc7CazRsTxJ7XPFndpMIM
cxYWx2DLps320t+Be0c=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uublhc2r9VmPPq1tMATsd3XJltn9QRg1/PdCtSlxgFBDDAk13md52Fz+h+DOWptR3Q4i+Sx5IhIP
QIONVNTf1DnoK/wa1lkbd1dROJam8/cZQFiIxnsnSPGXzOGoc0c04xDSCJCCDxiDMF1YTtAqt6nw
yZh1RwOhPpgwUKjeJ4o4TY6/i0xuYAYVc83O6KwI9Ywk9UsfyIQQS8UXFo8zA9eniU2n2NcyAVNj
Y8xZ9PYJfzfDo6dHWsj4Ik588uhfO/bmsf2/ZuY5HCAMQpnda9XzPkVomNjRfsUghko7KipIl2ur
aHh+4i2kI/+cHaihhw3z14aGidBkuYKaopasbA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VYqlyQSuRywWcSrUprXX2UzoaWsJXTTbptzDY9ycgFR91H2uYfY43f80gn0E87Gvj90Qmn0Dl6ck
2VjO2Zn9yATmqtuzi/Etuf29dkl3uyKtk02OitZJEhD1CDyUJHDXKHkPMXOZCBU5CfkrIWw2SsSq
YuQKmvxp4BrhcwXypr+vRSsYd1liMxxuXOdBN5AIyzibGfcR4YUeOokIoP05xZoQOfPQkotMC1B6
SHVKEaBxe37YkyKAkQ0f9eKfnPPLG/G5qeLrFPAiIar0HHpOvdCOO69vi3RG1XqoxtTm/wGwRb5J
ZqzZyTn1Fm55PXyKhlElzXXAv1xPOTbkJXRZNQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2019_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
EktM4icAEVQRmfzXBBFeRr7d3ZTOU9f+J40sQAiff114nDU+fxlewcv+twlytUk9LMSR67RJlLt4
+ZBTwcuSPZ2Cvrommkp++7rNze0VCD8pSAdj4uo1ZnYWVWmPMQaRIqI88lnAzc5+T/LxEiXKn4ji
AYGs9fja4ME8C0CHbBsg+jfUryleVk1D8jEMCetM7qDx64s/7AGfwzDqMiW2DPCPLKNUsdlOlBYT
JAOnfy6deN7/o7BYxBsE1P4Pib1x1hvR8RwEm38pBOLKGade6KL/1SHmz5N1KGLPSXQXlK53RLTI
Exc4wN04Kg72tf503oGq6Vp90c5pksQ9cc0M+w==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qzYsaSn6YzxyfrxIwv3eyowRK7ZyzZmQHzUmV2AITf6g43c7IV/fwNBDik+XFhLScW2SxsyaGGI7
5n6kAt9uM3GerkCXA+LJQrqshcEyjuvm17vWVovBURqxhTARgZaTs5OtXdhc/wLi5e6lsdyyLtQo
bt66ubjErMgf5+tD8rpn0HkjUYmGv/MBZ0i4bGui735H12aK+wTfhGVOOiuWHCk2zCJJSx3vH4sl
dKtlpg4W0hPEM3TBPHaLnOpIDkrIUaGGN5fm6NJL6US59+Lr8/3mplbD8ld21OKzgLH+5YPRMoo4
1Pbjxkawu5Kk60AsuaR/OxngawaRMd9N4niRfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TedWrB7tByplhYuf0Qf0OhrqRfQh/bHDYJJfSADYTL9ZuumopmbINEe+9gdVruT6+yfyXXJAWzQ0
OdJds+db/jHbRU6MBVeuQNyhSwN9Vx+CUAEIYxGPza5rWk3rUv1hbjCt72Fi9mlb8CQDpSdfWzHQ
EZ1x5fdQxdb6Y9G6KzbEQUMEEvg8X2HrFOWCUDnTBGgmKF6Hs8tjt512P435dE8aVHlAH4JKmfVI
uATl29YruSnjEhG1afJlEYKSMvAmShJcs7o1hUcWh5Oci65yrXB3PKoW/0LrrVhYBk0RLlcWHeXC
9SpUYSZ/BI5gQ1OodzJ6SEy0ffjd4s9QFGNtoQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OtHUkmQGtjUQPHV1CU7pbv2mPbuAejH+J6TUFH4kO87aW6DZcJ5IeO8LS5O3UmscZi3+7LI7zbYa
XXvh9g/2AgIUjx7EJGPbza3YO/6V0Jco0eShhc+oqZqMfblB0FEqKNv7O35h9EE2Iukbzu7A99j+
QQVlyqHHa9SUcwKjZRjKjIJmWR+HtH6VA+ZSM9YVrHwiu+ShhSI6pncejJMmVICLZ9R/r/wcRFme
90VfqwnJ4U8wE7ktf0EidF5xDID5XMBqcgi8qGe0vIUXttE/buWjq4IyUZjo3jIkcb/eiRALEHL8
ryDgbyMUO3dUNBQhTeZW7tbQbGNSrqpV5JZo3A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13104)
`pragma protect data_block
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
`pragma protect end_protected
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
