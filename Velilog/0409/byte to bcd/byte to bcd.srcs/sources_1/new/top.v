`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/09 15:06:36

//////////////////////////////////////////////////////////////////////////////////

module top(
    input clk,                 // 100MHz
    input [15:0] sw,           // 16bit 입력
    input btnC,                // 페이지 전환 버튼
    output reg [6:0] seg,      // gfedcba
    output reg [3:0] an        // 4자리 FND
);

//--------------------------------
// 1. Binary → BCD (5자리)
//--------------------------------
reg [19:0] bcd;
integer i;

always @(*) begin
    bcd = 20'd0;
    for (i = 0; i < 16; i = i + 1) begin
        if (bcd[3:0] >= 5)    bcd[3:0]    = bcd[3:0] + 3;
        if (bcd[7:4] >= 5)    bcd[7:4]    = bcd[7:4] + 3;
        if (bcd[11:8] >= 5)   bcd[11:8]   = bcd[11:8] + 3;
        if (bcd[15:12] >= 5)  bcd[15:12]  = bcd[15:12] + 3;
        if (bcd[19:16] >= 5)  bcd[19:16]  = bcd[19:16] + 3;

        bcd = bcd << 1;
        bcd[0] = sw[15 - i];
    end
end

//--------------------------------
// 2. 페이지 선택 (버튼)
//--------------------------------
reg page = 0;
reg btn_d;

always @(posedge clk) begin
    btn_d <= btnC;
    if (btnC & ~btn_d) begin
        page <= ~page;   // 누를 때마다 페이지 변경
    end
end

//--------------------------------
// 3. 표시할 4자리 선택
//--------------------------------
reg [15:0] bcd_disp;

always @(*) begin
    if (page == 0)
        bcd_disp = bcd[15:0];         // 하위 4자리
    else
        bcd_disp = {12'd0, bcd[19:16]}; // 상위 1자리
end

//--------------------------------
// 4. 클럭 분주 (FND 스캔용)
//--------------------------------
reg [19:0] cnt = 0;
always @(posedge clk) cnt <= cnt + 1;

wire [1:0] digit_sel = cnt[19:18];

//--------------------------------
// 5. 자리 선택
//--------------------------------
reg [3:0] digit;

always @(*) begin
    case (digit_sel)
        2'd0: begin an = 4'b1110; digit = bcd_disp[3:0];   end
        2'd1: begin an = 4'b1101; digit = bcd_disp[7:4];   end
        2'd2: begin an = 4'b1011; digit = bcd_disp[11:8];  end
        2'd3: begin an = 4'b0111; digit = bcd_disp[15:12]; end
    endcase
end

//--------------------------------
// 6. 7-Segment (gfedcba, Active LOW)
//--------------------------------
always @(*) begin
    case (digit)
        4'h0: seg = 7'b1000000;
        4'h1: seg = 7'b1111001;
        4'h2: seg = 7'b0100100;
        4'h3: seg = 7'b0110000;
        4'h4: seg = 7'b0011001;
        4'h5: seg = 7'b0010010;
        4'h6: seg = 7'b0000010;
        4'h7: seg = 7'b1111000;
        4'h8: seg = 7'b0000000;
        4'h9: seg = 7'b0010000;
        default: seg = 7'b1111111;
    endcase
end

endmodule
/*
module top(
    input clk,
    input [15:0] sw,
    output reg [6:0] seg,
    output reg [3:0] an
);

//---------------------------------
// 1. 페이지 선택
//---------------------------------
reg [15:0] value;
reg [13:0] display_value;

always @(*) begin
    value = sw;

    if (sw[15] == 0)
        display_value = value % 10000;   // 하위 4자리
    else
        display_value = value / 10000;   // 상위 자리
end

//---------------------------------
// 2. BCD 변환 (14bit → 4자리)
//---------------------------------
reg [3:0] thousands, hundreds, tens, ones;

integer i;
reg [29:0] shift; // 4자리 BCD(16bit) + 14bit 입력

always @(*) begin
    shift = 30'd0;
    shift[13:0] = display_value;

    for (i = 0; i < 14; i = i + 1) begin
        
if (shift[17:14] >= 5) shift[17:14] = shift[17:14] + 3;
if (shift[21:18] >= 5) shift[21:18] = shift[21:18] + 3;
if (shift[25:22] >= 5) shift[25:22] = shift[25:22] + 3;
if (shift[29:26] >= 5) shift[29:26] = shift[29:26] + 3;

        shift = shift << 1;
    end

    ones      = shift[17:14];
    tens      = shift[21:18];
    hundreds  = shift[25:22];
    thousands = shift[29:26];
end

//---------------------------------
// 3. 클럭 분주 (≈1ms)
//---------------------------------
reg [16:0] counter = 0;
reg [1:0] digit = 0;

always @(posedge clk) begin
    counter <= counter + 1;
    if (counter == 100000) begin
        counter <= 0;
        digit <= digit + 1;
    end
end

//---------------------------------
// 4. 자리 선택 (MUX)
//---------------------------------
reg [3:0] bcd;

always @(*) begin
    case(digit)
        2'd0: begin an = 4'b1110; bcd = ones; end
        2'd1: begin an = 4'b1101; bcd = tens; end
        2'd2: begin an = 4'b1011; bcd = hundreds; end
        2'd3: begin an = 4'b0111; bcd = thousands; end
    endcase
end

//---------------------------------
// 5. FND Decoder (Common Anode)
//---------------------------------
always @(*) begin
    case(bcd)
        4'd0: seg = 7'b100_0000;
        4'd1: seg = 7'b111_1001;
        4'd2: seg = 7'b010_0100;
        4'd3: seg = 7'b011_0000;
        4'd4: seg = 7'b001_1001;
        4'd5: seg = 7'b001_0010;
        4'd6: seg = 7'b000_0010;
        4'd7: seg = 7'b111_1000;
        4'd8: seg = 7'b000_0000;
        4'd9: seg = 7'b001_0000;
        default: seg = 7'b1111111;
    endcase
end

endmodule
*/

/* 8비트 byte to bcd
module top(
    input clk,              // 100MHz
    input [7:0] sw,         // 입력 (0~255)
    output reg [6:0] seg,   // a~g
    output reg [3:0] an     // 자리 선택
);

//---------------------------------
// 1. byte → BCD
//---------------------------------
reg [3:0] hundreds, tens, ones;

integer i;
reg [19:0] shift;

always @(*) begin
    shift = 20'd0;
    shift[7:0] = sw;

    for (i = 0; i < 8; i = i + 1) begin
        if (shift[11:8] >= 5) shift[11:8] = shift[11:8] + 3;
        if (shift[15:12] >= 5) shift[15:12] = shift[15:12] + 3;
        if (shift[19:16] >= 5) shift[19:16] = shift[19:16] + 3;
        shift = shift << 1;
    end

    hundreds = shift[19:16];
    tens     = shift[15:12];
    ones     = shift[11:8];
end

//---------------------------------
// 2. 클럭 분주 (≈1ms)
//---------------------------------
reg [16:0] counter = 0;
reg [1:0] digit = 0;

always @(posedge clk) begin
    counter <= counter + 1;
    if (counter == 100000) begin   // 약 1ms
        counter <= 0;
        digit <= digit + 1;
    end
end

//---------------------------------
// 3. 자리 선택 + BCD 선택 (MUX)
//---------------------------------
reg [3:0] bcd;

always @(*) begin
    case(digit)
        2'd0: begin an = 4'b1110; bcd = ones; end
        2'd1: begin an = 4'b1101; bcd = tens; end
        2'd2: begin an = 4'b1011; bcd = hundreds; end
        2'd3: begin an = 4'b0111; bcd = 4'd0; end
    endcase
end

//---------------------------------
// 4. FND Decoder (Common Anode)
//---------------------------------
always @(*) begin
    case(bcd)        //gfe_dcba
        4'd0: seg = 7'b100_0000;
        4'd1: seg = 7'b111_1001;
        4'd2: seg = 7'b010_0100;
        4'd3: seg = 7'b011_0000;
        4'd4: seg = 7'b001_1001;
        4'd5: seg = 7'b001_0010;
        4'd6: seg = 7'b000_0010;
        4'd7: seg = 7'b111_1000;
        4'd8: seg = 7'b000_0000;
        4'd9: seg = 7'b001_0000;
        default: seg = 7'b111_1111;
    endcase
end

endmodule
*/

/*
module top(
	input clk, input [7:0] sw, output reg[3:0] an, output [6:0] fnd );
wire [11:0] bcd;
bytetobcd u_bcd( .d(sw), a(bcd) );
fnd_decoder u_fnd( .bcd(digit), .seg(fnd) );
reg[18:0] clk_div=0;

always @(posedge clk) begin
	clk_div <= clk_div + 1 ;
end

1.
wire[1:0] sel;
wire sel = clk_div [18:17];
reg [3:0] digit;

2.
wire scan_clk = clk_div[18]; reg[1:0] sel = 0; reg[3:0] digit;
always @(posedge scan_clk) begin
	sel <= sel+ 1;
	
end
always @(*) begin
	case(sel)
		2'b00: begin
			an = 4'b1110;	digit = bcd[3:0];
		end
		2'b01:begin
			an = 4'b1101;	digit = bcd[7:4];
		end
		2'b10: begin
			an = 4'b1011; 	digit = bcd[11:8];
		end
		2'b11 : begin
			an = 4'b0111;	digit = 4'd0;
		end
	endcase
end
endmodule
module bytetobcd(	input[7:0] d, output [11:0] a);
	reg [3:0] hundreds, tens, ones;	reg[6:0] temp_reg;
	always @(*) begin
			hundreds = d/100;	temp_reg = d % 100; tens = temp_reg /10; ones = temp_reg%10;
		end
		assign a = {hundreds, tens, ones};
endmodule
module fnd_decoder(	input [3:0]bcd, output reg [6:0] seg );
always @(*) begin
	case(bcd)
		4'd0 : seg = 7'b1000000; 4'd1: seg = 7'b1111001 4'd2: seg = 7'b0100100;
		4'd3: seg = 7'b0110000; 4'd4: seg = 7'b0011001; 4'd5: seg = 7'b0010010;
		4'd6: seg = 7'b0000010; 4'd7: seg = 7'b1111000; 4'd8: seg = 7'b0000000;
		4'd9: seg = 7'b0010000; default :seg 7'b1111111;
	endcase
end
endmodule
*/