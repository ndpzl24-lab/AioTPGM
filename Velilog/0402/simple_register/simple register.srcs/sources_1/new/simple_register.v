`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/02 12:25:19

//////////////////////////////////////////////////////////////////////////////////


module simple_register( //PIPO
    input CLK, CLRN,
    input [3:0] D,
    output reg [3:0] Q );
    
    always @(posedge CLRN or posedge CLK)
    begin
if(CLRN)
    Q <= 4'b0000;
    else
    Q <= D;
    end
    
endmodule

/*
module simple_register
#(parameter N = 4)(
    input clk,
    input [N-1:0] I,
    output [N-1:0] Q   );
    reg [N-1:0] Q_reg, Q_next;
    
    //상태 저장 (순차회로)
    always@(posedge clk)
    begin
        Q_reg <= Q_next;
    end

    //다음 상태 결정 (조합회로)
    always@(*)
    begin
        Q_next = I;
    end
    assign Q = Q_reg;
endmodule
*/
