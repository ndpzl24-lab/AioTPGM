`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/02 11:23:58

//////////////////////////////////////////////////////////////////////////////////

module shift4(
    input RESETN, DATA_IN, CLK,
    output reg [3:0] Q    );
    always @(posedge RESETN or posedge CLK)
    begin
    
    if(RESETN == 1'b1)
    Q <= 4'b0000;
    else
    begin
    Q[3:1] <= Q[2:0];
    Q[0] <= DATA_IN;
    end
    end 
endmodule

/*
module shift4(
    input RESETN, DATA_IN, CLK,
    output reg [3:0] Q    );
    always @(posedge RESETN or posedge CLK)
    begin
    
    if(RESETN == 1'b1)
    Q <= 4'b0000;
    else
    begin
    Q[2:0] <= Q[3:1];
    Q[3] <= DATA_IN;
    end
    end 
endmodule
*/
