`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/02 12:29:53

//////////////////////////////////////////////////////////////////////////////////

module simple_register_tb;

    parameter N = 4;

    reg clk;
    reg CLRN;
    reg [N-1:0] I;
    wire [N-1:0] Q;

    simple_register dut(
        .CLK(clk),
        .CLRN(CLRN),
        .D(I),
        .Q(Q)
    );

    // 클럭 생성
    always #5 clk = ~clk;

    initial begin
        clk = 0;
        CLRN = 0;
        I = 0;

        $monitor("time=%0t | CLRN=%b I=%b Q=%b",
                  $time, CLRN, I, Q);

        // 리셋 먼저
        #3 CLRN = 1;   // reset
        #10 CLRN = 0;  // release

        // 데이터 입력
        #7  I = 4'b0001;
        #10 I = 4'b0011;
        #10 I = 4'b0101;
        #10 I = 4'b1111;
        #10 I = 4'b1010;

        // 중간에 리셋 한 번 더
        #5 CLRN = 1;
        #10 CLRN = 0;

        #20 $finish;
    end

endmodule
/*
module tb_simple_register; //PIPO

    reg CLK;
    reg CLRN;
    reg [3:0] D;
    wire [3:0] Q;

    // DUT 연결
    simple_register uut (
        .CLK(CLK),
        .CLRN(CLRN),
        .D(D),
        .Q(Q)
    );

    // 클럭 생성 (10ns 주기)
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // 테스트 시나리오
    initial begin
        // 초기값
        CLRN = 0;
        D = 4'b0000;

        $monitor("time=%0t | CLRN=%b D=%b Q=%b",
                  $time, CLRN, D, Q);

        // 리셋 동작 확인
        #3  CLRN = 1;   // reset 활성 → Q=0
        #10 CLRN = 0;   // reset 해제

        // 데이터 입력 (클럭 기준으로 확인)
        @(posedge CLK);
        D = 4'b0001;

        @(posedge CLK);
        D = 4'b0010;

        @(posedge CLK);
        D = 4'b0100;

        @(posedge CLK);
        D = 4'b1000;

        @(posedge CLK);
        D = 4'b1111;

        // 중간에 리셋 다시
        #3 CLRN = 1;    // 즉시 Q=0 확인
        #10 CLRN = 0;

        @(posedge CLK);
        D = 4'b1010;

        #20 $finish;
    end

endmodule
*/

/*
module simple_register_tb;
    parameter N = 4;
    reg clk;
    reg [N-1:0] I;
    wire [N-1:0] Q;
    simple_register #(N) dut(
    .clk(clk),
    .I(I),
    .Q(Q)    );
always #5 clk = ~clk;
initial begin
    clk = 0;    I = 0;
    #7 I = 4'b0001;
    #10 I = 4'b0011;
    #10 I = 4'b0101;
    #10 I = 4'b1111;
    #10 I = 4'b1010;
    #20 $finish;
 end
endmodule
*/
