`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/15 09:21:37

//////////////////////////////////////////////////////////////////////////////////


module clock_divider(
    input wire clk_100mhz,
    input wire reset,
    output reg clk_1hz
    );
    
    reg [4:0] counter;
    localparam COUNT_MAX = 10 - 1 ;
    
    always @(posedge clk_100mhz or posedge reset) begin
        if(reset) begin
            counter <= 0;
            clk_1hz <= 1'b0;
        end else begin
            if( counter == COUNT_MAX) begin
                counter <= 0;
                clk_1hz <= ~clk_1hz;
            end else begin
                counter <= counter + 1;
            end
        end
    end
endmodule
