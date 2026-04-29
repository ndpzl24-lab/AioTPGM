`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2026/04/01 12:32:41
// Design Name: 
// Module Name: moore_110detector
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


/*module moore_110detector(
    input clk, input reset_n, input x,
    output y, output reg [1:0] state_reg
    );
    reg [1:0] state_next;
    localparam s0 = 2'b00, s1 = 2'b01, s2 = 2'b10, s3 = 2'b11;
    always @(posedge  clk, negedge reset_n) begin
        if(~reset_n)    state_reg <= s0;
        else        state_reg <= state_next;    end
    always @(state_reg or x)    begin
        case(state_reg)
            s0 : if(x)              state_next = s1;
                else                state_next = s0;
            s1 : if(x)              state_next = s2;
                else                state_next = s0;
            s2 : if(x)              state_next = s2;
                else                state_next = s3;
            s3 : if(x)              state_next = s1;
                else                state_next = s0;
            default : state_next = state_reg;   endcase     end
    assign y = (state_reg == s3);        
endmodule*/

module moore110(input  clk,  input  reset,  input  din,   output  dout,output reg [1:0] state);
  parameter  S0 = 2'b00, S1=2'b01, S2=2'b10, S3=2'b11 ;
  reg [1:0] state;

  always @(posedge clk or negedge reset) begin
    if(!reset) begin
      state <= S0;    end
    else begin
      case(state)
        S0: begin
          if(din)            state <= S1;
          else            state <= S0;        end
        S1: begin  
          if(din)            state <= S2;
          else            state <= S0;        end
        S2: begin
            if(~din)            state <= S3; 
            else            state <= S2;          end
        S3: begin
         if(din)            state <= S1;
          else            state <= S0;        end
      endcase
    end
   end
  assign dout = (state==S3);
endmodule


