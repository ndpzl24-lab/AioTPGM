`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/16 12:32:32
// Module Name: datamux

//////////////////////////////////////////////////////////////////////////////////


module DataMux(
    input [3:0] ina,inb,inc,ind,ine,inf,
    input [1:0] insel,
    input time_mode,
    output reg[3:0] outy
    );
    
    always @(*) begin
        if(time_mode == 1'b0) begin
            case(insel)
                2'b00: outy = ina;
                2'b01: outy = inb;
                2'b10: outy = inc;
                2'b11: outy = ind;
            endcase
        end else begin
            case(insel)
                2'b00: outy = inc;
                2'b01: outy = ind;
                2'b10: outy = ine;
                2'b11: outy = inf;
            endcase
       end
    end
    
endmodule
