`timescale 1ns / 1ps
module synch_ram(
    input clk,
    input we,
    input [2:0] addr,
    input [7:0] din,
    output reg [7:0] dout
);

reg [7:0] memory [7:0];

always @(posedge clk)
begin
    if(we)
        memory[addr] <= din;
    else
        dout <= memory[addr];
end

endmodule

//
