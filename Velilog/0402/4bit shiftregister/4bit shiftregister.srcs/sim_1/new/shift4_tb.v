`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/02 11:27:19

//////////////////////////////////////////////////////////////////////////////////


module shift4_tb;
    reg RESETN; reg DATA_IN; reg CLK;
    wire [3:0] Q;
    shift4 dut(
    .RESETN(RESETN),
    .DATA_IN(DATA_IN),
    .CLK(CLK),
    .Q(Q)
    );
    
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end
    
    initial begin
        RESETN = 0;
        DATA_IN = 0;
        #3 RESETN = 1;  #10 RESETN = 0;
        #10 DATA_IN = 1; #10 DATA_IN = 0;
        #10 DATA_IN = 1; #10 DATA_IN = 1;
        #10 DATA_IN = 0; #10 RESETN = 1;
        #10 RESETN = 0; #50 $finish;
        end
    initial begin
        $monitor("TIME=%0t | RESETN=%b | DATA_IN=%b | Q=%b",
                $time, RESETN, DATA_IN, Q);
     end
endmodule
