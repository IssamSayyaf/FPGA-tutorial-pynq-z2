// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Nov 20 22:59:51 2025
// Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/issam/FPGA/repo/axigpio/project_1.gen/sources_1/bd/design_1/ip/design_1_axilite_slave_0_0/design_1_axilite_slave_0_0_sim_netlist.v
// Design      : design_1_axilite_slave_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axilite_slave_0_0,axilite_slave,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "axilite_slave,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_axilite_slave_0_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY,
    LED_ON_COUNT,
    LED_OFF_COUNT);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_mode = "slave S_AXI_ACLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_mode = "slave S_AXI_ARESETN" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_mode = "slave S_AXI" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [11:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [11:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  output [20:0]LED_ON_COUNT;
  output [20:0]LED_OFF_COUNT;

  wire \<const0> ;
  wire [20:0]LED_OFF_COUNT;
  wire [20:0]LED_ON_COUNT;
  wire S_AXI_ACLK;
  wire [11:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [11:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BVALID;
  wire [20:0]\^S_AXI_RDATA ;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20:0] = \^S_AXI_RDATA [20:0];
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axilite_slave_0_0_axilite_slave U0
       (.LED_OFF_COUNT(LED_OFF_COUNT),
        .LED_ON_COUNT(LED_ON_COUNT),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA[20:0]),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID));
endmodule

(* ORIG_REF_NAME = "axilite_slave" *) 
module design_1_axilite_slave_0_0_axilite_slave
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_BVALID,
    LED_OFF_COUNT,
    LED_ON_COUNT,
    S_AXI_RDATA,
    S_AXI_RVALID,
    S_AXI_ARREADY,
    S_AXI_ACLK,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    S_AXI_AWVALID,
    S_AXI_WVALID,
    S_AXI_ARVALID,
    S_AXI_ARESETN);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_BVALID;
  output [20:0]LED_OFF_COUNT;
  output [20:0]LED_ON_COUNT;
  output [20:0]S_AXI_RDATA;
  output S_AXI_RVALID;
  output S_AXI_ARREADY;
  input S_AXI_ACLK;
  input [11:0]S_AXI_AWADDR;
  input [20:0]S_AXI_WDATA;
  input [11:0]S_AXI_ARADDR;
  input S_AXI_AWVALID;
  input S_AXI_WVALID;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;

  wire [20:0]LED_OFF_COUNT;
  wire [20:0]LED_ON_COUNT;
  wire S_AXI_ACLK;
  wire [11:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [11:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BVALID;
  wire [20:0]S_AXI_RDATA;
  wire \S_AXI_RDATA[20]_i_2_n_0 ;
  wire \S_AXI_RDATA[20]_i_3_n_0 ;
  wire \S_AXI_RDATA[20]_i_4_n_0 ;
  wire S_AXI_RVALID;
  wire [20:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire \axi_araddr_reg_n_0_[0] ;
  wire \axi_araddr_reg_n_0_[10] ;
  wire \axi_araddr_reg_n_0_[11] ;
  wire \axi_araddr_reg_n_0_[1] ;
  wire \axi_araddr_reg_n_0_[2] ;
  wire \axi_araddr_reg_n_0_[3] ;
  wire \axi_araddr_reg_n_0_[4] ;
  wire \axi_araddr_reg_n_0_[5] ;
  wire \axi_araddr_reg_n_0_[6] ;
  wire \axi_araddr_reg_n_0_[7] ;
  wire \axi_araddr_reg_n_0_[8] ;
  wire \axi_araddr_reg_n_0_[9] ;
  wire axi_arready1;
  wire [2:0]axi_awaddr;
  wire \axi_awaddr_reg_n_0_[10] ;
  wire \axi_awaddr_reg_n_0_[11] ;
  wire \axi_awaddr_reg_n_0_[4] ;
  wire \axi_awaddr_reg_n_0_[5] ;
  wire \axi_awaddr_reg_n_0_[6] ;
  wire \axi_awaddr_reg_n_0_[7] ;
  wire \axi_awaddr_reg_n_0_[8] ;
  wire \axi_awaddr_reg_n_0_[9] ;
  wire axi_awready0;
  wire axi_bvalid0;
  wire axi_rvalid0__0;
  wire axi_wready0;
  wire led_off_count_reg;
  wire led_on_count_reg;
  wire \led_on_count_reg[20]_i_2_n_0 ;
  wire \led_on_count_reg[20]_i_3_n_0 ;
  wire p_0_in;
  wire p_0_in0;
  wire [20:0]p_1_in;

  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[0]_i_1 
       (.I0(LED_OFF_COUNT[0]),
        .I1(LED_ON_COUNT[0]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[10]_i_1 
       (.I0(LED_OFF_COUNT[10]),
        .I1(LED_ON_COUNT[10]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[11]_i_1 
       (.I0(LED_OFF_COUNT[11]),
        .I1(LED_ON_COUNT[11]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[11]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[12]_i_1 
       (.I0(LED_OFF_COUNT[12]),
        .I1(LED_ON_COUNT[12]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[12]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[13]_i_1 
       (.I0(LED_OFF_COUNT[13]),
        .I1(LED_ON_COUNT[13]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[13]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[14]_i_1 
       (.I0(LED_OFF_COUNT[14]),
        .I1(LED_ON_COUNT[14]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[15]_i_1 
       (.I0(LED_OFF_COUNT[15]),
        .I1(LED_ON_COUNT[15]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[16]_i_1 
       (.I0(LED_OFF_COUNT[16]),
        .I1(LED_ON_COUNT[16]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[16]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[17]_i_1 
       (.I0(LED_OFF_COUNT[17]),
        .I1(LED_ON_COUNT[17]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[17]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[18]_i_1 
       (.I0(LED_OFF_COUNT[18]),
        .I1(LED_ON_COUNT[18]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[18]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[19]_i_1 
       (.I0(LED_OFF_COUNT[19]),
        .I1(LED_ON_COUNT[19]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[1]_i_1 
       (.I0(LED_OFF_COUNT[1]),
        .I1(LED_ON_COUNT[1]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[20]_i_1 
       (.I0(LED_OFF_COUNT[20]),
        .I1(LED_ON_COUNT[20]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[20]));
  LUT4 #(
    .INIT(16'h0001)) 
    \S_AXI_RDATA[20]_i_2 
       (.I0(\axi_araddr_reg_n_0_[10] ),
        .I1(\axi_araddr_reg_n_0_[9] ),
        .I2(\axi_araddr_reg_n_0_[8] ),
        .I3(\axi_araddr_reg_n_0_[7] ),
        .O(\S_AXI_RDATA[20]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \S_AXI_RDATA[20]_i_3 
       (.I0(\axi_araddr_reg_n_0_[1] ),
        .I1(\axi_araddr_reg_n_0_[0] ),
        .I2(\axi_araddr_reg_n_0_[11] ),
        .O(\S_AXI_RDATA[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \S_AXI_RDATA[20]_i_4 
       (.I0(\axi_araddr_reg_n_0_[6] ),
        .I1(\axi_araddr_reg_n_0_[5] ),
        .I2(\axi_araddr_reg_n_0_[4] ),
        .I3(\axi_araddr_reg_n_0_[3] ),
        .O(\S_AXI_RDATA[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[2]_i_1 
       (.I0(LED_OFF_COUNT[2]),
        .I1(LED_ON_COUNT[2]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[3]_i_1 
       (.I0(LED_OFF_COUNT[3]),
        .I1(LED_ON_COUNT[3]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[4]_i_1 
       (.I0(LED_OFF_COUNT[4]),
        .I1(LED_ON_COUNT[4]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[5]_i_1 
       (.I0(LED_OFF_COUNT[5]),
        .I1(LED_ON_COUNT[5]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[6]_i_1 
       (.I0(LED_OFF_COUNT[6]),
        .I1(LED_ON_COUNT[6]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[7]_i_1 
       (.I0(LED_OFF_COUNT[7]),
        .I1(LED_ON_COUNT[7]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[8]_i_1 
       (.I0(LED_OFF_COUNT[8]),
        .I1(LED_ON_COUNT[8]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'hA0000000C0000000)) 
    \S_AXI_RDATA[9]_i_1 
       (.I0(LED_OFF_COUNT[9]),
        .I1(LED_ON_COUNT[9]),
        .I2(\S_AXI_RDATA[20]_i_2_n_0 ),
        .I3(\S_AXI_RDATA[20]_i_3_n_0 ),
        .I4(\S_AXI_RDATA[20]_i_4_n_0 ),
        .I5(\axi_araddr_reg_n_0_[2] ),
        .O(p_1_in[9]));
  FDRE \S_AXI_RDATA_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(S_AXI_RDATA[0]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(S_AXI_RDATA[10]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(S_AXI_RDATA[11]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(S_AXI_RDATA[12]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(S_AXI_RDATA[13]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(S_AXI_RDATA[14]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(S_AXI_RDATA[15]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(S_AXI_RDATA[16]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(S_AXI_RDATA[17]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(S_AXI_RDATA[18]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(S_AXI_RDATA[19]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(S_AXI_RDATA[1]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(S_AXI_RDATA[20]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(S_AXI_RDATA[2]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(S_AXI_RDATA[3]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(S_AXI_RDATA[4]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(S_AXI_RDATA[5]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(S_AXI_RDATA[6]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(S_AXI_RDATA[7]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(S_AXI_RDATA[8]),
        .R(p_0_in));
  FDRE \S_AXI_RDATA_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(S_AXI_RDATA[9]),
        .R(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_araddr[11]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready1));
  FDRE \axi_araddr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready1),
        .D(S_AXI_ARADDR[0]),
        .Q(\axi_araddr_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready1),
        .D(S_AXI_ARADDR[10]),
        .Q(\axi_araddr_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready1),
        .D(S_AXI_ARADDR[11]),
        .Q(\axi_araddr_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready1),
        .D(S_AXI_ARADDR[1]),
        .Q(\axi_araddr_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready1),
        .D(S_AXI_ARADDR[2]),
        .Q(\axi_araddr_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready1),
        .D(S_AXI_ARADDR[3]),
        .Q(\axi_araddr_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready1),
        .D(S_AXI_ARADDR[4]),
        .Q(\axi_araddr_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready1),
        .D(S_AXI_ARADDR[5]),
        .Q(\axi_araddr_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready1),
        .D(S_AXI_ARADDR[6]),
        .Q(\axi_araddr_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready1),
        .D(S_AXI_ARADDR[7]),
        .Q(\axi_araddr_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready1),
        .D(S_AXI_ARADDR[8]),
        .Q(\axi_araddr_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \axi_araddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_arready1),
        .D(S_AXI_ARADDR[9]),
        .Q(\axi_araddr_reg_n_0_[9] ),
        .R(p_0_in));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(S_AXI_ARVALID),
        .Q(S_AXI_ARREADY),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[0]),
        .Q(axi_awaddr[0]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[10]),
        .Q(\axi_awaddr_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[11]),
        .Q(\axi_awaddr_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[1]),
        .Q(axi_awaddr[1]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[2]),
        .Q(axi_awaddr[2]),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[3]),
        .Q(p_0_in0),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[4]),
        .Q(\axi_awaddr_reg_n_0_[4] ),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[5]),
        .Q(\axi_awaddr_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[6]),
        .Q(\axi_awaddr_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[7]),
        .Q(\axi_awaddr_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[8]),
        .Q(\axi_awaddr_reg_n_0_[8] ),
        .R(p_0_in));
  FDRE \axi_awaddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_awready0),
        .D(S_AXI_AWADDR[9]),
        .Q(\axi_awaddr_reg_n_0_[9] ),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h40)) 
    axi_awready_i_2
       (.I0(S_AXI_AWREADY),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_BVALID),
        .I1(S_AXI_WREADY),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_AWVALID),
        .O(axi_bvalid0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid0),
        .Q(S_AXI_BVALID),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h20)) 
    axi_rvalid0
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_RVALID),
        .I2(S_AXI_ARREADY),
        .O(axi_rvalid0__0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid0__0),
        .Q(S_AXI_RVALID),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    axi_wready_i_1
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WVALID),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \led_off_count_reg[20]_i_1 
       (.I0(\led_on_count_reg[20]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[10] ),
        .I2(\axi_awaddr_reg_n_0_[8] ),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(axi_awaddr[2]),
        .I5(\led_on_count_reg[20]_i_3_n_0 ),
        .O(led_off_count_reg));
  FDRE \led_off_count_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[0]),
        .Q(LED_OFF_COUNT[0]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[10]),
        .Q(LED_OFF_COUNT[10]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[11]),
        .Q(LED_OFF_COUNT[11]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[12]),
        .Q(LED_OFF_COUNT[12]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[13]),
        .Q(LED_OFF_COUNT[13]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[14]),
        .Q(LED_OFF_COUNT[14]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[15]),
        .Q(LED_OFF_COUNT[15]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[16]),
        .Q(LED_OFF_COUNT[16]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[17]),
        .Q(LED_OFF_COUNT[17]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[18]),
        .Q(LED_OFF_COUNT[18]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[19]),
        .Q(LED_OFF_COUNT[19]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[1]),
        .Q(LED_OFF_COUNT[1]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[20]),
        .Q(LED_OFF_COUNT[20]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[2]),
        .Q(LED_OFF_COUNT[2]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[3]),
        .Q(LED_OFF_COUNT[3]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[4]),
        .Q(LED_OFF_COUNT[4]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[5]),
        .Q(LED_OFF_COUNT[5]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[6]),
        .Q(LED_OFF_COUNT[6]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[7]),
        .Q(LED_OFF_COUNT[7]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[8]),
        .Q(LED_OFF_COUNT[8]),
        .R(p_0_in));
  FDRE \led_off_count_reg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(led_off_count_reg),
        .D(S_AXI_WDATA[9]),
        .Q(LED_OFF_COUNT[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \led_on_count_reg[20]_i_1 
       (.I0(\led_on_count_reg[20]_i_2_n_0 ),
        .I1(\axi_awaddr_reg_n_0_[10] ),
        .I2(\axi_awaddr_reg_n_0_[8] ),
        .I3(\axi_awaddr_reg_n_0_[4] ),
        .I4(\led_on_count_reg[20]_i_3_n_0 ),
        .I5(axi_awaddr[2]),
        .O(led_on_count_reg));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \led_on_count_reg[20]_i_2 
       (.I0(\axi_awaddr_reg_n_0_[9] ),
        .I1(\axi_awaddr_reg_n_0_[5] ),
        .I2(p_0_in0),
        .I3(\axi_awaddr_reg_n_0_[11] ),
        .I4(\axi_awaddr_reg_n_0_[6] ),
        .I5(\axi_awaddr_reg_n_0_[7] ),
        .O(\led_on_count_reg[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    \led_on_count_reg[20]_i_3 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WVALID),
        .I3(S_AXI_AWVALID),
        .I4(axi_awaddr[1]),
        .I5(axi_awaddr[0]),
        .O(\led_on_count_reg[20]_i_3_n_0 ));
  FDRE \led_on_count_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[0]),
        .Q(LED_ON_COUNT[0]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[10]),
        .Q(LED_ON_COUNT[10]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[11]),
        .Q(LED_ON_COUNT[11]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[12]),
        .Q(LED_ON_COUNT[12]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[13]),
        .Q(LED_ON_COUNT[13]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[14]),
        .Q(LED_ON_COUNT[14]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[15]),
        .Q(LED_ON_COUNT[15]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[16]),
        .Q(LED_ON_COUNT[16]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[17]),
        .Q(LED_ON_COUNT[17]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[18]),
        .Q(LED_ON_COUNT[18]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[19]),
        .Q(LED_ON_COUNT[19]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[1]),
        .Q(LED_ON_COUNT[1]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[20]),
        .Q(LED_ON_COUNT[20]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[2]),
        .Q(LED_ON_COUNT[2]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[3]),
        .Q(LED_ON_COUNT[3]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[4]),
        .Q(LED_ON_COUNT[4]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[5]),
        .Q(LED_ON_COUNT[5]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[6]),
        .Q(LED_ON_COUNT[6]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[7]),
        .Q(LED_ON_COUNT[7]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[8]),
        .Q(LED_ON_COUNT[8]),
        .R(p_0_in));
  FDRE \led_on_count_reg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(led_on_count_reg),
        .D(S_AXI_WDATA[9]),
        .Q(LED_ON_COUNT[9]),
        .R(p_0_in));
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
