`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/02 15:22:45

//////////////////////////////////////////////////////////////////////////////////


module universal_register
#(parameter N =4)(
    input clk, reset_n,
    input [N-1:0] I,
    input [1:0] s,
    input MSB_in, LSB_in,
    output [N-1:0] Q 
);

reg [N-1:0] Q_reg, Q_next;

always @(posedge clk or negedge reset_n)
begin
    if(!reset_n)
        Q_reg <= {N{1'b0}};   // 수정
    else
        Q_reg <= Q_next;
end

always @(Q_reg, MSB_in, LSB_in, I, s)
begin
    Q_next = Q_reg;
    case(s)
        2'b00: Q_next = Q_reg;                              // hold
        2'b01: Q_next = {MSB_in, Q_reg[N-1:1]};             // shift right
        2'b10: Q_next = {Q_reg[2:0], LSB_in};               // shift left
        2'b11: Q_next = I;                                  // load
    endcase
end

assign Q = Q_reg;

endmodule