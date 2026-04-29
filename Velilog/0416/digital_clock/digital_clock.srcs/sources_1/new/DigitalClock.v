`timescale 1ns / 1ps

module DigitalClock(
    input clk,
    input reset,
    input clk1Hz,         
    input [1:0] mode,
    input [2:0] set_pos,
    input sw2,          

    output [5:0] sec_out,
    output [5:0] min_out,
    output [4:0] hour_out
);
    reg [1:0] sync;
    reg [19:0] cnt;
    reg deb;
    reg prev;
    parameter DEBOUNCE = 1_000_000;
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            sync <= 0; cnt <= 0; deb <= 0;
        end else begin
            sync <= {sync[0], sw2};

            if(sync[1] != deb) begin
                if(cnt < DEBOUNCE)
                    cnt <= cnt + 1;
                else begin
                    deb <= sync[1];
                    cnt <= 0;
                end
            end else
                cnt <= 0;
        end
    end

    // edge detect
    always @(posedge clk or posedge reset) begin
        if(reset)
            prev <= 0;
        else
            prev <= deb;
    end
    wire sw2_pulse = deb & ~prev;   // ? 1클럭 펄스
    //  enable 생성
    wire tick_sec  = clk1Hz;                     // 일반 모드
    wire tick_set  = sw2_pulse;                  // 설정 모드

    wire enable = (mode == 2'b01) ? tick_set : tick_sec;
    //  시/분/초 카운터 (단일 clk)
    reg [5:0] sec, min;
    reg [4:0] hour;
    
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            sec  <= 0;
            min  <= 0;
            hour <= 0;
        end
        else if(enable) begin
            // 설정 모드
            if(mode == 2'b01) begin
                case(set_pos)
                    3'b001: begin // sec
                        if(sec == 59) sec <= 0;
                        else sec <= sec + 1;
                    end

                    3'b010: begin // min
                        if(min == 59) min <= 0;
                        else min <= min + 1;
                    end

                    3'b100: begin // hour
                        if(hour == 23) hour <= 0;
                        else hour <= hour + 1;
                    end
                endcase
            end
            // 일반 모드 (시계 동작)
             else begin
                if(sec == 59) begin
                    sec <= 0;

                    if(min == 59) begin
                        min <= 0;

                        if(hour == 23)
                            hour <= 0;
                        else
                            hour <= hour + 1;
                    end
                    else
                        min <= min + 1;
                end
                else
                    sec <= sec + 1;
            end
        end
    end
      // 출력
    assign sec_out  = sec;
    assign min_out  = min;
    assign hour_out = hour;
endmodule
