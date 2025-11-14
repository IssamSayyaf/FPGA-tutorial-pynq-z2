// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Fri Nov 14 22:08:21 2025
// Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/issam/FPGA/repo/blink_bd/blink_bd.srcs/sources_1/bd/blink_bd/ip/blink_bd_c_counter_binary_0_0/blink_bd_c_counter_binary_0_0_sim_netlist.v
// Design      : blink_bd_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blink_bd_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module blink_bd_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN blink_bd_clk, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 26} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 26}" *) output [25:0]Q;

  wire CLK;
  wire [25:0]Q;
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
  (* C_WIDTH = "26" *) 
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
  blink_bd_c_counter_binary_0_0_c_counter_binary_v12_0_14 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "26" *) 
(* C_XDEVICEFAMILY = "zynq" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_14" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blink_bd_c_counter_binary_0_0_c_counter_binary_v12_0_14
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
  input [25:0]L;
  output THRESH0;
  output [25:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [25:0]Q;
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
  (* C_WIDTH = "26" *) 
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
  blink_bd_c_counter_binary_0_0_c_counter_binary_v12_0_14_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
ipybt52UO2O3WZxMz9kyYhH6eR21FH0uOgOm4AqY4TMz4pa4gmaLZGW7TbbutGcoRkiKCmAj1yap
NXjbsqb/NPdAyqOiMbNahCDLQb7SPgAFoyuFuMeQVx41hTJK5AsY5T1QBDUYqeJju6BLgJ62Bx1h
wvc0zSU/MJ+tGnOXx5yzOi6L/92fZ0iHjy0YBC/LBivKElhynM9i1sXOQvS5wxzvx3AqrmW1tj2S
47sqJHR2VsxsOpAqxHmQcm9hUtWPSXq15AOz2QkG97vQQoxRQNQgRR6/bafTnlmdeZqvLE5GTC0F
BRG8emnA+7UslO/Obqep1WiU/cDL1TNAIecZ8g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C1vvBdcSA8Wz/4yuYirRFdFM4cqwvD7mFC7ssfvq1m2kmA6xi6O+MRTPAOjO93HV5o8WvPiqOwqC
E6/Wgv4LnIDGHopqoLxkexsTzA0iDy9morQ+vaAvszVybFYEPcyKryt7I/Ng6xzq2O7DV0yy4F/j
mDxouce+Sf8K0+g/r15c6wAR0y/oHBb/mEs+Cp+dUhwGgSJvj65v/4KlUUHraL276MjsspgmXpde
2FJfeZ2Ltgze3tyoY6UnCVkid8IcBuTMh/7Umhbc8Ugk2lsuFjYyfD4Lx98ajv9uovhC9+ngWpfD
829qOfcLnWENqcaz7xvSvrBOL9D4mbUmm+FFRA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 15392)
`pragma protect data_block
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
dS8=
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
