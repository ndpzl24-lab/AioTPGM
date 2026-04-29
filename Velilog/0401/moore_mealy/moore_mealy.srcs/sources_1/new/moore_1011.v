`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/01 15:16:14

//////////////////////////////////////////////////////////////////////////////////

module moore_1011(
    input clk, input reset_n, input x,
    output y, output reg [2:0] state_reg   // ← 2비트 → 3비트로만 수정
    );

    reg [2:0] state_next;

    localparam s0 = 3'b000, 
               s1 = 3'b001, 
               s2 = 3'b010, 
               s3 = 3'b011, 
               s4 = 3'b100;

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
                 else   state_next = s0;

            s3 : if(x)  state_next = s4;
                 else   state_next = s1;

            s4 : if(x)  state_next = s1;
                 else   state_next = s2;

            default : state_next = s0;
        endcase
    end

    assign y = (state_reg == s4);

endmodule


/*
module moore_1011(
    input clk, input reset_n, input x,
    output y, output reg [2:0] state_reg
    );

    reg [2:0] state_next;

    localparam s0 = 3'b000,
               s1 = 3'b001,
               s2 = 3'b010,
               s3 = 3'b011,
               s4 = 3'b100;

    // 상태 레지스터
    always @(posedge clk or negedge reset_n) begin
        if(~reset_n)
            state_reg <= s0;
        else
            state_reg <= state_next;
    end

    // 다음 상태
    always @(*) begin
        case(state_reg)
            s0: state_next = (x) ? s1 : s0;
            s1: state_next = (x) ? s1 : s2;
            s2: state_next = (x) ? s3 : s0;
            s3: state_next = (x) ? s4 : s1;
            s4: state_next = (x) ? s1 : s2;
            default: state_next = s0;
        endcase
    end

    assign y = (state_reg == s4);

endmodule
*/