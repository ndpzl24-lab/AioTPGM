`timescale 1ns / 1ps

module tb_seq_10110;

    reg clk;
    reg reset_n;
    reg x;

    wire y_mealy;
    wire y_moore;

    wire [2:0] state_moore;
    wire [1:0] state_mealy;

    mealy_10110 U1 (
        .clk(clk),
        .reset_n(reset_n),
        .x(x),
        .y(y_mealy),
        .state_reg(state_mealy)
    );

    moore_10110 U2 (
        .clk(clk),
        .reset_n(reset_n),
        .x(x),
        .y(y_moore),
        .state_reg(state_moore)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset_n = 0;
        x = 0;

        #12 reset_n = 1;

        @(negedge clk) x = 1;
        @(negedge clk) x = 0;
        @(negedge clk) x = 1;
        @(negedge clk) x = 1;
        @(negedge clk) x = 0;

        #50 $finish;
    end

endmodule