`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/02 15:22:45

//////////////////////////////////////////////////////////////////////////////////

module universal_tb;

parameter N = 4;

reg clk, reset_n;
reg [N-1:0] I;
reg [1:0] s;
reg MSB_in, LSB_in;
wire [N-1:0] Q;


universal_register #(N) dut(
    .clk(clk),
    .reset_n(reset_n),
    .I(I),
    .s(s),
    .MSB_in(MSB_in),
    .LSB_in(LSB_in),
    .Q(Q)
);

initial begin
    clk = 0;
    repeat(40) #20 clk = ~clk;
end

initial begin
    reset_n = 1;
    #2 reset_n = 0;
    #2 reset_n = 1;
end

initial begin
    I = 0111;   
    #250 I = 1101;
end

initial begin
    
    #5  s = 2'b11;  // load
    #40 s = 2'b01;  // shift right
    #40 s = 2'b01;
    #40 s = 2'b01;
    #40 s = 2'b10;  // shift left
    #40 s = 2'b10;
    #40 s = 2'b00;  // hold
    #40 s = 2'b10;
    #40 s = 2'b10;
end

initial begin
    MSB_in = 0;
    LSB_in = 0;
end

endmodule