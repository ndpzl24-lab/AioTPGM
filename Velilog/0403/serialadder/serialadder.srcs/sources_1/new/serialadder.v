`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/03 16:09:08

//////////////////////////////////////////////////////////////////////////////////

module serialadder(
    input  clk, rstb, load,
    input  [7:0] a, b,
    output [7:0] sum_shift,
    output [7:0] sum_progress
);

wire [7:0] sum;
wire [7:0] b_in;
wire sum_1bit, cout, cin;

// shift registers
parallel8shift dut1(
    .clk(clk), .rstb(rstb), .sin(sum_1bit),
    .din(a), .pout(sum), .load(load)
);

parallel8shift dut2(
    .clk(clk), .rstb(rstb), .sin(1'b0),
    .din(b), .pout(b_in), .load(load)
);

// carry register (수정됨)
register_1 dut3(
    .clk(clk), .rstb(rstb),
    .din(cout), .dout(cin)
);

// full adder
full_adder dut4(
    .a(sum[0]), .b(b_in[0]), .cin(cin),
    .cout(cout), .s(sum_1bit)
);

assign sum_shift = sum;

// ⭐ 누적 결과 레지스터
reg [7:0] result_progress;

always @(posedge clk or negedge rstb) begin
    if(!rstb)
        result_progress <= 8'b0;
    else if(load)
        result_progress <= 8'b0;
    else
        result_progress <= {sum_1bit, result_progress[7:1]};
end

assign sum_progress = result_progress;

endmodule

/*
module serialadder(
    input  clk,rstb,load, [7:0] a, b,
    output [7:0] sum
   );
   wire [7:0] b_in;
 parallel8shift dut1(.clk(clk), .rstb(rstb), .sin(sum_1bit), .din(a), .pout(sum), .load(load));
 parallel8shift dut2(.clk(clk), .rstb(rstb), .sin(1'b0), .din(b), .pout(b_in), .load(load));  
 register_1     dut3(.clk(clk), .rstb(rstb), .din(cout), .dout(cin));  
 full_adder     dut4(.a(sum[0]), .b(b_in[0]), .cin(cin), .cout(cout), .s(sum_1bit));  
 endmodule

module parallel8shift(
input clk, 
input rstb,
input load ,
input sin,
input [7:0]din,
output reg [7:0] pout    );
always@(posedge clk or negedge rstb) begin

    if (!rstb) pout[7:0] <= 8'b0;
    else if(load) pout[7:0] <= din[7:0];
    else pout[7:0] <= {sin, pout[7:1]};
end 
endmodule
 
module register_1(
    input clk, rstb,
    input din,
    output reg dout);
  always@(posedge clk, negedge rstb)
  //  dout  <= !rstb? 1'b0: din;
  dout  <=  din;
 endmodule     
 
 module full_adder(
 input a,b,cin,
 output s,cout);
 assign cout = a&b | b&cin | cin &a;
 assign s = a^b^cin;
 endmodule 

*/


