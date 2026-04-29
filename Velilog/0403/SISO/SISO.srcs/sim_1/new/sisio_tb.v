`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/03 10:31:11

//////////////////////////////////////////////////////////////////////////////////

module siso_tb;

    reg CLK;
    reg CLRN;
    reg DATA_IN;
    wire SERIAL_OUT;

    // 내부 Q 관찰용
    wire [3:0] Q;

    // DUT 연결
    siso uut (
        .CLK(CLK),
        .CLRN(CLRN),
        .DATA_IN(DATA_IN),
        .SERIAL_OUT(SERIAL_OUT)
    );

    // 내부 Q 보기 (hierarchical)
    assign Q = uut.Q;

    // 클럭 생성 (10ns 주기)
    always #5 CLK = ~CLK;

    initial begin
        CLK = 0;
        CLRN = 0;
        DATA_IN = 0;

        // reset
        #10 CLRN = 1;

        // 시리얼 입력
        #10 DATA_IN = 1;
        #10 DATA_IN = 0;
        #10 DATA_IN = 1;
        #10 DATA_IN = 1;
        #10 DATA_IN = 0;
        #10 DATA_IN = 1;

        #60 $finish;
    end

endmodule

/*
module siso_tb;

    reg CLK;
    reg CLRN;
    reg DATA_IN;
    wire OUT;

    // 디버깅용 (내부 Q 보기)
    wire [3:0] Q;

    // DUT
    siso uut (
        .CLK(CLK),
        .CLRN(CLRN),
        .DATA_IN(DATA_IN),
        .OUT(OUT)
    );

    // 내부 신호 연결 (hierarchical reference)
    assign Q = uut.Q;

    // 클럭 생성 (10ns 주기)
    always #5 CLK = ~CLK;

    initial begin
        CLK = 0;
        CLRN = 0;
        DATA_IN = 0;

        // reset
        #10 CLRN = 1;

        //  1000 만들기 위한 입력
        // 1 → 0 → 0 → 0
        #10 DATA_IN = 1;
        #10 DATA_IN = 0;
        #10 DATA_IN = 0;
        #10 DATA_IN = 0;

        // 추가 데이터 (동작 확인용)
        #10 DATA_IN = 1;
        #10 DATA_IN = 1;

        #50 $finish;
    end

endmodule
*/
/*
`timescale 1ns / 1ps

module siso_tb;

    reg CLK;
    reg RESETN;
    reg DATA_IN;
    wire SERIAL_OUT;
    wire [3:0] Q;  

    siso uut (
    .CLK(CLK),
    .RESETN(RESETN),
    .DATA_IN(DATA_IN),
    .SERIAL_OUT(SERIAL_OUT),
    .Q(Q)   
);

    always #5 CLK = ~CLK;

    initial begin
        CLK = 0;
        RESETN = 0;
        DATA_IN = 0;

        #10 RESETN = 1;

        #10 DATA_IN = 1;
        #10 DATA_IN = 0;
        #10 DATA_IN = 1;
        #10 DATA_IN = 1;
        #10 DATA_IN = 0;
        #10 DATA_IN = 1;

        #50 $finish;
    end

endmodule
*/

/*
module siso_tb;

    reg CLK;
    reg CLRN;
    reg DIN;
    wire Q;

    // DUT (Device Under Test)
    siso uut (
        .CLK(CLK),
        .CLRN(CLRN),
        .DIN(DIN),
        .Q(Q)
    );

    // 클럭 생성 (10ns 주기)
    always #5 CLK = ~CLK;

    initial begin
        // 초기값
        CLK = 0;
        CLRN = 0;
        DIN = 0;

        // 리셋
        #10 CLRN = 1;

        // 데이터 입력 (Serial Input)
        #10 DIN = 1;
        #10 DIN = 0;
        #10 DIN = 1;
        #10 DIN = 1;
        #10 DIN = 0;
        #10 DIN = 1;

        #50 $finish;
    end

endmodule
*/