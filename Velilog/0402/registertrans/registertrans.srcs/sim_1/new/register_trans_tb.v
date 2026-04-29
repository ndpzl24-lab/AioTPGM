`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/02 10:22:16

//////////////////////////////////////////////////////////////////////////////////
module register_trans_tb;

reg [3:0] DATA_IN;
reg CLK1;
wire [3:0] A;
wire [3:0] B;

registertrans dut(
    .DATA_IN(DATA_IN),
    .CLK1(CLK1),
    .A(A),
    .B(B)
);

// 클럭
initial begin
    CLK1 = 0;
    forever #5 CLK1 = ~CLK1;
end

// 입력 (클럭 기준으로 변경)
initial begin
    DATA_IN = 0;
    $monitor("Time=%0t | DATA_IN=%b A=%b B=%b", $time, DATA_IN, A, B);
    #7  DATA_IN = 1;      #10 DATA_IN = 0;
    #10 DATA_IN = 1;      #10 DATA_IN = 1;
    #10 DATA_IN = 0;      #30;     $finish;

end

endmodule

/*
module register_trans_tb(
reg [3:0] DATA_IN; reg CLK1; wire [3:0] A; wire [3:0] B;
registertrans dut(
    .DATA_IN(DATA_IN),
    .CLK1(CLK1),
    .A(A),
    .B(B)    );
initial begin
    CLK1 = 0;
    forever #5 CLK1 = ~CLK1;
    end
    initial begin
        DATA_IN = 0;
        $monitor("Time=%0t | DATA_in=%b A=%b B=%b", $time, DATA_IN, A, B);
        #7 DATA_IN = 1; #10 DATA_IN = 0;
        #10 DATA_IN = 1;    #10 DATA_IN = 1;
        #10 DATA_IN = 0; #30; $finish;
        end
        
endmodule
*/
