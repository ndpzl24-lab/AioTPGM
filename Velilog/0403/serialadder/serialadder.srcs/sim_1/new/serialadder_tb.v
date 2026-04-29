`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/03 16:11:42

//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module serialadder_tb;

reg clk, rstb, load;
reg [7:0] a, b;

wire [7:0] sum_shift;
wire [7:0] sum_progress;
wire done;

// DUT
serialadder_top dut(
    .clk(clk),
    .rstb(rstb),
    .load(load),
    .a(a),
    .b(b),
    .sum_shift(sum_shift),
    .sum_progress(sum_progress),
    .done(done)
);

// clock
initial clk = 0;
always #5 clk = ~clk;

// stimulus
initial begin
    // 초기값
    a = 8'h29;  // 41
    b = 8'h35;  // 53
    rstb = 0;
    load = 0;

    #10 rstb = 1;

    // 첫 번째 연산
    #10 load = 1;
    #10 load = 0;

    // 충분히 8클럭 기다림
    #100;

    // 두 번째 연산
    #10 a = 8'h03;
         b = 8'h89;

    #10 load = 1;
    #10 load = 0;

    #100;

    $stop;
end

endmodule
/*
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
*/
 
