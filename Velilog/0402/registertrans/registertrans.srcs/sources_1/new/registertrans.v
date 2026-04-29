`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/02 10:19:00

//////////////////////////////////////////////////////////////////////////////////
/*
module registertrans(
    input [3:0] DATA_IN,
    input CLK1,
    output reg [3:0] A, B
);

always @(posedge CLK1) begin
    A <= DATA_IN;
    B <= A;
end

endmodule
*/


module registertrans(
    input [3:0] DATA_IN,
    input CLK1,
    output reg [3:0]A,B
    );
    
always @(posedge CLK1)
begin
    A <= DATA_IN;
    B <= A;
    end
/*always @(posedge CLK1)
begin
B <= A;
end*/
endmodule
