`timescale 1ns / 1ps
module t_axilite_slave;

parameter integer C_S_AXI_DATA_WIDTH = 32;

parameter integer C_S_AXI_ADDR_WIDTH = 12;


reg S_AXI_ACLK; // AXI Clock

reg S_AXI_ARESETN; // AXI Reset


wire S_AXI_AWREADY; // AXI Write Address Bus Ready

reg S_AXI_AWVALID;          // AXI Write Address Valid

reg [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR;    // AXI Write Address

wire S_AXI_WREADY; // AXI Write Data Bus Ready

reg  [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB;

reg S_AXI_WVALID;           // AXI Write Data Valid

reg [C_S_AXI_DATA_WIDTH-1:0] S_AXI_WDATA;     // AXI Write Data

wire [1:0] S_AXI_BRESP;     // AXI Write Data Response

reg S_AXI_BREADY; // AXI Write Response Ready

wire S_AXI_BVALID; // AXI Write Response Valid


wire S_AXI_ARREADY; // AXI Read Address Bus Ready

reg S_AXI_ARVALID;          // AXI Read Address Valid

reg [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR;    // AXI Read Address

reg S_AXI_RREADY;           // AXI Read Data Bus Ready

wire S_AXI_RVALID;          // AXI Read Data Valid

wire [C_S_AXI_DATA_WIDTH-1:0] S_AXI_RDATA;    // AXI Read Data

wire [1:0] S_AXI_RRESP;     // AXI Read Data Response


reg awvalid_seen, wvalid_seen;


reg [31:0] RETURN_DATA;


initial

begin

  S_AXI_ACLK = 1'b0;

end


initial

begin

  S_AXI_ARESETN = 1'b0;

  #125 S_AXI_ARESETN = 1'b1; // Assert reset for 125ns

end


always

  #50 S_AXI_ACLK = ~S_AXI_ACLK;



initial
begin                           // Intialize signals
//S_AXI_AWADDR = 32'hDEADBEEF;
S_AXI_AWADDR = {C_S_AXI_ADDR_WIDTH{1'b0}}; // default / invalid address within width
S_AXI_AWVALID = 1'b0;
//S_AXI_WDATA = 32'hBEEFDEAD;
S_AXI_WDATA = {C_S_AXI_DATA_WIDTH{1'b0}};
S_AXI_WVALID = 1'b0;
S_AXI_BREADY = 1'b1;
S_AXI_ARVALID = 1'b0;
//S_AXI_ARADDR  = 32'hDEADBEEF;
S_AXI_ARADDR  = {C_S_AXI_ADDR_WIDTH{1'b0}};
S_AXI_RREADY  = 1'b0;
S_AXI_WSTRB = {(C_S_AXI_DATA_WIDTH/8){1'b0}}; // default: no bytes valid
core_write_reg(0,32'h55555555);         // Write a register
core_read_reg (0,RETURN_DATA);          // Read from Control Reg
core_write_reg(4,32'hAAAAAAAA);         // Write a register
core_read_reg (4,RETURN_DATA);          // Read from Control Reg
end


// Instantiate testfile here

axilite_slave uut (

.S_AXI_ACLK(S_AXI_ACLK),                // AXI Clock

.S_AXI_ARESETN(S_AXI_ARESETN),          // AXI Reset

.S_AXI_AWREADY(S_AXI_AWREADY),          // AXI Write Address Bus Ready

.S_AXI_AWVALID(S_AXI_AWVALID),          // AXI Write Address Valid

//.S_AXI_AWPROT(3'b0),

.S_AXI_AWADDR(S_AXI_AWADDR),            // AXI Write Address

.S_AXI_WSTRB(S_AXI_WSTRB),              // AXI Write Strobe

.S_AXI_WDATA(S_AXI_WDATA),              // AXI Write Data

.S_AXI_WVALID(S_AXI_WVALID),            // AXI Write Data Valid

.S_AXI_WREADY(S_AXI_WREADY),            // AXI Write Data Bus Ready

.S_AXI_BREADY(S_AXI_BREADY),            // AXI Write Response Ready

.S_AXI_BRESP(S_AXI_BRESP),              // AXI Write Response

.S_AXI_BVALID(S_AXI_BVALID),            // AXI Write Response Valid

.S_AXI_ARREADY(S_AXI_ARREADY),          // AXI Read Address Bus Ready

.S_AXI_ARVALID(S_AXI_ARVALID),          // AXI Read Address Valid

.S_AXI_ARADDR(S_AXI_ARADDR),            // AXI Read Address

//.S_AXI_ARPROT(3'b0),

.S_AXI_RDATA(S_AXI_RDATA),              // AXI Read Data

.S_AXI_RVALID(S_AXI_RVALID),            // AXI Read Data Valid

.S_AXI_RREADY(S_AXI_RREADY),            // AXI Read Data Bus Ready

.S_AXI_RRESP(S_AXI_RRESP)               // AXI Read Data Response

);


   // AXI4-Lite task to write core registers

   task core_write_reg;

      input [C_S_AXI_ADDR_WIDTH-1:0] addr;

      input [C_S_AXI_DATA_WIDTH-1:0] data;

      begin

         $display("Write reg [%8h] = %8h",addr,data);         

         @(negedge S_AXI_ACLK);

         S_AXI_AWADDR = addr; // Set write address

         S_AXI_AWVALID = 1; // Assert AWVALID

S_AXI_WDATA = data;        // Set write data

         S_AXI_WSTRB = 4'b1111;                 // All bytes valid

S_AXI_WVALID = 1; // Assert WVALID

         awvalid_seen = 0;

         wvalid_seen = 0;

while (!awvalid_seen || !wvalid_seen) begin // Until both AWREADY and WREADY are asserted on a rising edge:

@(posedge S_AXI_ACLK);

if (S_AXI_AWREADY) begin // If AWREADY is asserted,

S_AXI_AWVALID = 0; // deassert AWVALID,

                awvalid_seen = 1;

end

if (S_AXI_WREADY) begin // If WREADY is asserted,

S_AXI_WVALID = 0; // deassert WVALID,

                wvalid_seen = 1;

end

end

         @(negedge S_AXI_ACLK); // Done, all signals to their defaults

         S_AXI_AWADDR = 32'hDEADBEEF;

S_AXI_WDATA = 32'hBEEFDEAD;

         S_AXI_WSTRB = 4'b0000;                 // All bytes valid

S_AXI_AWVALID = 0;

S_AXI_WVALID = 0;

         @(negedge S_AXI_ACLK);

      end

   endtask


   //  AXI4-Lite task to read core registers

   task core_read_reg;

      input [C_S_AXI_ADDR_WIDTH-1:0] addr;

      output [C_S_AXI_DATA_WIDTH-1:0] data;

      begin

         @(negedge S_AXI_ACLK);

         S_AXI_ARADDR = addr; // Set read address

         S_AXI_ARVALID = 1;    // Assert ARVALID

         S_AXI_RREADY = 0;          // Keep RREADY deasserted


         @(negedge S_AXI_ACLK);

         while (!S_AXI_ARREADY) // Wait for ARREADY to assert,

           @(negedge S_AXI_ACLK);

         

         S_AXI_RREADY = 1; // Now assert RREADY

         

         while (!S_AXI_RVALID) // Wait for RVALID to be asserted on a rising edge

           @(posedge S_AXI_ACLK);

         @(negedge S_AXI_ACLK);          // Then on next falling edge,

         data = S_AXI_RDATA; // output read result,

         S_AXI_ARVALID = 0; // then deassert ARVALID,

S_AXI_ARADDR = 32'hDEADBEEF; // and remove read address

         S_AXI_RREADY = 0; // and deassert RREADY

         

         @(negedge S_AXI_ACLK);                 // Done, all signals to their defaults

S_AXI_ARADDR = 32'hDEADBEEF;

S_AXI_ARVALID = 0;

S_AXI_RREADY = 0;

         $display(" Read reg  [%8h] = %8h",addr,data); 

      end

   endtask


   endmodule


