`timescale 1ns / 1ps

module clock_divider_tb();
    reg clk_100mhz;
    reg reset;
    wire clk_1hz;
    clock_divider dut (
        .clk_100mhz(clk_100mhz),
        .reset(reset),
        .clk_1hz(clk_1hz)
    );
    initial begin
        clk_100mhz = 1'b0;
        repeat (50) #5 clk_100mhz = ~clk_100mhz;
    end
    
    initial begin
        reset = 1'b1;
        #20;
        reset = 1'b0;
    end
    
    initial begin
        #400;
        $finish;
    end
endmodule