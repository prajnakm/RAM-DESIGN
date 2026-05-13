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

//The synch_ram.v file contains the Verilog code for a simple synchronous RAM.
//The module uses a clock signal (clk), write enable signal (we),3-bit address input (addr), 8-bit data input (din),and 8-bit data output (dout).
//A memory array is used to create 8 memory locations,where each location stores 8-bit data.
//The always @(posedge clk) block indicates synchronous operation,meaning all read and write operations occur only on the positive edge of the clock signal.
//When the write enable signal (we) is high,the input data (din) is written into the memory location specified by addr.
//When the write enable signal (we) is low,the RAM reads the data stored in the selected memory locationand sends it to the output (dout).
//Non-blocking assignment operator (<=) is used because the design is sequential and clock-driven.
//The design demonstrates basic RAM functionality including memory storage, memory retrieval, address-based access,and synchronous data transfer using Verilog HDL.
