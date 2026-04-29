`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/03 12:48:06

//////////////////////////////////////////////////////////////////////////////////


module paralaccess_register_tb;

    parameter N = 4;

    reg clk;
    reg SI;
    reg [N-1:0] I;
    reg load;
    reg reset_n;

    wire [N-1:0] Q;
    wire SO;

    // DUT
    paralaccess_register #(N) uut (
        .clk(clk),
        .SI(SI),
        .I(I),
        .load(load),
        .reset_n(reset_n),
        .Q(Q),
        .SO(SO)
    );

    // 클럭 (10ns 주기)
    always #5 clk = ~clk;

    initial begin
        // 초기값
        clk = 0;
        reset_n = 0;
        load = 0;
        SI = 0;
        I = 0;

        //  reset 해제
        #10 reset_n = 1;

        // 병렬 입력 테스트
        #10 load = 1;
            I = 4'b1011;
        #10 load = 0;

        // shift 동작 (SI로 데이터 넣기)
        #10 SI = 1;
        #10 SI = 0;
        #10 SI = 1;
        #10 SI = 1;

        // 다시 병렬 입력
        #10 load = 1;
            I = 4'b1100;
        #10 load = 0;

        // shift 계속
        #10 SI = 0;
        #10 SI = 0;
        #10 SI = 1;

        // reset 다시 확인
        #10 reset_n = 0;
        #10 reset_n = 1;

        #50 $finish;
    end

endmodule
