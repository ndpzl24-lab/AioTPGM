`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/10 16:20:53

//////////////////////////////////////////////////////////////////////////////////


module fnd2(
	input clk, input [3:0] sw0, input [3:0] sw1, input [3:0] sw2, input [3:0]sw3,
	output reg [6:0] fnd, output reg[3:0] an);
reg [20:0] seg_cnt;
always @(posedge clk) begin
	seg_cnt <= seg_cnt +1;
	end
function [6:0] decode;
	input [3:0]sw;
	begin
		case(sw)
		4'd0: decode = 7'b1000000;		4'd1: decode = 7'b1111001;
		4'd2: decode = 7'b0100100;		4'd3: decode = 7'b0110000;
		4'd4: decode = 7'b0011001;		4'd5: decode = 7'b0010010;
		4'd6: decode = 7'b0000010;		4'd7: decode = 7'b1111000;
		4'd8: decode = 7'b0000000;		4'd9: decode = 7'b0011000;
		default : decode = 7'b1111111;
		endcase
	end
endfunction
always @(posedge clk) begin
	case(seg_cnt[19:18])
		2'b00 : begin
			an <= 4'b1110;	fnd <= decode(sw0); end
		2'b01 : begin
			an <= 4'b1101;	fnd <= decode(sw1); end
		2'b10 : begin
			an <= 4'b1011;	fnd <= decode(sw2); end
		2'b11 : begin
			an <= 4'b0111;	fnd <= decode(sw3); end
	endcase
end
endmodule
		
