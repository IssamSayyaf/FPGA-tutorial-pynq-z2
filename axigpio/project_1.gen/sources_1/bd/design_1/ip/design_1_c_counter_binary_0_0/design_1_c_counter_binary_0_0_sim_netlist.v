// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Nov 20 22:59:55 2025
// Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/issam/FPGA/repo/axigpio/project_1.gen/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_sim_netlist.v
// Design      : design_1_c_counter_binary_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_21,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_21,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module design_1_c_counter_binary_0_0
   (CLK,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_mode = "master q_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 21} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 21}" *) output [20:0]Q;

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
  (* is_du_within_envelope = "true" *) 
  design_1_c_counter_binary_0_0_c_counter_binary_v12_0_21 U0
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
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
BzpXTEKA8BVsrspByEDp/11GmM+rxG9XMJJJnmPNjGdQQboQwi++OZU3ieaWxVBebPZFocPwODUK
3YSjgSy7gDq0QaoBQZG6dZMAag7Ne0KGfWsP1RqdsPfVxeH8Qx/6wZgpp78UM9HQGzTHo1GLZBWS
D4wUYwEsU87u9Zpk3qs=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vpBJkG8TIIvbLGijR8Bv2vcecc3ZXSLh67+33TG+HIWVhhxrrYg0y/8AvFRWiudkKCNlAbPuc21/
CBoxEnV/LjWMInbIFuSDIvOG8YntNXFMyV5vsO6fmRNacW9hih9Fw2He/tr75B/S25kFdFus6dUq
8UyHbnShYb39EGpaT8QIg/FBg3M4scSnbKUQgZvAjUqPbPp24vO/T8m2aU7Vep++Wl0eSykhEgjW
MjtHYZn7kE2KKNgxYa/KQbvvP0Gf7nFLvEI10dGiGLxPd1u7V370HoIZjYKDtyR0kzX4BKMwwKoS
NulYuGY6BDWl62DKHwhGYkf0IS+HXlSikk4liQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
E48CjVwTRLHIDhOzAwgts1XbVc6DxcxGnoR9OV1zjKj3qFL1M/uWMiuaVq+LhoGPTQ5A4NG56fLV
5VV7/BgXKg/VECNvgEEYeQT/wj1+DvDdp504/7nU3sBA13uhhPSNa7nI0u6LqO2vksEZLQzkRkWh
eiuYdOOIEGb7fsy61HI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mGOeQ9tc5jI6QAZv7QO4L3cVfVa/LhRQbJW/zRcR+rZXpzRvcDHrXUpbvJJmZiGLu+GO43OagOrs
JJje6ctkHjBbdnaclDtJoVMLYaE/wmkaFn8jO0jKVzfHGwOJ2tex55X80BDpAb6poBcWi5LL2/MV
xkMZZcV65cGDdTRFLmf5M7lifrLkaqOwgdAma9Voud8egHaPwtITXN1T707M5717wNjUoA3xzaNq
SxtdD6rBT/R0rpWqnetxcdcm+cyJtDFAiFXfWYtheZfJQzLzNNr0+gOtIl2Vsj819K1053mMlIIA
7rPm0YsAyCmhhBgGHTJ5hsvbewhsG/oMhPnwyA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ir2SU2p9N+IdgqX22ItQaWq9hixnYLt4vKaB894e/xFxWuXoMzqHcfYR7vBCuujeMXpoSBBVJBEb
aL1CBX494Fct8JbU64s8drP+5zp7Ik5bO/BP6UDP0zR1Lk8gBldA0NhA+4R/NtFKoHBXV9Hyqb4c
eeRiQKbkzwOpniYRNK9KaDFaR6nhBrUIiemCW1UApV1qD7qZSafxFn0I1XFe05NsAyumBdNUFj8N
/AFeTcU7CjC3SR0TehjOq+M4ajm2Eg6C7r7+jIhJqgWudMuX6NhOX9KPvLKao3POKANouaF9rkjY
U4F5L9YRkFYwysEBCskyCWTzM9gmnFEcNtTHjg==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qCdZIR2lY555ysNYtBeic8wRf70LXFEa31kdQ5kzdBTiiODubBlmOjZkSwgV2tYDTGtnwtOcvF0s
Elys3IPJllruqyEsPok2IPTWRmwZhhM+jT2m6JHal3xelQUa9aATbp6zuYJOJn1D31DpNoLD1DfZ
AJ2P+MTOyy8gQujheVqkOqmJgl9dQ5ZjrA8GPkJ9UYXWhUlpQvCj6ti6jVbVXZj72iqxdK9GnHk1
nHncVoywR5bxthUHs3N/GYvfrYpt+JEdVOIjkVAiquKOJWaRb7l5XP3P5JaVRnbNQyQdLJ9N5kKL
Dlvam6j2UzbfKWdcZaFoiHHE+Zgccsm1OviOFg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QxSQvBzpc2EEF090FbGf60i+fTpGqmZdwcvY+ujlnv2k4tn/UH5GonGALqhl46o5ss7Gi3/Z7ywi
nHOkluAL7B3eyqfuCiFqVyjpsJBKi1PGbIY5SQeLsEwU3ScOXCqOe4o0e8Ew0CzN2ieBjiRJo8Ci
4a2G7m9qSVvm10eUHWJjk7dBLAv39V1IDpNupW2sc6ExAehKASl2a1UyTfxU5xNcesaw9/ET326O
Ife91Cm76aO/Pnu/pvnAULbURniJRYxzfYzAjdZTF31GZhPmFaXRA/YBNGtjpq3zHk8wrQwLN+N7
j8LFGwUNTUKWqj7ronPDeIxcosTol4FIpCiPYw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gIe/tZRqjW0No3A5MCNWTIBlKvh9R8myhpu8uDYycW7kxN72cZojsq8Of1nYbk8iBoLnq5157CZs
0fBjlhoAzspgFPQV4yMLrZS6TusQ5yKtuqypUAjE7LJQFedz+y9ZETdxdVbOvYtWzKea0U3Fzv1k
tjOq+Cj90aPa3GGDyNfRqYx61Dpi2RHlFaByI/7zxFMWhJGmyMgTWlbwsEwdgHI7k0a7fRC/XY8g
RnZ4JXrhTHxkuK9jvS51fLbz9aaydUJ/XbKyrF1vGgzE4mG+74ggIbKzZ5xQtggLa0hWmCHzpeHp
ufwT86ozoQbfgn7FqbIbsWrG9GEF6TgFxFzBmZ7h5rhU5F6Y0NNtWEP1yVpq1WTsybH1KdfqnRLX
/fUjCypGHbL2vrR99Xa/zKUrEfG+GrGPWhqHX55NLQHuHuoCn6gaQZrG9hvMfqVczMXZxM1922Dd
8HrKwlNCvVtT/3daJVNr7+Tb5Atyq/jFISaNwYMM8xXyJiUIE4Ytd8OJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bM8gxHQieXQanVvZmD3hi66fOv5Uf/ir2vAxD6v2EOriOQSZBYrhXdRSaeTTm2qXbKAnKSsP+a/7
LMXmNnigIUvTNvsbQgr2yJifLo03H1WEwoBJwZIw7sDUSLpnQZx5EWv9XQwlAt2w86uuvWVQr0Tt
iN14uUJYdHV1344RX91A6rlSZ0AKu1CjeJN8t2AQl4IjKke0JQMiimZFuk34xuO0gcNE2YOfiQMS
v4AJOHL2LPEu+7TGgOxT9Uhpp91WdVWcKkPzCK4t41zgP2/8oAUiHhtzKXSnVgPe26RuNX1lsJki
eq9qM846JZxMsSbL8ipW3GG+i5qdsUATs6fzEw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kwJ6Q71uc9bPegeb1ytad4J3iQkoEBblCyV3UQfZOdiW1rDzfyAaVUoa9mS4XrfRsDlQfVRHBhvL
eVMmapH9l6BrSwIhz6DCnoH6W2/NMkL6uqS1cXT9X2xK//t+lUGjPOAH1jE5Fj6T5uQaROacGeeE
nbNfXy9tqV2HZ18qdM68c0xKg0/Qp3Kj7xFF83jUq/nnpQrvsTCEDOyknMjgcHUUgt8AP2oVxRT5
rXvX/2nFBClFCugAdgO+bqY44cr+vQ2qBuPjNCMpoLt7iWFpXzthEaUoJSGPH6QSJLv33c9pwWPU
eib9cnzlx+XNFaLe3i3/3Zp30PPnk0osNkxD4A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ckmb4dWDpAZAGAIVUn02YtfbkK3GxAuwJy6uBEXF8442TvhBd+VebHNHGgYyyNdb7cKMew7Ihod4
NLgbAwZVkdrtd4bHtJVVZeEnGG9+kAbFOzPhSu5wUmCNfLmdMN/2dkUwASCj681QZtR7Y/atMOM+
WMbBEK5ddfXkCLgrAd4FGC1MfGLc0MqY6LUwH9haai4ICPApVdSeuWSMaubHa7KaZtCfOP0XfhuM
gnzZnOb+MUEd2Vhn/OjVESjqW4rYYxu2FSP71dpG5TznpyVHKq+PqZ9z2DnFU1ldoe+zwEosFrx4
oCuFduC9IBNSOgy/Si7ouaDl09xJ/9ZWgQtjSg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2432)
`pragma protect data_block
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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Y3ZbCcdv9XasLMSMZW/y3Z6CUzCXNPTE+qdA8rN8R+bY1a3xUH0B/92K6jUJ2s2WEn1REyXOQgu8
z1NEWHIa9nJosDbj+GChjGTQwgXx6hcmrcoPipw89c2yCONv9um/soUaPzysLy4hmmECcp0nEvoo
xPoT9TYqcruYDtIOB7A=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F1IXWdxrPKwvTg8EeMjbKRbOQi8g3pVSNtCuVg69JLgqwWEV5YPJ799e7MoKiqJkPivuLi02N7OR
3hlEAzvBZ3MErCqbvMNQv7w7I1lUx9+PcnD0U7bq/UBNvJ4SM2MbX+zbypLiHoMWr2iJXBO7SNu1
rhAu1lfLAJFTaPeByNUlPrZ+jTO8nFOr63czMGj6idyWroogzVzYRiQWeWA1SPfn2YjH3ZVDvNsY
dvsAdBRES27GYG37D1ugMFri5LGOMaUqSbkct/gJpY9Gl7AtM6juWR9BFN8WcUmDZmrGRv5o8s7v
PvT4locJhONftqZXOCwafp7Nky6jEqmzPaBZTw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bo7kG4Yo1muXASb3K+dNN076tI4tNFg29R/EzlrphZRJbZpGm/I/tKRbKF4dSppaobE1DPkNCMdc
Lm2HgNApmlQYjDsJNg7t6VPv/GU/DfWQY8Nxjpd1C+3gRDyCuHxYJFJUxCj3lzL31n9zOZ0dgqaM
g68NcofLsns/Jynvhjg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KaN2tJr4q0UNsRnsGonecTlshqKcaOREnPMxRFUF1thLUibwKC1aG9ZHSXnf2CHOj4jLmgT0RGUg
itULJEfsjy/hCOOVf+7cyWU21lL7ciL7Xf8ok2Rb2Co8Jqm8KTyikoWP9sOUZ/NJ6gEUEROrnQlw
uvEdVVmnWmNyJ2sVUmp3Ak7XqUzz+Kay0oDECH3Aat4yC198zQImE4yVhJgy36kw6wnLJmbLY+PX
BCv9k77gpJdX0frge81vAMSP/TAPKHGiqhCBShNIjMRtxL+uqAIO0jKw09FNpy+W6Fj6qowyL9PH
5jqpOMhg8GELaciGksOC/Zl2N4S73OQcbQqcHw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
STxdukJ0Ps7Q/iujvgYoC8IpCWBcTU5Y10ns6ltitMcVdYBmbbE6R7XGL5vuptPIvoGh8S2FGZLi
PBFLfYSAZP4oSXsF/mg/zitHSRxirnd81evlt0p09ZYT77/KV0OEJ8PpEYEb1vY7z1H1T4zlREBF
SdCBGMK8DtSTJX/RjuLQ7xeXVNOp/XBsgPFNnp/rheT/KMHYz8nkBpzuPce0SEgmAVUbp6xA2YHZ
GneJc/7zzuLACPFtpyCDyX7E8ngPZGu0FN6d+AkNnvsHnsMjlC5K+D4cUBRYUiBnL4XDU37xwoz/
1LQ8d+4CniEq+4kw+GWWJLhCoubXH+MZbN/inA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Y33HNuVH8FgqObSFFaKDX0GU3qNTzxgHbhe73nDCX69btae7453IbdcmV7iC/CPzwNp7zYlK03iB
0t+IeFq6WrcoVsF2WTwuv9uM/gBgovGdTEAVm5YSFK1byctgXjg0A0BdYS97jUDaf/4csV+H7ZyC
qvKluzcTGyKvUQnTomYUSQ28kLxqmq1NkJjrQlKtMRmhhI5hJTnsq98nyJ8EegaVWqIgJjqKjUpm
JLrEc0tMzdf/lUeie69ZABMmG0isSqiDk45ei2d1rVg1KNeJ5mLLLr7yD7thbGOBxhSJYebPWl1J
xd8DkEZAKORjNjL9vfNN1VSXbzRcEXSqmXm6Sg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Yw8TgjL3JDLwKvOnWlgfHV7HFJDgumk05JYG6xg+ZEl+tzRZNk2xu0gBOhr7u5/Wl0au++UmGY6i
jNz96oYuX7PeetoiWtoOeGQJxx2KpOlfWeBQo6ZiLOfhxGrZmgQcIxRmJRJgcdWMtlL4Ei/+69GI
dOMD+lhyIZpHEHK/bzB1udA4KYMEzoJpJZ/v1ehra0FwBIh9Gel4Bwg7gd95AbibIn1/dqA4i3Io
eprNWgFJGx7cn6KdT0iM5NWx36OnXFxDlIjBCm7hpEHPfcopQWSzd5V80Jnu4Sl7dwMGvnJMrv3z
tY/52wmL52JCVH9gzS/z6ahAghncs3BHheHS0Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jkfcW/kwccT/pnYgPwCFUAEXPO4w1sIzpMPIKA7oc+rEqJqr1hrOf9Jf2bYsYLtB6LGRcJa21Vmj
wuzdkTVyCAx7I6cfTipcRKP3KEsbEWRD+fkxZOrbtm530q5rDA7P6buM1gfHsBAJA4dyQW4sPWAd
XdThjGiOS5c34Yk1Nku7qda2Ngy72JPWCHZqcjSVcYq3t1Gy+vu/ps9RMROr+YpKxuWKL/TrlLyW
Zh2s1jF/RY+cQnbzAx2zQsuv2ZPwNMayv35zzsH+E2/sdw4gJrfsW/w8xon69M1K3HcyMHXkz1pG
1ARD2+r4X9TrUNmF0tsMGU//Yq8sDKs8tuZLEOMFXqiNt0cSO92lNunfvlgC+6Cj95Gmz5Ish4Ig
r738ysD14QJqX76mKB6uVjoans0SqrslykUdPdXRj20/YDNoBxGuDWORrvw8a+D0ZzLpNcW93Gm/
r4qqEqCyuKWwdue6gTrnRci11oxYSXG2gbTTYyQgn5mTS0RtpPG3q2EK

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LJGqd6SmZEGyn3I/RZHXQDVLBpUYHBXayfZsoC5aqeLzXio9mjP2jJJqiWGIFKE2XwVHURSLgk3G
H6kZmy4xc/KwiCHLNDWfqT6xXQrIiSgtx2D2iQuIyan4ExV7UT3qq4nT3VF8kLCvJmqTccLcd2f+
R+Xf2qDVdUDvGNnlmH41l4y4A/qSyULjdD4vQ5ECMXEvaa8cTlKxZakGA1WiCIfA8uSoTlpjQR0s
iMrT9wUgFuMs8+Dc02CQSSSo4pMYfhhXwronggT6BjjTGXR1+szUNBMU8lXyWTwEGb9cN4SZeasL
Wm0l1nbbrKwTQ730SeohB0aRd3zwOs4F3cHT0g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
2nLT8Zvs6vla9f81jsNW2RPpEaJf9tKjV66ah5MzvkCo0kdwmi/psLyzofjZoAxPTJey7vNkD+OP
ig7ZThoxVTDJVMGERrfG8uaJ+LUCvPiCwnKn73vgpEMD7qP9g1VskXBf6CudHgaap8bDBgfVWITL
QExOCeVFUk9u93wTJdHimIoe6Ebg6RFmktgHJq1nNw6TYsKCwDY4E1Jg3vwGV5uT92yAW4PKYrDN
YGfeq3IIs+jiZrIZs1ffc3SAce6LLc62T3d8XglbzgKthxxcUc6Re4XKxVPp69nMLKsxTcvANNI0
Vgm0AGrkFuF+eBGT4Evi8c2RUBUZur4CgcKCwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bC7WF7hkz2L9eff+WtabxVTqD0ohNl7V54dbTlcmUuGjzlS7+etjYyf1ZmKyTxgZlI8CcGY3aLUm
g4gMZWQTkwQ2EABmYmtgG8B1CQOJdk0H16y1P3Ngef0kUT/4xGcurqPGqt8djCWLAJYHkIS0viNB
1s3Od9+84/L2xjU3GaQhc2e9u2OFVjrPCAKk0Ygmig+kgae5wRHqq16qz/+bWFyJe0O9cHyCjTtn
7/8jzeGuU0eaJfh0NrMBjbYxyV69oQjDU8ns6UMON/gG/Bos1va7j8dyIdYh6IGHeUSqr6LBTN7Q
2R4uEizA0QWc+/BV1v+nRTAIxxrJg5+4QWqljg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 13088)
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
