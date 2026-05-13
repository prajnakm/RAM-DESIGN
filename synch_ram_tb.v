`timescale 1ns / 1ps
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


//The synch_ram_tb.v file contains the testbench code for verifying the synchronous RAM module.
//The testbench generates input signals such as clk, we, addr, and din for simulation.
//The output signal dout is declared as a wire to observe the RAM output data.
//The RAM module is instantiated as uut (Unit Under Test).
//The always #5 clk = ~clk statement generates a clock signal that toggles every 5 nanoseconds.
//The initial block is used to apply input values during simulation.
//The clock signal is initialized to 0 at the beginning of simulation.
//The write enable signal we is set to 1 to perform the write operation.
//The address input is set to 001 to select a memory location.
//The input data 10101010 is written into the selected memory address.
//The #10 delay is used to provide time for the write operation to complete.
//The write enable signal is then changed to 0 to perform the read operation.
//The same address location is selected again to read the stored data.
//The RAM outputs the stored data through dout during the read operation.
//The $finish statement is used to stop the simulation after all operations are completed.
//This testbench verifies correct synchronous RAM read and write functionality using waveform analysis.
