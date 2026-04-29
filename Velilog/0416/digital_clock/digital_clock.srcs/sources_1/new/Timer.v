`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/16 12:45:41
// Module Name: Timer

//////////////////////////////////////////////////////////////////////////////////


module Timer(
    input clk, reset, clk100Hz, sw1, sw2,
    input [1:0] mode,
    output [5:0] sec_out, min_out,
    output [6:0] mmsec_out
);

wire run = sw1;
wire rst = sw2;
reg [5:0] sec,min;
reg [6:0] mmsec;

always @(posedge clk or posedge reset) begin
    if(reset || (mode == 2'b10 && rst)) begin
        mmsec <= 0;
        sec <= 0;
        min <= 0;
    end
    else if (mode == 2'b10 && run && clk100Hz) begin
        if(mmsec == 99) begin
            mmsec <= 0;
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
