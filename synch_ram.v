`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2026 13:36:36
// Design Name: 
// Module Name: synch_ram
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


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
