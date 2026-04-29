`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/17 09:42:11

// Module Name: digital_clock

//////////////////////////////////////////////////////////////////////////////////

module top_fndcontrol(
input  clk,    input reset,  input  time_mode,  input sw0, sw1, sw2, sw3,
output [1:0] mode_out, output [2:0] set_pos_out,
output [3:0] fndsel, output [6:0] fnd, output [2:0] alarm_out, output [2:0] alarm_on );

wire w_clkout; wire w_clk_out;  
wire [1:0] out_counter; wire [3:0] fndin;
wire [4:0] hour_out;  wire [5:0] min_out; wire [5:0] sec_out;
wire [3:0] hour10;  wire [3:0] hour0; wire [3:0] min10; wire [3:0] min0;
wire [3:0] sec10;   wire [3:0] sec0; 
wire [6:0] w_t_mmsec_out;  wire [5:0] w_t_sec_out;   wire [5:0] w_t_min_out; 
wire [4:0] w_a_hour_out; wire [5:0] w_a_sec_out; wire [5:0] w_a_min_out;

MasterSelect u0(.clk(clk), .reset(reset), .sw0(sw0), .mode_out(mode_out), .sw1(sw1), .set_pos_out(set_pos_out)); 

DigitalClock u1(.reset(reset), .clk(clk), .clk1Hz(w_clk_out), .mode(mode_out), .set_pos(set_pos_out), .sw2(sw2), .sec_out(sec_out),
 .min_out(min_out), .hour_out(hour_out));

FNDDisplay u2(.mode(mode_out), .sec_in(sec_out), .min_in(min_out), .hour_in(hour_out), .hour10(hour10),
 .hour0(hour0), .min10(min10), .min0(min0), .sec10(sec10), .sec0(sec0), .tl_mmsec(w_t_mmsec_out), .tl_sec(w_t_sec_out), .tl_min(w_t_min_out), .al_sec(w_a_sec_out), .al_min(w_a_min_out), .al_hour(w_a_hour_out)); 

clockdivider_paramN #(.N(50_000)) u3(.clk(clk) , .reset(reset), .clk_out(w_clkout));

counter u4(.inclk(w_clkout), .reset(reset), .out_counter(out_counter));

datamux u5(.time_mode(time_mode), .ina(sec0), .inb(sec10), .inc(min0), .ind(min10), .ine(hour0), .inf(hour10), 
.insel(out_counter), .outy(fndin));

mux4x1 u6( .sel_in(out_counter),.fndsel(fndsel));

FNDdecoder u7( .fndin(fndin), .fnd(fnd));

clockdivider_paramN #(.N(50_000_000)) u8(.clk(clk) , .reset(reset), .clk_out(w_clk_out));

Timer u9 (.clk(clk), .reset(reset), .mode(mode_out), .clk1000Hz(w_clkout), .sw1(sw1), .sw2(sw2), 
.mmsec_out(w_t_mmsec_out), .sec_out(w_t_sec_out), .min_out(w_t_min_out));

AlarmLogic u10( .reset(reset), .clk1000hz(w_clkout), .mode(mode_out), .set_pos(set_pos_out), .clk_min(min_out),
 .clk_hour(hour_out), .sw2(sw2), .sw3(sw3), .sec_out(w_a_sec_out), .min_out(w_a_min_out), .hour_out(w_a_hour_out),
 .alarm_out(alarm_out), .alarm_on(alarm_on));

endmodule


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

    // =============================
    // sw2 동기화 + 디바운스
    // =============================
    reg [1:0] sync;
    reg [19:0] cnt;
    reg deb;
    reg prev;

    parameter DEBOUNCE = 1_000_000;

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            sync <= 0;
            cnt <= 0;
            deb <= 0;
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

    // =============================
    // pulse 생성
    // =============================
    always @(posedge clk or posedge reset) begin
        if(reset)
            prev <= 0;
        else
            prev <= deb;
    end

    wire sw2_pulse = deb & ~prev;

    // =============================
    // enable 생성
    // =============================
    wire enable = (mode == 2'b01) ? sw2_pulse : clk1Hz;

    // =============================
    // 시계 로직
    // =============================
    reg [5:0] sec, min;
    reg [4:0] hour;

    always @(posedge clk or posedge reset) begin
        if(reset) begin
            sec <= 0;
            min <= 0;
            hour <= 0;
        end
        else if(enable) begin
            // 설정 모드
            if(mode == 2'b01) begin
                case(set_pos)
                    3'b001: sec  <= (sec  == 59) ? 0 : sec  + 1;
                    3'b010: min  <= (min  == 59) ? 0 : min  + 1;
                    3'b100: hour <= (hour == 23) ? 0 : hour + 1;
                endcase
            end
            // 정상 시계
            else begin
                if(sec == 59) begin
                    sec <= 0;
                    if(min == 59) begin
                        min <= 0;
                        hour <= (hour == 23) ? 0 : hour + 1;
                    end else
                        min <= min + 1;
                end else
                    sec <= sec + 1;
            end
        end
    end

    assign sec_out = sec;
    assign min_out = min;
    assign hour_out = hour;

endmodule


module FNDDisplay(
    input [1:0] mode,
    input [5:0] sec_in, min_in,
    input [4:0] hour_in,
    input [4:0] al_hour,
    input [5:0] al_min, al_sec,
    input [6:0] tl_mmsec,
    input [5:0] tl_sec, tl_min,
    output reg[3:0] hour10, hour0,
    output reg[3:0] min10, min0,
    output reg[3:0] sec10, sec0
    );
always @(*) begin
    hour10 = 0; hour0 = 0;
    min10 = 0; min0 = 0;
    sec10 = 0; sec0 = 0;
	
    case(mode)
    2'b00, 2'b01: begin
        hour10 = hour_in / 10;  hour0 = hour_in % 10;
        min10 = min_in / 10;    min0 = min_in % 10;
        sec10 = sec_in / 10;    sec0 = sec_in % 10;
     end
     2'b10 : begin
        hour10 = tl_min / 10;   hour0 = tl_min % 10;
        min10 = tl_sec / 10;    min0 = tl_sec % 10;
        sec10 = tl_mmsec / 10;  sec0 = tl_mmsec % 10;
     end
     2'b11 : begin
        hour10 = al_hour / 10;  hour0 = al_hour % 10;
        min10 = al_min / 10;    min0 = al_min % 10;
        sec10 = al_sec / 10;    sec0 = al_sec % 10;
     end
     endcase
     end
endmodule


module clockdivider_paramN #(parameter N = 100_000)
(
    input clk,
    input reset,
    output reg clk_out
);

    reg [25:0] cnt;
    
    always @(posedge clk or posedge reset) begin
        if(reset) begin
            cnt <= 0;
            clk_out <= 0;
        end else begin
            if(cnt == (N-1)) begin
                cnt <= 0;
                clk_out <= 1;
            end else begin
                cnt <= cnt + 1;
                clk_out <= 0;
            end
        end
    end
endmodule


module counter(
    input inclk,
    input reset,
    output reg [1:0] out_counter
);
	always @(posedge inclk, posedge reset) begin
		if (reset) begin
			out_counter <= 0;
		end else begin
			out_counter <= out_counter + 1;
		end
	end
endmodule


module datamux(
    input [3:0] ina, inb, inc, ind, ine, inf,
    input [1:0] insel,
    input time_mode,
    output reg [3:0] outy
);
    always @(insel or time_mode)
        begin
        if(time_mode == 1'b0) begin
            case(insel)
                2'b00 : outy = ina;
                2'b01 : outy = inb;
                2'b10 : outy = inc;
                2'b11 : outy = ind;
            endcase
            end
        else begin
            case(insel)
                2'b00 : outy =inc;
                2'b01 : outy =ind;
                2'b10 : outy =ine;
                2'b11 : outy =inf;
            endcase
        end    
     end           
endmodule


module mux4x1(
    input [1:0] sel_in,
    output reg [3:0] fndsel
);
    always @(sel_in)
    begin
        case(sel_in)
            2'b00    : fndsel = 4'b1110;
            2'b01    : fndsel = 4'b1101;
            2'b10    : fndsel = 4'b1011;
            2'b11    : fndsel = 4'b0111;
            default  : fndsel = 4'b1111;
        endcase
    end
endmodule


module FNDdecoder(
    input [3:0] fndin,
    output reg [7:0] fnd
    );
    always @(fndin) begin
        case(fndin)
            4'h0 : fnd = 8'h01;
            4'h1 : fnd = 8'h4f;
            4'h2 : fnd = 8'h12;
            4'h3 : fnd = 8'h06;
            4'h4 : fnd = 8'h4c;
            4'h5 : fnd = 8'h24;
            4'h6 : fnd = 8'h60;
            4'h7 : fnd = 8'h0f;
            4'h8 : fnd = 8'h00;
            4'h9 : fnd = 8'h0c;
            
            default : fnd = 8'hff;
        endcase
     end
endmodule


module Timer(
    input clk,
    input reset,
    input [1:0] mode,
    input clk1000Hz,
    input sw1,
    input sw2,
    output [6:0] mmsec_out,
    output [5:0] sec_out,
    output [5:0] min_out
    );
    wire run = sw1;
    wire rst = sw2;
    reg [6:0] mmsec;
    reg [5:0] sec, min;
    always @(posedge clk or posedge reset) begin
        if(reset || (mode == 2'b10 && rst)) begin
            mmsec <= 0;
            sec <= 0;
            min <= 0;
        end
        else if(mode == 2'b10 && run && clk1000Hz) begin
            if(mmsec==99) begin
                mmsec <= 0 ;
                 if(sec == 59) begin
                    sec <= 0;
                        if(min == 59)
                            min <= 0;
                        else
                            min <= min + 1;
                  end
                  else
                    sec <= sec + 1;
                  end
                else
                    mmsec <= mmsec + 1;
                end
              end
    assign mmsec_out = mmsec;
    assign sec_out = sec;
    assign min_out = min;                                     
endmodule


module AlarmLogic(
    input reset,
    input clk1000hz,
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

    reg alarm;
    reg [5:0] sec, min;
    reg [4:0] hour;

    // =============================
    // sw 동기화 + pulse 생성
    // =============================
    reg sw2_d, sw3_d;

    always @(posedge clk1000hz or posedge reset) begin
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

    // =============================
    // 알람 ON/OFF
    // =============================
    always @(posedge clk1000hz or posedge reset) begin
        if(reset) begin
            alarm <= 0;
            alarm_on <= 3'b000;
        end else if(sw3_pulse) begin
            alarm <= ~alarm;
            alarm_on <= alarm ? 3'b000 : 3'b111;
        end
    end

    // =============================
    // 시간 설정
    // =============================
    always @(posedge clk1000hz or posedge reset) begin
        if(reset)
            sec <= 0;
        else if(mode == 2'b11 && set_pos == 3'b001 && sw2_pulse)
            sec <= (sec == 59) ? 0 : sec + 1;
    end

    always @(posedge clk1000hz or posedge reset) begin
        if(reset)
            min <= 0;
        else if(mode == 2'b11 && set_pos == 3'b010 && sw2_pulse)
            min <= (min == 59) ? 0 : min + 1;
    end

    always @(posedge clk1000hz or posedge reset) begin
        if(reset)
            hour <= 0;
        else if(mode == 2'b11 && set_pos == 3'b100 && sw2_pulse)
            hour <= (hour == 23) ? 0 : hour + 1;
    end

    assign sec_out = sec;
    assign min_out = min;
    assign hour_out = hour;

    // =============================
    // 알람 비교
    // =============================
    always @(posedge clk1000hz) begin
        if ((hour == clk_hour) && (min == clk_min) &&
            (mode != 2'b11) && alarm)
            alarm_out <= 3'b111;
        else
            alarm_out <= 3'b000;
    end

endmodule


