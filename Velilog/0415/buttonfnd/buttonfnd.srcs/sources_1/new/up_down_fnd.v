`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/15 10:07:55

//////////////////////////////////////////////////////////////////////////////////


module up_down_fnd (
    input clk,
    input rst,
    input btnU,
    input btnD,
    input btnS,   // ? STOP 버튼 추가
    output reg [6:0] fnd,
    output reg [3:0] an
);

// 1. 버튼 동기화
reg [1:0] syncU, syncD, syncS;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        syncU <= 0; 
        syncD <= 0;
        syncS <= 0;
    end else begin
        syncU <= {syncU[0], btnU};
        syncD <= {syncD[0], btnD};
        syncS <= {syncS[0], btnS};
    end
end

// 2. 디바운싱
parameter DEBOUNCE = 1_000_000;

reg [19:0] cntU, cntD, cntS;
reg debU, debD, debS;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        cntU <= 0; debU <= 0;
        cntD <= 0; debD <= 0;
        cntS <= 0; debS <= 0;
    end else begin
        // U
        if (syncU[1] != debU) begin
            if (cntU < DEBOUNCE) cntU <= cntU + 1;
            else begin debU <= syncU[1]; cntU <= 0; end
        end else cntU <= 0;

        // D
        if (syncD[1] != debD) begin
            if (cntD < DEBOUNCE) cntD <= cntD + 1;
            else begin debD <= syncD[1]; cntD <= 0; end
        end else cntD <= 0;

        // S
        if (syncS[1] != debS) begin
            if (cntS < DEBOUNCE) cntS <= cntS + 1;
            else begin debS <= syncS[1]; cntS <= 0; end
        end else cntS <= 0;
    end
end

// 3. 엣지 검출 (pulse)
reg prevU, prevD, prevS;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        prevU <= 0;
        prevD <= 0;
        prevS <= 0;
    end else begin
        prevU <= debU;
        prevD <= debD;
        prevS <= debS;
    end
end

wire pulseU = (prevU) & (~debU);     // negedge일 때(눌렀다가 놨을 때)
wire pulseD = (~prevD) & debD;       // posedge일 때(눌렀을 때)
wire pulseS = (~prevS) & debS;  // ? STOP pulse

// 4. FSM   (2비트면 됨. up down stop만 있으니까)
localparam STOP = 2'b00;
localparam UP   = 2'b01;
localparam DOWN = 2'b10;

reg [1:0] mode;

always @(posedge clk or posedge rst) begin
    if (rst)
        mode <= STOP;
    else begin
        if (pulseS)
            mode <= STOP;   // ? STOP 우선
        else if (pulseU)
            mode <= UP;
        else if (pulseD)
            mode <= DOWN;
    end
end

// 5. 1초 tick
parameter ONE_SEC = 100_000_000;    //1억을 세면 1s

reg [26:0] cnt;
reg tick;

always @(posedge clk or posedge rst) begin
    if (rst) begin
        cnt <= 0;
        tick <= 0;
    end else begin
        if (cnt < ONE_SEC-1) begin
            cnt <= cnt + 1;             //100을 세는 것. 클락의 개념은 아님.
            tick <= 0;
        end else begin
            cnt <= 0;
            tick <= 1;                  // 펄스개념. 100만 됐을 때 tick 에 1을 보낸다.
        end
    end
end

// 6. 카운터
reg [3:0] value;

always @(posedge clk or posedge rst) begin
    if (rst)
        value <= 4'd0;
    else if (tick) begin
        case (mode)
            UP: begin
                if ( value==0 ||value == 9)
                    value <= 1;
                else
                    value <= value + 1;
            end

            DOWN: begin
                if ( value==0 || value == 1)
                    value <= 9;
                else
                    value <= value - 1;
            end

            STOP: value <= value;  // ? 정지
        endcase
    end
end

// 7. FND 출력
always @(*) begin
    case (value)
        4'd0: fnd = 7'b1000000;
        4'd1: fnd = 7'b1111001;
        4'd2: fnd = 7'b0100100;
        4'd3: fnd = 7'b0110000;
        4'd4: fnd = 7'b0011001;
        4'd5: fnd = 7'b0010010;
        4'd6: fnd = 7'b0000010;
        4'd7: fnd = 7'b1111000;
        4'd8: fnd = 7'b0000000;
        4'd9: fnd = 7'b0010000;
        default: fnd = 7'b1111111;
    endcase
end

// 8. 자리 선택
always @(*) begin
    an = 4'b1110;
end
endmodule
