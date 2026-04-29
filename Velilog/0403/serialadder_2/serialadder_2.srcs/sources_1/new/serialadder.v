`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
 
// Create Date: 2026/04/03 18:23:45

//////////////////////////////////////////////////////////////////////////////////

module serialadder(
    input  clk,rstb,load, [7:0] a, b,
    output [7:0] sum
   );
   wire [7:0] b_in;
 parallel8shift dut1(.clk(clk), .rstb(rstb), .sin(sum_1bit), .din(a), .pout(sum), .load(load));
 parallel8shift dut2(.clk(clk), .rstb(rstb), .sin(1'b0), .din(b), .pout(b_in), .load(load));  
 register_1     dut3(.clk(clk), .rstb(rstb), .din(cout), .dout(cin));  
 full_adder     dut4(.a(sum[0]), .b(b_in[0]), .ci(cin), .co(cout), .s(sum_1bit));  
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
 input a,b,ci,
 output s,co);
 assign co = a&b | b&ci | ci &a;
 assign s = a^b^ci;
 endmodule 



