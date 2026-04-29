`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/16 12:39:54
// Module Name: FNDdecoder

//////////////////////////////////////////////////////////////////////////////////


module FND_Decoder(
    input [3:0] fndin,
    output reg [6:0] fnd
    );
    
    always @(*) begin
        case(fndin)
            4'h0: fnd = 7'b0000001;
            4'h1: fnd = 7'b1001111;
            4'h2: fnd = 7'b0010010;
            4'h3: fnd = 7'b0000110;
            4'h4: fnd = 7'b1001100;
            4'h5: fnd = 7'b0100100;
            4'h6: fnd = 7'b0100000;
            4'h7: fnd = 7'b0001101;
            4'h8: fnd = 7'b0000000;
            4'h9: fnd = 7'b0001100;
            default: fnd = 7'b1111111;
        endcase
    end
    
endmodule
