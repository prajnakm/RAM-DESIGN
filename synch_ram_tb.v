`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2026 13:44:26
// Design Name: 
// Module Name: synch_ram_tb
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

module synch_ram_tb;

reg clk;
reg we;
reg [2:0] addr;
reg [7:0] din;
wire [7:0] dout;

synch_ram uut(
    .clk(clk),
    .we(we),
    .addr(addr),
    .din(din),
    .dout(dout)
);

always #5 clk = ~clk;

initial begin

    clk = 0;

    we = 1;
    addr = 3'b001;
    din = 8'b10101010;
    #10;

    we = 0;
    addr = 3'b001;
    #10;

    $finish;

end

endmodule
