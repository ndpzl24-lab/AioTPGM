`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/29 11:59:58

// Module Name: counter

//////////////////////////////////////////////////////////////////////////////////


module counter(
    input inclk,
    input reset,
    output reg [3:0] out_counter
    );
    
    always @(posedge inclk, negedge reset) begin
        if(~reset) begin
            out_counter <= 0;
        end else begin
            out_counter <= out_counter + 1;
        end
    end
        
endmodule
