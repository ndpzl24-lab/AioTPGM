`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/02 09:39:39

//////////////////////////////////////////////////////////////////////////////////

module tb_rwmoore1;

    reg clk;
    reg rstn;
    reg go;
    reg ws;

    wire rd;
    wire ds;
    wire [1:0] state;
    wire [1:0] next_state;

    // DUT 연결
    rwmoore1 uut (
        .clk(clk),
        .rstn(rstn),
        .go(go),
        .ws(ws),
        .rd(rd),
        .ds(ds),
        .state(state),
        .next_state(next_state)
    );

    // 클럭 생성 (10ns 주기)
    always #5 clk = ~clk;

    initial begin
        // 초기값
        clk = 0;
        rstn = 0;
        go = 0;
        ws = 1;

        // 리셋
        #10 rstn = 1;

        // [1] idle → read
        #10 go = 1;
        #10 go = 0;

        // [2] read → dly → read 반복 (ws=1)
        #40;

        // [3] dly → done (ws=0)
        ws = 0;
        #20;

        // [4] done → idle
        #20;

        // [5] 다시 한 번 동작 확인
        ws = 1;
        go = 1;
        #10 go = 0;

        #50;

        $finish;
    end


endmodule