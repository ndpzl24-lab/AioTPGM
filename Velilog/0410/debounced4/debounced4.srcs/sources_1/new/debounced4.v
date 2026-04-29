`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// Create Date: 2026/04/10 14:24:03
 
//////////////////////////////////////////////////////////////////////////////////


module debounce_switch (
    input   i_clk,
    input   i_switch,
    output  o_switch
);
    parameter PUSHED = 1;
    parameter RELEASED = 0;
    parameter FALSE = 0;
    parameter TRUE = 1;
    parameter DEBOUNCE_LIMIT = 500_000; // 10ms for 100MHz

    reg [19:0] r_count = 0;  // 충분한 크기면 됨 (줄여도 OK)
    reg r_prevState = RELEASED;
    reg retValue = FALSE;

    assign o_switch = retValue;

    always @(posedge i_clk) begin
        if ((i_switch == PUSHED) && (r_prevState == RELEASED)) begin
            if (r_count < DEBOUNCE_LIMIT) begin
                r_count <= r_count + 1;
                retValue <= FALSE;
            end else begin
                r_count <= 0;
                r_prevState <= PUSHED;
                retValue <= FALSE;
            end
        end 
        else if ((i_switch == RELEASED) && (r_prevState == PUSHED)) begin
            if (r_count < DEBOUNCE_LIMIT) begin
                r_count <= r_count + 1;
                retValue <= FALSE;
            end else begin
                r_count <= 0;
                r_prevState <= RELEASED;
                retValue <= TRUE;   // ✔ 버튼 뗄 때 1펄스
            end
        end 
        else begin
            r_count <= 0;
            retValue <= FALSE;
        end
    end
endmodule


module LedControl(
    input clk,
    input btn0,
    input btn1,
    input btn2,
    input btn3,
    output [3:0] led
);

    wire w_btn0, w_btn1, w_btn2, w_btn3;
    reg [3:0] r_led_state = 4'b0000;  // 초기값 설정

    // 디바운스
    debounce_switch d0 (.i_clk(clk), .i_switch(btn0), .o_switch(w_btn0));
    debounce_switch d1 (.i_clk(clk), .i_switch(btn1), .o_switch(w_btn1));
    debounce_switch d2 (.i_clk(clk), .i_switch(btn2), .o_switch(w_btn2));
    debounce_switch d3 (.i_clk(clk), .i_switch(btn3), .o_switch(w_btn3));

    assign led = r_led_state;

    always @(posedge clk) begin
        if (w_btn0) r_led_state[0] <= ~r_led_state[0];
        if (w_btn1) r_led_state[1] <= ~r_led_state[1];
        if (w_btn2) r_led_state[2] <= ~r_led_state[2];
        if (w_btn3) r_led_state[3] <= ~r_led_state[3];
    end

endmodule

