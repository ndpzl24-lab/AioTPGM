`timescale 1ns / 1ps

module MasterSelect(
    input clk,
    input reset,        // active high
    input sw0,
    input sw1,
    output [1:0] mode_out,
    output reg [2:0] set_pos_out
);

//--------------------------------------------------
// 내부 레지스터
//--------------------------------------------------
reg [1:0] mode;
reg [2:0] set_pos;

//--------------------------------------------------
// 1. 동기화
//--------------------------------------------------
reg [1:0] sw0_sync, sw1_sync;
always @(posedge clk) begin
    sw0_sync <= {sw0_sync[0], sw0};
    sw1_sync <= {sw1_sync[0], sw1};
end

//--------------------------------------------------
// 2. 디바운싱
//--------------------------------------------------
parameter DEBOUNCE = 20'd200_000; // 약 2ms (100MHz 기준)

reg [19:0] cnt0, cnt1;
reg sw0_db, sw1_db;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        cnt0 <= 0;
        sw0_db <= 0;
    end else begin
        if (sw0_sync[1] != sw0_db) begin
            if (cnt0 < DEBOUNCE)
                cnt0 <= cnt0 + 1;
            else begin
                sw0_db <= sw0_sync[1];
                cnt0 <= 0;
            end
        end else begin
            cnt0 <= 0;
        end
    end
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        cnt1 <= 0;
        sw1_db <= 0;
    end else begin
        if (sw1_sync[1] != sw1_db) begin
            if (cnt1 < DEBOUNCE)
                cnt1 <= cnt1 + 1;
            else begin
                sw1_db <= sw1_sync[1];
                cnt1 <= 0;
            end
        end else begin
            cnt1 <= 0;
        end
    end
end

//--------------------------------------------------
// 3. 엣지 검출
//--------------------------------------------------
reg sw0_prev, sw1_prev;

wire sw0_rise = sw0_db & ~sw0_prev;
wire sw1_rise = sw1_db & ~sw1_prev;

always @(posedge clk) begin
    sw0_prev <= sw0_db;
    sw1_prev <= sw1_db;
end

//--------------------------------------------------
// 4. mode 제어
//--------------------------------------------------
always @(posedge clk or posedge reset) begin
    if (reset)
        mode <= 2'b00;
    else if (sw0_rise)
        mode <= mode + 1'b1;
end

assign mode_out = mode;

//--------------------------------------------------
// 5. set_pos 제어
//--------------------------------------------------
always @(posedge clk or posedge reset) begin
    if (reset)
        set_pos <= 3'b100; // hour
    else if (sw1_rise && (mode == 2'b01 || mode == 2'b11)) begin
        case(set_pos)
            3'b100: set_pos <= 3'b010;
            3'b010: set_pos <= 3'b001;
            3'b001: set_pos <= 3'b100;
            default: set_pos <= 3'b100;
        endcase
    end
end

//--------------------------------------------------
// 6. 출력
//--------------------------------------------------
always @(*) begin
    case(mode)
        2'b01, 2'b11: set_pos_out = set_pos;
        default:      set_pos_out = 3'b000;
    endcase
end

endmodule
