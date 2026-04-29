`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
 
// Create Date: 2026/04/03 18:26:18

//////////////////////////////////////////////////////////////////////////////////

module serialadder_tb;
  reg  clk, rstb, load;
  reg  [7:0] a,b;
  wire [7:0] sum;

serialadder dut( .clk(clk), .rstb(rstb), .load(load), .a(a), .b(b), .sum(sum));

initial clk = 0;
always #5 clk = ~clk;

initial begin
#0 a[7:0] = 8'h29; b[7:0] = 8'h35; rstb = 0; load = 0;
#10 rstb = 1;
#10 load = 1;
#10 load =0;
#100 load = 1; a=8'h03; b=8'h89;
#10 load = 0 ;
#200 $stop;
end
endmodule   

 
