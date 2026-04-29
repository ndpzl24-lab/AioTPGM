`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/16 12:00:54
// Module Name: FNDDisplay

//////////////////////////////////////////////////////////////////////////////////


module FND_Display(
    input [1:0] mode,
    input [5:0] sec_in, min_in, al_min, al_sec, tl_sec, tl_min,
    input [4:0] hour_in, al_hour,
    input [6:0] tl_mmsec,
    output reg [3:0] hour10, hour0,
    output reg [3:0] min10, min0,
    output reg [3:0] sec10, sec0
    );
    
    always @(*) begin
        hour10 = 0; hour0 = 0;
        min10 = 0;  min0 = 0;
        sec10 = 0;  sec0 = 0;
        case(mode)
            2'b00, 2'b01: begin    //시계 설정 모드
                hour10 = hour_in / 10;  hour0 = hour_in % 10;
                min10 = min_in / 10;    min0 = min_in % 10;
                sec10 = sec_in / 10;    sec0 = sec_in % 10;
            end
            2'b10: begin    //타이머 모드
                hour10 = tl_min / 10;   hour0 = tl_min % 10;
                min10 = tl_sec / 10;    min0 = tl_sec % 10;
                sec10 = tl_mmsec / 10;  sec0 = tl_mmsec % 10;
            end
            2'b11: begin   //알람 설정 모드
                hour10 = al_hour / 10;  hour0 = al_hour % 10;
                min10 = al_min / 10;    min0 = al_min % 10;
                sec10 = al_sec / 10;    sec0 = al_sec % 10;
            end
        endcase
    end
endmodule
