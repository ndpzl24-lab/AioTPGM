`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/03 10:26:04

//////////////////////////////////////////////////////////////////////////////////
module siso (
    input CLK, CLRN,
    input DATA_IN,
    output SERIAL_OUT
);

    reg [3:0] Q;

    always @(negedge CLRN or posedge CLK)
    begin
        if (!CLRN)
            Q <= 4'b0000;
        else begin
            Q[3:1] <= Q[2:0]; // 좌시프트
            Q[0]   <= DATA_IN;
        end
    end

    //  핵심: 맨 끝 비트 출력
    assign SERIAL_OUT = Q[3];

endmodule

/*
module siso (
    input CLK, CLRN,
    input DATA_IN,
    output OUT
);

    reg [3:0] Q;

    always @(negedge CLRN or posedge CLK)
    begin
        if (!CLRN)
            Q <= 4'b0000;
        else begin
            Q[3:1] <= Q[2:0]; // 좌시프트
            Q[0]   <= DATA_IN;
        end
    end


    assign OUT = (Q == 4'b1000);

endmodule
*/
/*
module siso (
    input RESETN, DATA_IN, CLK,
    output SERIAL_OUT,
    output [3:0] Q  
);

    reg [3:0] Q_reg;

    always @(negedge RESETN or posedge CLK)
    begin
        if (!RESETN)
            Q_reg <= 4'b0000;
        else begin
            Q_reg[3:1] <= Q_reg[2:0];
            Q_reg[0]   <= DATA_IN;
        end
    end

    assign SERIAL_OUT = Q_reg[3];
    assign Q = Q_reg;  

endmodule
*/
/*
module siso(
    input CLK, CLRN,
    input DIN,
    output Q
    );
    reg [3:0] BUFF;
    
    always @(negedge CLRN or posedge CLK)
    begin
    if (CLRN == 1'b0) BUFF = 4'b0000;
    else
    begin
    BUFF[3:1] <= BUFF[2:0];
    BUFF[0] <= DIN;
    end
    end
    assign Q = BUFF[3];
endmodule
*/
