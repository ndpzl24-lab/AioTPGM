`timescale 1ns / 1ps
module up_down_fnd (
    input clk,          
    input rst,          
    input btnU,
    input btnD,
    output reg [6:0] fnd,   
    output reg [3:0] an     
);
// 1. 버튼 동기화 + 디바운싱 + pulse
reg [1:0] syncU, syncD;
reg [19:0] cntU, cntD;
reg debU, debD;
reg prevU, prevD;
parameter DEBOUNCE = 1_000_000;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        syncU <= 0; syncD <= 0;
    end else begin
        syncU <= {syncU[0], btnU};
        syncD <= {syncD[0], btnD};
    end
end
always @(posedge clk or posedge rst) begin
    if (rst) begin
        cntU <= 0; debU <= 0;
        cntD <= 0; debD <= 0;
    end else begin
        if (syncU[1] != debU) begin
            if (cntU < DEBOUNCE) cntU <= cntU + 1;
            else begin debU <= syncU[1]; cntU <= 0; end
        end else cntU <= 0;

        if (syncD[1] != debD) begin
            if (cntD < DEBOUNCE) cntD <= cntD + 1;
            else begin debD <= syncD[1]; cntD <= 0; end
        end else cntD <= 0;
    end
end
always @(posedge clk or posedge rst) begin
    if (rst) begin
        prevU <= 0;
        prevD <= 0;
    end else begin
        prevU <= debU;
        prevD <= debD;
    end
end
wire pulseU = (~prevU) & debU;
wire pulseD = (~prevD) & debD;
// 2. 모드 FSM

localparam STOP = 2'b00;
localparam UP   = 2'b01;
localparam DOWN = 2'b10;

reg [1:0] mode;

always @(posedge clk or posedge rst) begin
    if (rst)
        mode <= STOP;
    else begin
        if (pulseU)
            mode <= UP;
        else if (pulseD)
            mode <= DOWN;
    end
end
parameter ONE_SEC = 100_000_000;
reg [26:0] cnt;
reg tick;
always @(posedge clk or posedge rst) begin
    if (rst) begin
        cnt <= 0;
        tick <= 0;
    end else begin
        if (cnt < ONE_SEC-1) begin
            cnt <= cnt + 1;
            tick <= 0;
        end else begin
            cnt <= 0;
            tick <= 1;
        end
    end
end
// 4. 카운터 (1~9)
reg [3:0] value;
always @(posedge clk or posedge rst) begin
    if (rst)
        value <= 4'd0;
    else if (tick) begin
        case (mode)
            UP: begin
                if (value == 0 || value == 9)
                    value <= 1;
                else
                    value <= value + 1;
            end

            DOWN: begin
                if (value == 0 || value == 1)
                    value <= 9;
                else
                    value <= value - 1;
            end

            default: value <= value;
        endcase
    end
end

always @(*) begin
    case (value)
        4'd0: fnd = 7'b1000000;
        4'd1: fnd = 7'b1111001;
        4'd2:  fnd = 7'b0100100;
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
// 6. 자리 선택 (1자리만 사용)
always @(*) begin
    an = 4'b1110; // 첫 번째 자리만 ON
end
endmodule