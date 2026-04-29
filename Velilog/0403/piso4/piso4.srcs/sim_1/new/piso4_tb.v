`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/03 11:50:32

//////////////////////////////////////////////////////////////////////////////////

module piso4_tb;

    reg CLK;
    reg SH_LDN;
    reg [3:0] D;
    wire Q;

    //  내부 BUFF 확인용
    wire [3:0] BUFF;

    // DUT 연결
    piso4 uut (
        .CLK(CLK),
        .SH_LDN(SH_LDN),
        .D(D),
        .Q(Q)
    );

    //  내부 신호 접근 (hierarchical)
    assign BUFF = uut.BUFF;

    // 클럭 생성 (10ns 주기)
    always #5 CLK = ~CLK;

    initial begin
        // 초기값
        CLK = 0;
        SH_LDN = 1;
        D = 4'b0000;

        //  1. 병렬 데이터 로드
        #10 SH_LDN = 0;   // load
            D = 4'b1011;  // 넣을 데이터
        #10 SH_LDN = 1;   // shift 시작

        //  2. shift 진행
        #10;
        #10;
        #10;
        #10;

        //  3. 다른 값 테스트
        #10 SH_LDN = 0;
            D = 4'b1100;
        #10 SH_LDN = 1;

        #10;
        #10;
        #10;
        #10;

        #50 $finish;
    end

endmodule
/*
module piso_tb;

    reg CLK;
    reg SH_LDN;
    reg [3:0] D;
    wire Q;

    wire [3:0] BUFF;

    piso4 uut (
        .CLK(CLK),
        .SH_LDN(SH_LDN),
        .D(D),
        .Q(Q)
    );

    assign BUFF = uut.BUFF;

    always #5 CLK = ~CLK;

    initial begin
        CLK = 0;
        SH_LDN = 1;
        D = 4'b0000;

        #10 SH_LDN = 0;
            D = 4'b1011;
        #10 SH_LDN = 1;

        #10;
        #10;
        #10;
        #10;

        #10 SH_LDN = 0;
            D = 4'b1100;
        #10 SH_LDN = 1;

        #40 $finish;
    end

endmodule
*/