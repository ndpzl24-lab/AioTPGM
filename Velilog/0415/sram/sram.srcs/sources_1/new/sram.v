`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/15 14:57:57

//////////////////////////////////////////////////////////////////////////////////
/*
//비동기식
module sram_model #(	
    parameter   DEPTH = 8,
    parameter   WIDTH = 16,
    parameter   DEPTH_LOG = $clog2(DEPTH)
)(
    input                   clk,
    input                   cs, we, 
    input   [DEPTH_LOG-1:0] ad,
    input       [WIDTH-1:0] din,
    output      [WIDTH-1:0] dout  // wire로 변경
);
    reg [WIDTH-1:0] mem [DEPTH-1:0];
    
    initial begin
        for (int i=0; i<DEPTH; i++) mem[i] = 0;
    end
    
    // 쓰기 동작은 여전히 클럭에 동기화 (안정성)
    always @(posedge clk) begin
        if (cs && we) mem[ad] <= din;
    end
    
    // 읽기 동작을 비동기로 변경 (주소가 바뀌면 즉시 출력)
    assign dout = (cs && !we) ? mem[ad] : {WIDTH{1'bz}}; 
    
endmodule
*/

//동기식
module sram_model #(	
	parameter	DEPTH=8,
	parameter	WIDTH=16,
	parameter	DEPTH_LOG=$clog2(DEPTH)
)(
	input					clk,
	input					cs, we, 
	input 	[DEPTH_LOG-1:0] ad,
	input 		[WIDTH-1:0]	din,
	output reg  [WIDTH-1:0]	dout
);
	reg [WIDTH-1:0] 	mem[DEPTH-1:0]; // 벡터 스칼라
	
	initial begin
		for (int i=0;i<DEPTH;i++)	mem[i] = 0;
	end
	
	always @(posedge clk)
		if (cs & we)	mem[ad]	<= din;
		else if (cs & !we)dout	<= mem[ad];		
endmodule

