`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/01 15:16:14

//////////////////////////////////////////////////////////////////////////////////

module mealy_1011(
    input clk, input reset_n, input x,
    output y, output reg [1:0] state_reg
    );

    reg [1:0] state_next;

    localparam s0 = 2'b00, 
               s1 = 2'b01, 
               s2 = 2'b10, 
               s3 = 2'b11;

    always @(posedge clk, negedge reset_n) begin
        if(~reset_n)
            state_reg <= s0;
        else
            state_reg <= state_next;
    end

    always @(state_reg or x) begin
        case(state_reg)
            s0 : if(x)  state_next = s1;
                 else   state_next = s0;

            s1 : if(x)  state_next = s1;
                 else   state_next = s2;

            s2 : if(x)  state_next = s3;
                 else   state_next = s2;

            s3 : if(x)  state_next = s2;
                 else   state_next = s0;

            default : state_next = s0;
        endcase
    end

    assign y = (state_reg == s2 && x);

endmodule

/*
module mealy_1011(
    input clk, input reset_n, input x,
    output y, output reg [1:0] state_reg
    );

    reg [1:0] state_next;

    localparam s0 = 2'b00,
               s1 = 2'b01,
               s2 = 2'b10,
               s3 = 2'b11;

    always @(posedge clk or negedge reset_n) begin
        if(~reset_n)
            state_reg <= s0;
        else
            state_reg <= state_next;
    end

    always @(*) begin
        case(state_reg)
            s0: state_next = (x) ? s1 : s0;
            s1: state_next = (x) ? s1 : s2;
            s2: state_next = (x) ? s3 : s2;
            s3: state_next = (x) ? s2 : s0;
            default: state_next = s0;
        endcase
    end

    // 출력 (Mealy → 상태 + 입력)
    assign y = (state_reg == s2 && x);

endmodule
*/
