`timescale 1ns / 1ps

module AlarmLogic(
    input clk,                 // 🔥 추가 (기준 클럭)
    input reset,
    input clk1000hz,           // 1ms tick용
    input [1:0] mode,
    input [2:0] set_pos,
    input [5:0] clk_min,
    input [4:0] clk_hour,
    input sw2,
    input sw3,

    output [5:0] sec_out,
    output [5:0] min_out,
    output [4:0] hour_out,
    output reg [2:0] alarm_out,
    output reg [2:0] alarm_on
);

//////////////////////////////////////////////////////////////
// 1. sw2, sw3 동기화 + 엣지 검출 (핵심!)
//////////////////////////////////////////////////////////////
reg sw2_d, sw3_d;

always @(posedge clk or posedge reset) begin
    if(reset) begin
        sw2_d <= 0;
        sw3_d <= 0;
    end else begin
        sw2_d <= sw2;
        sw3_d <= sw3;
    end
end

wire sw2_pulse = sw2 & ~sw2_d;
wire sw3_pulse = sw3 & ~sw3_d;

//////////////////////////////////////////////////////////////
// 2. 알람 ON/OFF
//////////////////////////////////////////////////////////////
reg alarm;

always @(posedge clk or posedge reset) begin
    if(reset) begin
        alarm <= 0;
        alarm_on <= 3'b000;
    end
    else if(sw3_pulse) begin
        alarm <= ~alarm;
        alarm_on <= alarm ? 3'b000 : 3'b111;
    end
end

//////////////////////////////////////////////////////////////
// 3. 알람 시간 설정
//////////////////////////////////////////////////////////////
reg [5:0] sec, min;
reg [4:0] hour;

always @(posedge clk or posedge reset) begin
    if(reset) begin
        sec  <= 0;
        min  <= 0;
        hour <= 0;
    end
    else if(mode == 2'b11 && sw2_pulse) begin
        case(set_pos)
            3'b001: sec  <= (sec  == 59) ? 0 : sec  + 1;
            3'b010: min  <= (min  == 59) ? 0 : min  + 1;
            3'b100: hour <= (hour == 23) ? 0 : hour + 1;
        endcase
    end
end

assign sec_out  = sec;
assign min_out  = min;
assign hour_out = hour;

//////////////////////////////////////////////////////////////
// 4. 알람 비교 (1000Hz 기준)
//////////////////////////////////////////////////////////////
always @(posedge clk1000hz or posedge reset) begin
    if(reset)
        alarm_out <= 3'b000;
    else if((hour == clk_hour) && (min == clk_min) && alarm && (mode != 2'b11))
        alarm_out <= 3'b111;
    else
        alarm_out <= 3'b000;
end

endmodule