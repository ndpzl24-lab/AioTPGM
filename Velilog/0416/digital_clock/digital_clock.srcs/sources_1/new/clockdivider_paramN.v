`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/16 12:26:24 
// Module Name: clockdivider_paramN

//////////////////////////////////////////////////////////////////////////////////


module clockdivider_paramN #(parameter N = 100_000)
(
    input clk,
    input reset,
    output reg clk_out
);

    reg [31:0] cnt;

always @(posedge clk or posedge reset) begin
    if(reset) begin
        cnt <= 0;
        clk_out <= 0;
    end else begin
        if(cnt == (N/2 -1)) begin
            cnt <= 0;
            clk_out <= ~clk_out;   // ⭐ 토글!
        end else begin
            cnt <= cnt + 1;
        end
    end
end

endmodule