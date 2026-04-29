`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/01 15:22:17

//////////////////////////////////////////////////////////////////////////////////

module tb_1011;

    reg clk;
    reg reset_n;
    reg x;

    wire y_moore;
    wire y_mealy;

    wire [2:0] state_moore;
    wire [1:0] state_mealy;

    // Moore
    moore_1011 uut_moore (
        .clk(clk),
        .reset_n(reset_n),
        .x(x),
        .y(y_moore),
        .state_reg(state_moore)
    );

    // Mealy
    mealy_1011 uut_mealy (
        .clk(clk),
        .reset_n(reset_n),
        .x(x),
        .y(y_mealy),
        .state_reg(state_mealy)
    );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        reset_n = 0;
        x = 0;

        #10 reset_n = 1;

        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10 x = 1;

        #10 x = 0;
        #10 x = 1;
        #10 x = 1;

        #10 x = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;
        #10 x = 1;

        #20 $stop;
    end

    initial begin
        $monitor("t=%0t | x=%b | Moore(y=%b, s=%b) | Mealy(y=%b, s=%b)",
                  $time, x, y_moore, state_moore, y_mealy, state_mealy);
    end

endmodule

