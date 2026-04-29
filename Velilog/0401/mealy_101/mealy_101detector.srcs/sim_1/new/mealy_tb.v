`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/01 14:52:17

//////////////////////////////////////////////////////////////////////////////////

module tb_mealy_101detector;

    reg clk;
    reg reset_n;
    reg x;
    wire y;
    wire [1:0] state_reg;

    // DUT (Device Under Test)
    mealy_101detector uut (
        .clk(clk),
        .reset_n(reset_n),
        .x(x),
        .y(y),
        .state_reg(state_reg)
    );

    // 클럭 생성 (10ns 주기)
    always #5 clk = ~clk;

    initial begin
        // 초기값
        clk = 0;
        reset_n = 0;
        x = 0;

        // 리셋 해제
        #10 reset_n = 1;

        // 입력 시퀀스: 1 0 1 패턴 포함
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;  // 여기서 y = 1 나와야 함

        #10 x = 1;
        #10 x = 0;
        #10 x = 1;  // 또 detect

        #10 x = 0;
        #10 x = 1;
        #10 x = 0;
        #10 x = 1;  // 또 detect

        #20 $stop;
    end

    // 모니터 출력
    initial begin
        $monitor("time=%0t | x=%b | state=%b | y=%b", $time, x, state_reg, y);
    end

endmodule
