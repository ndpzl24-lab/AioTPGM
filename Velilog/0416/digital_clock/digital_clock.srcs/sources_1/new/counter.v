`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/16 12:30:09
// Module Name: counter

//////////////////////////////////////////////////////////////////////////////////


module Counter(
    input inclk, reset,
    output reg [1:0] out_counter
    );
    
    always @(posedge inclk, posedge reset) begin
        if(reset) begin
            out_counter <= 0; 
        end else begin
            out_counter <= out_counter + 1;
        end
    end
endmodule