`timescale 1ns / 1ps

module t_top_asym_blink;

wire led;

bd_asym_blink_wrapper uut (
.led(led)
);

endmodule
