`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/15 16:19:07

//////////////////////////////////////////////////////////////////////////////////


module edge_detect (    input clk,    input rst,    input sig,    output reg pulse  );
reg prev;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        prev <= 0;        pulse <= 0;
    end else begin
        pulse <= sig & ~prev;        prev <= sig;
    end
end
endmodule




