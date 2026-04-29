`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/16 12:26:24 
// Module Name: clockdivider_paramN

//////////////////////////////////////////////////////////////////////////////////


module ClockDevider #(parameter N = 100_000)(
    input clk, reset,
    output reg clk_out
    );
    
    reg [29:0] cnt;
    
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            cnt <= 0;
            clk_out <= 0;
        end else begin
            if(cnt == (N-1)) begin
                cnt <= 0;
                clk_out <= 1;
            end else begin
                cnt <= cnt + 1;
                clk_out <= 0;
            end
        end
    end
endmodule