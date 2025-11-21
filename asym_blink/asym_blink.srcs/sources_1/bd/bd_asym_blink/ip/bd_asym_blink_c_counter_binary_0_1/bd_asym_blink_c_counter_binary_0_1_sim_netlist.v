// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat Nov 15 17:47:03 2025
// Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim -rename_top bd_asym_blink_c_counter_binary_0_1 -prefix
//               bd_asym_blink_c_counter_binary_0_1_ bd_asym_blink_c_counter_binary_0_0_sim_netlist.v
// Design      : bd_asym_blink_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_asym_blink_c_counter_binary_0_0,c_counter_binary_v12_0_14,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module bd_asym_blink_c_counter_binary_0_1
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_asym_blink_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
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
  bd_asym_blink_c_counter_binary_0_1_c_counter_binary_v12_0_14 U0
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
(* C_XDEVICEFAMILY = "zynq" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bd_asym_blink_c_counter_binary_0_1_c_counter_binary_v12_0_14
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
  bd_asym_blink_c_counter_binary_0_1_c_counter_binary_v12_0_14_viv i_synth
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
Kp35uD81EuIZvjzMzYrgf6uU1VNktg5n+YcCvcqF30Y17kez7Q8N8JWzqydjUaVrkm+cuaiaowj9
u+0XH1/ctPd8jhle8YlhhWnfuM96E8daIJZU5CuqQT+DFqjWPfEC38wLqiClXLK3INGD3CABOqCB
GDjmA6gZ/fiA7HtKgs1glPD2EbLevIc12kA9IY8vZIwpfiv5EGP7nFAA3xxMByEXS+ZgUTBvA/DW
r7knG4Ael/TQhbfGjRoL6onPkwnLJtGaELqOQlJHguj4LcYzkLsGXB6f4/TSImWQqGD8PpLuD4Fs
ck1pZ8BzNZN/N/Aa0oqMbIh/IlGu1APrbQoA6Q==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1XDA7tKRprX5zHiBaOsfax7nqhM8WSo+sSAOS3SchNN35QiTjbAPWhn8jaUkbKv0oC0nb9hSrPwS
+ew3DofnSeQZKdStk/0ucx2Yw6z8dHdKl/7fJ4h+K+4bGGKIppELqhftXNsQHxuq0TbilYk+cUL/
0xUO6eZVcWs50dViEsvaKRXUckc7swH1mgIzkRzjhdkxLu3ukZzKeS0cC8irywCKe1TBrmXadFtr
uPCICEHVupjNCGEA6B1IsZzW2+IC7s0zmPxlMicEny/iV5opFsWEy+rlTOAR59IMLMHnzRXxWXaW
kuc0ntXMHDUnLWCltOJ+/4mo+Zr/9AP7a5NAQA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12784)
`pragma protect data_block
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
tLJWBljeOeQiQVyhm/seIA==
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
