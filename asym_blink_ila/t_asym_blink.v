`timescale 1ns / 1ps

module t_asym_blink;

reg clk;
wire led;
reg [20:0] count;

initial
begin
  clk = 1'b0;
  count = 21'b0;
end

always
  #50 clk = ~clk;
  
always @(posedge clk)
  count <= count + 1;

asym_blink uut (
.clk(clk),
.count(count),
.led(led)
);

endmodule